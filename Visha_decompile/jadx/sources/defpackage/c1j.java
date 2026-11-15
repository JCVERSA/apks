package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class c1j {
    public static final c1j b = new c1j();
    public final ConcurrentMap a = new ConcurrentHashMap();

    public c1j() {
        dgi.a();
    }

    public static c1j a() {
        return b;
    }

    public final u1j b(Class cls) {
        Object obj = this.a.get(cls);
        return obj == null ? c(cls) : (u1j) obj;
    }

    public final u1j c(Class cls) {
        u1j u1jVarY;
        g3j g3jVar = y1j.a;
        if (!kli.class.isAssignableFrom(cls)) {
            int i = onh.a;
        }
        int i2 = onh.a;
        if (!kli.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            b0j b0jVar = (b0j) kli.q(cls.asSubclass(kli.class)).l(3, null, null);
            if (b0jVar.zzb()) {
                u1jVarY = t0j.g(y1j.r(), wai.a(), b0jVar.zza());
            } else {
                u1jVarY = q0j.y(cls, b0jVar, z0j.a(), hyi.a(), y1j.r(), b0jVar.zzc() + (-1) != 1 ? wai.a() : null, zzi.a());
            }
            u1j u1jVar = (u1j) this.a.putIfAbsent(cls, u1jVarY);
            return u1jVar != null ? u1jVar : u1jVarY;
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
        }
    }
}
