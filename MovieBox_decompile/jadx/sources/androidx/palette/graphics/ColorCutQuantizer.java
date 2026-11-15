package androidx.palette.graphics;

import android.graphics.Color;
import android.util.TimingLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

final class ColorCutQuantizer {

    private static final Comparator f13654g = new Comparator<a>() {
        @Override
        public int compare(a aVar, a aVar2) {
            return aVar2.g() - aVar.g();
        }
    };

    final int[] f13655a;

    final int[] f13656b;

    final List f13657c;

    final androidx.palette.graphics.a.c[] f13659e;

    private final float[] f13660f = new float[3];

    final TimingLogger f13658d = null;

    private class a {

        private int f13661a;

        private int f13662b;

        private int f13663c;

        private int f13664d;

        private int f13665e;

        private int f13666f;

        private int f13667g;

        private int f13668h;

        private int f13669i;

        a(int i10, int i11) {
            this.f13661a = i10;
            this.f13662b = i11;
            c();
        }

        final boolean a() {
            return e() > 1;
        }

        final int b() {
            int iF = f();
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f13655a;
            int[] iArr2 = colorCutQuantizer.f13656b;
            ColorCutQuantizer.e(iArr, iF, this.f13661a, this.f13662b);
            Arrays.sort(iArr, this.f13661a, this.f13662b + 1);
            ColorCutQuantizer.e(iArr, iF, this.f13661a, this.f13662b);
            int i10 = this.f13663c / 2;
            int i11 = this.f13661a;
            int i12 = 0;
            while (true) {
                int i13 = this.f13662b;
                if (i11 > i13) {
                    return this.f13661a;
                }
                i12 += iArr2[iArr[i11]];
                if (i12 >= i10) {
                    return Math.min(i13 - 1, i11);
                }
                i11++;
            }
        }

        final void c() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f13655a;
            int[] iArr2 = colorCutQuantizer.f13656b;
            int i10 = Integer.MAX_VALUE;
            int i11 = Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = 0;
            int i15 = Integer.MAX_VALUE;
            int i16 = Integer.MAX_VALUE;
            for (int i17 = this.f13661a; i17 <= this.f13662b; i17++) {
                int i18 = iArr[i17];
                i14 += iArr2[i18];
                int iK = ColorCutQuantizer.k(i18);
                int iJ = ColorCutQuantizer.j(i18);
                int i19 = ColorCutQuantizer.i(i18);
                if (iK > i11) {
                    i11 = iK;
                }
                if (iK < i10) {
                    i10 = iK;
                }
                if (iJ > i12) {
                    i12 = iJ;
                }
                if (iJ < i15) {
                    i15 = iJ;
                }
                if (i19 > i13) {
                    i13 = i19;
                }
                if (i19 < i16) {
                    i16 = i19;
                }
            }
            this.f13664d = i10;
            this.f13665e = i11;
            this.f13666f = i15;
            this.f13667g = i12;
            this.f13668h = i16;
            this.f13669i = i13;
            this.f13663c = i14;
        }

        final androidx.palette.graphics.a.e d() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.f13655a;
            int[] iArr2 = colorCutQuantizer.f13656b;
            int iK = 0;
            int i10 = 0;
            int iJ = 0;
            int i11 = 0;
            for (int i12 = this.f13661a; i12 <= this.f13662b; i12++) {
                int i13 = iArr[i12];
                int i14 = iArr2[i13];
                i10 += i14;
                iK += ColorCutQuantizer.k(i13) * i14;
                iJ += ColorCutQuantizer.j(i13) * i14;
                i11 += i14 * ColorCutQuantizer.i(i13);
            }
            float f10 = i10;
            return new androidx.palette.graphics.a.e(ColorCutQuantizer.b(Math.round(iK / f10), Math.round(iJ / f10), Math.round(i11 / f10)), i10);
        }

        final int e() {
            return (this.f13662b + 1) - this.f13661a;
        }

        final int f() {
            int i10 = this.f13665e - this.f13664d;
            int i11 = this.f13667g - this.f13666f;
            int i12 = this.f13669i - this.f13668h;
            if (i10 < i11 || i10 < i12) {
                return (i11 < i10 || i11 < i12) ? -1 : -2;
            }
            return -3;
        }

        final int g() {
            return ((this.f13665e - this.f13664d) + 1) * ((this.f13667g - this.f13666f) + 1) * ((this.f13669i - this.f13668h) + 1);
        }

        final a h() {
            if (!a()) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int iB = b();
            a aVar = ColorCutQuantizer.this.new a(iB + 1, this.f13662b);
            this.f13662b = iB;
            c();
            return aVar;
        }
    }

    ColorCutQuantizer(int[] iArr, int i10, androidx.palette.graphics.a.c[] cVarArr) {
        this.f13659e = cVarArr;
        int[] iArr2 = new int[32768];
        this.f13656b = iArr2;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int iG = g(iArr[i11]);
            iArr[i11] = iG;
            iArr2[iG] = iArr2[iG] + 1;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < 32768; i13++) {
            if (iArr2[i13] > 0 && l(i13)) {
                iArr2[i13] = 0;
            }
            if (iArr2[i13] > 0) {
                i12++;
            }
        }
        int[] iArr3 = new int[i12];
        this.f13655a = iArr3;
        int i14 = 0;
        for (int i15 = 0; i15 < 32768; i15++) {
            if (iArr2[i15] > 0) {
                iArr3[i14] = i15;
                i14++;
            }
        }
        if (i12 > i10) {
            this.f13657c = h(i10);
            return;
        }
        this.f13657c = new ArrayList();
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = iArr3[i16];
            this.f13657c.add(new androidx.palette.graphics.a.e(a(i17), iArr2[i17]));
        }
    }

    private static int a(int i10) {
        return b(k(i10), j(i10), i(i10));
    }

    static int b(int i10, int i11, int i12) {
        return Color.rgb(f(i10, 5, 8), f(i11, 5, 8), f(i12, 5, 8));
    }

    private List c(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            androidx.palette.graphics.a.e eVarD = ((a) it.next()).d();
            if (!n(eVarD)) {
                arrayList.add(eVarD);
            }
        }
        return arrayList;
    }

    static void e(int[] iArr, int i10, int i11, int i12) {
        if (i10 == -2) {
            while (i11 <= i12) {
                int i13 = iArr[i11];
                iArr[i11] = i(i13) | (j(i13) << 10) | (k(i13) << 5);
                i11++;
            }
            return;
        }
        if (i10 != -1) {
            return;
        }
        while (i11 <= i12) {
            int i14 = iArr[i11];
            iArr[i11] = k(i14) | (i(i14) << 10) | (j(i14) << 5);
            i11++;
        }
    }

    private static int f(int i10, int i11, int i12) {
        return (i12 > i11 ? i10 << (i12 - i11) : i10 >> (i11 - i12)) & ((1 << i12) - 1);
    }

    private static int g(int i10) {
        return f(Color.blue(i10), 8, 5) | (f(Color.red(i10), 8, 5) << 10) | (f(Color.green(i10), 8, 5) << 5);
    }

    private List h(int i10) {
        PriorityQueue priorityQueue = new PriorityQueue(i10, f13654g);
        priorityQueue.offer(new a(0, this.f13655a.length - 1));
        o(priorityQueue, i10);
        return c(priorityQueue);
    }

    static int i(int i10) {
        return i10 & 31;
    }

    static int j(int i10) {
        return (i10 >> 5) & 31;
    }

    static int k(int i10) {
        return (i10 >> 10) & 31;
    }

    private boolean l(int i10) {
        int iA = a(i10);
        z0.b.h(iA, this.f13660f);
        return m(iA, this.f13660f);
    }

    private boolean m(int i10, float[] fArr) {
        androidx.palette.graphics.a.c[] cVarArr = this.f13659e;
        if (cVarArr != null && cVarArr.length > 0) {
            int length = cVarArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (!this.f13659e[i11].a(i10, fArr)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean n(androidx.palette.graphics.a.e eVar) {
        return m(eVar.e(), eVar.c());
    }

    private void o(PriorityQueue priorityQueue, int i10) {
        a aVar;
        while (priorityQueue.size() < i10 && (aVar = (a) priorityQueue.poll()) != null && aVar.a()) {
            priorityQueue.offer(aVar.h());
            priorityQueue.offer(aVar);
        }
    }

    List d() {
        return this.f13657c;
    }
}
