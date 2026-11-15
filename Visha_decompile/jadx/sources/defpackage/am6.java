package defpackage;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.engine.base.scope.DataScope;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class am6 implements pu4 {
    public final Context a;
    public final Map b;

    public am6(Context context) {
        y45.j(context, "context");
        this.a = context;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.b = linkedHashMap;
        linkedHashMap.put(DataScope.AUDIO, new yl6(context));
        linkedHashMap.put(DataScope.MV, new bm6(context));
    }

    @Override
    public Object a(DataScope dataScope, ns1 ns1Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        pu4 pu4Var = (pu4) this.b.get(dataScope);
        if (pu4Var != null) {
            return pu4Var.a(dataScope, ns1Var);
        }
        return null;
    }

    @Override
    public void b(DataScope dataScope, ns1 ns1Var, nu4 nu4Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        y45.j(nu4Var, "callback");
        pu4 pu4Var = (pu4) this.b.get(dataScope);
        if (pu4Var != null) {
            pu4Var.b(dataScope, ns1Var, nu4Var);
        }
    }

    @Override
    public List c(DataScope dataScope, ns1 ns1Var) {
        List listC;
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        pu4 pu4Var = (pu4) this.b.get(dataScope);
        return (pu4Var == null || (listC = pu4Var.c(dataScope, ns1Var)) == null) ? pu4.a.a(this, dataScope, ns1Var) : listC;
    }
}
