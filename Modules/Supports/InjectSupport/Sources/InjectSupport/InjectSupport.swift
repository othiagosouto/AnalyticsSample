import Factory

public final class InjectSupport : SharedContainer {
    public static let shared = InjectSupport()
    public let manager = ContainerManager()
    
    /// Needed to allow unit tests not to throw a lint error for `.shared` properties. CompositionRoot is the only exception
    /// where this would be allowed.
    static var monolith: InjectSupport {
        .shared
    }


    public init() {}
}
