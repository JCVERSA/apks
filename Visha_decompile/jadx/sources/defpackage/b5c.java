package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.a;

public final class b5c implements wv4 {
    public final Map a = a.p(abb.a(xk8.c.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.k((xk8) obj);
        }
    }), abb.a(xk8.i.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.l((xk8) obj);
        }
    }), abb.a(xk8.o.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.m((xk8) obj);
        }
    }), abb.a(xk8.u.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.n((xk8) obj);
        }
    }), abb.a(xk8.w.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.o((xk8) obj);
        }
    }), abb.a(xk8.j.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.p((xk8) obj);
        }
    }), abb.a(xk8.p.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.q((xk8) obj);
        }
    }), abb.a(xk8.q.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return b5c.r((xk8) obj);
        }
    }));

    public static final Pair k(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryAllMediaList((xk8.c) xk8Var);
    }

    public static final Pair l(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryBucketMediaList((xk8.i) xk8Var);
    }

    public static final Pair m(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryMediaListByMediaIds((xk8.o) xk8Var);
    }

    public static final Pair n(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryPlayListMedia((xk8.u) xk8Var);
    }

    public static final Pair o(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.search((xk8.w) xk8Var);
    }

    public static final Pair p(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryConvertingVideoList((xk8.j) xk8Var);
    }

    public static final Pair q(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryParentPathMediaList((xk8.p) xk8Var);
    }

    public static final Pair r(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return VideoRepositoryDelegate.INSTANCE.queryVideoListByPaths((xk8.q) xk8Var);
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
        Log.w("MediaItemQueryEngine", "queryBatch unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }

    @Override
    public MediaItem a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        xk8 xk8VarA = xl8Var.a();
        if (xk8VarA instanceof xk8.x) {
            return VideoRepositoryDelegate.INSTANCE.querySingle((xk8.x) xk8VarA);
        }
        if (xk8VarA instanceof xk8.c0) {
            return VideoRepositoryDelegate.INSTANCE.queryOnlinePlayHistory((xk8.c0) xk8VarA);
        }
        if (xk8VarA instanceof xk8.v) {
            return VideoRepositoryDelegate.INSTANCE.queryPlayListOnlineElement((xk8.v) xk8VarA);
        }
        Log.w("MediaItemQueryEngine", "querySingle unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }
}
