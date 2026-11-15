package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import java.util.Map;
import kotlin.b;
import kotlin.collections.a;

public final class zgb {
    public static final zgb a = new zgb();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return zgb.c();
        }
    });

    public static final Map c() {
        return a.p(abb.a(DataSourceScope.VIDEO, new x8c()), abb.a(DataSourceScope.AUDIO, new y10()));
    }

    public final Map b() {
        return (Map) b.getValue();
    }

    public int d(DataSourceScope dataSourceScope, ahb ahbVar) {
        y45.j(dataSourceScope, "scope");
        y45.j(ahbVar, Progress.REQUEST);
        zw4 zw4Var = (zw4) b().get(dataSourceScope);
        if (zw4Var != null) {
            return zw4Var.a(ahbVar);
        }
        return -1;
    }
}
