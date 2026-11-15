package defpackage;

import java.util.ArrayList;
import java.util.List;

public final class up8 extends qp8 implements p65 {
    public final Object[] c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public up8(by6 by6Var, Object[] objArr) {
        super(by6Var, null);
        y45.j(objArr, "values");
        this.c = objArr;
    }

    @Override
    public List b() {
        Object[] objArr = this.c;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            qp8.a aVar = qp8.b;
            y45.g(obj);
            arrayList.add(aVar.a(obj, null));
        }
        return arrayList;
    }
}
