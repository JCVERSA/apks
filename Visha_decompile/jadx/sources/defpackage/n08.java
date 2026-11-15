package defpackage;

import com.yandex.div2.DivPageSize;
import com.yandex.div2.DivPager;
import kotlin.NoWhenBranchMatchedException;

public final class n08 extends un2 implements ex3 {
    public final double d;
    public final float e;
    public final float f;
    public final boolean g;

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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:17:0x0070  */
    public n08(DivPageSize divPageSize, oj3 oj3Var, int i, sn2 sn2Var, DivPager.ItemAlignment itemAlignment) {
        float fI;
        float fA;
        float fA2;
        super(i, sn2Var, itemAlignment);
        y45.j(divPageSize, hb0.KEY_NAME_MODE);
        y45.j(oj3Var, "resolver");
        y45.j(sn2Var, "paddings");
        y45.j(itemAlignment, "alignment");
        double dDoubleValue = ((Number) divPageSize.a.a.b(oj3Var)).doubleValue();
        this.d = dDoubleValue;
        this.e = (float) ((((double) i) * dDoubleValue) / ((double) 100));
        int i2 = a.a[itemAlignment.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                fA2 = (i - a()) / 2;
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                fI = i - sn2Var.f();
                fA = a();
            }
            this.f = fA2;
            this.g = dDoubleValue < 100.0d;
        }
        fI = i - sn2Var.i();
        fA = a();
        fA2 = fI - fA;
        this.f = fA2;
        this.g = dDoubleValue < 100.0d;
    }

    @Override
    public float a() {
        return this.e;
    }

    @Override
    public float b() {
        return this.f;
    }

    @Override
    public boolean c() {
        return this.g;
    }

    @Override
    public Float e(int i) {
        return Float.valueOf(a());
    }
}
