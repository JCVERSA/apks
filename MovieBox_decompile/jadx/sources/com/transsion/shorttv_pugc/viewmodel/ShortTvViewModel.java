package com.transsion.shorttv_pugc.viewmodel;

import android.content.Context;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.k1;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import vs.i;

public final class ShortTvViewModel extends t0 {
    public static final a M = new a(null);
    private final Lazy A;
    private final Lazy B;
    private final Lazy C;
    private final Lazy D;
    private final Lazy E;
    private final List F;
    private final List G;
    private String H;
    private List I;
    private String J;
    private boolean K;
    private String L;

    private final us.a f52457a = (us.a) kg.c.f63982e.a().h(us.a.class);

    private final k1 f52458b;

    private final b0 f52459c;

    private final b0 f52460d;

    private final b0 f52461e;

    private final b0 f52462f;

    private final b0 f52463g;

    private final b0 f52464h;

    private final LiveData f52465i;

    private final b0 f52466j;

    private final LiveData f52467k;

    private final b0 f52468l;

    private final LiveData f52469m;

    private final b0 f52470n;

    private final LiveData f52471o;

    private final b0 f52472p;

    private final LiveData f52473q;

    private final b0 f52474r;

    private final LiveData f52475s;

    private final b0 f52476t;

    private LiveData f52477u;

    private final b0 f52478v;

    private final LiveData f52479w;

    private final ws.a f52480x;

    private final Lazy f52481y;

    private final Lazy f52482z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public ShortTvViewModel() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this.f52458b = m1.c(executorServiceNewSingleThreadExecutor);
        this.f52459c = new b0();
        this.f52460d = new b0();
        this.f52461e = new b0();
        this.f52462f = new b0();
        this.f52463g = new b0();
        b0 b0Var = new b0();
        this.f52464h = b0Var;
        this.f52465i = b0Var;
        b0 b0Var2 = new b0();
        this.f52466j = b0Var2;
        this.f52467k = b0Var2;
        b0 b0Var3 = new b0();
        this.f52468l = b0Var3;
        this.f52469m = b0Var3;
        b0 b0Var4 = new b0();
        this.f52470n = b0Var4;
        this.f52471o = b0Var4;
        b0 b0Var5 = new b0();
        this.f52472p = b0Var5;
        this.f52473q = b0Var5;
        b0 b0Var6 = new b0();
        this.f52474r = b0Var6;
        this.f52475s = b0Var6;
        b0 b0Var7 = new b0();
        this.f52476t = b0Var7;
        this.f52477u = b0Var7;
        b0 b0Var8 = new b0();
        this.f52478v = b0Var8;
        this.f52479w = b0Var8;
        this.f52480x = cs.a.f58651a.b();
        this.f52481y = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.j0(this.f52483a);
            }
        });
        this.f52482z = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.l0(this.f52484a);
            }
        });
        this.A = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.k0(this.f52485a);
            }
        });
        this.B = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.o0(this.f52486a);
            }
        });
        this.C = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.m0(this.f52487a);
            }
        });
        this.D = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.p0(this.f52488a);
            }
        });
        this.E = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.n0(this.f52489a);
            }
        });
        this.F = new ArrayList();
        this.G = new ArrayList();
        this.H = "";
    }

    public static void a0(ShortTvViewModel shortTvViewModel, String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = shortTvViewModel.H;
        }
        shortTvViewModel.Z(str, i10, i11);
    }

    public static final vs.c j0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public static final vs.d k0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.e();
        }
        return null;
    }

    public static final vs.e l0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.f();
        }
        return null;
    }

    public static final vs.f m0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public static final vs.h n0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    public static final vs.a o0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.i();
        }
        return null;
    }

    public static final i p0(ShortTvViewModel shortTvViewModel) {
        ws.a aVar = shortTvViewModel.f52480x;
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }

    public final LiveData A() {
        return this.f52477u;
    }

    public final LiveData B() {
        return this.f52467k;
    }

    public final Object C(String str, Continuation continuation) {
        vs.f fVarO = O();
        if (fVarO != null) {
            return fVarO.c(str, continuation);
        }
        return null;
    }

    public final LiveData D() {
        return this.f52475s;
    }

    public final LiveData E() {
        return this.f52469m;
    }

    public final int F() {
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(this.G);
        if (uGCVideo != null) {
            return uGCVideo.getEp();
        }
        return -1;
    }

    public final int G() {
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.v0(this.G);
        if (uGCVideo != null) {
            return uGCVideo.getEp();
        }
        return -1;
    }

    public final void H(int i10) {
    }

    public final String I() {
        return this.J;
    }

    public final LiveData J() {
        return this.f52471o;
    }

    public final void K(String nextPage, int i10, boolean z10) {
        Intrinsics.h(nextPage, "nextPage");
    }

    public final vs.c L() {
        return (vs.c) this.f52481y.getValue();
    }

    public final vs.d M() {
        return (vs.d) this.A.getValue();
    }

    public final vs.e N() {
        return (vs.e) this.f52482z.getValue();
    }

    public final vs.f O() {
        return (vs.f) this.C.getValue();
    }

    public final vs.h P() {
        return (vs.h) this.E.getValue();
    }

    public final vs.a Q() {
        return (vs.a) this.B.getValue();
    }

    public final i R() {
        return (i) this.D.getValue();
    }

    public final LiveData S() {
        return this.f52473q;
    }

    public final b0 T() {
        return this.f52459c;
    }

    public final boolean U() {
        return this.K;
    }

    public final void V(ShorttvModel.UGCVideo uGCVideo) {
        String ugcVideoId;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasLike;
        String likeNum;
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (hasLike = interactiveInfo.getHasLike()) == null) {
            return;
        }
        boolean zBooleanValue = hasLike.booleanValue();
        interactiveInfo.setHasLike(Boolean.valueOf(!zBooleanValue));
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2 = uGCVideo.getInteractiveInfo();
        interactiveInfo.setLikeNum(String.valueOf(((interactiveInfo2 == null || (likeNum = interactiveInfo2.getLikeNum()) == null) ? 0L : Long.parseLong(likeNum)) + ((long) (zBooleanValue ? -1 : 1))));
        this.f52468l.q(Boolean.valueOf(!zBooleanValue));
        ShortTvExtKt.m(!zBooleanValue ? R$string.short_tv_liked : R$string.short_tv_liked_removed);
        k.d(u0.a(this), null, null, new ShortTvViewModel$like$1(this, ugcVideoId, zBooleanValue, null), 3, null);
    }

    public final void W(Context context) {
        Intrinsics.h(context, "context");
    }

    public final void X() {
        this.f52462f.q(this.f52461e.f());
    }

    public final t1 Y(String str, String str2, String str3) {
        return k.d(u0.a(this), null, null, new ShortTvViewModel$requestFirstVideo$1(str, this, str3, str2, null), 3, null);
    }

    public final void Z(String str, int i10, int i11) {
        k.d(u0.a(this), this.f52458b, null, new ShortTvViewModel$requestVideoCollection$1(str, i10, i11, this, null), 2, null);
    }

    public final void b0(ShorttvModel.UGCVideo uGCVideo, long j10) {
        if (uGCVideo == null) {
            return;
        }
        k.d(u0.a(this), y0.b(), null, new ShortTvViewModel$saveHistory$1(this, uGCVideo, j10, null), 2, null);
    }

    public final void c0(int i10) {
        Iterator it = this.F.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (((ShorttvModel.UGCVideo) it.next()).getEp() == i10) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0 || this.f52461e.f() == null) {
            Integer num = (Integer) this.f52461e.f();
            if (num != null && i10 == num.intValue()) {
                return;
            }
            this.f52461e.n(Integer.valueOf(i10));
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "scrollToEp：" + i10 + " 当前不存在该集", false, 4, null);
    }

    public final void d0(String str) {
        this.L = str;
    }

    public final void e0(String str) {
        this.H = str;
    }

    public final void f0(List list) {
        this.I = list;
    }

    public final void g0(String str) {
        this.J = str;
    }

    public final void h0(boolean z10) {
        this.K = z10;
    }

    public final void i0(ShorttvModel.UGCVideo uGCVideo) {
    }

    public final void m() {
        this.f52474r.q(null);
    }

    public final void n(ShorttvModel.UGCVideo uGCVideo) {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasFavorite;
        String favoriteNum;
        if (uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (hasFavorite = interactiveInfo.getHasFavorite()) == null) {
            return;
        }
        boolean zBooleanValue = hasFavorite.booleanValue();
        String ugcVideoId = uGCVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            return;
        }
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo2 != null) {
            interactiveInfo2.setHasFavorite(Boolean.valueOf(!zBooleanValue));
        }
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo3 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo3 != null) {
            ShorttvModel.UGCVideoInteractiveInfo interactiveInfo4 = uGCVideo.getInteractiveInfo();
            interactiveInfo3.setFavoriteNum(String.valueOf(((interactiveInfo4 == null || (favoriteNum = interactiveInfo4.getFavoriteNum()) == null) ? 0L : Long.parseLong(favoriteNum)) + ((long) (zBooleanValue ? -1 : 1))));
        }
        this.f52464h.q(Boolean.valueOf(!zBooleanValue));
        ShortTvExtKt.m(!zBooleanValue ? R$string.short_tv_favorite : R$string.short_tv_favorite_removed);
        k.d(u0.a(this), null, null, new ShortTvViewModel$favorite$1(this, ugcVideoId, zBooleanValue, null), 3, null);
    }

    public final void o(ShorttvModel.UGCVideo uGCVideo) {
        ShorttvModel.UGCVideoCreator creator;
        String uid;
        Boolean hasSubscribe;
        if (uGCVideo == null || (creator = uGCVideo.getCreator()) == null || (uid = creator.getUid()) == null || (hasSubscribe = creator.getHasSubscribe()) == null) {
            return;
        }
        boolean zBooleanValue = hasSubscribe.booleanValue();
        creator.setHasSubscribe(Boolean.valueOf(!zBooleanValue));
        this.f52466j.q(Boolean.valueOf(!zBooleanValue));
        ShortTvExtKt.m(!zBooleanValue ? R$string.short_tv_subscribe : R$string.short_tv_unsubscribe);
        k.d(u0.a(this), null, null, new ShortTvViewModel$follow$1(this, uid, zBooleanValue, null), 3, null);
    }

    public final List p() {
        return this.F;
    }

    public final String q() {
        return this.L;
    }

    public final void q0(boolean z10) {
        this.f52472p.q(Boolean.valueOf(z10));
    }

    public final String r() {
        return this.H;
    }

    public final b0 s() {
        return this.f52461e;
    }

    public final ShorttvModel.UGCVideo t() {
        Integer num = (Integer) this.f52461e.f();
        if (num == null) {
            return null;
        }
        return (ShorttvModel.UGCVideo) this.F.get(ShortTvExtKt.d(num.intValue()));
    }

    public final LiveData u() {
        return this.f52479w;
    }

    public final List v() {
        return this.I;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(String str, Continuation continuation) {
        ShortTvViewModel$getDownloadVideo$1 shortTvViewModel$getDownloadVideo$1;
        if (continuation instanceof ShortTvViewModel$getDownloadVideo$1) {
            shortTvViewModel$getDownloadVideo$1 = (ShortTvViewModel$getDownloadVideo$1) continuation;
            int i10 = shortTvViewModel$getDownloadVideo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                shortTvViewModel$getDownloadVideo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                shortTvViewModel$getDownloadVideo$1 = new ShortTvViewModel$getDownloadVideo$1(this, continuation);
            }
        } else {
            shortTvViewModel$getDownloadVideo$1 = new ShortTvViewModel$getDownloadVideo$1(this, continuation);
        }
        Object objD = shortTvViewModel$getDownloadVideo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = shortTvViewModel$getDownloadVideo$1.label;
        if (i11 == 0) {
            ResultKt.b(objD);
            vs.c cVarL = L();
            if (cVarL != null) {
                shortTvViewModel$getDownloadVideo$1.label = 1;
                objD = cVarL.d(str, shortTvViewModel$getDownloadVideo$1);
                if (objD == objF) {
                    return objF;
                }
            }
            return null;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objD);
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) objD;
        if (uGCVideo != null) {
            List list = this.I;
            if (list == null) {
                return uGCVideo;
            }
            Boxing.a(list.add(uGCVideo));
            return uGCVideo;
        }
        return null;
    }

    public final b0 x() {
        return this.f52460d;
    }

    public final LiveData y() {
        return this.f52465i;
    }

    public final List z() {
        return this.G;
    }
}
