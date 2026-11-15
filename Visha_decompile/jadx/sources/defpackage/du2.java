package defpackage;

import android.graphics.Typeface;
import com.yandex.div2.DivFontWeight;

public abstract class du2 {
    public static final Typeface a(cu2 cu2Var, String str, DivFontWeight divFontWeight, Long l) {
        Integer numValueOf;
        int i;
        y45.j(cu2Var, "<this>");
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return cu2Var.b(str, divFontWeight, numValueOf);
    }
}
