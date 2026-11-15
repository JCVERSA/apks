package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import java.util.List;
import java.util.Map;
import kotlin.b;
import kotlin.collections.a;

public final class f82 {
    public static final f82 a = new f82();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return f82.e();
        }
    });

    public static final Map e() {
        return a.p(abb.a(DataSourceScope.VIDEO, new mqb()), abb.a(DataSourceScope.AUDIO, new ro()));
    }

    public List b(DataSourceScope dataSourceScope, g82 g82Var) {
        List listB;
        y45.j(dataSourceScope, "scope");
        y45.j(g82Var, Progress.REQUEST);
        tu4 tu4Var = (tu4) d().get(dataSourceScope);
        return (tu4Var == null || (listB = tu4Var.b(g82Var)) == null) ? y71.k() : listB;
    }

    public int c(DataSourceScope dataSourceScope, g82 g82Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(g82Var, Progress.REQUEST);
        tu4 tu4Var = (tu4) d().get(dataSourceScope);
        if (tu4Var != null) {
            return tu4Var.a(g82Var);
        }
        return -1;
    }

    public final Map d() {
        return (Map) b.getValue();
    }
}
