package defpackage;

import com.yandex.div.core.view2.Div2View;

public abstract class ok2 extends rk2 {
    public final String a;

    public ok2(String str) {
        y45.j(str, "divId");
        this.a = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ok2(Div2View div2View) {
        this(div2View.getLogId());
        y45.j(div2View, "divView");
    }
}
