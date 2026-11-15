package com.cloud.hisavana.sdk;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.ad.TrackingManager;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class Y0 {

    class a extends com.cloud.hisavana.sdk.manager.g.c {

        final DiskTrackingBean f20938a;

        final com.cloud.hisavana.sdk.manager.g.b f20939b;

        a(DiskTrackingBean diskTrackingBean, com.cloud.hisavana.sdk.manager.g.b bVar) {
            this.f20938a = diskTrackingBean;
            this.f20939b = bVar;
        }

        @Override
        public void a(String str) {
            com.cloud.hisavana.sdk.manager.g.f22061d.a().j(this.f20938a);
            com.cloud.hisavana.sdk.manager.g.b bVar = this.f20939b;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void b(String str, int i10) {
            if (i10 < 480) {
                a(str);
                return;
            }
            com.cloud.hisavana.sdk.manager.g.f22061d.a().d(this.f20938a);
            com.cloud.hisavana.sdk.manager.g.b bVar = this.f20939b;
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    class b extends StringCallback {

        final com.cloud.hisavana.sdk.manager.g.c f20940c;

        final String f20941d;

        final AdsDTO f20942e;

        final DiskTrackingBean f20943f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z10, com.cloud.hisavana.sdk.manager.g.c cVar, String str, AdsDTO adsDTO, DiskTrackingBean diskTrackingBean) {
            super(z10);
            this.f20940c = cVar;
            this.f20941d = str;
            this.f20942e = adsDTO;
            this.f20943f = diskTrackingBean;
        }

        @Override
        public void x(int i10, String str, Throwable th2) {
            com.cloud.hisavana.sdk.manager.g.c cVar = this.f20940c;
            if (cVar != null) {
                if (i10 != 200) {
                    cVar.b(this.f20941d, i10);
                } else {
                    cVar.a(this.f20941d);
                }
            }
            AthenaTracker.i0(this.f20942e, this.f20943f, this.f20941d, i10, str, th2);
            b4.b().d("ssp_track", "sendRequestToServer --> onFailure --> statusCode = " + i10 + ",url " + this.f20941d + ",throwable " + th2);
        }

        @Override
        public void y(int i10, String str) {
            com.cloud.hisavana.sdk.manager.g.c cVar = this.f20940c;
            if (cVar != null) {
                cVar.a(this.f20941d);
            }
            AthenaTracker.i0(this.f20942e, this.f20943f, this.f20941d, i10, str, null);
            b4.b().d("ssp_track", "sendRequestToServer - onSuccess - statusCode = " + i10 + " url " + this.f20941d);
        }
    }

    class c implements Runnable {

        final String f20944a;

        final AdsDTO f20945b;

        c(String str, AdsDTO adsDTO) {
            this.f20944a = str;
            this.f20945b = adsDTO;
        }

        @Override
        public void run() {
            String str = this.f20944a;
            AdsDTO adsDTO = this.f20945b;
            Y0.m(str, adsDTO, null, new d(adsDTO));
        }
    }

    public static String d(DownUpPointBean downUpPointBean, AdsDTO adsDTO, boolean z10, Boolean bool) {
        b4 b4VarB = b4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TrackingManager --> processUrl --> 处理前 url = ");
        sb2.append(adsDTO == null ? "" : adsDTO.getClickUrl());
        b4VarB.d("ssp_track", sb2.toString());
        if (adsDTO == null) {
            return null;
        }
        String clickUrl = z10 ? adsDTO.getClickUrl() : adsDTO.getImpressionUrl();
        if (TextUtils.isEmpty(clickUrl) || !clickUrl.contains(UrlUtils.QUESTION_MARK)) {
            return clickUrl;
        }
        StringBuilder sb3 = new StringBuilder();
        if (z10 && downUpPointBean != null) {
            sb3.append("xd=" + downUpPointBean.getDownX());
            sb3.append("&yd=" + downUpPointBean.getDownY());
            sb3.append("&xu=" + downUpPointBean.getUpX());
            sb3.append("&yu=" + downUpPointBean.getUpY());
        }
        sb3.append("&ai=" + c7.b.f16688b);
        sb3.append("&pn=" + com.cloud.sdk.commonutil.util.e.d());
        sb3.append("&ve=" + com.cloud.sdk.commonutil.util.e.f());
        sb3.append("&sv=3.5.9.1");
        sb3.append("&ot=1");
        sb3.append("&ov=" + DeviceUtil.m());
        sb3.append("&nc=" + MitNetUtil.a(com.cloud.sdk.commonutil.util.e.a()).ordinal());
        if (k7.c.d() != null && k7.c.e() != null) {
            sb3.append("&op=" + k7.c.d() + k7.c.e());
        }
        sb3.append("&ga=" + DeviceUtil.e());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("&dt=");
        boolean z11 = true;
        sb4.append(DeviceUtil.q() ? 2 : 1);
        sb3.append(sb4.toString());
        sb3.append("&br=" + Build.BRAND);
        sb3.append("&mo=" + Build.MODEL);
        sb3.append("&ma=" + Build.MANUFACTURER);
        sb3.append("&la=" + com.cloud.sdk.commonutil.util.d.d());
        sb3.append("&lo=" + com.cloud.sdk.commonutil.util.d.f());
        if (downUpPointBean != null) {
            sb3.append("&iw=" + downUpPointBean.getImageW());
            sb3.append("&ih=" + downUpPointBean.getImageH());
        }
        sb3.append("&ci=" + adsDTO.getClickid());
        StringBuilder sb5 = new StringBuilder();
        sb5.append("&tr=");
        if (!c7.b.m() && !adsDTO.getTestResponse().booleanValue()) {
            z11 = false;
        }
        sb5.append(z11);
        sb3.append(sb5.toString());
        sb3.append("&ia=" + Integer.valueOf(adsDTO.getInstallApk()));
        if (z10) {
            sb3.append("&pt=" + adsDTO.getAdPsType());
        }
        AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
        if (impBeanRequest != null) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("&gan=");
            sb6.append(TextUtils.isEmpty(impBeanRequest.gameName) ? "" : impBeanRequest.gameName);
            sb3.append(sb6.toString());
            StringBuilder sb7 = new StringBuilder();
            sb7.append("&gas=");
            sb7.append(TextUtils.isEmpty(impBeanRequest.gameScene) ? "" : impBeanRequest.gameScene);
            sb3.append(sb7.toString());
        }
        if (!adsDTO.isOfflineAd()) {
            sb3.append("&ta=" + DeviceUtil.f());
            sb3.append("&oi=" + DeviceUtil.j());
        }
        if (bool != null) {
            StringBuilder sb8 = new StringBuilder();
            sb8.append("&ps=");
            sb8.append(bool.booleanValue() ? "1" : "0");
            sb3.append(sb8.toString());
        }
        b4.b().d("ssp_track", "athena --> sb=" + ((Object) sb3));
        String str = clickUrl + "&p1=" + com.cloud.sdk.commonutil.util.a.a(sb3.toString()) + "&r1=" + com.cloud.sdk.commonutil.util.a.a(adsDTO.getNewPrice_Click());
        if (k7.a.h0()) {
            String strM = k7.a.m();
            if (!TextUtils.isEmpty(strM)) {
                str = str + "&a=" + strM;
            }
        }
        b4.b().d("ssp_track", "TrackingManager --> processUrl --> process after url = " + str);
        return str;
    }

    public static String e(AdsDTO adsDTO) {
        int i10;
        String str = "";
        if (adsDTO == null) {
            return "";
        }
        if (adsDTO.getImpBeanRequest() == null || adsDTO.getImpBeanRequest().triggerId == null) {
            i10 = 0;
        } else {
            str = adsDTO.getImpBeanRequest().triggerId;
            i10 = adsDTO.getImpBeanRequest().mTriggerNetState;
        }
        return "&isOfflineAd=" + (adsDTO.isOfflineAd() ? 1 : 0) + "&clickTs=" + System.currentTimeMillis() + "&triggerId=" + str + "&adTriggerStatus=" + i10;
    }

    private static String f(String str, AdsDTO adsDTO, boolean z10) {
        String strH;
        if (TextUtils.isEmpty(str) || adsDTO == null) {
            return null;
        }
        String clickid = adsDTO.getClickid();
        if (str.contains("__CLICK_ID__") && clickid != null) {
            str = str.replace("__CLICK_ID__", clickid);
        }
        String uuid = adsDTO.getUuid();
        if (str.contains("__SHOW_ID__") && uuid != null) {
            str = str.replace("__SHOW_ID__", uuid);
        }
        if (str.contains("__CLICK_TS__")) {
            str = str.replace("__CLICK_TS__", String.valueOf(System.currentTimeMillis() - l7.a.e().h(Constants.SERVICES_TIME_DIFFERENCE_VALUE)));
        }
        if (str.contains("__AD_TRIGGER_STATUS__")) {
            str = str.replace("__AD_TRIGGER_STATUS__", String.valueOf(adsDTO.getImpBeanRequest() == null ? 0 : adsDTO.getImpBeanRequest().mTriggerNetState));
        }
        int source = adsDTO.getSource();
        String strE = DeviceUtil.e();
        if (source == 4 && str.contains("__GAID__") && !TextUtils.isEmpty(strE)) {
            str = str.replace("__GAID__", strE);
        }
        if (str.contains("__CLICK_IP__") && (strH = DeviceUtil.h()) != null) {
            str = str.replace("__CLICK_IP__", strH);
        }
        double dDoubleValue = z10 ? adsDTO.getAuctionSecondPrice().doubleValue() : 0.0d;
        String settlementRatio = z10 ? adsDTO.getSettlementRatio() : null;
        if (str.contains(TrackingManager.AUCTION_PRICE)) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(dDoubleValue);
            if (settlementRatio != null) {
                try {
                    BigDecimal bigDecimal = new BigDecimal(settlementRatio);
                    if (bigDecimal.compareTo(BigDecimal.ZERO) > 0) {
                        bigDecimalValueOf = bigDecimalValueOf.divide(bigDecimal, 0, 2).add(new BigDecimal(1));
                    }
                } catch (Exception e10) {
                    b4.b().e("ssp", "settlement ratio parse error: " + Log.getStackTraceString(e10));
                }
            }
            str = str.replace(TrackingManager.AUCTION_PRICE, String.valueOf(bigDecimalValueOf.divide(BigDecimal.valueOf(100L), 2, 2)));
        }
        String codeSeatId = adsDTO.getCodeSeatId();
        if (str.contains("__CODE_SEAT_ID__") && !TextUtils.isEmpty(codeSeatId)) {
            str = str.replace("__CODE_SEAT_ID__", codeSeatId);
        }
        if (str.contains("__CLICK_HALF_SCREEN_TYPE__")) {
            return str.replace("__CLICK_HALF_SCREEN_TYPE__", adsDTO.isHalfScreenAd() ? "1" : "0");
        }
        return str;
    }

    public static void g(DiskTrackingBean diskTrackingBean, com.cloud.hisavana.sdk.manager.g.b bVar) {
        b4 b4VarB = b4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resendUrl: ");
        sb2.append(diskTrackingBean != null ? diskTrackingBean.getTrackingUrl() : "null");
        b4VarB.d("TrackingManager", sb2.toString());
        if (diskTrackingBean != null && !TextUtils.isEmpty(diskTrackingBean.getTrackingUrl())) {
            m(diskTrackingBean.getTrackingUrl(), null, diskTrackingBean, new a(diskTrackingBean, bVar));
        } else if (bVar != null) {
            bVar.a();
        }
    }

    public static void h(final DownUpPointBean downUpPointBean, final AdsDTO adsDTO, final Boolean bool) {
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                Y0.j(adsDTO, downUpPointBean, bool);
            }
        });
    }

    public static void i(AdsDTO adsDTO, DownUpPointBean downUpPointBean, com.cloud.hisavana.sdk.manager.g.c cVar) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getImpressionUrl()) || downUpPointBean == null) {
            b4.b().d("ssp_track", "reportServerShow --> null == url || null == pointBean");
            return;
        }
        b4.b().d("ssp_track", "TrackingManager --> processUrl --> pointBean = " + downUpPointBean);
        m(d(downUpPointBean, adsDTO, false, null), adsDTO, null, cVar);
    }

    public static void j(AdsDTO adsDTO, DownUpPointBean downUpPointBean, Boolean bool) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl()) || downUpPointBean == null) {
            b4.b().d("ssp_track", "reportServerClick --> null == url || null == pointBean");
            return;
        }
        b4.b().d("ssp_track", "TrackingManager --> processUrl --> pointBean = " + downUpPointBean);
        String clickUrl = adsDTO.getClickUrl();
        if (adsDTO.getDspType().intValue() != 1) {
            m(clickUrl, adsDTO, null, new d(adsDTO));
            return;
        }
        if (adsDTO.getSource() == 4) {
            return;
        }
        String strD = d(downUpPointBean, adsDTO, true, bool);
        if (!TextUtils.isEmpty(strD) && strD.contains(UrlUtils.QUESTION_MARK)) {
            strD = strD + e(adsDTO);
        }
        AthenaTracker.G(strD, adsDTO, bool);
        m(strD, adsDTO, null, new d(adsDTO));
    }

    public static void k(AdsDTO adsDTO, List list, DownUpPointBean downUpPointBean) {
        if (adsDTO == null) {
            return;
        }
        d dVar = new d(adsDTO);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                if (p(str)) {
                    adsDTO.setImpressionUrl(str);
                    i(adsDTO, downUpPointBean, dVar);
                } else {
                    m(f(str, adsDTO, true), adsDTO, null, dVar);
                }
            }
        }
    }

    public static void l(String str, AdsDTO adsDTO) {
        HSScopeHelper.f22503a.i(new c(str, adsDTO));
    }

    public static void m(String str, AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, com.cloud.hisavana.sdk.manager.g.c cVar) {
        b4.b().d("ssp_track", "sendRequestToServer - url = " + str);
        if (str == null) {
            return;
        }
        RequestParams requestParams = new RequestParams();
        requestParams.i("User-Agent", com.cloud.sdk.commonutil.util.r.c());
        requestParams.i("Accept-Timezone", "UTC");
        HttpRequest.f20712a.h(str, requestParams, new b(true, cVar, str, adsDTO, diskTrackingBean));
    }

    public static void n(final List list, final AdsDTO adsDTO) {
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                Y0.r(list, adsDTO);
            }
        });
    }

    public static void o(final List list, final AdsDTO adsDTO, final DownUpPointBean downUpPointBean) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            b4.b().d("ssp_track", "clickTrackingUrls || showTrackingUrls --> urls==null || urls is empty --> return ");
        } else {
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    Y0.k(adsDTO, list, downUpPointBean);
                }
            });
        }
    }

    public static boolean p(String str) {
        return !TextUtils.isEmpty(str) && (str.contains("api.test.eagllwin.com") || str.contains("api.eagllwin.com") || str.contains("api.pre.eagllwin.com") || str.contains("api.fat1.eagllwin.com"));
    }

    public static ArrayList q(List list, AdsDTO adsDTO) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strF = f((String) it.next(), adsDTO, true);
            if (!TextUtils.isEmpty(strF)) {
                arrayList.add(strF);
            }
        }
        return arrayList;
    }

    public static void r(List list, AdsDTO adsDTO) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            b4.b().d("ssp_track", "clickTrackingUrls || showTrackingUrls --> urls==null || urls is empty --> return ");
            return;
        }
        d dVar = new d(adsDTO);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                m(f(str, adsDTO, false), adsDTO, null, dVar);
            }
        }
    }

    public static class d extends com.cloud.hisavana.sdk.manager.g.c {

        private AdsDTO f20946a;

        public d(AdsDTO adsDTO) {
            this.f20946a = adsDTO;
        }

        @Override
        public void b(String str, int i10) {
            AdsDTO adsDTO = this.f20946a;
            if (adsDTO == null) {
                return;
            }
            if (adsDTO.getDspType().intValue() != 2) {
                if (TextUtils.isEmpty(str) || i10 < 480) {
                    return;
                }
                DiskTrackingBean diskTrackingBean = new DiskTrackingBean(str);
                diskTrackingBean.setData(this.f20946a);
                com.cloud.hisavana.sdk.manager.g.f22061d.a().h(diskTrackingBean);
                return;
            }
            if (TextUtils.isEmpty(str) || !this.f20946a.isDownloadAd() || i10 < 480 || !this.f20946a.getAdxAscribeRetryEnable()) {
                return;
            }
            DiskTrackingBean diskTrackingBean2 = new DiskTrackingBean(str);
            diskTrackingBean2.setData(this.f20946a);
            com.cloud.hisavana.sdk.manager.g.f22061d.a().h(diskTrackingBean2);
        }

        @Override
        public void a(String str) {
        }
    }
}
