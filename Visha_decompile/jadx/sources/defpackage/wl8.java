package defpackage;

import androidx.p004lifecycle.LiveData;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import java.util.Map;
import kotlin.Pair;
import kotlin.b;
import kotlin.collections.a;

public final class wl8 {
    public static final wl8 a = new wl8();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return wl8.d();
        }
    });

    public static final Map d() {
        return a.q(new Pair(DataSourceScope.VIDEO, new f5c()), new Pair(DataSourceScope.AUDIO, new ly()));
    }

    public final String b(String str) {
        return str + " scope is illegal,cannot find the corresponding queryProvider";
    }

    public final Map c() {
        return (Map) b.getValue();
    }

    public Pair e(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        ku4 ku4Var = (ku4) c().get(dataSourceScope);
        if (ku4Var != null) {
            return ku4Var.b(dataSourceScope, xl8Var);
        }
        return null;
    }

    public LiveData f(DataSourceScope dataSourceScope, sl8 sl8Var) {
        LiveData liveDataC;
        y45.j(dataSourceScope, "scope");
        y45.j(sl8Var, Progress.REQUEST);
        ku4 ku4Var = (ku4) c().get(dataSourceScope);
        if (ku4Var != null && (liveDataC = ku4Var.c(dataSourceScope, sl8Var)) != null) {
            return liveDataC;
        }
        throw new IllegalArgumentException(b(sl8Var.b().getName() + " queryBatchLiveData"));
    }

    public Object g(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        ku4 ku4Var = (ku4) c().get(dataSourceScope);
        if (ku4Var != null) {
            return ku4Var.a(dataSourceScope, xl8Var);
        }
        return null;
    }
}
