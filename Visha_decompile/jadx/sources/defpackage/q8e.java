package defpackage;

import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;

public final class q8e {
    public final p8e a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    public q8e(p8e p8eVar) {
        this.a = p8eVar;
    }

    public final c9e a(Object... objArr) {
        Constructor constructorZza;
        AtomicBoolean atomicBoolean = this.b;
        synchronized (atomicBoolean) {
            try {
                if (!atomicBoolean.get()) {
                    try {
                        constructorZza = this.a.zza();
                    } catch (ClassNotFoundException unused) {
                        this.b.set(true);
                        constructorZza = null;
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating extension", e);
                    }
                }
                constructorZza = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (constructorZza == null) {
            return null;
        }
        try {
            return (c9e) constructorZza.newInstance(objArr);
        } catch (Exception e2) {
            throw new IllegalStateException("Unexpected error creating extractor", e2);
        }
    }
}
