package com.transsion.postdetail.viewmodel;

import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.postdetail.ui.fragment.preload.VideoDataLoader;
import com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoaderV2;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class PostDetailViewModel extends t0 {

    private VideoDataLoader f48121d;

    private VideoImmersiveDataLoaderV2 f48122e;

    private final String f48118a = "PostDetailViewModel";

    private final Lazy f48119b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.L();
        }
    });

    private final Lazy f48120c = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.p();
        }
    });

    private final Lazy f48123f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.J();
        }
    });

    private final Lazy f48124g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.I();
        }
    });

    private final Lazy f48125h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.E();
        }
    });

    private final Lazy f48126i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.H();
        }
    });

    private final Lazy f48127j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.q();
        }
    });

    private final Lazy f48128k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailViewModel.K();
        }
    });

    public final ao.b D() {
        return (ao.b) this.f48119b.getValue();
    }

    public static final b0 E() {
        return new b0();
    }

    public static final b0 H() {
        return new b0();
    }

    public static final b0 I() {
        return new b0();
    }

    public static final b0 J() {
        return new b0();
    }

    public static final b0 K() {
        return new b0();
    }

    public static final ao.b L() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    public static final tm.a p() {
        return (tm.a) kg.c.f63982e.a().h(tm.a.class);
    }

    public static final b0 q() {
        return new b0();
    }

    public final tm.a s() {
        return (tm.a) this.f48120c.getValue();
    }

    public final b0 w() {
        return (b0) this.f48125h.getValue();
    }

    public final b0 z() {
        return (b0) this.f48123f.getValue();
    }

    public final LiveData A() {
        return z();
    }

    public final PostSubjectBean B() {
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV2 = this.f48122e;
        if (videoImmersiveDataLoaderV2 != null) {
            return (PostSubjectBean) videoImmersiveDataLoaderV2.a();
        }
        return null;
    }

    public final b0 C() {
        return (b0) this.f48128k.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final void F(Integer num, String str) {
        am.b bVar;
        Object next;
        ?? r10 = 0;
        Object obj = null;
        List listA = num != null ? am.e.f407a.a(num.intValue()) : null;
        if (listA != null) {
            Iterator it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((am.b) next) instanceof VideoDataLoader));
            bVar = (am.b) next;
        } else {
            bVar = null;
        }
        VideoDataLoader videoDataLoader = (VideoDataLoader) bVar;
        if (videoDataLoader == null) {
            videoDataLoader = new VideoDataLoader(r10, 1, r10);
        }
        this.f48121d = videoDataLoader;
        if (listA != null) {
            for (Object obj2 : listA) {
                if (((am.b) obj2) instanceof VideoImmersiveDataLoaderV2) {
                    obj = obj2;
                    break;
                }
            }
            r10 = (am.b) obj;
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV2 = (VideoImmersiveDataLoaderV2) r10;
        if (videoImmersiveDataLoaderV2 == null) {
            videoImmersiveDataLoaderV2 = new VideoImmersiveDataLoaderV2(str, null, null, 0, 14, null);
        }
        this.f48122e = videoImmersiveDataLoaderV2;
    }

    public void G(String str, int i10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$like$1(str, i10, this, null), 3, null);
    }

    public final void r(String postId) {
        Intrinsics.h(postId, "postId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$deletePost$1(postId, this, null), 3, null);
    }

    public final b0 t() {
        return (b0) this.f48127j.getValue();
    }

    public final void u(String postId, int i10, String nextPage, int i11, boolean z10, int i12) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(nextPage, "nextPage");
        if (!z10) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$getImmVideoList$1(this, postId, null), 3, null);
            return;
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV2 = this.f48122e;
        if (videoImmersiveDataLoaderV2 != null) {
            videoImmersiveDataLoaderV2.u(postId);
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV3 = this.f48122e;
        if (videoImmersiveDataLoaderV3 != null) {
            videoImmersiveDataLoaderV3.s(nextPage);
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV4 = this.f48122e;
        if (videoImmersiveDataLoaderV4 != null) {
            videoImmersiveDataLoaderV4.t(i11);
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV5 = this.f48122e;
        if (videoImmersiveDataLoaderV5 != null) {
            videoImmersiveDataLoaderV5.f(w());
        }
    }

    public final LiveData v() {
        return w();
    }

    public final void x(String postId) {
        Intrinsics.h(postId, "postId");
        if (TextUtils.isEmpty(postId)) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$getPostDetail$1(this, postId, null), 3, null);
    }

    public final b0 y() {
        return (b0) this.f48124g.getValue();
    }
}
