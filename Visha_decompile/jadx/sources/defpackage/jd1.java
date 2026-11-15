package defpackage;

import com.yandex.div.core.view2.CompositeLogId;
import com.yandex.div.core.view2.Div2View;

public abstract class jd1 {
    public static final CompositeLogId a(Div2View div2View, String str) {
        y45.j(div2View, "scope");
        y45.j(str, "actionLogId");
        String strA = div2View.getDataTag().a();
        y45.i(strA, "scope.dataTag.id");
        return new CompositeLogId(strA, div2View.getLogId(), str);
    }
}
