package com.transsion.postdetail.shorttv_pugc.factory;

import android.os.Build;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.postdetail.util.UGCShortTVFloatManager;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.manager.a0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class f implements vs.e {

    public static final class a implements gw.a {
        a() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return UGCShortTVFloatManager.f48062b.m(aVar);
        }

        @Override
        public void b(dw.a aVar) {
            UGCShortTVFloatManager uGCShortTVFloatManager = UGCShortTVFloatManager.f48062b;
            uGCShortTVFloatManager.j();
            uGCShortTVFloatManager.n(aVar);
        }

        @Override
        public void c(dw.a aVar) {
            gw.a.C0742a.a(this, aVar);
            UGCShortTVFloatManager.f48062b.k(aVar);
        }
    }

    private final dw.a j(rs.d dVar) {
        ShorttvModel.UGCVideoCollection belongToCollection;
        ShorttvModel.UGCVideoCollection belongToCollection2;
        ShorttvModel.UGCVideoCollection belongToCollection3;
        ShorttvModel.UGCVideoCollection belongToCollection4;
        dw.a aVar = new dw.a(dVar.g(), dVar.c(), null, FloatPlayType.SHORT_TV, "", -1, dVar.a(), "", dVar.e());
        aVar.J(Integer.valueOf(SubjectType.SHORT_TV.getValue()));
        aVar.A(dVar.b());
        aVar.B(dVar.d());
        ShorttvModel.UGCVideo uGCVideoH = dVar.h();
        String collectionId = (uGCVideoH == null || (belongToCollection4 = uGCVideoH.getBelongToCollection()) == null) ? null : belongToCollection4.getCollectionId();
        ShorttvModel.UGCVideo uGCVideoH2 = dVar.h();
        String collectionName = (uGCVideoH2 == null || (belongToCollection3 = uGCVideoH2.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionName();
        ShorttvModel.UGCVideo uGCVideoH3 = dVar.h();
        Integer videoNum = (uGCVideoH3 == null || (belongToCollection2 = uGCVideoH3.getBelongToCollection()) == null) ? null : belongToCollection2.getVideoNum();
        ShorttvModel.UGCVideo uGCVideoH4 = dVar.h();
        UGCVideoBelongToCollection uGCVideoBelongToCollection = new UGCVideoBelongToCollection(collectionId, collectionName, videoNum, (uGCVideoH4 == null || (belongToCollection = uGCVideoH4.getBelongToCollection()) == null) ? null : belongToCollection.getPosition(), null, 16, null);
        ShorttvModel.UGCVideo uGCVideoH5 = dVar.h();
        String ugcVideoId = uGCVideoH5 != null ? uGCVideoH5.getUgcVideoId() : null;
        ShorttvModel.UGCVideo uGCVideoH6 = dVar.h();
        String title = uGCVideoH6 != null ? uGCVideoH6.getTitle() : null;
        ShorttvModel.UGCVideo uGCVideoH7 = dVar.h();
        String description = uGCVideoH7 != null ? uGCVideoH7.getDescription() : null;
        ShorttvModel.UGCVideo uGCVideoH8 = dVar.h();
        String corner = uGCVideoH8 != null ? uGCVideoH8.getCorner() : null;
        ShorttvModel.UGCVideo uGCVideoH9 = dVar.h();
        Long duration = uGCVideoH9 != null ? uGCVideoH9.getDuration() : null;
        ShorttvModel.UGCVideo uGCVideoH10 = dVar.h();
        String watchNum = uGCVideoH10 != null ? uGCVideoH10.getWatchNum() : null;
        ShorttvModel.UGCVideo uGCVideoH11 = dVar.h();
        String releaseDate = uGCVideoH11 != null ? uGCVideoH11.getReleaseDate() : null;
        ShorttvModel.UGCVideo uGCVideoH12 = dVar.h();
        Long publishTime = uGCVideoH12 != null ? uGCVideoH12.getPublishTime() : null;
        ShorttvModel.UGCVideo uGCVideoH13 = dVar.h();
        String category = uGCVideoH13 != null ? uGCVideoH13.getCategory() : null;
        ShorttvModel.UGCVideo uGCVideoH14 = dVar.h();
        String ops = uGCVideoH14 != null ? uGCVideoH14.getOps() : null;
        ShorttvModel.UGCVideo uGCVideoH15 = dVar.h();
        String subjectId = uGCVideoH15 != null ? uGCVideoH15.getSubjectId() : null;
        ShorttvModel.UGCVideo uGCVideoH16 = dVar.h();
        List<String> country = uGCVideoH16 != null ? uGCVideoH16.getCountry() : null;
        ShorttvModel.UGCVideo uGCVideoH17 = dVar.h();
        aVar.L(new UGCVideo(ugcVideoId, title, description, null, null, null, corner, duration, watchNum, releaseDate, publishTime, category, null, null, uGCVideoBelongToCollection, ops, subjectId, country, null, null, null, null, null, uGCVideoH17 != null ? uGCVideoH17.getRestrictKid() : 0, false, null, null, null, null, 528232504, null));
        return aVar;
    }

    public static final Unit k(FragmentActivity fragmentActivity, boolean z10) {
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f64096a;
    }

    @Override
    public void a(FragmentActivity activity, boolean z10, boolean z11, ViewGroup viewGroup) {
        Intrinsics.h(activity, "activity");
        cw.e.a aVar = cw.e.f58665a;
        if (aVar.b().c() && com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
            aVar.b().a(activity, true, z11, viewGroup);
        }
    }

    @Override
    public void b(FragmentActivity activity, String ugcVideoId, String pageName, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        Intrinsics.h(pageName, "pageName");
        cw.b.f58659a.c().f(activity, null, ugcVideoId, pageName, str);
    }

    @Override
    public void c() {
        cw.b.C0694b.a(cw.b.f58659a.c(), false, 1, null);
    }

    @Override
    public com.transsion.player.orplayer.f d(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return a0.f55763a.b(UGCShortTVFloatManager.f48062b.h(str));
    }

    @Override
    public boolean e(com.transsion.player.orplayer.f fVar) {
        return a0.f55763a.c(fVar);
    }

    @Override
    public boolean f(com.transsion.player.orplayer.f fVar) {
        return cw.c.f58664a.c(fVar);
    }

    @Override
    public void g(boolean z10, FragmentActivity fragmentActivity, rs.d bean) {
        Intrinsics.h(bean, "bean");
        if (z10) {
            if (fragmentActivity == null || fragmentActivity.isDestroyed() || fragmentActivity.isFinishing()) {
                return;
            }
            dw.a aVarJ = j(bean);
            if (Build.VERSION.SDK_INT >= 31) {
                cw.e.f58665a.b().h(fragmentActivity, aVarJ);
            }
        }
        cw.e.f58665a.b().onPipModeChanged(z10);
    }

    @Override
    public void h(final FragmentActivity activity, rs.d bean) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        dw.a aVarJ = j(bean);
        if (!com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
            wf.a.f74274a.c("VideoFloat", "shottv 设置页pip开关被关闭了", true);
            return;
        }
        cw.e.a aVar = cw.e.f58665a;
        if (aVar.b().c()) {
            wf.a.f74274a.c("VideoFloat-pip", "shottv 当前可用画中画，使用画中画播放", true);
            aVar.b().d(activity, aVarJ, FloatActionType.HOME, false);
        } else {
            UGCShortTVFloatManager.f48062b.q(bean.f());
            cw.b.f58659a.c().e(activity, aVarJ, false, false, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return f.k(activity, ((Boolean) obj).booleanValue());
                }
            }, new a());
        }
    }
}
