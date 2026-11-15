package tc;

import com.google.firebase.perf.config.RemoteConfigManager;

public final class f implements iy.a {

    private final a f72687a;

    public f(a aVar) {
        this.f72687a = aVar;
    }

    public static f a(a aVar) {
        return new f(aVar);
    }

    public static RemoteConfigManager c(a aVar) {
        return (RemoteConfigManager) ux.b.c(aVar.e());
    }

    @Override
    public RemoteConfigManager get() {
        return c(this.f72687a);
    }
}
