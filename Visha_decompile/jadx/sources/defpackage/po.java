package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;

public final class po implements su4 {
    public final Map a = a.p(abb.a(d82.g.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.p((d82) obj));
        }
    }), abb.a(d82.h.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.q((d82) obj));
        }
    }), abb.a(d82.k.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.r((d82) obj));
        }
    }), abb.a(d82.m.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.s((d82) obj));
        }
    }), abb.a(d82.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.t((d82) obj));
        }
    }), abb.a(d82.c.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.u((d82) obj));
        }
    }), abb.a(d82.a.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(po.v((d82) obj));
        }
    }));
    public final Map b = a.p(abb.a(d82.i.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return po.m((d82) obj);
        }
    }), abb.a(d82.l.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return po.n((d82) obj);
        }
    }), abb.a(d82.f.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return po.o((d82) obj);
        }
    }));

    public static final List m(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deletePlayListElements((d82.i) d82Var);
    }

    public static final List n(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deleteSystemMediaItems((d82.l) d82Var);
    }

    public static final List o(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deletePlayHistoryElements((d82.f) d82Var);
    }

    public static final int p(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deletePlayList((d82.g) d82Var);
    }

    public static final int q(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deletePlayListElement((d82.h) d82Var);
    }

    public static final int r(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deleteSystemMediaItem((d82.k) d82Var);
    }

    public static final int s(d82 d82Var) {
        y45.j(d82Var, "input");
        AudioRepositoryDelegate audioRepositoryDelegate = AudioRepositoryDelegate.INSTANCE;
        ubc.a(d82Var);
        return audioRepositoryDelegate.deleteAudioMV(null);
    }

    public static final int t(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deletePlayHistoryElement((d82.e) d82Var);
    }

    public static final int u(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deletePlayFrequentlyElement((d82.c) d82Var);
    }

    public static final int v(d82 d82Var) {
        y45.j(d82Var, "input");
        return AudioRepositoryDelegate.INSTANCE.deleteAudioConvertedElement((d82.a) d82Var);
    }

    @Override
    public int a(g82 g82Var) {
        y45.j(g82Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(g82Var.a().getClass());
        if (e74Var != null) {
            return ((Number) e74Var.invoke(g82Var.a())).intValue();
        }
        Log.w("AudioDeleteEngine", "Unhandled action type: " + g82Var.a().getClass().getName());
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
        Log.w("AudioDeleteEngine", "Unhandled BatchAction type: " + g82Var.a().getClass().getName());
        return y71.k();
    }
}
