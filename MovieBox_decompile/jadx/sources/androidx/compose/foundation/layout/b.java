package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.ArraysKt;

public final class b {

    public static final b f2527a = new b();

    private static final d f2528b = new i();

    private static final d f2529c = new c();

    private static final k f2530d = new j();

    private static final k f2531e = new a();

    private static final e f2532f = new C0026b();

    private static final e f2533g = new h();

    private static final e f2534h = new g();

    private static final e f2535i = new f();

    public static final class a implements k {
        a() {
        }

        @Override
        public float a() {
            return androidx.compose.foundation.layout.d.a(this);
        }

        @Override
        public void c(o0.e eVar, int i10, int[] iArr, int[] iArr2) {
            b.f2527a.g(i10, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#Bottom";
        }
    }

    public static final class C0026b implements e {

        private final float f2536a = o0.i.g(0);

        C0026b() {
        }

        @Override
        public float a() {
            return this.f2536a;
        }

        @Override
        public void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2527a.e(i10, iArr, iArr2, false);
            } else {
                b.f2527a.e(i10, iArr, iArr2, true);
            }
        }

        @Override
        public void c(o0.e eVar, int i10, int[] iArr, int[] iArr2) {
            b.f2527a.e(i10, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#Center";
        }
    }

    public static final class c implements d {
        c() {
        }

        @Override
        public float a() {
            return androidx.compose.foundation.layout.c.a(this);
        }

        @Override
        public void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2527a.g(i10, iArr, iArr2, false);
            } else {
                b.f2527a.f(iArr, iArr2, true);
            }
        }

        public String toString() {
            return "Arrangement#End";
        }
    }

    public interface d {
        float a();

        void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2);
    }

    public interface e extends d, k {
    }

    public static final class f implements e {

        private final float f2537a = o0.i.g(0);

        f() {
        }

        @Override
        public float a() {
            return this.f2537a;
        }

        @Override
        public void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2527a.h(i10, iArr, iArr2, false);
            } else {
                b.f2527a.h(i10, iArr, iArr2, true);
            }
        }

        @Override
        public void c(o0.e eVar, int i10, int[] iArr, int[] iArr2) {
            b.f2527a.h(i10, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#SpaceAround";
        }
    }

    public static final class g implements e {

        private final float f2538a = o0.i.g(0);

        g() {
        }

        @Override
        public float a() {
            return this.f2538a;
        }

        @Override
        public void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2527a.i(i10, iArr, iArr2, false);
            } else {
                b.f2527a.i(i10, iArr, iArr2, true);
            }
        }

        @Override
        public void c(o0.e eVar, int i10, int[] iArr, int[] iArr2) {
            b.f2527a.i(i10, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#SpaceBetween";
        }
    }

    public static final class h implements e {

        private final float f2539a = o0.i.g(0);

        h() {
        }

        @Override
        public float a() {
            return this.f2539a;
        }

        @Override
        public void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2527a.j(i10, iArr, iArr2, false);
            } else {
                b.f2527a.j(i10, iArr, iArr2, true);
            }
        }

        @Override
        public void c(o0.e eVar, int i10, int[] iArr, int[] iArr2) {
            b.f2527a.j(i10, iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#SpaceEvenly";
        }
    }

    public static final class i implements d {
        i() {
        }

        @Override
        public float a() {
            return androidx.compose.foundation.layout.c.a(this);
        }

        @Override
        public void b(o0.e eVar, int i10, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            if (layoutDirection == LayoutDirection.Ltr) {
                b.f2527a.f(iArr, iArr2, false);
            } else {
                b.f2527a.g(i10, iArr, iArr2, true);
            }
        }

        public String toString() {
            return "Arrangement#Start";
        }
    }

    public static final class j implements k {
        j() {
        }

        @Override
        public float a() {
            return androidx.compose.foundation.layout.d.a(this);
        }

        @Override
        public void c(o0.e eVar, int i10, int[] iArr, int[] iArr2) {
            b.f2527a.f(iArr, iArr2, false);
        }

        public String toString() {
            return "Arrangement#Top";
        }
    }

    public interface k {
        float a();

        void c(o0.e eVar, int i10, int[] iArr, int[] iArr2);
    }

    private b() {
    }

    public final k a() {
        return f2531e;
    }

    public final e b() {
        return f2532f;
    }

    public final d c() {
        return f2528b;
    }

    public final k d() {
        return f2530d;
    }

    public final void e(int i10, int[] iArr, int[] iArr2, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 : iArr) {
            i12 += i13;
        }
        float f10 = (i10 - i12) / 2;
        if (!z10) {
            int length = iArr.length;
            int i14 = 0;
            while (i11 < length) {
                int i15 = iArr[i11];
                iArr2[i14] = Math.round(f10);
                f10 += i15;
                i11++;
                i14++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i16 = iArr[length2];
            iArr2[length2] = Math.round(f10);
            f10 += i16;
        }
    }

    public final void f(int[] iArr, int[] iArr2, boolean z10) {
        int i10 = 0;
        if (!z10) {
            int length = iArr.length;
            int i11 = 0;
            int i12 = 0;
            while (i10 < length) {
                int i13 = iArr[i10];
                iArr2[i11] = i12;
                i12 += i13;
                i10++;
                i11++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i14 = iArr[length2];
            iArr2[length2] = i10;
            i10 += i14;
        }
    }

    public final void g(int i10, int[] iArr, int[] iArr2, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 : iArr) {
            i12 += i13;
        }
        int i14 = i10 - i12;
        if (!z10) {
            int length = iArr.length;
            int i15 = 0;
            while (i11 < length) {
                int i16 = iArr[i11];
                iArr2[i15] = i14;
                i14 += i16;
                i11++;
                i15++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i17 = iArr[length2];
            iArr2[length2] = i14;
            i14 += i17;
        }
    }

    public final void h(int i10, int[] iArr, int[] iArr2, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 : iArr) {
            i12 += i13;
        }
        float length = !(iArr.length == 0) ? (i10 - i12) / iArr.length : 0.0f;
        float f10 = length / 2;
        if (z10) {
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i14 = iArr[length2];
                iArr2[length2] = Math.round(f10);
                f10 += i14 + length;
            }
            return;
        }
        int length3 = iArr.length;
        int i15 = 0;
        while (i11 < length3) {
            int i16 = iArr[i11];
            iArr2[i15] = Math.round(f10);
            f10 += i16 + length;
            i11++;
            i15++;
        }
    }

    public final void i(int i10, int[] iArr, int[] iArr2, boolean z10) {
        if (iArr.length == 0) {
            return;
        }
        int i11 = 0;
        int i12 = 0;
        for (int i13 : iArr) {
            i12 += i13;
        }
        float fMax = (i10 - i12) / Math.max(ArraysKt.W(iArr), 1);
        float f10 = (z10 && iArr.length == 1) ? fMax : 0.0f;
        if (z10) {
            for (int length = iArr.length - 1; -1 < length; length--) {
                int i14 = iArr[length];
                iArr2[length] = Math.round(f10);
                f10 += i14 + fMax;
            }
            return;
        }
        int length2 = iArr.length;
        int i15 = 0;
        while (i11 < length2) {
            int i16 = iArr[i11];
            iArr2[i15] = Math.round(f10);
            f10 += i16 + fMax;
            i11++;
            i15++;
        }
    }

    public final void j(int i10, int[] iArr, int[] iArr2, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 : iArr) {
            i12 += i13;
        }
        float length = (i10 - i12) / (iArr.length + 1);
        if (z10) {
            float f10 = length;
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i14 = iArr[length2];
                iArr2[length2] = Math.round(f10);
                f10 += i14 + length;
            }
            return;
        }
        int length3 = iArr.length;
        float f11 = length;
        int i15 = 0;
        while (i11 < length3) {
            int i16 = iArr[i11];
            iArr2[i15] = Math.round(f11);
            f11 += i16 + length;
            i11++;
            i15++;
        }
    }
}
