package com.transsion.audio.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class HistoryListManager {

    public static final a f41836e = new a(null);

    private static final Lazy f41837f = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return HistoryListManager.x();
        }
    });

    private static boolean f41838g;

    private final Lazy f41839a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoryListManager.m();
        }
    });

    private final Lazy f41840b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoryListManager.y();
        }
    });

    private final Lazy f41841c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoryListManager.l();
        }
    });

    private final Lazy f41842d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HistoryListManager.z();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return HistoryListManager.f41838g;
        }

        public final HistoryListManager b() {
            return (HistoryListManager) HistoryListManager.f41837f.getValue();
        }

        public final void c(boolean z10) {
            HistoryListManager.f41838g = z10;
        }

        private a() {
        }
    }

    public static final b0 l() {
        return new b0();
    }

    public static final si.a m() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).n1();
        }
        return null;
    }

    public final si.a q() {
        return (si.a) this.f41839a.getValue();
    }

    public static void t(HistoryListManager historyListManager, String str, String str2, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 10;
        }
        historyListManager.s(str, str2, i10);
    }

    public final li.a u() {
        return (li.a) this.f41840b.getValue();
    }

    public static final HistoryListManager x() {
        return new HistoryListManager();
    }

    public static final li.a y() {
        return (li.a) kg.c.f63982e.a().h(li.a.class);
    }

    public static final b0 z() {
        return new b0();
    }

    public final void k(AudioBean audioBean) {
        Intrinsics.h(audioBean, "audioBean");
        wf.a.C0922a.g(wf.a.f74274a, "audio insert name " + audioBean.getTitle(), false, 2, null);
        j.b(null, new HistoryListManager$addToList$1(audioBean, this, null), 1, null);
    }

    public final void n() {
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$deleteAll$1(this, null), 3, null);
    }

    public final void o(AudioBean audioItem) {
        Intrinsics.h(audioItem, "audioItem");
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$deleteItem$1(this, audioItem, null), 3, null);
    }

    public final b0 p() {
        return (b0) this.f41841c.getValue();
    }

    public final void r() {
        k.d(o0.a(y0.c()), null, null, new HistoryListManager$getAudioList$1(this, null), 3, null);
    }

    public final void s(String subjectId, String postId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$getResourcePosition$1(this, subjectId, postId, i10, null), 3, null);
    }

    public final b0 v() {
        return (b0) this.f41842d.getValue();
    }

    public final void w(AudioBean audioBean) {
        Intrinsics.h(audioBean, "audioBean");
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$insert$1(audioBean, this, null), 3, null);
    }
}
