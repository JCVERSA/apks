package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;

public final class csb implements ev4 {
    public final Map a = a.p(abb.a(b15.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.n((b15) obj));
        }
    }), abb.a(b15.f.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.o((b15) obj));
        }
    }), abb.a(b15.l.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.p((b15) obj));
        }
    }), abb.a(b15.k.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.q((b15) obj));
        }
    }), abb.a(b15.c.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.r((b15) obj));
        }
    }), abb.a(b15.i.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.s((b15) obj));
        }
    }), abb.a(b15.h.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(csb.t((b15) obj));
        }
    }));
    public final Map b = a.p(abb.a(b15.g.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return csb.l((b15) obj);
        }
    }), abb.a(b15.m.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return csb.m((b15) obj);
        }
    }));

    public static final List l(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.addPlayListElements((b15.g) b15Var);
    }

    public static final List m(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.insertVideoConvertingAudio((b15.m) b15Var);
    }

    public static final int n(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.createPlayList((b15.e) b15Var);
    }

    public static final int o(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.addPlayListElement((b15.f) b15Var);
    }

    public static final int p(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.insertVideoConvertingAudio((b15.l) b15Var);
    }

    public static final int q(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.insertAudioTrack((b15.k) b15Var);
    }

    public static final int r(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.insertDownloadSubtitleRecord((b15.c) b15Var);
    }

    public static final int s(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.insertSubtitleUsageRecord((b15.i) b15Var);
    }

    public static final int t(b15 b15Var) {
        y45.j(b15Var, "input");
        return VideoRepositoryDelegate.INSTANCE.insertSubtitleSetting((b15.h) b15Var);
    }

    @Override
    public int a(e15 e15Var) {
        y45.j(e15Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(e15Var.a().getClass());
        if (e74Var != null) {
            return ((Number) e74Var.invoke(e15Var.a())).intValue();
        }
        Log.w("VideoInsertEngine", "Unhandled SingleAction type: " + e15Var.a().getClass().getName());
        return -1;
    }

    @Override
    public List b(e15 e15Var) {
        List list;
        y45.j(e15Var, Progress.REQUEST);
        e74 e74Var = (e74) this.b.get(e15Var.a().getClass());
        if (e74Var != null && (list = (List) e74Var.invoke(e15Var.a())) != null) {
            return list;
        }
        Log.w("VideoInsertEngine", "Unhandled BatchAction type: " + e15Var.a().getClass().getName());
        return y71.k();
    }
}
