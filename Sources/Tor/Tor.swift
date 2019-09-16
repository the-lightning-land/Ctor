import Ctor

public class TorMainConfiguration {
    var ptr: UnsafeMutablePointer<tor_main_configuration_t>
    
    public init() {
        self.ptr = Ctor.tor_main_configuration_new()!
    }
    deinit {
        Ctor.tor_main_configuration_free(self.ptr)
    }
}

func runTor(_ config: TorMainConfiguration) -> Int {
    return tor_run_main(config.ptr)
}
