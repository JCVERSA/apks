package defpackage;

import com.yandex.div.core.view2.Div2View;

public abstract class z91 {
    public static final y91 a(y91 y91Var, Div2View div2View) {
        y45.j(y91Var, "<this>");
        y45.j(div2View, "divView");
        if (y45.e(y91Var, y91.d)) {
            eg2.e(div2View, new IllegalStateException("Colors for linear gradient are not provided. Please check if 'colors' or 'color_map' properties are defined"));
        }
        return y91Var;
    }
}
