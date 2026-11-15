package w3;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f74144c = new a(null);

    private static final Map f74145d = new LinkedHashMap();

    private final ReentrantLock f74146a;

    private final c f74147b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c c(String str) {
            return new c(str);
        }

        public final ReentrantLock d(String str) {
            ReentrantLock reentrantLock;
            synchronized (this) {
                try {
                    Map map = b.f74145d;
                    Object reentrantLock2 = map.get(str);
                    if (reentrantLock2 == null) {
                        reentrantLock2 = new ReentrantLock();
                        map.put(str, reentrantLock2);
                    }
                    reentrantLock = (ReentrantLock) reentrantLock2;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return reentrantLock;
        }

        private a() {
        }
    }

    public b(String filename, boolean z10) {
        Intrinsics.h(filename, "filename");
        a aVar = f74144c;
        this.f74146a = aVar.d(filename);
        this.f74147b = z10 ? aVar.c(filename) : null;
    }

    public final Object b(Function0 onLocked, Function1 onLockError) {
        Intrinsics.h(onLocked, "onLocked");
        Intrinsics.h(onLockError, "onLockError");
        this.f74146a.lock();
        boolean z10 = false;
        try {
            c cVar = this.f74147b;
            if (cVar != null) {
                cVar.a();
            }
            z10 = true;
            try {
                Object objInvoke = onLocked.invoke();
                c cVar2 = this.f74147b;
                if (cVar2 != null) {
                    cVar2.b();
                }
                this.f74146a.unlock();
                return objInvoke;
            } catch (Throwable th2) {
                c cVar3 = this.f74147b;
                if (cVar3 != null) {
                    cVar3.b();
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                if (z10) {
                    throw th3;
                }
                onLockError.invoke(th3);
                throw new KotlinNothingValueException();
            } catch (Throwable th4) {
                this.f74146a.unlock();
                throw th4;
            }
        }
    }
}
