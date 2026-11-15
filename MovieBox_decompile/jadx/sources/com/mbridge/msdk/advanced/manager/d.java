package com.mbridge.msdk.advanced.manager;

import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.h;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class d {

    private static String f33326a = "ResManager";

    private static int f33327b = 1;

    public static e f33328c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    class b implements Runnable {

        final MBNativeAdvancedWebview f33334a;

        final String f33335b;

        b(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f33334a = mBNativeAdvancedWebview;
            this.f33335b = str;
        }

        @Override
        public void run() {
            this.f33334a.loadUrl(this.f33335b);
        }
    }

    public static CampaignEx a(MBNativeAdvancedView mBNativeAdvancedView, String str, String str2, String str3, int i10, boolean z10, boolean z11) {
        com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            gVarD = h.b().a();
        }
        long jZ = gVarD.Z() * 1000;
        long jA0 = gVarD.a0() * 1000;
        a(jA0, str2);
        List<CampaignEx> listA = a(str2, str3);
        if (listA == null || listA.size() <= 0) {
            return null;
        }
        CampaignEx campaignEx = listA.get(0);
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - jZ;
        if (!z10) {
            if ((campaignEx.getPlct() <= 0 || (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() < jCurrentTimeMillis) && (campaignEx.getPlct() > 0 || campaignEx.getTimestamp() < j10)) {
                o0.a(f33326a, "========已经超了缓存时间");
                if (campaignEx.isSpareOffer(jZ, jA0) || mBNativeAdvancedView == null) {
                    return null;
                }
                mBNativeAdvancedView.setVisibility(8);
                return null;
            }
            if (!a(mBNativeAdvancedView, campaignEx, str, str2, i10, z11)) {
                return null;
            }
            o0.b(f33326a, "cache campain is picked:" + campaignEx.getAppName());
            return a(campaignEx);
        }
        if ((campaignEx.getPlct() <= 0 || (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() < jCurrentTimeMillis) && (campaignEx.getPlct() > 0 || campaignEx.getTimestamp() < j10)) {
            if (a(mBNativeAdvancedView, campaignEx, str, str2, i10, z11) && campaignEx.isSpareOffer(jZ, jA0)) {
                return a(campaignEx);
            }
            if (campaignEx.isSpareOffer(jZ, jA0) || mBNativeAdvancedView == null) {
                return null;
            }
            mBNativeAdvancedView.setVisibility(8);
            return null;
        }
        if (!a(mBNativeAdvancedView, campaignEx, str, str2, i10, z11)) {
            return null;
        }
        o0.b(f33326a, "cache campain is picked:" + campaignEx.getAppName());
        return a(campaignEx);
    }

    public static void b(String str) {
        if (f33328c == null) {
            f33328c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f33328c.a(str, 0, f33327b);
    }

    class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        final String f33329a;

        final String f33330b;

        final CampaignEx f33331c;

        final MBNativeAdvancedView f33332d;

        final long f33333e;

        a(String str, String str2, CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView, long j10) {
            this.f33329a = str;
            this.f33330b = str2;
            this.f33331c = campaignEx;
            this.f33332d = mBNativeAdvancedView;
            this.f33333e = j10;
        }

        @Override
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
            if (i10 != 1) {
                this.f33332d.setH5Ready(false);
                o0.a("WindVaneWebView", "======渲染失败");
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33331c, this.f33330b, "readyState 2", this.f33333e, 3);
                return;
            }
            com.mbridge.msdk.advanced.common.c.a(this.f33329a + this.f33330b + this.f33331c.getRequestId(), true);
            this.f33332d.setH5Ready(true);
            o0.a("WindVaneWebView", "======渲染成功：ready");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33331c, this.f33330b, "", this.f33333e, 1);
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            this.f33332d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33331c, this.f33330b, "error code:" + i10 + str, this.f33333e, 3);
        }

        @Override
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            this.f33332d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33331c, this.f33330b, "error url:" + sslError.getUrl(), this.f33333e, 3);
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            if (!this.f33331c.isHasMBTplMark()) {
                com.mbridge.msdk.advanced.common.c.a(this.f33329a + this.f33330b + this.f33331c.getRequestId(), true);
                this.f33332d.setH5Ready(true);
                o0.a("WindVaneWebView", "======渲染成功：finish");
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33331c, this.f33330b, "", this.f33333e, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    private static List<CampaignEx> a(String str, String str2) {
        if (f33328c == null) {
            f33328c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        return f33328c.b(str, 0, 0, f33327b);
    }

    private static CampaignEx a(CampaignEx campaignEx) {
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
            campaignEx.setHasMBTplMark(false);
            campaignEx.setIsMraid(true);
        } else {
            campaignEx.setHasMBTplMark(true);
            campaignEx.setIsMraid(false);
        }
        return campaignEx;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    public static boolean a(MBNativeAdvancedView mBNativeAdvancedView, CampaignEx campaignEx, String str, String str2, int i10, boolean z10) {
        boolean z11;
        if (campaignEx == null) {
            return false;
        }
        mBNativeAdvancedView.clearResState();
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            boolean zB = com.mbridge.msdk.videocommon.download.b.getInstance().b(298, str2, campaignEx.isBidCampaign());
            if (zB) {
                mBNativeAdvancedView.setVideoReady(true);
            }
            z11 = zB;
        } else {
            mBNativeAdvancedView.setVideoReady(true);
            z11 = true;
        }
        if (!TextUtils.isEmpty(campaignEx.getendcard_url()) && !mBNativeAdvancedView.isEndCardReady() && !TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getendcard_url()))) {
            mBNativeAdvancedView.setEndCardReady(true);
        }
        if (!TextUtils.isEmpty(campaignEx.getAdZip()) && !mBNativeAdvancedView.isH5Ready()) {
            String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip());
            if (TextUtils.isEmpty(h5ResAddress)) {
                z11 = false;
            } else {
                if (com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId())) {
                    mBNativeAdvancedView.setH5Ready(true);
                } else {
                    a(mBNativeAdvancedView, h5ResAddress, campaignEx, str, str2, i10);
                    if (!z10) {
                        z11 = false;
                    }
                }
            }
        }
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml()) && !mBNativeAdvancedView.isH5Ready()) {
            String strA = a(campaignEx.getAdHtml());
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            if (com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId())) {
                mBNativeAdvancedView.setH5Ready(true);
                if (campaignEx.isMraid()) {
                    mBNativeAdvancedView.setVideoReady(true);
                }
                return true;
            }
            a(mBNativeAdvancedView, strA, campaignEx, str, str2, i10);
            if (!z10) {
                return false;
            }
        }
        return z11;
    }

    private static void a(MBNativeAdvancedView mBNativeAdvancedView, String str, CampaignEx campaignEx, String str2, String str3, int i10) {
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(str3, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(mBNativeAdvancedView.getContext(), str2, str3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(i10);
        mBNativeAdvancedView.setAdvancedNativeSignalCommunicationImpl(bVar);
        MBNativeAdvancedWebview advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview();
        long jCurrentTimeMillis = System.currentTimeMillis();
        advancedNativeWebview.setWebViewListener(new a(str2, str3, campaignEx, mBNativeAdvancedView, jCurrentTimeMillis));
        if (!advancedNativeWebview.isDestoryed()) {
            o0.a(f33326a, "======开始渲染：" + str);
            new Handler(Looper.getMainLooper()).post(new b(advancedNativeWebview, str));
            return;
        }
        mBNativeAdvancedView.setH5Ready(false);
        com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str3, "webview had destory", jCurrentTimeMillis, 3);
    }

    private static String a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return "file:///" + file.getAbsolutePath();
            }
            return "";
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
    }

    public static boolean a(MBNativeAdvancedView mBNativeAdvancedView, CampaignEx campaignEx, String str, String str2) {
        boolean zA;
        boolean z10 = false;
        if (mBNativeAdvancedView == null) {
            o0.b(f33326a, "mbAdvancedNativeView  is null");
            return false;
        }
        if (TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            zA = true;
        } else {
            zA = mBNativeAdvancedView.isVideoReady();
            o0.b(f33326a, "======isReady isVideoReady:" + zA);
        }
        if (zA && !TextUtils.isEmpty(campaignEx.getAdZip())) {
            zA = com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId());
            o0.b(f33326a, "======isReady getAdZip:" + zA);
        }
        if (zA && TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml())) {
            zA = com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId());
            o0.b(f33326a, "======isReady getAdHtml:" + zA);
        }
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            o0.b(f33326a, "======isReady getAdHtml  getAdZip all are empty");
        } else {
            z10 = zA;
        }
        if (!z10 || TextUtils.isEmpty(campaignEx.getendcard_url())) {
            return z10;
        }
        boolean zIsEndCardReady = mBNativeAdvancedView.isEndCardReady();
        o0.b(f33326a, "======isReady isEndCardReady:" + zIsEndCardReady);
        return zIsEndCardReady;
    }

    public static void a(CampaignEx campaignEx, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        if (f33328c == null) {
            f33328c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f33328c.a(arrayList, str);
    }

    public static void a(long j10, String str) {
        if (f33328c == null) {
            f33328c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f33328c.a(j10, str);
    }
}
