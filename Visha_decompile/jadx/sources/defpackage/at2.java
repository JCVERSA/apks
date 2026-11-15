package defpackage;

import android.util.DisplayMetrics;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTextRangeBorder;

public abstract class at2 {
    public static final float[] b(DivTextRangeBorder divTextRangeBorder, DisplayMetrics displayMetrics, oj3 oj3Var) {
        Expression expression = divTextRangeBorder.a;
        float fK = BaseDivViewExtensionsKt.K(expression != null ? (Long) expression.b(oj3Var) : null, displayMetrics);
        return new float[]{fK, fK, fK, fK, fK, fK, fK, fK};
    }
}
