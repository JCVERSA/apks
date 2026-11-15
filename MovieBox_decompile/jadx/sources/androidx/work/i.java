package androidx.work;

import android.content.Context;
import java.util.UUID;
import java.util.concurrent.Executor;

public abstract class i {

    private Context f15136a;

    private WorkerParameters f15137b;

    private volatile boolean f15138c;

    private boolean f15139d;

    public static abstract class a {

        public static final class C0127a extends a {

            private final d f15140a;

            public C0127a() {
                this(d.f15129c);
            }

            public d e() {
                return this.f15140a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0127a.class != obj.getClass()) {
                    return false;
                }
                return this.f15140a.equals(((C0127a) obj).f15140a);
            }

            public int hashCode() {
                return (C0127a.class.getName().hashCode() * 31) + this.f15140a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f15140a + '}';
            }

            public C0127a(d dVar) {
                this.f15140a = dVar;
            }
        }

        public static final class b extends a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        public static final class c extends a {

            private final d f15141a;

            public c() {
                this(d.f15129c);
            }

            public d e() {
                return this.f15141a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.f15141a.equals(((c) obj).f15141a);
            }

            public int hashCode() {
                return (c.class.getName().hashCode() * 31) + this.f15141a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f15141a + '}';
            }

            public c(d dVar) {
                this.f15141a = dVar;
            }
        }

        a() {
        }

        public static a a() {
            return new C0127a();
        }

        public static a b() {
            return new b();
        }

        public static a c() {
            return new c();
        }

        public static a d(d dVar) {
            return new c(dVar);
        }
    }

    public i(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f15136a = context;
        this.f15137b = workerParameters;
    }

    public final Context b() {
        return this.f15136a;
    }

    public Executor c() {
        return this.f15137b.a();
    }

    public com.google.common.util.concurrent.r d() {
        androidx.work.impl.utils.futures.a aVarX = androidx.work.impl.utils.futures.a.x();
        aVarX.u(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return aVarX;
    }

    public final UUID e() {
        return this.f15137b.c();
    }

    public final d g() {
        return this.f15137b.d();
    }

    public k4.c h() {
        return this.f15137b.e();
    }

    public s i() {
        return this.f15137b.f();
    }

    public final boolean j() {
        return this.f15138c;
    }

    public final boolean k() {
        return this.f15139d;
    }

    public final void m() {
        this.f15139d = true;
    }

    public abstract com.google.common.util.concurrent.r n();

    public final void o() {
        this.f15138c = true;
        l();
    }

    public void l() {
    }
}
