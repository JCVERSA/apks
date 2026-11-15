package defpackage;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.engine.base.action.MediaStoreMVTypeEnum;
import com.transsion.dbdata.engine.base.callback.DataRequestResult;
import com.transsion.dbdata.engine.base.scope.DataScope;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class bm6 implements pu4 {
    public static final a b = new a(null);
    public final Map a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public bm6(Context context) {
        y45.j(context, "context");
        this.a = new LinkedHashMap();
        for (MediaStoreMVTypeEnum mediaStoreMVTypeEnum : MediaStoreMVTypeEnum.values()) {
            this.a.put(mediaStoreMVTypeEnum.getOutPutType(), mediaStoreMVTypeEnum.getTypeHandler());
        }
    }

    private final qu4 d(Class cls) {
        Object obj = this.a.get(cls);
        if (obj instanceof qu4) {
            return (qu4) obj;
        }
        return null;
    }

    private final void e(Object obj, nu4 nu4Var, Object obj2) {
        if (obj != null) {
            nu4Var.a(DataRequestResult.SUCCESS, obj, "success");
        } else {
            nu4Var.a(DataRequestResult.FAILURE, obj2, "failure");
        }
    }

    @Override
    public Object a(DataScope dataScope, ns1 ns1Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        qu4 qu4VarD = d(ns1Var.c());
        if (qu4VarD != null) {
            return qu4VarD.a(ns1Var);
        }
        return null;
    }

    @Override
    public void b(DataScope dataScope, ns1 ns1Var, nu4 nu4Var) {
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        y45.j(nu4Var, "callback");
        qu4 qu4VarD = d(ns1Var.c());
        e(qu4VarD != null ? qu4VarD.b(ns1Var) : null, nu4Var, y71.k());
    }

    @Override
    public List c(DataScope dataScope, ns1 ns1Var) {
        List listB;
        y45.j(dataScope, "scope");
        y45.j(ns1Var, Progress.REQUEST);
        qu4 qu4VarD = d(ns1Var.c());
        return (qu4VarD == null || (listB = qu4VarD.b(ns1Var)) == null) ? y71.k() : listB;
    }
}
