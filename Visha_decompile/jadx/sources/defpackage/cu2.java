package defpackage;

import android.graphics.Typeface;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.DivFontWeight;
import java.util.Map;

public class cu2 {
    public final Map a;
    public final bu2 b;

    public cu2(Map map, bu2 bu2Var) {
        y45.j(map, "typefaceProviders");
        y45.j(bu2Var, "defaultTypeface");
        this.a = map;
        this.b = bu2Var;
    }

    public Typeface a(String str, int i) {
        bu2 bu2Var;
        bu2 bu2Var2 = (str == null || (bu2Var = (bu2) this.a.get(str)) == null) ? this.b : bu2Var;
        return BaseDivViewExtensionsKt.e0(i, bu2Var2);
    }

    public Typeface b(String str, DivFontWeight divFontWeight, Integer num) {
        bu2 bu2Var;
        bu2 bu2Var2 = (str == null || (bu2Var = (bu2) this.a.get(str)) == null) ? this.b : bu2Var;
        return BaseDivViewExtensionsKt.e0(BaseDivViewExtensionsKt.f0(divFontWeight, num), bu2Var2);
    }
}
