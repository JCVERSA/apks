package defpackage;

import android.util.DisplayMetrics;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivStroke;

public abstract class tg2 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivSizeUnit.values().length];
            try {
                iArr[DivSizeUnit.DP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivSizeUnit.SP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivSizeUnit.PX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final float a(DivStroke divStroke, oj3 oj3Var, DisplayMetrics displayMetrics) {
        double dDoubleValue;
        Expression expression;
        Expression expression2;
        y45.j(oj3Var, "expressionResolver");
        y45.j(displayMetrics, "metrics");
        DivSizeUnit divSizeUnit = (divStroke == null || (expression2 = divStroke.c) == null) ? null : (DivSizeUnit) expression2.b(oj3Var);
        int i = divSizeUnit == null ? -1 : a.a[divSizeUnit.ordinal()];
        if (i == 1) {
            return BaseDivViewExtensionsKt.M((Number) divStroke.d.b(oj3Var), displayMetrics);
        }
        if (i == 2) {
            return BaseDivViewExtensionsKt.u0((Number) divStroke.d.b(oj3Var), displayMetrics);
        }
        if (i == 3) {
            dDoubleValue = ((Number) divStroke.d.b(oj3Var)).doubleValue();
        } else {
            if (divStroke == null || (expression = divStroke.d) == null) {
                return 0.0f;
            }
            dDoubleValue = ((Number) expression.b(oj3Var)).doubleValue();
        }
        return (float) dDoubleValue;
    }
}
