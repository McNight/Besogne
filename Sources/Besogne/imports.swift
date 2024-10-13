import os.activity

@_silgen_name("os_activity_apply")
internal func _os_activity_apply(_ activity: AnyObject, _ block: @convention(block) () -> Void)

@_silgen_name("os_activity_get_identifier")
internal func _os_activity_get_identifier(_ activity: AnyObject, _ parent_id: UnsafeMutablePointer<Besogne.ID>?) -> Besogne.ID

@_silgen_name("os_activity_scope_leave")
internal func _os_activity_scope_leave(_ state: UnsafeMutablePointer<os_activity_scope_state_s>)

@_silgen_name("os_activity_scope_enter")
internal func _os_activity_scope_enter(_ storage: AnyObject, _ state: UnsafeMutablePointer<os_activity_scope_state_s>)
