package on;

import com.transsion.player.mediasession.MediaBrowserCompatHelper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e0 {

    private static Function0 f67861c;

    private static Function0 f67862d;

    private static Function0 f67865g;

    private static volatile h0 f67866h;

    private static volatile com.transsion.player.orplayer.f f67867i;

    public static final e0 f67859a = new e0();

    private static final Lazy f67860b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e0.z();
        }
    });

    private static final Lazy f67863e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(e0.h());
        }
    });

    private static final Lazy f67864f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(e0.k());
        }
    });

    private static final CopyOnWriteArrayList f67868j = new CopyOnWriteArrayList();

    private static final CopyOnWriteArrayList f67869k = new CopyOnWriteArrayList();

    private e0() {
    }

    private final a0 f() {
        return (a0) f67860b.getValue();
    }

    public static final boolean h() {
        Function0 function0 = f67862d;
        boolean zBooleanValue = function0 != null ? ((Boolean) function0.invoke()).booleanValue() : false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isASyncPlayer:");
        sb2.append(zBooleanValue);
        return zBooleanValue;
    }

    public static final boolean k() {
        Function0 function0 = f67861c;
        boolean zBooleanValue = function0 != null ? ((Boolean) function0.invoke()).booleanValue() : true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isMultiplePlayer:");
        sb2.append(zBooleanValue);
        return zBooleanValue;
    }

    private final void n(com.transsion.player.orplayer.f fVar, com.transsion.player.orplayer.f fVar2) {
        Iterator it = f67869k.iterator();
        Intrinsics.g(it, "iterator(...)");
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    private final void q(com.transsion.player.orplayer.f fVar) {
        Iterator it = f67868j.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            } else if (Intrinsics.c(((WeakReference) it.next()).get(), fVar)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0) {
            f67868j.remove(i10);
        }
    }

    public static final a0 z() {
        return new a0();
    }

    public final com.transsion.player.orplayer.f d(String mediaId) {
        String strE;
        com.transsion.player.orplayer.f fVar;
        gn.e eVarCurrentMediaSource;
        Intrinsics.h(mediaId, "mediaId");
        Iterator it = f67868j.iterator();
        do {
            strE = null;
            if (!it.hasNext()) {
                return null;
            }
            fVar = (com.transsion.player.orplayer.f) ((WeakReference) it.next()).get();
            if (fVar != null && (eVarCurrentMediaSource = fVar.currentMediaSource()) != null) {
                strE = eVarCurrentMediaSource.e();
            }
        } while (!Intrinsics.c(strE, mediaId));
        return fVar;
    }

    public final com.transsion.player.orplayer.f e() {
        return f67867i;
    }

    public final boolean g() {
        return ((Boolean) f67863e.getValue()).booleanValue();
    }

    public final boolean i() {
        return ((Boolean) f67864f.getValue()).booleanValue();
    }

    public final Function0 j() {
        return f67861c;
    }

    public final int l() {
        Function0 function0 = f67865g;
        if (function0 != null) {
            return ((Number) function0.invoke()).intValue();
        }
        return 1;
    }

    public final com.transsion.player.orplayer.f m() {
        com.transsion.player.orplayer.f a0Var = i() ? new a0() : new h0();
        f67868j.add(new WeakReference(a0Var));
        return a0Var;
    }

    public final void o(com.transsion.player.orplayer.f orPlayer, gn.e eVar) {
        Intrinsics.h(orPlayer, "orPlayer");
    }

    public final void p(com.transsion.player.orplayer.f orPlayer, gn.e eVar) {
        Intrinsics.h(orPlayer, "orPlayer");
    }

    public final void r(com.transsion.player.orplayer.f orPlayer) {
        Intrinsics.h(orPlayer, "orPlayer");
        if (Intrinsics.c(f67867i, orPlayer)) {
            f67867i = null;
            n(null, orPlayer);
            sn.e.b(sn.e.f72355a, "TnPlayerManager", "releaseFocus  orPlayer:" + orPlayer, false, 4, null);
        }
        q(orPlayer);
    }

    public final void s(String mediaId) {
        Intrinsics.h(mediaId, "mediaId");
        MediaBrowserCompatHelper.f46405h.a().v(mediaId);
    }

    public final void t(com.transsion.player.orplayer.f orPlayer, String reason) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(reason, "reason");
        if (Intrinsics.c(f67867i, orPlayer)) {
            return;
        }
        com.transsion.player.orplayer.f fVar = f67867i;
        if (fVar != null && fVar.isPlaying()) {
            fVar.pause();
        }
        f67867i = orPlayer;
        n(fVar, orPlayer);
        sn.e.b(sn.e.f72355a, "TnPlayerManager", "requestFocus  orPlayer:" + orPlayer + "  reason:" + reason, false, 4, null);
    }

    public final void u(h0 tnPlayer) {
        Intrinsics.h(tnPlayer, "tnPlayer");
        if (i() || Intrinsics.c(f67866h, tnPlayer)) {
            return;
        }
        synchronized (this) {
            try {
                if (!Intrinsics.c(f67866h, tnPlayer)) {
                    sn.e.f72355a.a("TnPlayer", "换boss啦:" + f67866h + "  to " + tnPlayer, true);
                    h0 h0Var = f67866h;
                    if (h0Var != null) {
                        h0Var.d(true);
                    }
                    tnPlayer.d(false);
                    h0 h0Var2 = f67866h;
                    if (h0Var2 != null) {
                        h0Var2.f(null);
                    }
                    tnPlayer.f(f67859a.f());
                    f67866h = tnPlayer;
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void v(com.transsion.player.orplayer.f orPlayer, gn.e eVar) {
        Intrinsics.h(orPlayer, "orPlayer");
    }

    public final void w(Function0 function0) {
        f67862d = function0;
    }

    public final void x(Function0 function0) {
        f67861c = function0;
    }

    public final void y(Function0 function0) {
        f67865g = function0;
    }
}
