package com.transsion.postdetail.viewmodel;

import android.net.Uri;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.postdetail.ui.fragment.preload.ShortTvVideoImmersiveDataLoader;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class w extends t0 {

    private ShortTvVideoImmersiveDataLoader f48182d;

    private final String f48179a = "ShortTvDetailViewModel";

    private final Lazy f48180b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.t();
        }
    });

    private final Lazy f48181c = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return w.h();
        }
    });

    private final Lazy f48183e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.p();
        }
    });

    private final Lazy f48184f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.r();
        }
    });

    private final Lazy f48185g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.i();
        }
    });

    private final Lazy f48186h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.s();
        }
    });

    public static final tm.a h() {
        return (tm.a) kg.c.f63982e.a().h(tm.a.class);
    }

    public static final b0 i() {
        return new b0();
    }

    private final b0 m() {
        return (b0) this.f48183e.getValue();
    }

    public static final b0 p() {
        return new b0();
    }

    public static final b0 r() {
        return new b0();
    }

    public static final b0 s() {
        return new b0();
    }

    public static final ao.b t() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    public final b0 j() {
        return (b0) this.f48185g.getValue();
    }

    public final void k(String postId, int i10, String nextPage, int i11, int i12) {
        String string;
        Intrinsics.h(postId, "postId");
        Intrinsics.h(nextPage, "nextPage");
        ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
        immVideoRequestEntity.setPage(nextPage);
        immVideoRequestEntity.setPerPage(i11);
        immVideoRequestEntity.setSessionId(jg.b.f63119a.h());
        Uri uriB = com.transsion.baselib.report.h.f42200a.b();
        if (uriB == null || (string = uriB.toString()) == null) {
            string = "";
        }
        immVideoRequestEntity.setDeepLink(string);
        immVideoRequestEntity.setUserPrefer("");
        immVideoRequestEntity.setLatest_events(new ej.a(ej.b.f59709a.e()));
        if (postId.length() == 0) {
            postId = "0";
        }
        immVideoRequestEntity.setPostId(postId);
        immVideoRequestEntity.setTabId(i10);
        immVideoRequestEntity.setImmersiveRecType(i12);
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader = this.f48182d;
        if (shortTvVideoImmersiveDataLoader != null) {
            shortTvVideoImmersiveDataLoader.r(immVideoRequestEntity);
        }
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader2 = this.f48182d;
        if (shortTvVideoImmersiveDataLoader2 != null) {
            shortTvVideoImmersiveDataLoader2.f(m());
        }
    }

    public final LiveData l() {
        return m();
    }

    public final ShortTVRespData n() {
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader = this.f48182d;
        if (shortTvVideoImmersiveDataLoader != null) {
            return (ShortTVRespData) shortTvVideoImmersiveDataLoader.a();
        }
        return null;
    }

    public final b0 o() {
        return (b0) this.f48186h.getValue();
    }

    public final void q(Integer num) {
        List listA;
        am.b bVar;
        Object next;
        if (num != null) {
            listA = am.e.f407a.a(num.intValue());
        } else {
            listA = null;
        }
        if (listA != null) {
            Iterator it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((am.b) next) instanceof ShortTvVideoImmersiveDataLoader));
            bVar = (am.b) next;
        } else {
            bVar = null;
        }
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader = (ShortTvVideoImmersiveDataLoader) bVar;
        if (shortTvVideoImmersiveDataLoader == null) {
            shortTvVideoImmersiveDataLoader = new ShortTvVideoImmersiveDataLoader(null, 1, null);
        }
        this.f48182d = shortTvVideoImmersiveDataLoader;
    }
}
