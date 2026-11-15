package defpackage;

import androidx.media3.common.C;
import defpackage.yrj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public final class asj {
    public static final Comparator g = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return ((yrj) obj).a - ((yrj) obj2).a;
        }
    };
    public static final Comparator h = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return Float.compare(((yrj) obj).c, ((yrj) obj2).c);
        }
    };
    public int d;
    public int e;
    public int f;
    public final yrj[] b = new yrj[5];
    public final ArrayList a = new ArrayList();
    public int c = -1;

    public asj(int i) {
    }

    public final float a(float f) {
        int i = 0;
        if (this.c != 0) {
            Collections.sort(this.a, h);
            this.c = 0;
        }
        float f2 = this.e;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i >= arrayList.size()) {
                if (arrayList.isEmpty()) {
                    return Float.NaN;
                }
                return ((yrj) arrayList.get(arrayList.size() - 1)).c;
            }
            float f3 = 0.5f * f2;
            yrj yrjVar = (yrj) arrayList.get(i);
            i2 += yrjVar.b;
            if (i2 >= f3) {
                return yrjVar.c;
            }
            i++;
        }
    }

    public final void b(int i, float f) {
        yrj yrjVar;
        if (this.c != 1) {
            Collections.sort(this.a, g);
            this.c = 1;
        }
        int i2 = this.f;
        if (i2 > 0) {
            yrj[] yrjVarArr = this.b;
            int i3 = i2 - 1;
            this.f = i3;
            yrjVar = yrjVarArr[i3];
        } else {
            yrjVar = new yrj(null);
        }
        int i4 = this.d;
        this.d = i4 + 1;
        yrjVar.a = i4;
        yrjVar.b = i;
        yrjVar.c = f;
        ArrayList arrayList = this.a;
        arrayList.add(yrjVar);
        this.e += i;
        while (true) {
            int i5 = this.e;
            if (i5 <= 2000) {
                return;
            }
            int i6 = i5 + C.PRIORITY_PROCESSING_FOREGROUND;
            yrj yrjVar2 = (yrj) arrayList.get(0);
            int i7 = yrjVar2.b;
            if (i7 <= i6) {
                this.e -= i7;
                arrayList.remove(0);
                int i8 = this.f;
                if (i8 < 5) {
                    yrj[] yrjVarArr2 = this.b;
                    this.f = i8 + 1;
                    yrjVarArr2[i8] = yrjVar2;
                }
            } else {
                yrjVar2.b = i7 - i6;
                this.e -= i6;
            }
        }
    }

    public final void c() {
        this.a.clear();
        this.c = -1;
        this.d = 0;
        this.e = 0;
    }
}
