extension Unmanaged:@retroactive Equatable, @retroactive Hashable {
    public static func == (lhs: Unmanaged, rhs: Unmanaged) -> Bool {
        lhs.toOpaque() == rhs.toOpaque()
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(toOpaque())
    }
    public func to<T>() -> Unmanaged<T> {
        Unmanaged<T>.fromOpaque(self.toOpaque())
    }
}