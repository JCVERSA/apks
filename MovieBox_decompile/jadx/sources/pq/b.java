package pq;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {

    public static final C0856b f69239e = new C0856b(null);

    private static final b f69240f = new a().a();

    private final boolean f69241a;

    private final boolean f69242b;

    private final boolean f69243c;

    private final d f69244d;

    public static final class a {

        private boolean f69247c;

        private boolean f69245a = true;

        private boolean f69246b = true;

        private d f69248d = new c();

        public final b a() {
            return new b(this, null);
        }

        public final boolean b() {
            return this.f69247c;
        }

        public final boolean c() {
            return this.f69245a;
        }

        public final boolean d() {
            return this.f69246b;
        }

        public final d e() {
            return this.f69248d;
        }
    }

    public static final class C0856b {
        public C0856b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return b.f69240f;
        }

        private C0856b() {
        }
    }

    public static final class c implements d {
        @Override
        public boolean a() {
            return d.a.c(this);
        }

        @Override
        public boolean b() {
            return d.a.d(this);
        }

        @Override
        public boolean c() {
            return d.a.b(this);
        }

        @Override
        public int d() {
            return d.a.a(this);
        }
    }

    public interface d {

        public static final class a {
            public static int a(d dVar) {
                return 40;
            }

            public static boolean b(d dVar) {
                return false;
            }

            public static boolean c(d dVar) {
                return false;
            }

            public static boolean d(d dVar) {
                return false;
            }
        }

        boolean a();

        boolean b();

        boolean c();

        int d();
    }

    public b(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    public final boolean b() {
        return this.f69243c;
    }

    public final boolean c() {
        return this.f69241a;
    }

    public final d d() {
        return this.f69244d;
    }

    private b(a aVar) {
        this.f69241a = aVar.c();
        this.f69242b = aVar.d();
        this.f69243c = aVar.b();
        this.f69244d = aVar.e();
    }
}
