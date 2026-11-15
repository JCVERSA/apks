package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.a;

public final class iy implements wv4 {
    public final Map a = a.p(abb.a(xk8.x.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.A((xk8) obj);
        }
    }), abb.a(xk8.m.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.B((xk8) obj);
        }
    }));
    public final Map b = a.p(abb.a(xk8.c.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.s((xk8) obj);
        }
    }), abb.a(xk8.l.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.t((xk8) obj);
        }
    }), abb.a(xk8.o.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.u((xk8) obj);
        }
    }), abb.a(xk8.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.v((xk8) obj);
        }
    }), abb.a(xk8.a.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.w((xk8) obj);
        }
    }), abb.a(xk8.u.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.x((xk8) obj);
        }
    }), abb.a(xk8.b.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.y((xk8) obj);
        }
    }), abb.a(xk8.i.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.z((xk8) obj);
        }
    }), abb.a(xk8.p.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.p((xk8) obj);
        }
    }), abb.a(xk8.r.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.q((xk8) obj);
        }
    }), abb.a(xk8.w.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return iy.r((xk8) obj);
        }
    }));

    public static final AudioItem A(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.querySingle((xk8.x) xk8Var);
    }

    public static final AudioItem B(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.querySingleMV((xk8.m) xk8Var);
    }

    public static final Pair p(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryParentPathMediaList((xk8.p) xk8Var);
    }

    public static final Pair q(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        AudioRepositoryDelegate audioRepositoryDelegate = AudioRepositoryDelegate.INSTANCE;
        ubc.a(xk8Var);
        return audioRepositoryDelegate.queryTitleMediaList(null);
    }

    public static final Pair r(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.search((xk8.w) xk8Var);
    }

    public static final Pair s(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryAllMediaList((xk8.c) xk8Var);
    }

    public static final Pair t(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryFilteredMediaList((xk8.l) xk8Var);
    }

    public static final Pair u(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryMediaListByMediaIds((xk8.o) xk8Var);
    }

    public static final Pair v(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryAudioConvertedMediaList((xk8.e) xk8Var);
    }

    public static final Pair w(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryAIList((xk8.a) xk8Var);
    }

    public static final Pair x(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryPlayListMedia((xk8.u) xk8Var);
    }

    public static final Pair y(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryAlbumArtistMediaList((xk8.b) xk8Var);
    }

    public static final Pair z(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return AudioRepositoryDelegate.INSTANCE.queryBucketMediaList((xk8.i) xk8Var);
    }

    @Override
    public AudioItem a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        AudioItem audioItem;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(xl8Var.a().getClass());
        if (e74Var != null && (audioItem = (AudioItem) e74Var.invoke(xl8Var.a())) != null) {
            return audioItem;
        }
        Log.w("AudioItemQueryEngine", "querySingle unhandled action type: " + xl8Var.a().getClass().getName() + "，scope:" + dataSourceScope.name());
        return null;
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        Pair pair;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        e74 e74Var = (e74) this.b.get(xl8Var.a().getClass());
        if (e74Var != null && (pair = (Pair) e74Var.invoke(xl8Var.a())) != null) {
            return pair;
        }
        Log.w("AudioItemQueryEngine", "queryBatch unhandled action type: " + xl8Var.a().getClass().getName() + "，scope:" + dataSourceScope.name());
        return null;
    }
}
