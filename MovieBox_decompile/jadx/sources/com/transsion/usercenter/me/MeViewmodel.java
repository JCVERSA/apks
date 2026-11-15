package com.transsion.usercenter.me;

import android.app.Application;
import android.content.res.Resources;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.MemberInfo;
import com.transsion.push.PushConstants;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.bean.BffFavoriteInfo;
import com.transsion.usercenter.profile.bean.CountInfo;
import com.transsion.usercenter.profile.bean.IconItemInfo;
import com.transsion.usercenter.profile.bean.MeHistoryInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.MineNoticeConfig;
import com.transsion.usercenter.profile.bean.MineNovel;
import com.transsion.usercenter.profile.bean.MinePageInfo;
import com.transsion.usercenter.profile.bean.MyGroup;
import com.transsion.usercenter.profile.bean.MySubject;
import com.transsion.usercenter.profile.bean.SubscribeInfo;
import com.transsion.usercenter.profile.bean.ZeroConfig;
import com.transsion.usercenter.profile.bean.ZeroInfo;
import com.transsnet.loginapi.bean.UserInfo;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class MeViewmodel extends androidx.p009lifecycle.b {

    public static final a f54793q = new a(null);

    private final Lazy f54794b;

    private final Lazy f54795c;

    private final List f54796d;

    private ZeroConfig f54797e;

    private final Lazy f54798f;

    private MineNoticeConfig f54799g;

    private final int f54800h;

    private final b0 f54801i;

    private volatile List f54802j;

    private final Lazy f54803k;

    private final Lazy f54804l;

    private final Lazy f54805m;

    private MinePageInfo f54806n;

    private final b0 f54807o;

    private t1 f54808p;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeViewmodel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f54794b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeViewmodel.K();
            }
        });
        this.f54795c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeViewmodel.J();
            }
        });
        this.f54796d = new ArrayList();
        this.f54798f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeViewmodel.L();
            }
        });
        this.f54800h = 10;
        this.f54801i = new b0();
        this.f54802j = new ArrayList();
        this.f54803k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeViewmodel.Q();
            }
        });
        this.f54804l = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeViewmodel.O();
            }
        });
        this.f54805m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeViewmodel.P();
            }
        });
        this.f54807o = new b0();
    }

    public final qx.a B() {
        return (qx.a) this.f54795c.getValue();
    }

    public final com.transsion.usercenter.profile.b C() {
        return (com.transsion.usercenter.profile.b) this.f54794b.getValue();
    }

    public final com.transsion.usercenter.profile.d D() {
        return (com.transsion.usercenter.profile.d) this.f54798f.getValue();
    }

    public final void F() {
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("mine_notice_config_key", true);
            this.f54799g = (MineNoticeConfig) com.blankj.utilcode.util.o.e(configBeanC != null ? configBeanC.getValue() : null, com.blankj.utilcode.util.o.h(MineNoticeConfig.class, new Type[0]));
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final ShortTVPlayDao G() {
        return (ShortTVPlayDao) this.f54804l.getValue();
    }

    public final UGCVideoDetailPlayDao H() {
        return (UGCVideoDetailPlayDao) this.f54805m.getValue();
    }

    public final VideoDetailPlayDao I() {
        return (VideoDetailPlayDao) this.f54803k.getValue();
    }

    public static final qx.a J() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final com.transsion.usercenter.profile.b K() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public static final com.transsion.usercenter.profile.d L() {
        return (com.transsion.usercenter.profile.d) hv.b.f61496c.a().e(com.transsion.usercenter.profile.d.class);
    }

    private final void M() {
        UserInfo userInfoI;
        ArrayList arrayList = new ArrayList();
        Resources resources = Utils.a().getResources();
        MinePageInfo minePageInfo = this.f54806n;
        if (minePageInfo == null || (userInfoI = minePageInfo.getUserInfo()) == null) {
            qx.a aVarB = B();
            userInfoI = aVarB != null ? aVarB.i() : null;
        }
        arrayList.add(new MeItemInfo(1, userInfoI));
        arrayList.add(new MeItemInfo(4, new MeHistoryInfo(this.f54802j)));
        arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.user_switch_profile), null, "study_mode_type", R$drawable.ic_me_switch_profile, com.transsion.baseui.R$drawable.bg_radius_bottom_6_color_white_6p, false, 0, false, "study_mode", 224, null)));
        this.f54807o.n(arrayList);
    }

    public final void N() {
        UserInfo userInfoI;
        String bottomContent;
        String noticeContent;
        SubscribeInfo subscribeInfo;
        Integer subscribeCount;
        CountInfo myComment;
        CountInfo myLike;
        CountInfo myPost;
        BffFavoriteInfo favoriteInfo;
        Integer favoriteCount;
        MySubject mySubject;
        MyGroup myGroup;
        ij.o oVar = ij.o.f62115a;
        if (oVar.i()) {
            M();
            return;
        }
        ArrayList arrayList = new ArrayList();
        MinePageInfo minePageInfo = this.f54806n;
        Resources resources = Utils.a().getResources();
        if (minePageInfo == null || (userInfoI = minePageInfo.getUserInfo()) == null) {
            qx.a aVarB = B();
            userInfoI = aVarB != null ? aVarB.i() : null;
        }
        MemberInfo vipInfo = minePageInfo != null ? minePageInfo.getVipInfo() : null;
        MineNovel novelEntry = minePageInfo != null ? minePageInfo.getNovelEntry() : null;
        int iIntValue = 0;
        int count = (minePageInfo == null || (myGroup = minePageInfo.getMyGroup()) == null) ? 0 : myGroup.getCount();
        int wantToSeeCount = (minePageInfo == null || (mySubject = minePageInfo.getMySubject()) == null) ? 0 : mySubject.getWantToSeeCount();
        int iIntValue2 = (minePageInfo == null || (favoriteInfo = minePageInfo.getFavoriteInfo()) == null || (favoriteCount = favoriteInfo.getFavoriteCount()) == null) ? 0 : favoriteCount.intValue();
        int count2 = (minePageInfo == null || (myPost = minePageInfo.getMyPost()) == null) ? 0 : myPost.getCount();
        int count3 = (minePageInfo == null || (myLike = minePageInfo.getMyLike()) == null) ? 0 : myLike.getCount();
        int count4 = (minePageInfo == null || (myComment = minePageInfo.getMyComment()) == null) ? 0 : myComment.getCount();
        if (minePageInfo != null && (subscribeInfo = minePageInfo.getSubscribeInfo()) != null && (subscribeCount = subscribeInfo.getSubscribeCount()) != null) {
            iIntValue = subscribeCount.intValue();
        }
        arrayList.add(new MeItemInfo(1, userInfoI));
        MineNoticeConfig mineNoticeConfig = this.f54799g;
        if (mineNoticeConfig != null && mineNoticeConfig.getNoticeEnable() && (noticeContent = mineNoticeConfig.getNoticeContent()) != null && noticeContent.length() != 0) {
            arrayList.add(new MeItemInfo(8, mineNoticeConfig));
        }
        if (vipInfo != null) {
            arrayList.add(new MeItemInfo(2, vipInfo));
        }
        arrayList.add(new MeItemInfo(11, null));
        ZeroInfo zeroInfo = (ZeroInfo) CollectionsKt.k0(this.f54796d);
        if (zeroInfo != null) {
            arrayList.add(new MeItemInfo(3, zeroInfo));
        }
        if (novelEntry != null) {
            arrayList.add(new MeItemInfo(7, novelEntry));
        }
        ij.g gVar = ij.g.f62108a;
        String str = gVar.b() ? "/postdetail/favorite" : "/profile/see";
        if (gVar.b()) {
            wantToSeeCount = iIntValue2;
        }
        arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.profile_your_list), String.valueOf(wantToSeeCount), "oneroom://com.community.oneroom" + str, R$drawable.ic_me_my_list, com.transsion.baseui.R$drawable.bg_radius_top_6_color_white_6p, true, lj.a.b(8), false, "want_to_see", 128, null)));
        arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(com.tn.lib.widget.R$string.my_likes), String.valueOf(count3), "like_list_type", R$drawable.ic_me_likes, R$color.white_6, true, 0, false, "like", PsExtractor.AUDIO_STREAM, null)));
        if (gVar.b()) {
            arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.profile_my_subscribers), String.valueOf(iIntValue), "subscribe_list_type", R$drawable.ic_me_subscriptions, R$color.white_6, true, 0, false, PushConstants.TOPIC_SUBSCRIBE, PsExtractor.AUDIO_STREAM, null)));
        }
        arrayList.add(new MeItemInfo(4, new MeHistoryInfo(this.f54802j)));
        arrayList.add(new MeItemInfo(6, null));
        String string = resources.getString(R$string.profile_my_room);
        String strValueOf = String.valueOf(count);
        qx.a aVarB2 = B();
        arrayList.add(new MeItemInfo(5, new IconItemInfo(string, strValueOf, (aVarB2 == null || !aVarB2.a()) ? "oneroom://com.community.oneroom/room/list?index=1" : "oneroom://com.community.oneroom/room/list", R$drawable.ic_me_room, com.transsion.baseui.R$drawable.bg_radius_top_6_color_white_6p, true, lj.a.b(8), false, "myrooms")));
        if (!gVar.b()) {
            arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.profile_post), String.valueOf(count2), "post_list_type", R$drawable.ic_mine_post, R$color.white_6, true, 0, true, "post", 64, null)));
        }
        arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(com.transsion.baseui.R$string.my_comments), String.valueOf(count4), "oneroom://com.community.oneroom/post/my_comment", R$drawable.ic_me_comments, com.transsion.baseui.R$drawable.bg_radius_bottom_6_color_white_6p, false, 0, true, "comments", 96, null)));
        arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.user_setting), null, "oneroom://com.community.oneroom/profile/setting", R$drawable.ic_me_setting, com.transsion.baseui.R$drawable.bg_radius_top_6_color_white_6p, true, lj.a.b(8), false, "setting", 128, null)));
        KidsAccountManager kidsAccountManager = KidsAccountManager.f42144a;
        String strE = kidsAccountManager.e();
        if (strE != null && strE.length() != 0 && oVar.j()) {
            arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.user_parental_pin), resources.getString(!kidsAccountManager.i() ? R$string.user_parental_pin_hint : R$string.user_parental_pin_hint_on), "parental_pin_type", R$drawable.ic_user_kids_settings_pin, R$color.white_6, true, 0, false, "parental_pin", PsExtractor.AUDIO_STREAM, null)));
        }
        if (oVar.j()) {
            arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.user_safe_kids), resources.getString((strE == null || strE.length() == 0) ? R$string.user_create_study_profile : R$string.user_switch_profile), "study_mode_type", R$drawable.ic_me_study_mode, R$color.white_6, true, 0, false, "study_mode", PsExtractor.AUDIO_STREAM, null)));
        }
        arrayList.add(new MeItemInfo(5, new IconItemInfo(resources.getString(R$string.user_setting_feedback), null, "oneroom://com.community.oneroom/profile/user_center_labels_feedback", R$drawable.ic_me_feedback, com.transsion.baseui.R$drawable.bg_radius_bottom_6_color_white_6p, false, 0, false, TmcConstants.MENU_KEY_FEEDBACK, 224, null)));
        MineNoticeConfig mineNoticeConfig2 = this.f54799g;
        if (mineNoticeConfig2 != null && (bottomContent = mineNoticeConfig2.getBottomContent()) != null && bottomContent.length() != 0) {
            arrayList.add(new MeItemInfo(9, mineNoticeConfig2));
        }
        this.f54807o.n(arrayList);
    }

    public static final ShortTVPlayDao O() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).w1();
    }

    public static final UGCVideoDetailPlayDao P() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public static final VideoDetailPlayDao Q() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    private final void z() {
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("free_buy_config", true);
            this.f54797e = (ZeroConfig) com.blankj.utilcode.util.o.e(configBeanC != null ? configBeanC.getValue() : null, com.blankj.utilcode.util.o.h(ZeroConfig.class, new Type[0]));
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final b0 A() {
        return this.f54801i;
    }

    public final b0 E() {
        return this.f54807o;
    }

    public final void w() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MeViewmodel$fetchHistory$1(this, null), 2, null);
    }

    public final void x() {
        w();
        t1 t1Var = this.f54808p;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f54808p = kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MeViewmodel$fetchProfile$1(this, null), 2, null);
    }

    public final void y() {
        if (this.f54797e == null) {
            z();
        }
        wf.a.C0922a.f(wf.a.f74274a, "MeViewmodel", "zeroConfig:" + this.f54797e, false, 4, null);
        ZeroConfig zeroConfig = this.f54797e;
        if (zeroConfig == null || !zeroConfig.getEnable()) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MeViewmodel$fetchPurchase$1(this, null), 2, null);
    }
}
