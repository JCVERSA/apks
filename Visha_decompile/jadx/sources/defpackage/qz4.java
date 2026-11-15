package defpackage;

import com.yandex.div.internal.widget.indicator.IndicatorParams$Animation;
import kotlin.NoWhenBranchMatchedException;

public abstract class qz4 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[IndicatorParams$Animation.values().length];
            try {
                iArr[IndicatorParams$Animation.SCALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IndicatorParams$Animation.WORM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IndicatorParams$Animation.SLIDER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final pz4 a(sz4 sz4Var) {
        y45.j(sz4Var, "style");
        int i = a.a[sz4Var.b().ordinal()];
        if (i == 1) {
            return new q19(sz4Var);
        }
        if (i == 2) {
            return new ipc(sz4Var);
        }
        if (i == 3) {
            return new np9(sz4Var);
        }
        throw new NoWhenBranchMatchedException();
    }
}
