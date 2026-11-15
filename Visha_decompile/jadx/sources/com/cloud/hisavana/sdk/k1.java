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
import com.cloud.hisavana.sdk.k1;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import defpackage.ikd;
import defpackage.ja1;
import defpackage.md8;
import defpackage.mjb;
import defpackage.o9;
import defpackage.r6;
import defpackage.rd;
import defpackage.ul4;
import defpackage.za4;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class k1 {

    public class a extends com.cloud.hisavana.sdk.manager.b.c {
        public final DiskTrackingBean a;
        public final com.cloud.hisavana.sdk.manager.b.AbstractC0053b b;

        public a(DiskTrackingBean diskTrackingBean, com.cloud.hisavana.sdk.manager.b.AbstractC0053b abstractC0053b) {
            this.a = diskTrackingBean;
            this.b = abstractC0053b;
        }

        @Override
        public void a(String str) {
            com.cloud.hisavana.sdk.manager.b.e.a().k(this.a);
            com.cloud.hisavana.sdk.manager.b.AbstractC0053b abstractC0053b = this.b;
            if (abstractC0053b != null) {
                abstractC0053b.a();
            }
        }

        @Override
        public void b(String str, int i) {
            if (i < 480) {
                a(str);
                return;
            }
            com.cloud.hisavana.sdk.manager.b.e.a().e(this.a);
            com.cloud.hisavana.sdk.manager.b.AbstractC0053b abstractC0053b = this.b;
            if (abstractC0053b != null) {
                abstractC0053b.a();
            }
        }
    }

    public class b extends StringCallback {
        public final com.cloud.hisavana.sdk.manager.b.c c;
        public final String d;
        public final AdsDTO e;
        public final DiskTrackingBean f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z, com.cloud.hisavana.sdk.manager.b.c cVar, String str, AdsDTO adsDTO, DiskTrackingBean diskTrackingBean) {
            super(z);
            this.c = cVar;
            this.d = str;
            this.e = adsDTO;
            this.f = diskTrackingBean;
        }

        @Override
        public void x(int i, String str, Throwable th) {
            com.cloud.hisavana.sdk.manager.b.c cVar = this.c;
            if (cVar != null) {
                if (i != 200) {
                    cVar.b(this.d, i);
                } else {
                    cVar.a(this.d);
                }
            }
            AthenaTracker.o0(this.e, this.f, this.d, i, str, th);
            ikd.b().d(ja1.TRACK_TAG, "sendRequestToServer --> onFailure --> statusCode = " + i + ",url " + this.d + ",throwable " + th);
        }

        @Override
        public void y(int i, String str) {
            com.cloud.hisavana.sdk.manager.b.c cVar = this.c;
            if (cVar != null) {
                cVar.a(this.d);
            }
            AthenaTracker.o0(this.e, this.f, this.d, i, str, null);
            ikd.b().d(ja1.TRACK_TAG, "sendRequestToServer - onSuccess - statusCode = " + i + " url " + this.d);
        }
    }

    public class c implements Runnable {
        final String a;
        final AdsDTO b;

        public c(String str, AdsDTO adsDTO) {
            this.a = str;
            this.b = adsDTO;
        }

        @Override
        public void run() {
            String str = this.a;
            AdsDTO adsDTO = this.b;
            k1.m(str, adsDTO, null, new d(adsDTO));
        }
    }

    public static class d extends com.cloud.hisavana.sdk.manager.b.c {
        public AdsDTO a;

        public d(AdsDTO adsDTO) {
            this.a = adsDTO;
        }

        @Override
        public void a(String str) {
        }

        @Override
        public void b(String str, int i) {
            AdsDTO adsDTO = this.a;
            if (adsDTO == null) {
                return;
            }
            if (adsDTO.getDspType().intValue() != 2) {
                if (TextUtils.isEmpty(str) || i < 480) {
                    return;
                }
                DiskTrackingBean diskTrackingBean = new DiskTrackingBean(str);
                diskTrackingBean.setData(this.a);
                com.cloud.hisavana.sdk.manager.b.e.a().h(diskTrackingBean);
                return;
            }
            if (TextUtils.isEmpty(str) || !this.a.isDownloadAd() || i < 480 || !this.a.getAdxAscribeRetryEnable()) {
                return;
            }
            DiskTrackingBean diskTrackingBean2 = new DiskTrackingBean(str);
            diskTrackingBean2.setData(this.a);
            com.cloud.hisavana.sdk.manager.b.e.a().h(diskTrackingBean2);
        }
    }

    public static String d(DownUpPointBean downUpPointBean, AdsDTO adsDTO, boolean z, Boolean bool) {
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("TrackingManager --> processUrl --> 处理前 url = ");
        sb.append(adsDTO == null ? "" : adsDTO.getClickUrl());
        ikdVarB.d(ja1.TRACK_TAG, sb.toString());
        if (adsDTO == null) {
            return null;
        }
        String clickUrl = z ? adsDTO.getClickUrl() : adsDTO.getImpressionUrl();
        if (TextUtils.isEmpty(clickUrl) || !clickUrl.contains("?")) {
            return clickUrl;
        }
        StringBuilder sb2 = new StringBuilder();
        if (z && downUpPointBean != null) {
            sb2.append("xd=" + downUpPointBean.getDownX());
            sb2.append("&yd=" + downUpPointBean.getDownY());
            sb2.append("&xu=" + downUpPointBean.getUpX());
            sb2.append("&yu=" + downUpPointBean.getUpY());
        }
        sb2.append("&ai=" + r6.b);
        sb2.append("&pn=" + ul4.d());
        sb2.append("&ve=" + ul4.f());
        sb2.append("&sv=3.6.6.1");
        sb2.append("&ot=1");
        sb2.append("&ov=" + DeviceUtil.n());
        sb2.append("&nc=" + MitNetUtil.a(ul4.a()).ordinal());
        if (md8.d() != null && md8.e() != null) {
            sb2.append("&op=" + md8.d() + md8.e());
        }
        sb2.append("&ga=" + DeviceUtil.f());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("&dt=");
        boolean z2 = true;
        sb3.append(DeviceUtil.r() ? 2 : 1);
        sb2.append(sb3.toString());
        sb2.append("&br=" + Build.BRAND);
        sb2.append("&mo=" + Build.MODEL);
        sb2.append("&ma=" + Build.MANUFACTURER);
        sb2.append("&la=" + za4.d());
        sb2.append("&lo=" + za4.f());
        if (downUpPointBean != null) {
            sb2.append("&iw=" + downUpPointBean.getImageW());
            sb2.append("&ih=" + downUpPointBean.getImageH());
        }
        sb2.append("&ci=" + adsDTO.getClickid());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("&tr=");
        if (!r6.q() && !adsDTO.getTestResponse().booleanValue()) {
            z2 = false;
        }
        sb4.append(z2);
        sb2.append(sb4.toString());
        sb2.append("&ia=" + Integer.valueOf(adsDTO.getInstallApk()));
        if (z) {
            sb2.append("&pt=" + adsDTO.getAdPsType());
        }
        AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
        if (impBeanRequest != null) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("&gan=");
            sb5.append(TextUtils.isEmpty(impBeanRequest.gameName) ? "" : impBeanRequest.gameName);
            sb2.append(sb5.toString());
            StringBuilder sb6 = new StringBuilder();
            sb6.append("&gas=");
            sb6.append(TextUtils.isEmpty(impBeanRequest.gameScene) ? "" : impBeanRequest.gameScene);
            sb2.append(sb6.toString());
        }
        if (!adsDTO.isOfflineAd()) {
            sb2.append("&ta=" + DeviceUtil.g());
            sb2.append("&oi=" + DeviceUtil.k());
        }
        if (bool != null) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("&ps=");
            sb7.append(bool.booleanValue() ? "1" : "0");
            sb2.append(sb7.toString());
        }
        ikd.b().d(ja1.TRACK_TAG, "athena --> sb=" + ((Object) sb2));
        String str = clickUrl + "&p1=" + defpackage.i.a(sb2.toString()) + "&r1=" + defpackage.i.a(adsDTO.getNewPrice_Click());
        if (rd.h0()) {
            String strM = rd.m();
            if (!TextUtils.isEmpty(strM)) {
                str = str + "&a=" + strM;
            }
        }
        ikd.b().d(ja1.TRACK_TAG, "TrackingManager --> processUrl --> process after url = " + str);
        return str;
    }

    public static String e(AdsDTO adsDTO) {
        int i;
        String str = "";
        if (adsDTO == null) {
            return "";
        }
        if (adsDTO.getImpBeanRequest() == null || adsDTO.getImpBeanRequest().triggerId == null) {
            i = 0;
        } else {
            str = adsDTO.getImpBeanRequest().triggerId;
            i = adsDTO.getImpBeanRequest().mTriggerNetState;
        }
        return "&isOfflineAd=" + (adsDTO.isOfflineAd() ? 1 : 0) + "&clickTs=" + System.currentTimeMillis() + "&triggerId=" + str + "&adTriggerStatus=" + i;
    }

    public static String f(String str, AdsDTO adsDTO, boolean z) {
        String strI;
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
            str = str.replace("__CLICK_TS__", String.valueOf(System.currentTimeMillis() - o9.e().h("services_time_difference_value")));
        }
        if (str.contains("__AD_TRIGGER_STATUS__")) {
            str = str.replace("__AD_TRIGGER_STATUS__", String.valueOf(adsDTO.getImpBeanRequest() == null ? 0 : adsDTO.getImpBeanRequest().mTriggerNetState));
        }
        int source = adsDTO.getSource();
        String strF = DeviceUtil.f();
        if (source == 4 && str.contains("__GAID__") && !TextUtils.isEmpty(strF)) {
            str = str.replace("__GAID__", strF);
        }
        if (str.contains("__CLICK_IP__") && (strI = DeviceUtil.i()) != null) {
            str = str.replace("__CLICK_IP__", strI);
        }
        double dDoubleValue = z ? adsDTO.getAuctionSecondPrice().doubleValue() : 0.0d;
        String settlementRatio = z ? adsDTO.getSettlementRatio() : null;
        if (str.contains("${AUCTION_PRICE}")) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(dDoubleValue);
            if (settlementRatio != null) {
                try {
                    BigDecimal bigDecimal = new BigDecimal(settlementRatio);
                    if (bigDecimal.compareTo(BigDecimal.ZERO) > 0) {
                        bigDecimalValueOf = bigDecimalValueOf.divide(bigDecimal, 0, 2).add(new BigDecimal(1));
                    }
                } catch (Exception e) {
                    ikd.b().e("ssp", "settlement ratio parse error: " + Log.getStackTraceString(e));
                }
            }
            str = str.replace("${AUCTION_PRICE}", String.valueOf(bigDecimalValueOf.divide(BigDecimal.valueOf(100L), 2, 2)));
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

    public static void g(DiskTrackingBean diskTrackingBean, com.cloud.hisavana.sdk.manager.b.AbstractC0053b abstractC0053b) {
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("resendUrl: ");
        sb.append(diskTrackingBean != null ? diskTrackingBean.getTrackingUrl() : "null");
        ikdVarB.d("TrackingManager", sb.toString());
        if (diskTrackingBean != null && !TextUtils.isEmpty(diskTrackingBean.getTrackingUrl())) {
            m(diskTrackingBean.getTrackingUrl(), null, diskTrackingBean, new a(diskTrackingBean, abstractC0053b));
        } else if (abstractC0053b != null) {
            abstractC0053b.a();
        }
    }

    public static void h(final DownUpPointBean downUpPointBean, final AdsDTO adsDTO, final Boolean bool) {
        HSScopeHelper.a.n(new Runnable() {
            @Override
            public final void run() {
                k1.j(adsDTO, downUpPointBean, bool);
            }
        });
    }

    public static void i(AdsDTO adsDTO, DownUpPointBean downUpPointBean, com.cloud.hisavana.sdk.manager.b.c cVar) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getImpressionUrl()) || downUpPointBean == null) {
            ikd.b().d(ja1.TRACK_TAG, "reportServerShow --> null == url || null == pointBean");
            return;
        }
        ikd.b().d(ja1.TRACK_TAG, "TrackingManager --> processUrl --> pointBean = " + downUpPointBean);
        m(d(downUpPointBean, adsDTO, false, null), adsDTO, null, cVar);
    }

    public static void j(AdsDTO adsDTO, DownUpPointBean downUpPointBean, Boolean bool) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl()) || downUpPointBean == null) {
            ikd.b().d(ja1.TRACK_TAG, "reportServerClick --> null == url || null == pointBean");
            return;
        }
        ikd.b().d(ja1.TRACK_TAG, "TrackingManager --> processUrl --> pointBean = " + downUpPointBean);
        String clickUrl = adsDTO.getClickUrl();
        if (adsDTO.getDspType().intValue() != 1) {
            m(clickUrl, adsDTO, null, new d(adsDTO));
            return;
        }
        if (adsDTO.getSource() == 4) {
            return;
        }
        String strD = d(downUpPointBean, adsDTO, true, bool);
        if (!TextUtils.isEmpty(strD) && strD.contains("?")) {
            strD = strD + e(adsDTO);
        }
        AthenaTracker.J(strD, adsDTO, bool);
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
        HSScopeHelper.a.n(new c(str, adsDTO));
    }

    public static void m(String str, AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, com.cloud.hisavana.sdk.manager.b.c cVar) {
        ikd.b().d(ja1.TRACK_TAG, "sendRequestToServer - url = " + str);
        if (str == null) {
            return;
        }
        RequestParams requestParams = new RequestParams();
        requestParams.i("User-Agent", mjb.c());
        requestParams.i("Accept-Timezone", "UTC");
        HttpRequest.a.h(str, requestParams, new b(true, cVar, str, adsDTO, diskTrackingBean));
    }

    public static void n(final List list, final AdsDTO adsDTO) {
        HSScopeHelper.a.n(new Runnable() {
            @Override
            public final void run() {
                k1.r(list, adsDTO);
            }
        });
    }

    public static void o(final List list, final AdsDTO adsDTO, final DownUpPointBean downUpPointBean) {
        if (list == null || list.isEmpty() || adsDTO == null) {
            ikd.b().d(ja1.TRACK_TAG, "clickTrackingUrls || showTrackingUrls --> urls==null || urls is empty --> return ");
        } else {
            HSScopeHelper.a.n(new Runnable() {
                @Override
                public final void run() {
                    k1.k(adsDTO, list, downUpPointBean);
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
            ikd.b().d(ja1.TRACK_TAG, "clickTrackingUrls || showTrackingUrls --> urls==null || urls is empty --> return ");
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
}
