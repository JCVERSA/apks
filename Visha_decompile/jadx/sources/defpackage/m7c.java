package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.a;

public final class m7c implements wv4 {
    public final Map a = a.p(abb.a(xk8.a0.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return m7c.e((xk8) obj);
        }
    }), abb.a(xk8.z.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return m7c.f((xk8) obj);
        }
    }));

    public static final Pair e(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.querySystemSubtitle();
    }

    public static final Pair f(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.querySubtitleUsageRecordList((xk8.z) xk8Var);
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        Pair pair;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(xl8Var.a().getClass());
        if (e74Var != null && (pair = (Pair) e74Var.invoke(xl8Var.a())) != null) {
            return pair;
        }
        Log.w("VideoSubtitleQueryEngine", "Unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }

    @Override
    public SubtitleTrackInfo a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        return null;
    }
}
