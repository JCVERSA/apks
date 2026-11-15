package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.activity.HisavanaInterstitialRewardedActivity;
import com.cloud.hisavana.sdk.common.activity.HisavanaRewardedActivity;
import com.cloud.hisavana.sdk.common.activity.HisavanaRewardedTemplateActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.lang.ref.WeakReference;
import kotlin.Pair;
import kotlin.Result;
import kotlin.c;

public final class ebd implements wh5 {
    public rpd a;
    public final String b;
    public AdsDTO c;
    public Long d;

    public ebd(rpd rpdVar) {
        y45.j(rpdVar, "tranRewarded");
        this.a = rpdVar;
        this.b = "Rewarded";
    }

    @Override
    public void a(long j, String str, Object obj) {
        zfb zfbVar;
        AdsDTO adsDTO;
        y45.j(str, NotificationCompat.CATEGORY_EVENT);
        if (ikd.c()) {
            ikd.b().d(this.b, "onEvent --> id = " + j + ", event = " + str + ", params = " + obj);
        }
        if (y45.e(str, d() + "_show")) {
            this.a.I();
            return;
        }
        if (y45.e(str, d() + "_rewarded")) {
            if (obj != null && (adsDTO = this.c) != null) {
                adsDTO.setTriggerShowSpend(((Long) obj).longValue());
            }
            this.a.J();
            try {
                Result.Companion companion = Result.INSTANCE;
                AdsDTO adsDTO2 = this.c;
                if (adsDTO2 != null) {
                    AthenaTracker.e0(adsDTO2);
                    zfbVar = zfb.a;
                } else {
                    zfbVar = null;
                }
                Result.m279constructorimpl(zfbVar);
                return;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m279constructorimpl(c.a(th));
                return;
            }
        }
        if (y45.e(str, d() + "_error")) {
            this.a.F(obj == null ? new TaErrorCode(-1, "ad show error") : (TaErrorCode) obj);
            return;
        }
        if (!y45.e(str, d() + "_click")) {
            if (y45.e(str, d() + "_close")) {
                this.a.H();
                return;
            }
            return;
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean();
        if (obj != null) {
            Pair pair = (Pair) obj;
            Object first = pair.getFirst();
            y45.h(first, "null cannot be cast to non-null type com.cloud.hisavana.sdk.data.bean.response.AdsDTO");
            this.c = (AdsDTO) first;
            if (pair.getSecond() != null) {
                Object second = pair.getSecond();
                y45.h(second, "null cannot be cast to non-null type com.cloud.hisavana.sdk.common.tracking.DownUpPointBean");
                downUpPointBean = (DownUpPointBean) second;
            }
        }
        AdsDTO adsDTO3 = this.c;
        boolean zIsAllowTrackingADClick = adsDTO3 != null ? adsDTO3.isAllowTrackingADClick() : true;
        Context contextA = ul4.a();
        AdsDTO adsDTO4 = this.c;
        ied iedVarP = this.a.p();
        U0.c(contextA, adsDTO4, downUpPointBean, iedVarP != null && iedVarP.x(), !zIsAllowTrackingADClick);
        if (zIsAllowTrackingADClick) {
            AthenaTracker.b0(this.c);
        } else {
            AdsDTO adsDTO5 = this.c;
            if (adsDTO5 != null) {
                adsDTO5.setAdClickTracking(true);
            }
            ikd.b().d("ssp", "tracking is not allowed，change isAdClickTracking = true");
        }
        this.a.G();
    }

    public final void b() {
        try {
            Long l = this.d;
            if (l != null) {
                j9d.a.c(l.longValue());
                this.d = null;
            }
        } catch (Exception unused) {
        }
    }

    public final void c(AdsDTO adsDTO) {
        zfb zfbVar;
        this.c = adsDTO;
        if (adsDTO != null) {
            if (this.d == null) {
                this.d = Long.valueOf(j9d.a.b(this));
            }
            e();
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            this.a.F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            ikd.b().w(this.b, "show() --> adBean == null");
        }
    }

    public final String d() {
        String strD = ul4.d();
        if (strD == null) {
            return null;
        }
        return strD + "_rewarded";
    }

    public final void e() {
        Class cls;
        try {
            AdsDTO adsDTO = this.c;
            if (adsDTO != null) {
                adsDTO.setCloseDelayTime(this.a.n(adsDTO));
            }
            AdsDTO adsDTO2 = this.c;
            if (adsDTO2 == null || adsDTO2.getAdType() != 8) {
                AdsDTO adsDTO3 = this.c;
                String templateHtmlFilePath = adsDTO3 != null ? adsDTO3.getTemplateHtmlFilePath() : null;
                if (templateHtmlFilePath == null || templateHtmlFilePath.length() == 0) {
                    HisavanaRewardedActivity.INSTANCE.a(new WeakReference(this.a));
                    cls = HisavanaRewardedActivity.class;
                } else {
                    HisavanaRewardedTemplateActivity.INSTANCE.a(new WeakReference(this.a));
                    cls = HisavanaRewardedTemplateActivity.class;
                }
            } else {
                HisavanaRewardedActivity.INSTANCE.a(new WeakReference(this.a));
                cls = HisavanaInterstitialRewardedActivity.class;
            }
            Intent intent = new Intent(ul4.a(), (Class<?>) cls);
            intent.setFlags(268500992);
            intent.putExtra("adBean", this.c);
            intent.putExtra("prefix", d());
            intent.putExtra("observerId", this.d);
            intent.putExtra("triggerTs", System.currentTimeMillis());
            if (!vl4.g()) {
                intent.setFlags(268500992);
                ul4.a().startActivity(intent);
                return;
            }
            try {
                Activity activityH = zk5.h();
                if (!zk5.i(activityH)) {
                    ikd.b().w(this.b, "show() --> topActivity is not alive");
                    this.a.F(TaErrorCode.ERROR_SHOW_TOP_ACTIVITY_IS_NOT_ALIVE);
                } else {
                    intent.setFlags(65536);
                    if (activityH != null) {
                        activityH.startActivity(intent);
                    }
                }
            } catch (Exception e) {
                ikd.b().e(this.b, "show() --> startActivity error", e);
            }
        } catch (Exception e2) {
            ikd.b().e(this.b, "show failed --> " + e2.getMessage());
        }
    }
}
