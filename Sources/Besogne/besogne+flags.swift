import os.activity

extension Besogne {
    public struct Flags: OptionSet, Sendable {
        public let rawValue: UInt32

        /// Creates a new activity and associates it as a child of any provided parent activity.
        public static let `default`     = Flags(rawValue: OS_ACTIVITY_FLAG_DEFAULT.rawValue)
        /// Creates a new activity that is independent of any provided parent activity.
        public static let detached      = Flags(rawValue: OS_ACTIVITY_FLAG_DEFAULT.rawValue)
        /// Creates a new activity only if one is not already present.
        public static let ifNonePresent = Flags(rawValue: OS_ACTIVITY_FLAG_IF_NONE_PRESENT.rawValue)

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }
    }
}
