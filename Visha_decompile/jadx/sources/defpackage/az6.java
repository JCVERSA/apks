package defpackage;

import android.util.DisplayMetrics;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.DivNeighbourPageSize;
import com.yandex.div2.DivPager;
import kotlin.NoWhenBranchMatchedException;

public final class az6 extends un2 implements ex3 {
    public final float d;
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
    public az6(DivNeighbourPageSize divNeighbourPageSize, oj3 oj3Var, DisplayMetrics displayMetrics, int i, float f, sn2 sn2Var, DivPager.ItemAlignment itemAlignment) {
        float fI;
        float fB;
        super(i, sn2Var, itemAlignment);
        y45.j(divNeighbourPageSize, hb0.KEY_NAME_MODE);
        y45.j(oj3Var, "resolver");
        y45.j(displayMetrics, "metrics");
        y45.j(sn2Var, "paddings");
        y45.j(itemAlignment, "alignment");
        float fJ0 = BaseDivViewExtensionsKt.J0(divNeighbourPageSize.a, displayMetrics, oj3Var);
        this.d = fJ0;
        this.e = f + fJ0;
        int i2 = a.a[itemAlignment.ordinal()];
        if (i2 == 1) {
            fI = i - sn2Var.i();
            fB = b();
        } else if (i2 == 2) {
            fI = i;
            fB = b() * 2;
        } else {
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            fI = i - sn2Var.f();
            fB = b();
        }
        this.f = fI - fB;
        this.g = fJ0 > 0.0f;
    }

    @Override
    public float a() {
        return this.f;
    }

    @Override
    public float b() {
        return this.e;
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
