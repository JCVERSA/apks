package defpackage;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class chi {
    public static final Logger c = Logger.getLogger(chi.class.getName());
    public static final chi d = new chi();
    public final ConcurrentMap a = new ConcurrentHashMap();
    public final ConcurrentMap b = new ConcurrentHashMap();

    public static chi c() {
        return d;
    }

    public final c9i a(String str, Class cls) throws GeneralSecurityException {
        c9i c9iVarG = g(str);
        if (c9iVarG.zzb().equals(cls)) {
            return c9iVarG;
        }
        throw new GeneralSecurityException("Primitive type " + cls.getName() + " not supported by key manager of type " + String.valueOf(c9iVarG.getClass()) + ", which only supports: " + c9iVarG.zzb().toString());
    }

    public final c9i b(String str) {
        return g(str);
    }

    public final synchronized void d(c9i c9iVar, boolean z) {
        f(c9iVar, 1, true);
    }

    public final boolean e(String str) {
        return ((Boolean) this.b.get(str)).booleanValue();
    }

    public final synchronized void f(c9i c9iVar, int i, boolean z) {
        if (!tgi.a(i)) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        h(c9iVar, false, true);
    }

    public final synchronized c9i g(String str) {
        ConcurrentMap concurrentMap;
        concurrentMap = this.a;
        if (!concurrentMap.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type " + str + ", see https://developers.google.com/tink/faq/registration_errors");
        }
        return (c9i) concurrentMap.get(str);
    }

    public final synchronized void h(c9i c9iVar, boolean z, boolean z2) {
        try {
            String str = ((phi) c9iVar).a;
            ConcurrentMap concurrentMap = this.b;
            if (concurrentMap.containsKey(str) && !((Boolean) concurrentMap.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            ConcurrentMap concurrentMap2 = this.a;
            c9i c9iVar2 = (c9i) concurrentMap2.get(str);
            if (c9iVar2 != null && !c9iVar2.getClass().equals(c9iVar.getClass())) {
                c.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(str));
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, c9iVar2.getClass().getName(), c9iVar.getClass().getName()));
            }
            concurrentMap2.putIfAbsent(str, c9iVar);
            concurrentMap.put(str, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }
}
