package defpackage;

import com.yandex.div2.DivPager;
import kotlin.NoWhenBranchMatchedException;

public abstract class un2 {
    public final int a;
    public final sn2 b;
    public final DivPager.ItemAlignment c;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivPager.ItemAlignment.values().length];
            try {
                iArr[DivPager.ItemAlignment.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivPager.ItemAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivPager.ItemAlignment.END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public un2(int i, sn2 sn2Var, DivPager.ItemAlignment itemAlignment) {
        y45.j(sn2Var, "paddings");
        y45.j(itemAlignment, "alignment");
        this.a = i;
        this.b = sn2Var;
        this.c = itemAlignment;
    }

    public final Float d(int i) {
        Float fE = e(i);
        if (fE == null) {
            return null;
        }
        return Float.valueOf((this.a - fE.floatValue()) / 2.0f);
    }

    public abstract Float e(int i);

    public final Float f(int i) {
        int i2 = a.a[this.c.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return d(i);
            }
            if (i2 == 3) {
                return Float.valueOf(this.b.f());
            }
            throw new NoWhenBranchMatchedException();
        }
        Float fE = e(i);
        if (fE == null) {
            return null;
        }
        return Float.valueOf((this.a - this.b.i()) - fE.floatValue());
    }

    public final Float g(int i) {
        int i2 = a.a[this.c.ordinal()];
        if (i2 == 1) {
            return Float.valueOf(this.b.i());
        }
        if (i2 == 2) {
            return d(i);
        }
        if (i2 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        Float fE = e(i);
        if (fE == null) {
            return null;
        }
        return Float.valueOf((this.a - this.b.f()) - fE.floatValue());
    }
}
