package androidx.recyclerview.widget;

import androidx.collection.x;

interface s {

    public static class a implements s {

        long f14103a = 0;

        class C0106a implements d {

            private final x f14104a = new x();

            C0106a() {
            }

            @Override
            public long a(long j10) {
                Long lValueOf = (Long) this.f14104a.e(j10);
                if (lValueOf == null) {
                    lValueOf = Long.valueOf(a.this.b());
                    this.f14104a.k(j10, lValueOf);
                }
                return lValueOf.longValue();
            }
        }

        @Override
        public d a() {
            return new C0106a();
        }

        long b() {
            long j10 = this.f14103a;
            this.f14103a = 1 + j10;
            return j10;
        }
    }

    public static class b implements s {

        private final d f14106a = new a();

        class a implements d {
            a() {
            }

            @Override
            public long a(long j10) {
                return -1L;
            }
        }

        @Override
        public d a() {
            return this.f14106a;
        }
    }

    public interface d {
        long a(long j10);
    }

    d a();

    public static class c implements s {

        private final d f14108a = new a();

        @Override
        public d a() {
            return this.f14108a;
        }

        class a implements d {
            a() {
            }

            @Override
            public long a(long j10) {
                return j10;
            }
        }
    }
}
