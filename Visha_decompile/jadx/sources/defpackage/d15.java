package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import java.util.List;
import java.util.Map;
import kotlin.b;
import kotlin.collections.a;

public final class d15 {
    public static final d15 a = new d15();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return d15.e();
        }
    });

    public static final Map e() {
        return a.p(abb.a(DataSourceScope.VIDEO, new esb()), abb.a(DataSourceScope.AUDIO, new wq()));
    }

    public final Map b() {
        return (Map) b.getValue();
    }

    public List c(DataSourceScope dataSourceScope, e15 e15Var) {
        List listB;
        y45.j(dataSourceScope, "scope");
        y45.j(e15Var, Progress.REQUEST);
        fv4 fv4Var = (fv4) b().get(dataSourceScope);
        return (fv4Var == null || (listB = fv4Var.b(e15Var)) == null) ? y71.k() : listB;
    }

    public int d(DataSourceScope dataSourceScope, e15 e15Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(e15Var, Progress.REQUEST);
        fv4 fv4Var = (fv4) b().get(dataSourceScope);
        if (fv4Var != null) {
            return fv4Var.a(e15Var);
        }
        return -1;
    }
}
