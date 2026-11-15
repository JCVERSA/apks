package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class tp9 {
    public static final Comparator h = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return tp9.g((tp9.b) obj, (tp9.b) obj2);
        }
    };
    public static final Comparator i = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return tp9.h((tp9.b) obj, (tp9.b) obj2);
        }
    };
    public final int a;
    public int e;
    public int f;
    public int g;
    public final b[] c = new b[5];
    public final ArrayList b = new ArrayList();
    public int d = -1;

    public static class b {
        public int a;
        public int b;
        public float c;

        public b() {
        }
    }

    public tp9(int i2) {
        this.a = i2;
    }

    public static int g(b bVar, b bVar2) {
        return bVar.a - bVar2.a;
    }

    public static int h(b bVar, b bVar2) {
        return Float.compare(bVar.c, bVar2.c);
    }

    public void c(int i2, float f) {
        b bVar;
        d();
        int i3 = this.g;
        if (i3 > 0) {
            b[] bVarArr = this.c;
            int i4 = i3 - 1;
            this.g = i4;
            bVar = bVarArr[i4];
        } else {
            bVar = new b();
        }
        int i5 = this.e;
        this.e = i5 + 1;
        bVar.a = i5;
        bVar.b = i2;
        bVar.c = f;
        this.b.add(bVar);
        this.f += i2;
        while (true) {
            int i6 = this.f;
            int i7 = this.a;
            if (i6 <= i7) {
                return;
            }
            int i8 = i6 - i7;
            b bVar2 = (b) this.b.get(0);
            int i9 = bVar2.b;
            if (i9 <= i8) {
                this.f -= i9;
                this.b.remove(0);
                int i10 = this.g;
                if (i10 < 5) {
                    b[] bVarArr2 = this.c;
                    this.g = i10 + 1;
                    bVarArr2[i10] = bVar2;
                }
            } else {
                bVar2.b = i9 - i8;
                this.f -= i8;
            }
        }
    }

    public final void d() {
        if (this.d != 1) {
            Collections.sort(this.b, h);
            this.d = 1;
        }
    }

    public final void e() {
        if (this.d != 0) {
            Collections.sort(this.b, i);
            this.d = 0;
        }
    }

    public float f(float f) {
        e();
        float f2 = f * this.f;
        int i2 = 0;
        for (int i3 = 0; i3 < this.b.size(); i3++) {
            b bVar = (b) this.b.get(i3);
            i2 += bVar.b;
            if (i2 >= f2) {
                return bVar.c;
            }
        }
        if (this.b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList arrayList = this.b;
        return ((b) arrayList.get(arrayList.size() - 1)).c;
    }

    public void i() {
        this.b.clear();
        this.d = -1;
        this.e = 0;
        this.f = 0;
    }
}
