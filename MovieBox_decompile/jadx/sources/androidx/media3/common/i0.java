package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Booleans;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class i0 {

    public static final i0 f9772b = new i0(ImmutableList.of());

    private static final String f9773c = a1.C0(0);

    private final ImmutableList f9774a;

    public static final class a {

        private static final String f9775f = a1.C0(0);

        private static final String f9776g = a1.C0(1);

        private static final String f9777h = a1.C0(3);

        private static final String f9778i = a1.C0(4);

        public final int f9779a;

        private final f0 f9780b;

        private final boolean f9781c;

        private final int[] f9782d;

        private final boolean[] f9783e;

        public a(f0 f0Var, boolean z10, int[] iArr, boolean[] zArr) {
            int i10 = f0Var.f9659a;
            this.f9779a = i10;
            boolean z11 = false;
            androidx.media3.common.util.a.a(i10 == iArr.length && i10 == zArr.length);
            this.f9780b = f0Var;
            if (z10 && i10 > 1) {
                z11 = true;
            }
            this.f9781c = z11;
            this.f9782d = (int[]) iArr.clone();
            this.f9783e = (boolean[]) zArr.clone();
        }

        public f0 a() {
            return this.f9780b;
        }

        public r b(int i10) {
            return this.f9780b.a(i10);
        }

        public int c(int i10) {
            return this.f9782d[i10];
        }

        public int d() {
            return this.f9780b.f9661c;
        }

        public boolean e() {
            return this.f9781c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9781c == aVar.f9781c && this.f9780b.equals(aVar.f9780b) && Arrays.equals(this.f9782d, aVar.f9782d) && Arrays.equals(this.f9783e, aVar.f9783e);
        }

        public boolean f() {
            return Booleans.a(this.f9783e, true);
        }

        public boolean g(boolean z10) {
            for (int i10 = 0; i10 < this.f9782d.length; i10++) {
                if (j(i10, z10)) {
                    return true;
                }
            }
            return false;
        }

        public boolean h(int i10) {
            return this.f9783e[i10];
        }

        public int hashCode() {
            return (((((this.f9780b.hashCode() * 31) + (this.f9781c ? 1 : 0)) * 31) + Arrays.hashCode(this.f9782d)) * 31) + Arrays.hashCode(this.f9783e);
        }

        public boolean i(int i10) {
            return j(i10, false);
        }

        public boolean j(int i10, boolean z10) {
            int i11 = this.f9782d[i10];
            return i11 == 4 || (z10 && i11 == 3);
        }
    }

    public i0(List list) {
        this.f9774a = ImmutableList.copyOf((Collection) list);
    }

    public ImmutableList a() {
        return this.f9774a;
    }

    public boolean b() {
        return this.f9774a.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean c(int i10) {
        for (int i11 = 0; i11 < this.f9774a.size(); i11++) {
            a aVar = (a) this.f9774a.get(i11);
            if (aVar.f() && aVar.d() == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean d(int i10) {
        return e(i10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean e(int i10, boolean z10) {
        for (int i11 = 0; i11 < this.f9774a.size(); i11++) {
            if (((a) this.f9774a.get(i11)).d() == i10 && ((a) this.f9774a.get(i11)).g(z10)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i0.class != obj.getClass()) {
            return false;
        }
        return this.f9774a.equals(((i0) obj).f9774a);
    }

    public int hashCode() {
        return this.f9774a.hashCode();
    }
}
