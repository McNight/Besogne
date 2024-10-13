import os.activity

extension Besogne {
    public enum `Type`: String {
        case `none` = "_os_activity_none"
        case current = "_os_activity_current"

        // Improve this
        var value: OS_os_activity {
            let symbol = dlsym(dlopen(nil, RTLD_LAZY), rawValue)
            return unsafeBitCast(symbol, to: Unmanaged<OS_os_activity>.self).takeUnretainedValue()
        }
    }
}
