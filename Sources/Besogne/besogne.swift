import os.activity

public struct Besogne: ~Copyable {
    public typealias ID = UInt64

    let activity: AnyObject

    public var id: ID {
        _os_activity_get_identifier(activity, nil)
    }

    public static func labelUserAction(_ description: StaticString, dso: UnsafeRawPointer? = #dsohandle) {
        let str = description.cCharBasePointer
        _os_activity_label_useraction(UnsafeMutableRawPointer(mutating: dso!), str)
    }

    public init(description: StaticString, type: `Type` = .current, flags: Flags = .default, dso: UnsafeRawPointer = #dsohandle) {
        self.activity = _os_activity_create(
            UnsafeMutableRawPointer(mutating: dso),
            description.cCharBasePointer,
            type.value,
            os_activity_flag_t(rawValue: flags.rawValue)
        )
    }

    public func apply(_ activities: () -> Void) {
        _os_activity_apply(activity, activities)
    }

    public func enter() -> Scope {
        let scope = Scope()
        _os_activity_scope_enter(activity, scope.state)
        return scope
    }
}

extension Besogne {
    public struct Scope: ~Copyable {
        let state = UnsafeMutablePointer<os_activity_scope_state_s>.allocate(capacity: 1)

        public consuming func leave() {
            _os_activity_scope_leave(state)
        }

        deinit {
            state.deallocate()
        }
    }
}
