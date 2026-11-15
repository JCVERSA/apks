package androidx.compose.foundation.lazy.layout;

public final class e {

    public static final int f2728b = androidx.compose.runtime.collection.b.f3371d;

    private final androidx.compose.runtime.collection.b f2729a = new androidx.compose.runtime.collection.b(new a[16], 0);

    public static final class a {

        private final int f2730a;

        private final int f2731b;

        public a(int i10, int i11) {
            this.f2730a = i10;
            this.f2731b = i11;
            if (i10 < 0) {
                throw new IllegalArgumentException("negative start index");
            }
            if (i11 < i10) {
                throw new IllegalArgumentException("end index greater than start");
            }
        }

        public final int a() {
            return this.f2731b;
        }

        public final int b() {
            return this.f2730a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f2730a == aVar.f2730a && this.f2731b == aVar.f2731b;
        }

        public int hashCode() {
            return (this.f2730a * 31) + this.f2731b;
        }

        public String toString() {
            return "Interval(start=" + this.f2730a + ", end=" + this.f2731b + ')';
        }
    }

    public final a a(int i10, int i11) {
        a aVar = new a(i10, i11);
        this.f2729a.b(aVar);
        return aVar;
    }

    public final int b() {
        int iA = ((a) this.f2729a.l()).a();
        androidx.compose.runtime.collection.b bVar = this.f2729a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i10 = 0;
            do {
                a aVar = (a) objArrM[i10];
                if (aVar.a() > iA) {
                    iA = aVar.a();
                }
                i10++;
            } while (i10 < iN);
        }
        return iA;
    }

    public final int c() {
        int iB = ((a) this.f2729a.l()).b();
        androidx.compose.runtime.collection.b bVar = this.f2729a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i10 = 0;
            do {
                a aVar = (a) objArrM[i10];
                if (aVar.b() < iB) {
                    iB = aVar.b();
                }
                i10++;
            } while (i10 < iN);
        }
        if (iB >= 0) {
            return iB;
        }
        throw new IllegalArgumentException("negative minIndex");
    }

    public final boolean d() {
        return this.f2729a.q();
    }

    public final void e(a aVar) {
        this.f2729a.t(aVar);
    }
}
