package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.a;

public final class ib5 implements wv4 {
    public final Map a = a.p(abb.a(xk8.f.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return ib5.f((xk8) obj);
        }
    }), abb.a(xk8.b0.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return ib5.g((xk8) obj);
        }
    }), abb.a(xk8.y.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return ib5.h((xk8) obj);
        }
    }));

    public static final String f(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryLyricOffset((xk8.f) xk8Var);
    }

    public static final String g(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryAudioTrack((xk8.b0) xk8Var);
    }

    public static final String h(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.querySubtitleSetting();
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        return null;
    }

    @Override
    public String a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        String str;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(xl8Var.a().getClass());
        if (e74Var != null && (str = (String) e74Var.invoke(xl8Var.a())) != null) {
            return str;
        }
        Log.w("JsonQueryEngine", "Unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }
}
