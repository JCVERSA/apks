package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.tranmeasure.e;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.y;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;

public abstract class oi5 {

    public class a extends com.cloud.hisavana.sdk.common.tranmeasure.a {
        public final v7 b;
        public final TaNativeInfo c;
        public final AdsDTO d;

        public a(v7 v7Var, TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
            this.b = v7Var;
            this.c = taNativeInfo;
            this.d = adsDTO;
        }

        @Override
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            v7 v7Var = this.b;
            if (v7Var != null) {
                v7Var.a(this.c);
            }
            HSCommonUtils.a.x(this.d);
            if (!this.d.isOfflineAd() && this.d.getSource() != 4 && !this.c.isAdShowed()) {
                fx8.a.a(this.d);
            }
            this.c.setAdShowed(true);
        }
    }

    public static void a(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null && taNativeInfo.isRegister()) {
            e.c().g(taNativeInfo);
            taNativeInfo.setRegister(false);
        }
    }

    public static void b(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return;
        }
        c(taNativeInfo.getAdItem());
    }

    public static void c(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        adsDTO.setClickid(amd.a());
        k1.h(new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adsDTO.getImageWidth().intValue(), adsDTO.getImageHeight().intValue()), adsDTO, null);
        U0.V(adsDTO);
        AthenaTracker.b0(adsDTO);
    }

    public static void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            c((AdsDTO) GsonUtil.a(str, AdsDTO.class));
        } catch (Throwable th) {
            ikd.b().w("LUtil", "handleClick error: " + th.getMessage());
        }
    }

    public static void e(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        if (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adItem.getImageWidth().intValue(), adItem.getImageHeight().intValue());
        adItem.setClickid(amd.a());
        k1.o(adItem.getShowTrackingUrls(), adItem, downUpPointBean);
        y yVar = y.a;
        yVar.C(adItem);
        yVar.Q();
        adItem.setShowReportTimeType(1);
        c2d.a(adItem);
        try {
            AdsDTO adsDTOM70clone = adItem.m70clone();
            adsDTOM70clone.setShowReportTimeType(2);
            c2d.b(adsDTOM70clone);
        } catch (Throwable th) {
            ikd.b().w("LUtil", "handleShow error:" + th.getMessage());
        }
        HSCommonUtils.a.x(adItem);
        if (!adItem.isOfflineAd() && adItem.getSource() != 4 && !taNativeInfo.isAdShowed()) {
            fx8.a.a(adItem);
        }
        taNativeInfo.setAdShowed(true);
    }

    public static void f(TaNativeInfo taNativeInfo, View view, v7 v7Var) {
        AdsDTO adItem;
        if (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        a aVar = new a(v7Var, taNativeInfo, adItem);
        taNativeInfo.setRegister(true);
        e.c().e(adItem, view, aVar);
    }
}
