package kl;

import android.util.Log;
import fl.k;

public abstract class c {

    private static final InterfaceC0795c f64042a = new e();

    public interface a {
        Object create();
    }

    public interface b {
        k getVerifier();
    }

    public interface InterfaceC0795c {
        void reset(Object obj);
    }

    private static final class d implements f {

        private final a f64043a;

        private final InterfaceC0795c f64044b;

        private final f f64045c;

        d(f fVar, a aVar, InterfaceC0795c interfaceC0795c) {
            this.f64045c = fVar;
            this.f64043a = aVar;
            this.f64044b = interfaceC0795c;
        }

        @Override
        public Object acquire() {
            Object objAcquire = this.f64045c.acquire();
            if (objAcquire == null) {
                objAcquire = this.f64043a.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + objAcquire.getClass());
                }
            }
            if (objAcquire instanceof b) {
                ((b) objAcquire).getVerifier().a(false);
            }
            return objAcquire;
        }

        @Override
        public boolean release(Object obj) {
            if (obj instanceof b) {
                ((b) obj).getVerifier().a(true);
            }
            this.f64044b.reset(obj);
            return this.f64045c.release(obj);
        }
    }

    static class e implements InterfaceC0795c {
        e() {
        }

        @Override
        public void reset(Object obj) {
        }
    }

    private static f a(f fVar, a aVar) {
        return b(fVar, aVar, f64042a);
    }

    private static f b(f fVar, a aVar, InterfaceC0795c interfaceC0795c) {
        return new d(fVar, aVar, interfaceC0795c);
    }

    public static f c(int i10, a aVar) {
        return a(new h(i10), aVar);
    }
}
