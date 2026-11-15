package com.cloud.hisavana.sdk;

import android.content.Context;
import android.content.Intent;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.hisavana.sdk.common.activity.HisavanaRewardedActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.lang.ref.WeakReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class t1 implements a {

    private g3 f22324a;

    private final String f22325b;

    private AdsDTO f22326c;

    private long f22327d;

    public t1(g3 tranRewarded) {
        Intrinsics.h(tranRewarded, "tranRewarded");
        this.f22324a = tranRewarded;
        this.f22325b = "Rewarded";
        this.f22327d = r1.f22231a.b(this);
    }

    private final String d() {
        String strD = com.cloud.sdk.commonutil.util.e.d();
        if (strD == null) {
            return null;
        }
        return strD + "_rewarded";
    }

    private final void e() {
        try {
            HisavanaRewardedActivity.INSTANCE.a(new WeakReference(this.f22324a));
            AdsDTO adsDTO = this.f22326c;
            if (adsDTO != null) {
                adsDTO.setCloseDelayTime(this.f22324a.n(adsDTO));
            }
            Intent intent = new Intent(com.cloud.sdk.commonutil.util.e.a(), (Class<?>) HisavanaRewardedActivity.class);
            intent.setFlags(268500992);
            intent.putExtra("adBean", this.f22326c);
            intent.putExtra(RequestParameters.PREFIX, d());
            intent.putExtra("observerId", this.f22327d);
            intent.putExtra("triggerTs", System.currentTimeMillis());
            com.cloud.sdk.commonutil.util.e.a().startActivity(intent);
        } catch (Exception e10) {
            b4.b().e(this.f22325b, "show failed --> " + e10.getMessage());
        }
    }

    @Override
    public void a(long j10, String event, Object obj) {
        AdsDTO adsDTO;
        Intrinsics.h(event, "event");
        if (b4.c()) {
            b4.b().d(this.f22325b, "onEvent --> id = " + j10 + ", event = " + event + ", params = " + obj);
        }
        if (Intrinsics.c(event, d() + "_show")) {
            this.f22324a.I();
            return;
        }
        if (Intrinsics.c(event, d() + "_rewarded")) {
            if (obj != null && (adsDTO = this.f22326c) != null) {
                adsDTO.setTriggerShowSpend(((Long) obj).longValue());
            }
            this.f22324a.J();
            return;
        }
        if (Intrinsics.c(event, d() + "_error")) {
            this.f22324a.F(obj == null ? new TaErrorCode(-1, "ad show error") : (TaErrorCode) obj);
            return;
        }
        if (!Intrinsics.c(event, d() + "_click")) {
            if (Intrinsics.c(event, d() + "_close")) {
                this.f22324a.H();
                return;
            }
            return;
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean();
        if (obj != null) {
            Pair pair = (Pair) obj;
            Object first = pair.getFirst();
            Intrinsics.f(first, "null cannot be cast to non-null type com.cloud.hisavana.sdk.data.bean.response.AdsDTO");
            this.f22326c = (AdsDTO) first;
            if (pair.getSecond() != null) {
                Object second = pair.getSecond();
                Intrinsics.f(second, "null cannot be cast to non-null type com.cloud.hisavana.sdk.common.tracking.DownUpPointBean");
                downUpPointBean = (DownUpPointBean) second;
            }
        }
        AdsDTO adsDTO2 = this.f22326c;
        boolean zIsAllowTrackingADClick = adsDTO2 != null ? adsDTO2.isAllowTrackingADClick() : true;
        Context contextA = com.cloud.sdk.commonutil.util.e.a();
        AdsDTO adsDTO3 = this.f22326c;
        p3 p3VarP = this.f22324a.p();
        J0.c(contextA, adsDTO3, downUpPointBean, p3VarP != null && p3VarP.v(), !zIsAllowTrackingADClick);
        if (zIsAllowTrackingADClick) {
            AthenaTracker.W(this.f22326c);
        } else {
            AdsDTO adsDTO4 = this.f22326c;
            if (adsDTO4 != null) {
                adsDTO4.setAdClickTracking(true);
            }
            b4.b().d("ssp", "tracking is not allowed，change isAdClickTracking = true");
        }
        this.f22324a.G();
    }

    public final void b() {
        r1.f22231a.c(this.f22327d);
    }

    public final void c(AdsDTO adsDTO) {
        Unit unit;
        this.f22326c = adsDTO;
        if (adsDTO != null) {
            e();
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        if (unit == null) {
            this.f22324a.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            b4.b().w(this.f22325b, "show() --> adBean == null");
        }
    }
}
