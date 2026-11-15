package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class te6 implements wv4 {
    public static final a c = new a(null);
    public final Map a = ky5.h(abb.a(xk8.n.class, new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return te6.f((DataSourceScope) obj, (xk8) obj2);
        }
    }));
    public final Map b = ky5.h(abb.a(xk8.n.class, new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return te6.e((DataSourceScope) obj, (xk8) obj2);
        }
    }));

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final Pair e(DataSourceScope dataSourceScope, xk8 xk8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.getAllMissingData((xk8.n) xk8Var);
    }

    public static final qe6 f(DataSourceScope dataSourceScope, xk8 xk8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.getByMediaIdOrPath((xk8.n) xk8Var);
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        Pair pair;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        s74 s74Var = (s74) this.b.get(xl8Var.a().getClass());
        if (s74Var != null && (pair = (Pair) s74Var.invoke(dataSourceScope, xl8Var.a())) != null) {
            return pair;
        }
        vmb.i("MediaDataMissingQueryEngine", "Unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }

    @Override
    public qe6 a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        qe6 qe6Var;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        s74 s74Var = (s74) this.a.get(xl8Var.a().getClass());
        if (s74Var != null && (qe6Var = (qe6) s74Var.invoke(dataSourceScope, xl8Var.a())) != null) {
            return qe6Var;
        }
        vmb.i("MediaDataMissingQueryEngine", "Unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }
}
