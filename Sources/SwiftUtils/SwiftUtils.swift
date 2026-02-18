extension Unmanaged {
    public func to<T>() -> Unmanaged<T> {
        Unmanaged<T>.fromOpaque(self.toOpaque())
    }
}