package defpackage;

import java.util.Arrays;
import java.util.List;

public class ec extends y80 {
    public ec(List list) {
        super(b(list));
    }

    public static dg5 a(dg5 dg5Var) {
        jj4 jj4Var = (jj4) dg5Var.b;
        jj4 jj4Var2 = (jj4) dg5Var.c;
        if (jj4Var == null || jj4Var2 == null || jj4Var.e().length == jj4Var2.e().length) {
            return dg5Var;
        }
        float[] fArrC = c(jj4Var.e(), jj4Var2.e());
        return dg5Var.b(jj4Var.b(fArrC), jj4Var2.b(fArrC));
    }

    public static List b(List list) {
        for (int i = 0; i < list.size(); i++) {
            list.set(i, a((dg5) list.get(i)));
        }
        return list;
    }

    public static float[] c(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f = Float.NaN;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            float f2 = fArr3[i2];
            if (f2 != f) {
                fArr3[i] = f2;
                i++;
                f = fArr3[i2];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i);
    }

    @Override
    public boolean g() {
        return super.g();
    }

    @Override
    public ab0 h() {
        return new kj4(this.a);
    }

    @Override
    public List i() {
        return super.i();
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
