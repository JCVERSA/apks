package com.transsion.player.longvideo.helper;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.subtitle.helper.LocalVideoUiType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;

public final class LongVodSubtitleHelper {

    private final mn.j f46059a;

    private final String f46060b;

    private List f46061c;

    private final w f46062d;

    private final Function1 f46063e;

    private boolean f46064f;

    private List f46065g;

    private final VideoSubtitleControl f46066h;

    private boolean f46067i;

    private DownloadBean f46068j;

    private ln.a f46069k;

    private boolean f46070l;

    private View f46071m;

    private ViewGroup f46072n;

    private final n0 f46073o;

    private final kotlinx.coroutines.n0 f46074p;

    private final Lazy f46075q;

    private final Lazy f46076r;

    public static final class a implements lt.a {
        a() {
        }
    }

    public class b {

        public static final int[] f46078a;

        static {
            int[] iArr = new int[LongVodUiType.values().length];
            try {
                iArr[LongVodUiType.LAND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LongVodUiType.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46078a = iArr;
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f46079a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46079a = function;
        }

        @Override
        public final Function a() {
            return this.f46079a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f46079a.invoke(obj);
        }
    }

    public LongVodSubtitleHelper(mn.j viewBinding, String str, List dubs, w callback, Function1 function1, boolean z10) {
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(dubs, "dubs");
        Intrinsics.h(callback, "callback");
        this.f46059a = viewBinding;
        this.f46060b = str;
        this.f46061c = dubs;
        this.f46062d = callback;
        this.f46063e = function1;
        this.f46064f = z10;
        this.f46065g = new ArrayList();
        this.f46070l = true;
        this.f46074p = o0.a(y0.b());
        this.f46075q = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodSubtitleHelper.k0();
            }
        });
        this.f46076r = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodSubtitleHelper.g0();
            }
        });
        Context context = viewBinding.getRoot().getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        n0 n0Var = (n0) new v0((FragmentActivity) context).a(n0.class);
        this.f46073o = n0Var;
        this.f46070l = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("subtitle_land_guide", true);
        Context context2 = viewBinding.getRoot().getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        VideoSubtitleControl videoSubtitleControl = new VideoSubtitleControl((FragmentActivity) context2, str, com.transsion.baselib.helper.d.f42124a.d(), this.f46061c, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.r(((Boolean) obj).booleanValue());
            }
        }, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LongVodSubtitleHelper.s(this.f46123a, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            }
        }, new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return LongVodSubtitleHelper.t(this.f46125a, (String) obj, (String) obj2, ((Integer) obj3).intValue());
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.u(this.f46127a, (DubsInfo) obj);
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.v(this.f46151a, (List) obj);
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.w(this.f46152a, (String) obj);
            }
        }, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LongVodSubtitleHelper.x(this.f46080a, (String) obj, (String) obj2);
            }
        });
        videoSubtitleControl.O(LocalVideoUiType.MIDDLE);
        videoSubtitleControl.g0(new a());
        videoSubtitleControl.c0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.P(this.f46093a, (String) obj);
            }
        });
        this.f46066h = videoSubtitleControl;
        if (this.f46064f) {
            this.f46070l = false;
        }
        androidx.p009lifecycle.b0 b0VarB = n0Var.b();
        Context context3 = viewBinding.getRoot().getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarB.j((FragmentActivity) context3, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.q(this.f46113a, (ht.a) obj);
            }
        }));
    }

    private final void E() {
        if (this.f46065g.isEmpty() && this.f46070l) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            if (bVar.b().getBoolean("subtitle_is_search_downloaded", false)) {
                this.f46070l = false;
                bVar.b().putBoolean("subtitle_land_guide", false);
            } else {
                this.f46070l = false;
                bVar.b().putBoolean("subtitle_land_guide", false);
                this.f46062d.b(true, false);
            }
        }
    }

    public final void F(DownloadBean downloadBean) {
        this.f46067i = true;
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "流媒体，开始播放检测字幕，name:" + downloadBean.getTotalTitleName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId(), true);
        com.transsion.subtitle.h.f52857a.b().e(downloadBean, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.G(this.f46103a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit G(LongVodSubtitleHelper longVodSubtitleHelper, boolean z10) {
        if (!z10 && longVodSubtitleHelper.f46065g.isEmpty()) {
            longVodSubtitleHelper.f46059a.getRoot().post(new Runnable() {
                @Override
                public final void run() {
                    LongVodSubtitleHelper.H();
                }
            });
        }
        return Unit.f64096a;
    }

    public static final void H() {
    }

    private final ImageView J() {
        return null;
    }

    private final TextView K() {
        if (this.f46064f) {
            return this.f46059a.f66585o.f66620x;
        }
        return null;
    }

    private final TextView L() {
        return null;
    }

    public final UGCVideoDetailPlayDao N() {
        return (UGCVideoDetailPlayDao) this.f46076r.getValue();
    }

    public final VideoDetailPlayDao O() {
        return (VideoDetailPlayDao) this.f46075q.getValue();
    }

    public static final Unit P(LongVodSubtitleHelper longVodSubtitleHelper, String str) {
        longVodSubtitleHelper.f46062d.f(str);
        return Unit.f64096a;
    }

    private final void Q(DownloadBean downloadBean) {
        kotlinx.coroutines.k.d(this.f46074p, null, null, new LongVodSubtitleHelper$loadFromDB$1(downloadBean, this, null), 3, null);
    }

    private final void U(View view) {
        mn.k kVar = this.f46059a.f66585o;
        View view2 = this.f46071m;
        if (view2 != null) {
            uf.c.g(view2);
        }
    }

    private final void V(View view, boolean z10) {
        this.f46062d.b(true, true);
        w wVar = this.f46062d;
        String string = Utils.a().getString(z10 ? R$string.subtitle_turn_on_toast : R$string.subtitle_turn_off_toast);
        Intrinsics.g(string, "getString(...)");
        wVar.c(string);
    }

    private final void a0(VideoSubtitleControl videoSubtitleControl) {
        LocalVideoUiType localVideoUiType = LocalVideoUiType.MIDDLE;
        TextView textViewK = K();
        mn.j jVar = this.f46059a;
        videoSubtitleControl.Z(localVideoUiType, textViewK, jVar.A, jVar.f66596z, jVar.f66581k, false);
        videoSubtitleControl.i0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.b0(this.f46150a, ((Boolean) obj).booleanValue());
            }
        });
        videoSubtitleControl.E(localVideoUiType, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LongVodSubtitleHelper.c0(this.f46108a, (View) obj, ((Boolean) obj2).booleanValue());
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.d0(this.f46111a, (View) obj);
            }
        });
    }

    public static final Unit b0(LongVodSubtitleHelper longVodSubtitleHelper, boolean z10) {
        View viewI = longVodSubtitleHelper.I();
        if (viewI != null) {
            viewI.setVisibility(z10 ? 0 : 8);
        }
        ImageView imageViewJ = longVodSubtitleHelper.J();
        if (imageViewJ != null) {
            imageViewJ.setVisibility(z10 ? 8 : 0);
        }
        TextView textViewL = longVodSubtitleHelper.L();
        if (textViewL != null) {
            textViewL.setText(Utils.a().getString(z10 ? com.transsion.postdetail.R$string.play_loading : com.transsion.postdetail.R$string.turn_on_short));
        }
        return Unit.f64096a;
    }

    public static final Unit c0(LongVodSubtitleHelper longVodSubtitleHelper, View switchView, boolean z10) {
        Intrinsics.h(switchView, "switchView");
        longVodSubtitleHelper.V(switchView, z10);
        return Unit.f64096a;
    }

    public static final Unit d0(LongVodSubtitleHelper longVodSubtitleHelper, View settingView) {
        Intrinsics.h(settingView, "settingView");
        longVodSubtitleHelper.U(settingView);
        return Unit.f64096a;
    }

    public static final UGCVideoDetailPlayDao g0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public static final VideoDetailPlayDao k0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public static final Unit q(LongVodSubtitleHelper longVodSubtitleHelper, ht.a aVar) {
        VideoSubtitleControl videoSubtitleControl = longVodSubtitleHelper.f46066h;
        Intrinsics.e(aVar);
        videoSubtitleControl.N(aVar);
        return Unit.f64096a;
    }

    public static final Unit r(boolean z10) {
        return Unit.f64096a;
    }

    public static final Unit s(LongVodSubtitleHelper longVodSubtitleHelper, boolean z10, boolean z11) {
        if (z10) {
            longVodSubtitleHelper.f46062d.b(true, z11);
        } else {
            longVodSubtitleHelper.f46062d.b(false, true);
        }
        return Unit.f64096a;
    }

    public static final Unit t(LongVodSubtitleHelper longVodSubtitleHelper, String lanName, String lan, int i10) {
        Intrinsics.h(lanName, "lanName");
        Intrinsics.h(lan, "lan");
        longVodSubtitleHelper.f46073o.d().n(new Pair(lanName, lan));
        longVodSubtitleHelper.f46062d.g(lanName, lan, i10);
        return Unit.f64096a;
    }

    public static final Unit u(LongVodSubtitleHelper longVodSubtitleHelper, DubsInfo it) {
        Intrinsics.h(it, "it");
        Function1 function1 = longVodSubtitleHelper.f46063e;
        if (function1 != null) {
            function1.invoke(it);
        }
        return Unit.f64096a;
    }

    public static final Unit v(LongVodSubtitleHelper longVodSubtitleHelper, List list) {
        Intrinsics.h(list, "list");
        longVodSubtitleHelper.f46073o.c().n(list);
        longVodSubtitleHelper.f46062d.e(list);
        return Unit.f64096a;
    }

    public static final Unit w(LongVodSubtitleHelper longVodSubtitleHelper, String str) {
        w wVar = longVodSubtitleHelper.f46062d;
        if (str == null) {
            str = "";
        }
        wVar.c(str);
        return Unit.f64096a;
    }

    public static final Unit x(LongVodSubtitleHelper longVodSubtitleHelper, String str, String str2) {
        longVodSubtitleHelper.f46062d.d(str, str2);
        return Unit.f64096a;
    }

    public final View I() {
        return null;
    }

    public final Map M() {
        return this.f46066h.F();
    }

    public final void R() {
        this.f46066h.M();
    }

    public final void S() {
        DownloadBean downloadBean;
        if (this.f46067i || (downloadBean = this.f46068j) == null) {
            return;
        }
        this.f46067i = true;
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "流媒体，网络连接成功开始检测字幕，name:" + downloadBean.getTotalTitleName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId(), true);
        com.transsion.subtitle.h.b.a(com.transsion.subtitle.h.f52857a.b(), downloadBean, null, 2, null);
    }

    public final void T(ln.a bean, ln.c playStream) {
        UGCVideoBelongToCollection belongToCollection;
        UGCVideoBelongToCollection belongToCollection2;
        UGCVideoBelongToCollection belongToCollection3;
        Intrinsics.h(bean, "bean");
        Intrinsics.h(playStream, "playStream");
        this.f46067i = false;
        this.f46069k = bean;
        if (bean.d() != null) {
            this.f46068j = bean.d();
        } else {
            DownloadBean downloadBean = new DownloadBean(playStream.h(), playStream.c(), bean.p(), "", StringsKt.x(playStream.g()), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, bean.e(), bean.l(), 0, 0, 0, 0, 0, 0, 0, bean.o(), this.f46060b, null, bean.p(), 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -1477181472, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            downloadBean.setStream(playStream.k());
            downloadBean.setStreamVideoDetail(true);
            UGCVideo uGCVideoU = bean.u();
            downloadBean.setUgcVideoId(uGCVideoU != null ? uGCVideoU.getUgcVideoId() : null);
            UGCVideo uGCVideoU2 = bean.u();
            downloadBean.setUgcVideoCollectionId((uGCVideoU2 == null || (belongToCollection3 = uGCVideoU2.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionId());
            UGCVideo uGCVideoU3 = bean.u();
            downloadBean.setUgcVideoName(uGCVideoU3 != null ? uGCVideoU3.getTitle() : null);
            UGCVideo uGCVideoU4 = bean.u();
            downloadBean.setUgcVideoCollectionName((uGCVideoU4 == null || (belongToCollection2 = uGCVideoU4.getBelongToCollection()) == null) ? null : belongToCollection2.getCollectionName());
            UGCVideo uGCVideoU5 = bean.u();
            downloadBean.setUgcVideoPosition((uGCVideoU5 == null || (belongToCollection = uGCVideoU5.getBelongToCollection()) == null) ? null : belongToCollection.getPosition());
            UGCVideo uGCVideoU6 = bean.u();
            downloadBean.setUgcVideoType(uGCVideoU6 != null ? uGCVideoU6.getCategory() : null);
            downloadBean.setOps(bean.q());
            downloadBean.setSubtitleIdType(playStream.d());
            this.f46068j = downloadBean;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strA = com.transsion.baselib.report.a.f42192a.a();
        DownloadBean downloadBean2 = this.f46068j;
        String ugcVideoId = downloadBean2 != null ? downloadBean2.getUgcVideoId() : null;
        DownloadBean downloadBean3 = this.f46068j;
        c0922a.c(strA, "subtitle onSetNewDataSource，ugcVideoId:" + ugcVideoId + " CollectionId:" + (downloadBean3 != null ? downloadBean3.getUgcVideoCollectionId() : null), true);
        this.f46066h.h0(this.f46068j);
        DownloadBean downloadBean4 = this.f46068j;
        Intrinsics.e(downloadBean4);
        Q(downloadBean4);
    }

    public final void W(LongVodUiType uiType) {
        LocalVideoUiType localVideoUiType;
        Intrinsics.h(uiType, "uiType");
        if (uiType == LongVodUiType.LAND) {
            E();
        }
        int i10 = b.f46078a[uiType.ordinal()];
        if (i10 != 1) {
            localVideoUiType = i10 != 2 ? LocalVideoUiType.MIDDLE : LocalVideoUiType.PORTRAIT;
        } else {
            localVideoUiType = LocalVideoUiType.LAND;
        }
        this.f46066h.O(localVideoUiType);
    }

    public final void X(long j10) {
        this.f46066h.R(j10);
    }

    public final void Y() {
        this.f46066h.T();
    }

    public final void Z() {
        VideoSubtitleControl videoSubtitleControl = this.f46066h;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.X();
        }
    }

    public final void e0(boolean z10) {
        this.f46066h.b0(z10);
    }

    public final void f0(ViewGroup viewGroup) {
        this.f46072n = viewGroup;
        a0(this.f46066h);
    }

    public final void h0(List dubs) {
        Intrinsics.h(dubs, "dubs");
        this.f46061c = dubs;
        this.f46066h.p0(dubs);
    }

    public final void i0(long j10) {
        this.f46066h.q0(j10);
    }

    public final void j0(float f10) {
        this.f46066h.r0(f10);
    }

    public LongVodSubtitleHelper(mn.j jVar, String str, List list, w wVar, Function1 function1, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(jVar, str, list, wVar, function1, (i10 & 32) != 0 ? true : z10);
    }
}
