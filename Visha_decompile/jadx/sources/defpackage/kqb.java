package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;

public final class kqb implements su4 {
    public final Map a = a.p(abb.a(d82.g.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.q((d82) obj));
        }
    }), abb.a(d82.h.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.r((d82) obj));
        }
    }), abb.a(d82.k.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.s((d82) obj));
        }
    }), abb.a(d82.n.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.t((d82) obj));
        }
    }), abb.a(d82.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.u((d82) obj));
        }
    }), abb.a(d82.d.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.v((d82) obj));
        }
    }), abb.a(d82.b.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.w((d82) obj));
        }
    }), abb.a(d82.j.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(kqb.x((d82) obj));
        }
    }));
    public final Map b = a.p(abb.a(d82.i.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return kqb.o((d82) obj);
        }
    }), abb.a(d82.l.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return kqb.p((d82) obj);
        }
    }), abb.a(d82.f.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return kqb.n((d82) obj);
        }
    }));

    public static final List n(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteBatchVideoPlayHistory((d82.f) d82Var);
    }

    public static final List o(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deletePlayListElements((d82.i) d82Var);
    }

    public static final List p(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteSystemMediaItems((d82.l) d82Var);
    }

    public static final int q(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deletePlayList((d82.g) d82Var);
    }

    public static final int r(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deletePlayListElement((d82.h) d82Var);
    }

    public static final int s(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteSystemMediaItem((d82.k) d82Var);
    }

    public static final int t(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteVideoConvertingAudio((d82.n) d82Var);
    }

    public static final int u(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteVideoPlayHistory((d82.e) d82Var);
    }

    public static final int v(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteAllVideoPlayHistory();
    }

    public static final int w(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteDownloadSubtitleRecord((d82.b) d82Var);
    }

    public static final int x(d82 d82Var) {
        y45.j(d82Var, "input");
        return VideoRepositoryDelegate.INSTANCE.deleteSubtitleUsageRecord((d82.j) d82Var);
    }

    @Override
    public int a(g82 g82Var) {
        y45.j(g82Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(g82Var.a().getClass());
        if (e74Var != null) {
            return ((Number) e74Var.invoke(g82Var.a())).intValue();
        }
        Log.w("VideoDeleteEngine", "Unhandled SingleAction type: " + g82Var.a().getClass().getName());
        return -1;
    }

    @Override
    public List b(g82 g82Var) {
        List list;
        y45.j(g82Var, Progress.REQUEST);
        e74 e74Var = (e74) this.b.get(g82Var.a().getClass());
        if (e74Var != null && (list = (List) e74Var.invoke(g82Var.a())) != null) {
            return list;
        }
        Log.w("VideoDeleteEngine", "Unhandled BatchAction type: " + g82Var.a().getClass().getName());
        return y71.k();
    }
}
