extension StaticString {
    var cCharBasePointer: UnsafePointer<CChar> {
        withUTF8Buffer { bufferPtr in
            bufferPtr.baseAddress!.withMemoryRebound(to: CChar.self, capacity: CChar.bitWidth) { $0 }
        }
    }
}
