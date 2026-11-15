package defpackage;

import android.util.Log;

public abstract class bl3 {
    public static final c a = new e();

    public interface a {
        Object create();
    }

    public interface b {
        dod getVerifier();
    }

    public interface c {
        void reset(Object obj);
    }

    public static final class d implements ad8 {
        public final a a;
        public final c b;
        public final ad8 c;

        public d(ad8 ad8Var, a aVar, c cVar) {
            this.c = ad8Var;
            this.a = aVar;
            this.b = cVar;
        }

        @Override
        public Object acquire() {
            Object objAcquire = this.c.acquire();
            if (objAcquire == null) {
                objAcquire = this.a.create();
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
            this.b.reset(obj);
            return this.c.release(obj);
        }
    }

    public static class e implements c {
        @Override
        public void reset(Object obj) {
        }
    }

    public static ad8 a(ad8 ad8Var, a aVar) {
        return b(ad8Var, aVar, a);
    }

    public static ad8 b(ad8 ad8Var, a aVar, c cVar) {
        return new d(ad8Var, aVar, cVar);
    }

    public static ad8 c(int i, a aVar) {
        return a(new cd8(i), aVar);
    }
}
