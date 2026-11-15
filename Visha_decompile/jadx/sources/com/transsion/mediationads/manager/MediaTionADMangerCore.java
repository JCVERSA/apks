package com.transsion.mediationads.manager;

import android.content.pm.ApplicationInfo;
import android.util.Log;
import android.webkit.WebView;
import com.hisavana.mediation.config.TAdManager;
import com.transsion.mediationads.beans.AdDisplayResponse;
import com.transsion.mediationads.manager.MediaTionADMangerCore;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.bu4;
import defpackage.el0;
import defpackage.fec;
import defpackage.fi1;
import defpackage.ge;
import defpackage.hk1;
import defpackage.k29;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.se;
import defpackage.v6a;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class MediaTionADMangerCore {
    public static final a d = new a(null);
    public static volatile MediaTionADMangerCore e;
    public final String a;
    public final hk1 b;
    public final nk1 c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaTionADMangerCore a() {
            MediaTionADMangerCore mediaTionADMangerCore = MediaTionADMangerCore.e;
            if (mediaTionADMangerCore == null) {
                synchronized (this) {
                    mediaTionADMangerCore = MediaTionADMangerCore.e;
                    if (mediaTionADMangerCore == null) {
                        mediaTionADMangerCore = new MediaTionADMangerCore(null);
                        MediaTionADMangerCore.e = mediaTionADMangerCore;
                    }
                }
            }
            return mediaTionADMangerCore;
        }

        public a() {
        }
    }

    public static final class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            y45.j(baseResponse, "response");
            if (baseResponse.getCode() != 0 || !baseResponse.isSuccess()) {
                Log.e(MediaTionADMangerCore.this.a, "onNext Invalid response code: " + baseResponse.getCode() + ", message: " + baseResponse.getMsg());
                return;
            }
            Log.i(MediaTionADMangerCore.this.a, "onNext Ad strategy config request successful: " + baseResponse.getData());
            AdDisplayResponse adDisplayResponse = (AdDisplayResponse) baseResponse.getData();
            if (adDisplayResponse != null) {
                MediaTionADMangerCore mediaTionADMangerCore = MediaTionADMangerCore.this;
                mediaTionADMangerCore.m(adDisplayResponse);
                mediaTionADMangerCore.j(adDisplayResponse);
                Log.d(mediaTionADMangerCore.a, "Ad strategy config cached successfully");
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            y45.j(th, "e");
            Log.e(MediaTionADMangerCore.this.a, "Ad strategy config request failed: " + th.getMessage());
            MediaTionADMangerCore.this.p();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            y45.j(rc2Var, "d");
        }
    }

    public static final class c extends kotlin.coroutines.a implements hk1 {
        public final MediaTionADMangerCore b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(hk1.b bVar, MediaTionADMangerCore mediaTionADMangerCore) {
            super(bVar);
            this.b = mediaTionADMangerCore;
        }

        @Override
        public void handleException(kotlin.coroutines.d dVar, Throwable th) {
            Log.d(this.b.a, "Coroutine Exception: " + th.getMessage());
        }
    }

    public MediaTionADMangerCore(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final void l(MediaTionADMangerCore mediaTionADMangerCore, int i, String str) {
        Log.i(mediaTionADMangerCore.a, "TAdManager init complete ");
    }

    public final void i() throws Throwable {
        AdDisplayResponse adDisplayResponse;
        String cache = CacheManager.getInstance().getCache("visha_ad_strategy_cache");
        if (cache == null || cache.length() == 0 || (adDisplayResponse = (AdDisplayResponse) fi1.d(cache, AdDisplayResponse.class)) == null) {
            com.transsion.mediationads.manager.a.a.a().j();
            Log.i(this.a, "Ad strategy cache miss, marked parse completed");
        } else {
            m(adDisplayResponse);
            Log.i(this.a, "Ad strategy loaded from cache");
        }
    }

    public final void j(AdDisplayResponse adDisplayResponse) {
        el0.d(this.c, mc2.b(), null, new MediaTionADMangerCore$cacheAdStrategy$1(adDisplayResponse, this, null), 2, null);
    }

    public final void k() {
        String packageName;
        Log.i(this.a, "TAdManager init start ");
        com.transsion.mediationads.manager.b.a.a().i();
        boolean z = ge.e() || ge.f();
        if (z) {
            z = fec.b("environment_mode", 0) != 1;
        }
        ApplicationInfo applicationInfo = se.a().getApplicationInfo();
        if (applicationInfo == null || (packageName = applicationInfo.processName) == null) {
            packageName = se.a().getPackageName();
        }
        WebView.setDataDirectorySuffix(packageName);
        TAdManager.init(se.a(), new TAdManager.AdConfigBuilder().setAppId("251023IuRwtyUo").setDebug(z).testDevice(z).setMuteVideo(false).isInitAdMob(false).setInternalDefaultAdVersion(1774000983547L).setCloudCompleteListener(new TAdManager.OnCloudCompleteListener() {
            @Override
            public final void onCloudComplete(int i, String str) {
                MediaTionADMangerCore.l(this.a, i, str);
            }
        }).build());
    }

    public final void m(AdDisplayResponse adDisplayResponse) {
        com.transsion.mediationads.manager.c.a.a().p(adDisplayResponse);
        com.transsion.mediationads.manager.a.a.a().k(adDisplayResponse);
        d.f.a().n(adDisplayResponse);
    }

    public final void n() throws Throwable {
        if (com.transsion.mediationads.manager.a.a.a().h()) {
            Log.d(this.a, "preloadAdStrategyFromCacheSync skip, already parsed");
        } else {
            i();
        }
    }

    public final void o() {
        p();
        int iM = CountryInfoUtil.m();
        Log.d(this.a, "Start requesting ad strategy config for region: " + iM);
        try {
            ((bu4) OnlineVideoApiManager.getInstance().getApi(bu4.class)).a(iM).d0(k29.c()).M(k29.c()).subscribe(new b());
        } catch (Exception e2) {
            Log.e(this.a, "Exception occurred while requesting ad strategy config: " + e2.getMessage());
        }
    }

    public final void p() {
        el0.d(this.c, mc2.b(), null, new MediaTionADMangerCore$requestFromCache$1(this, null), 2, null);
    }

    public MediaTionADMangerCore() {
        this.a = "mediation_ad_MediaTionADMangerCore";
        c cVar = new c(hk1.w1, this);
        this.b = cVar;
        this.c = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(cVar));
    }
}
