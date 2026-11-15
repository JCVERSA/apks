package com.mbridge.msdk.reward.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.video.bt.module.MBridgeBTLayout;
import com.mbridge.msdk.video.bt.module.MBridgeBTRootLayout;
import com.transsion.gslb.Utils;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public final class b {

    private static ConcurrentHashMap<String, f> f35966g;

    private final m f35967a;

    private boolean f35968b;

    private final String f35969c;

    private final String f35970d;

    private final String f35971e;

    private volatile List<WindVaneWebView> f35972f;

    class a implements Runnable {

        final CopyOnWriteArrayList f35973a;

        final Context f35974b;

        final String f35975c;

        final int f35976d;

        final String f35977e;

        final String f35978f;

        final String f35979g;

        final n f35980h;

        a(CopyOnWriteArrayList copyOnWriteArrayList, Context context, String str, int i10, String str2, String str3, String str4, n nVar) {
            this.f35973a = copyOnWriteArrayList;
            this.f35974b = context;
            this.f35975c = str;
            this.f35976d = i10;
            this.f35977e = str2;
            this.f35978f = str3;
            this.f35979g = str4;
            this.f35980h = nVar;
        }

        /* JADX WARN: Code duplicated, block: B:128:0x0374  */
        /* JADX WARN: Code duplicated, block: B:136:0x038c  */
        /* JADX WARN: Code duplicated, block: B:156:0x0272 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:158:0x021a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:184:0x02a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:51:0x0184  */
        /* JADX WARN: Code duplicated, block: B:66:0x01ea  */
        /* JADX WARN: Code duplicated, block: B:99:0x02d2  */
        @Override
        public void run() {
            String str;
            Iterator it;
            String str2;
            String str3;
            CharSequence charSequence;
            String str4;
            boolean zIsDynamicView;
            String iconUrl;
            String imageUrl;
            String strC;
            CampaignEx campaignEx;
            List<CampaignEx.c.a> listA;
            List<String> list;
            int i10;
            String str5;
            String str6 = "_";
            CopyOnWriteArrayList copyOnWriteArrayList = this.f35973a;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return;
            }
            try {
                ResDownloadCheckManager.getInstance().setCampaignList(this.f35973a);
                com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f35974b, this.f35975c, this.f35973a, this.f35976d, new k(b.this.f35967a, this.f35977e, this.f35975c, this.f35978f, this.f35979g));
                com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f35975c);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                }
            }
            Iterator it2 = this.f35973a.iterator();
            while (it2.hasNext()) {
                CampaignEx campaignEx2 = (CampaignEx) it2.next();
                if (campaignEx2 != null) {
                    try {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 106;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35975c);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f35977e);
                        bundle.putString(TrackingKey.REQUEST_ID, this.f35978f);
                        bundle.putString("key", this.f35975c + str6 + this.f35978f + str6 + campaignEx2.getSecondRequestIndex());
                        messageObtain.setData(bundle);
                        b.this.f35967a.sendMessage(messageObtain);
                    } catch (Exception unused) {
                    }
                    CampaignEx.c rewardTemplateMode = campaignEx2.getRewardTemplateMode();
                    if (rewardTemplateMode != null) {
                        String strE = rewardTemplateMode.e();
                        int iF = rewardTemplateMode.f();
                        if (campaignEx2.isDynamicView() && t0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, strE)) {
                            b.this.a(1, campaignEx2, iF + "", strE);
                        } else if (!TextUtils.isEmpty(strE) && !strE.contains(CampaignEx.KEY_IS_CMPT_ENTRY)) {
                            com.mbridge.msdk.foundation.same.report.metrics.c cVarA = b.this.a(campaignEx2, 2);
                            if (strE.contains(".zip")) {
                                try {
                                    H5DownLoadManager h5DownLoadManager = H5DownLoadManager.getInstance();
                                    Context context = this.f35974b;
                                    String str7 = this.f35977e;
                                    String str8 = this.f35975c;
                                    String str9 = this.f35978f;
                                    str = str6;
                                    try {
                                        m mVar = b.this.f35967a;
                                        try {
                                            n nVar = this.f35980h;
                                            CopyOnWriteArrayList copyOnWriteArrayList2 = this.f35973a;
                                            it = it2;
                                            str5 = "";
                                            str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                            charSequence = ".zip";
                                            try {
                                                h5DownLoadManager.downloadH5Res(cVarA, strE, new l(context, str7, str8, str9, campaignEx2, 859, mVar, nVar, copyOnWriteArrayList2));
                                            } catch (Exception e11) {
                                                e = e11;
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                                }
                                            }
                                        } catch (Exception e12) {
                                            e = e12;
                                            it = it2;
                                            str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                            charSequence = ".zip";
                                            str5 = "";
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                        it = it2;
                                        str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                        str5 = "";
                                        charSequence = ".zip";
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                        }
                                        str3 = str5;
                                        str4 = campaignEx2.getendcard_url();
                                        zIsDynamicView = campaignEx2.isDynamicView();
                                        boolean zL = t0.l(str4);
                                        if (!TextUtils.isEmpty(str4)) {
                                            if (zIsDynamicView) {
                                                b.this.a(this.f35974b, this.f35977e, this.f35975c, this.f35978f, campaignEx2, str4, this.f35980h, (CopyOnWriteArrayList<CampaignEx>) this.f35973a);
                                            } else if (t0.a(str2, str4)) {
                                                try {
                                                    i10 = Integer.parseInt(z0.a(str4, "ecid"));
                                                } catch (Throwable th2) {
                                                    o0.b("RewardCampaignsResourceManager", th2.getMessage());
                                                    i10 = TTAdConstant.DEEPLINK_FALLBACK_CODE;
                                                }
                                                b.this.a(2, campaignEx2, i10 + str3, str4);
                                            }
                                        }
                                        if (!TextUtils.isEmpty(campaignEx2.getEndScreenUrl())) {
                                            H5DownLoadManager.getInstance().download(b.this.a(campaignEx2, 6), campaignEx2.getEndScreenUrl());
                                        }
                                        iconUrl = campaignEx2.getIconUrl();
                                        if (!TextUtils.isEmpty(iconUrl)) {
                                            try {
                                                com.mbridge.msdk.foundation.same.image.b.a(this.f35974b).a(iconUrl, new j(b.this.f35967a, 0, this.f35977e, this.f35975c, this.f35978f, campaignEx2));
                                            } catch (Exception e14) {
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e14.getLocalizedMessage());
                                                }
                                            }
                                        }
                                        imageUrl = campaignEx2.getImageUrl();
                                        if (!TextUtils.isEmpty(imageUrl)) {
                                            try {
                                                com.mbridge.msdk.foundation.same.image.b.a(this.f35974b).a(imageUrl, new j(b.this.f35967a, 0, this.f35977e, this.f35975c, this.f35978f, campaignEx2));
                                            } catch (Exception e15) {
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e15.getLocalizedMessage());
                                                }
                                            }
                                        }
                                        if (rewardTemplateMode != null) {
                                            strC = rewardTemplateMode.c();
                                            if (TextUtils.isEmpty(strC)) {
                                                campaignEx = campaignEx2;
                                            } else {
                                                campaignEx = campaignEx2;
                                            }
                                            listA = rewardTemplateMode.a();
                                            if (listA != null) {
                                                while (r2.hasNext()) {
                                                    if (aVar == null) {
                                                    }
                                                }
                                            }
                                        }
                                        str6 = str;
                                        it2 = it;
                                    }
                                } catch (Exception e16) {
                                    e = e16;
                                    str = str6;
                                }
                                str3 = str5;
                            } else {
                                str = str6;
                                it = it2;
                                str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                charSequence = ".zip";
                                o0.a("RewardCampaignsResourceManager", "开始下载 html 类型的 template");
                                try {
                                    str3 = "";
                                    try {
                                        H5DownLoadManager.getInstance().downloadH5Res(cVarA, strE, new i(859, this.f35977e, this.f35975c, this.f35978f, campaignEx2, this.f35980h, b.this.f35967a, this.f35973a));
                                    } catch (Exception e17) {
                                        e = e17;
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                        }
                                    }
                                } catch (Exception e18) {
                                    e = e18;
                                    str3 = "";
                                }
                            }
                        }
                        str = str6;
                        it = it2;
                        str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                        str3 = "";
                        charSequence = ".zip";
                    } else {
                        str = str6;
                        it = it2;
                        str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                        str3 = "";
                        charSequence = ".zip";
                    }
                    str4 = campaignEx2.getendcard_url();
                    zIsDynamicView = campaignEx2.isDynamicView();
                    boolean zL2 = t0.l(str4);
                    if (!TextUtils.isEmpty(str4)) {
                        if (zIsDynamicView || zL2) {
                            b.this.a(this.f35974b, this.f35977e, this.f35975c, this.f35978f, campaignEx2, str4, this.f35980h, (CopyOnWriteArrayList<CampaignEx>) this.f35973a);
                        } else if (t0.a(str2, str4)) {
                            i10 = Integer.parseInt(z0.a(str4, "ecid"));
                            b.this.a(2, campaignEx2, i10 + str3, str4);
                        }
                    }
                    if (!TextUtils.isEmpty(campaignEx2.getEndScreenUrl()) && !campaignEx2.isDynamicView()) {
                        H5DownLoadManager.getInstance().download(b.this.a(campaignEx2, 6), campaignEx2.getEndScreenUrl());
                    }
                    iconUrl = campaignEx2.getIconUrl();
                    if (!TextUtils.isEmpty(iconUrl)) {
                        com.mbridge.msdk.foundation.same.image.b.a(this.f35974b).a(iconUrl, new j(b.this.f35967a, 0, this.f35977e, this.f35975c, this.f35978f, campaignEx2));
                    }
                    imageUrl = campaignEx2.getImageUrl();
                    if (!TextUtils.isEmpty(imageUrl)) {
                        com.mbridge.msdk.foundation.same.image.b.a(this.f35974b).a(imageUrl, new j(b.this.f35967a, 0, this.f35977e, this.f35975c, this.f35978f, campaignEx2));
                    }
                    if (rewardTemplateMode != null) {
                        strC = rewardTemplateMode.c();
                        if (TextUtils.isEmpty(strC) || campaignEx2.isDynamicView()) {
                            campaignEx = campaignEx2;
                        } else {
                            int i11 = campaignEx2.getAabEntity() != null ? campaignEx2.getAabEntity().h3c : 0;
                            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c(true);
                            cVar.f(i11);
                            if (strC.contains(charSequence)) {
                                o0.a("RewardCampaignsResourceManager", "开始下载 zip 类型的 pause");
                                try {
                                    campaignEx = campaignEx2;
                                    try {
                                        H5DownLoadManager.getInstance().downloadH5Res(cVar, strC, new l(this.f35974b, this.f35977e, this.f35975c, this.f35978f, campaignEx2, Sdk$SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, b.this.f35967a, this.f35980h, this.f35973a));
                                    } catch (Exception e19) {
                                        e = e19;
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                        }
                                    }
                                } catch (Exception e20) {
                                    e = e20;
                                    campaignEx = campaignEx2;
                                }
                            } else {
                                campaignEx = campaignEx2;
                                try {
                                    H5DownLoadManager.getInstance().downloadH5Res(cVar, strC, new i(Sdk$SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, this.f35977e, this.f35975c, this.f35978f, campaignEx, this.f35980h, b.this.f35967a, this.f35973a));
                                } catch (Exception e21) {
                                    if (MBridgeConstans.DEBUG) {
                                        o0.b("RewardCampaignsResourceManager", e21.getLocalizedMessage());
                                    }
                                }
                            }
                        }
                        listA = rewardTemplateMode.a();
                        if (listA != null && listA.size() > 0) {
                            for (CampaignEx.c.a aVar : listA) {
                                if (aVar == null && (list = aVar.f34320a) != null && list.size() > 0) {
                                    for (String str10 : aVar.f34320a) {
                                        if (!TextUtils.isEmpty(str10)) {
                                            try {
                                                com.mbridge.msdk.foundation.same.image.b.a(this.f35974b).a(str10, new j(b.this.f35967a, 1, this.f35977e, this.f35975c, this.f35978f, campaignEx));
                                            } catch (Exception e22) {
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e22.getLocalizedMessage());
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    str6 = str;
                    it2 = it;
                }
            }
        }
    }

    class c implements H5DownLoadManager.ZipDownloadListener {

        final String f35985a;

        final String f35986b;

        final String f35987c;

        final CampaignEx f35988d;

        final n f35989e;

        final Context f35990f;

        c(String str, String str2, String str3, CampaignEx campaignEx, n nVar, Context context) {
            this.f35985a = str;
            this.f35986b = str2;
            this.f35987c = str3;
            this.f35988d = campaignEx;
            this.f35989e = nVar;
            this.f35990f = context;
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override
        public void onFailed(String str, String str2) {
            Exception exc;
            String str3;
            String str4 = "";
            String str5 = MBridgeConstans.PROPERTIES_UNIT_ID;
            String str6 = "RewardCampaignsResourceManager";
            String str7 = "_";
            try {
                ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
                Message messageObtain = Message.obtain();
                messageObtain.what = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35985a);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f35986b);
                bundle.putString(TrackingKey.REQUEST_ID, this.f35987c);
                bundle.putString("url", str2);
                bundle.putString("key", this.f35985a + "_" + this.f35987c + "_" + this.f35988d.getSecondRequestIndex());
                bundle.putString("message", str);
                messageObtain.setData(bundle);
                b.this.f35967a.sendMessage(messageObtain);
                if (this.f35989e != null) {
                    try {
                        try {
                            this.f35989e.a(str2, this.f35987c, b.b(880005, new MBridgeIds(this.f35986b, this.f35985a, this.f35987c), "", null, null));
                        } catch (Exception e10) {
                            e = e10;
                            try {
                                o0.b("RewardCampaignsResourceManager", e.getMessage());
                            } catch (Exception e11) {
                                exc = e11;
                                str7 = "_";
                                str6 = "RewardCampaignsResourceManager";
                                str4 = "";
                                str5 = MBridgeConstans.PROPERTIES_UNIT_ID;
                                ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
                                Message messageObtain2 = Message.obtain();
                                messageObtain2.what = 105;
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(str5, this.f35985a);
                                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f35986b);
                                bundle2.putString(TrackingKey.REQUEST_ID, this.f35987c);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(this.f35985a);
                                String str8 = str7;
                                sb2.append(str8);
                                sb2.append(this.f35987c);
                                sb2.append(str8);
                                sb2.append(this.f35988d.getSecondRequestIndex());
                                bundle2.putString("key", sb2.toString());
                                bundle2.putString("url", str2);
                                bundle2.putString("message", exc.getMessage());
                                messageObtain2.setData(bundle2);
                                b.this.f35967a.sendMessage(messageObtain2);
                                if (this.f35989e != null) {
                                    try {
                                        this.f35989e.a(str2, this.f35987c, b.b(880005, new MBridgeIds(this.f35986b, this.f35985a, this.f35987c), str4, exc, null));
                                    } catch (Exception e12) {
                                        str3 = str6;
                                        o0.b(str3, e12.getMessage());
                                        o0.b(str3, exc.getLocalizedMessage());
                                    }
                                }
                                str3 = str6;
                                o0.b(str3, exc.getLocalizedMessage());
                            }
                        }
                    } catch (Exception e13) {
                        e = e13;
                    }
                }
                try {
                    b.this.a(this.f35990f, 3, this.f35988d, str2, str, this.f35985a, "");
                } catch (Exception e14) {
                    e = e14;
                    exc = e;
                    ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
                    Message messageObtain3 = Message.obtain();
                    messageObtain3.what = 105;
                    Bundle bundle3 = new Bundle();
                    bundle3.putString(str5, this.f35985a);
                    bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f35986b);
                    bundle3.putString(TrackingKey.REQUEST_ID, this.f35987c);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f35985a);
                    String str9 = str7;
                    sb3.append(str9);
                    sb3.append(this.f35987c);
                    sb3.append(str9);
                    sb3.append(this.f35988d.getSecondRequestIndex());
                    bundle3.putString("key", sb3.toString());
                    bundle3.putString("url", str2);
                    bundle3.putString("message", exc.getMessage());
                    messageObtain3.setData(bundle3);
                    b.this.f35967a.sendMessage(messageObtain3);
                    if (this.f35989e != null) {
                        this.f35989e.a(str2, this.f35987c, b.b(880005, new MBridgeIds(this.f35986b, this.f35985a, this.f35987c), str4, exc, null));
                    }
                    str3 = str6;
                    o0.b(str3, exc.getLocalizedMessage());
                }
            } catch (Exception e15) {
                e = e15;
            }
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            String str3;
            try {
                o0.a("RewardCampaignsResourceManager", "zip btl template download success");
                ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
                Message messageObtain = Message.obtain();
                messageObtain.what = 105;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35985a);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f35986b);
                bundle.putString(TrackingKey.REQUEST_ID, this.f35987c);
                bundle.putString("key", this.f35985a + "_" + this.f35987c + "_" + this.f35988d.getSecondRequestIndex());
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                b.this.f35967a.sendMessage(messageObtain);
                n nVar = this.f35989e;
                if (nVar != null) {
                    nVar.a(this.f35986b, this.f35985a, this.f35987c, str);
                }
                if (z10) {
                    return;
                }
                try {
                    b.this.a(this.f35990f, 1, this.f35988d, str, "", this.f35985a, str2);
                    return;
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
            }
            Exception exc = e;
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
            Message messageObtain2 = Message.obtain();
            messageObtain2.what = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
            Bundle bundle2 = new Bundle();
            bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35985a);
            bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f35986b);
            bundle2.putString(TrackingKey.REQUEST_ID, this.f35987c);
            bundle2.putString("key", this.f35985a + r9 + this.f35987c + "_" + this.f35988d.getSecondRequestIndex());
            bundle2.putString("url", str);
            messageObtain2.setData(bundle2);
            b.this.f35967a.sendMessage(messageObtain2);
            if (this.f35989e != null) {
                try {
                    this.f35989e.a(str, this.f35987c, b.b(880005, new MBridgeIds(this.f35986b, this.f35985a, this.f35987c), "", exc, null));
                } catch (Exception e12) {
                    str3 = r15;
                    o0.b(str3, e12.getMessage());
                }
            }
            str3 = "RewardCampaignsResourceManager";
            b.this.a(this.f35990f, 3, this.f35988d, str, exc.getLocalizedMessage(), this.f35985a, str2);
            if (MBridgeConstans.DEBUG) {
                o0.b(str3, exc.getLocalizedMessage());
            }
        }
    }

    class d implements Runnable {

        final CampaignEx f35992a;

        final Context f35993b;

        final int f35994c;

        final String f35995d;

        final String f35996e;

        final String f35997f;

        final String f35998g;

        d(CampaignEx campaignEx, Context context, int i10, String str, String str2, String str3, String str4) {
            this.f35992a = campaignEx;
            this.f35993b = context;
            this.f35994c = i10;
            this.f35995d = str;
            this.f35996e = str2;
            this.f35997f = str3;
            this.f35998g = str4;
        }

        @Override
        public void run() {
            if (this.f35992a == null || this.f35993b == null) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                mVar.j("m_download_end");
                Context context = this.f35993b;
                if (context != null) {
                    mVar.c(k0.s(context.getApplicationContext()));
                }
                mVar.d(this.f35994c);
                CampaignEx campaignEx = this.f35992a;
                if (campaignEx != null) {
                    mVar.b(campaignEx.getId());
                    mVar.n(this.f35992a.getRequestId());
                    mVar.k(this.f35992a.getCurrentLocalRid());
                    mVar.o(this.f35992a.getRequestIdNotice());
                }
                mVar.b("url", this.f35995d);
                mVar.t(this.f35995d);
                mVar.m(this.f35996e);
                mVar.u(this.f35997f);
                if (!TextUtils.isEmpty(this.f35998g)) {
                    mVar.q(this.f35998g);
                }
                mVar.e(1);
                mVar.b("scenes", "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f35992a);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                }
            }
        }
    }

    class e implements Runnable {

        final boolean f36000a;

        final WindVaneWebView f36001b;

        final CampaignEx f36002c;

        final CopyOnWriteArrayList f36003d;

        final String f36004e;

        final com.mbridge.msdk.videocommon.setting.c f36005f;

        final String f36006g;

        e(boolean z10, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, com.mbridge.msdk.videocommon.setting.c cVar, String str2) {
            this.f36000a = z10;
            this.f36001b = windVaneWebView;
            this.f36002c = campaignEx;
            this.f36003d = copyOnWriteArrayList;
            this.f36004e = str;
            this.f36005f = cVar;
            this.f36006g = str2;
        }

        @Override
        public void run() {
            b.this.a(this.f36000a, this.f36001b, this.f36002c.getRewardTemplateMode().e(), 0, this.f36002c, (CopyOnWriteArrayList<CampaignEx>) this.f36003d, H5DownLoadManager.getInstance().getH5ResAddress(this.f36002c.getRewardTemplateMode().e()), this.f36004e, this.f36005f, this.f36006g, b.this.f35968b);
        }
    }

    private static class f {

        boolean f36008a;

        boolean f36009b;

        int f36010c;

        int f36011d;

        String f36012e;

        String f36013f;

        int f36014g;

        CopyOnWriteArrayList<CampaignEx> f36015h;

        CopyOnWriteArrayList<CampaignEx> f36016i;

        public f(boolean z10, boolean z11, int i10, int i11, String str, String str2, int i12, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36008a = z10;
            this.f36009b = z11;
            this.f36010c = i10;
            this.f36011d = i11;
            this.f36012e = str;
            this.f36013f = str2;
            this.f36014g = i12;
            this.f36015h = copyOnWriteArrayList;
            this.f36016i = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        }
    }

    public interface h {
        void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList);

        void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar);
    }

    private static final class i implements H5DownLoadManager.IH5SourceDownloadListener {

        private int f36038b;

        private final String f36039c;

        private final String f36040d;

        private final String f36041e;

        private CampaignEx f36042f;

        private n f36043g;

        private Handler f36044h;

        private CopyOnWriteArrayList<CampaignEx> f36045i;

        private boolean f36037a = false;

        private final long f36046j = System.currentTimeMillis();

        class a implements Runnable {

            final int f36047a;

            final long f36048b;

            final String f36049c;

            final String f36050d;

            final String f36051e;

            a(int i10, long j10, String str, String str2, String str3) {
                this.f36047a = i10;
                this.f36048b = j10;
                this.f36049c = str;
                this.f36050d = str2;
                this.f36051e = str3;
            }

            @Override
            public void run() {
                if (i.this.f36042f == null) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("m_download_end", this.f36047a, this.f36048b + "", this.f36049c, i.this.f36042f.getId(), i.this.f36040d, this.f36050d, "2");
                    mVar.n(i.this.f36042f.getRequestId());
                    mVar.k(i.this.f36042f.getCurrentLocalRid());
                    mVar.o(i.this.f36042f.getRequestIdNotice());
                    mVar.b(i.this.f36042f.getId());
                    mVar.a(i.this.f36042f.getAdSpaceT());
                    mVar.b("scenes", "1");
                    mVar.b("url", this.f36049c);
                    if (i.this.f36042f.getAdType() == 287) {
                        mVar.a("3");
                    } else if (i.this.f36042f.getAdType() == 94) {
                        mVar.a("1");
                    }
                    if (!TextUtils.isEmpty(this.f36051e)) {
                        mVar.q(this.f36051e);
                    }
                    b.b(mVar, i.this.f36042f);
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, i.this.f36040d, i.this.f36042f);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    }
                }
            }
        }

        public i(int i10, String str, String str2, String str3, CampaignEx campaignEx, n nVar, Handler handler, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36038b = i10;
            this.f36039c = str;
            this.f36040d = str2;
            this.f36041e = str3;
            this.f36042f = campaignEx;
            this.f36043g = nVar;
            this.f36044h = handler;
            this.f36045i = copyOnWriteArrayList;
        }

        @Override
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
            int i10 = this.f36038b;
            if (i10 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 201;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36040d);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36039c);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36041e);
                bundle.putString("key", this.f36040d + "_" + this.f36041e + "_" + this.f36042f.getSecondRequestIndex());
                bundle.putString("url", str);
                bundle.putString("message", str2);
                messageObtain.setData(bundle);
                this.f36044h.sendMessage(messageObtain);
                return;
            }
            if (i10 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36040d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36039c);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36041e);
                bundle2.putString("key", this.f36040d + "_" + this.f36041e + "_" + this.f36042f.getSecondRequestIndex());
                bundle2.putString("url", str);
                bundle2.putString("message", str2);
                messageObtain2.setData(bundle2);
                this.f36044h.sendMessage(messageObtain2);
                if (this.f36037a) {
                    a(3, System.currentTimeMillis() - this.f36046j, str, "url download failed", "");
                    return;
                }
                return;
            }
            if (i10 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36040d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36039c);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36041e);
            bundle3.putString("key", this.f36040d + "_" + this.f36041e + "_" + this.f36042f.getSecondRequestIndex());
            bundle3.putString("message", str2);
            messageObtain3.setData(bundle3);
            this.f36044h.sendMessage(messageObtain3);
            if (this.f36043g != null) {
                try {
                    this.f36043g.a(str, this.f36041e, b.b(880006, new MBridgeIds(this.f36039c, this.f36040d, this.f36041e), str2, null, null));
                } catch (Exception e10) {
                    o0.b("RewardCampaignsResourceManager", e10.getMessage());
                }
            }
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            int i10 = this.f36038b;
            if (i10 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36040d);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36039c);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36041e);
                bundle.putString("key", this.f36040d + "_" + this.f36041e + "_" + this.f36042f.getSecondRequestIndex());
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                this.f36044h.sendMessage(messageObtain);
                return;
            }
            if (i10 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36040d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36039c);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36041e);
                bundle2.putString("key", this.f36040d + "_" + this.f36041e + "_" + this.f36042f.getSecondRequestIndex());
                bundle2.putString("url", str);
                messageObtain2.setData(bundle2);
                this.f36044h.sendMessage(messageObtain2);
                if (this.f36037a) {
                    a(1, System.currentTimeMillis() - this.f36046j, str, "", str2);
                    return;
                }
                return;
            }
            if (i10 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 105;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36040d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36039c);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36041e);
            bundle3.putString("key", this.f36040d + "_" + this.f36041e + "_" + this.f36042f.getSecondRequestIndex());
            messageObtain3.setData(bundle3);
            this.f36044h.sendMessage(messageObtain3);
            n nVar = this.f36043g;
            if (nVar != null) {
                nVar.a(this.f36039c, this.f36040d, this.f36041e, str);
            }
        }

        public void a(boolean z10) {
            this.f36037a = z10;
        }

        private void a(int i10, long j10, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i10, j10, str, str2, str3));
        }
    }

    private static final class j implements com.mbridge.msdk.foundation.same.image.c {

        private Handler f36053a;

        private int f36054b;

        private String f36055c;

        private String f36056d;

        private String f36057e;

        private CampaignEx f36058f;

        class a implements Runnable {

            final String f36059a;

            a(String str) {
                this.f36059a = str;
            }

            @Override
            public void run() {
                if (j.this.f36058f != null) {
                    try {
                        com.mbridge.msdk.foundation.db.n nVarA = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                        o0.a("RewardCampaignsResourceManager", "campaign is null");
                        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                        mVar.j("2000044");
                        mVar.c(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                        mVar.b(j.this.f36058f.getId());
                        mVar.i(j.this.f36058f.getImageUrl());
                        mVar.n(j.this.f36058f.getRequestId());
                        mVar.k(j.this.f36058f.getCurrentLocalRid());
                        mVar.o(j.this.f36058f.getRequestIdNotice());
                        mVar.u(j.this.f36055c);
                        mVar.m(this.f36059a);
                        mVar.b("scenes", "1");
                        nVarA.a(mVar);
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        public j(Handler handler, int i10, String str, String str2, String str3, CampaignEx campaignEx) {
            this.f36053a = handler;
            this.f36054b = i10;
            this.f36056d = str;
            this.f36055c = str2;
            this.f36057e = str3;
            this.f36058f = campaignEx;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = this.f36054b == 0 ? Sdk$SDKError.Reason.AD_CONSUMED_VALUE : Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36055c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36056d);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36057e);
            bundle.putString("key", this.f36055c + "_" + this.f36057e + "_" + this.f36058f.getSecondRequestIndex());
            messageObtain.setData(bundle);
            this.f36053a.sendMessage(messageObtain);
            a aVar = new a(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
            } else {
                aVar.run();
            }
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            ResDownloadCheckManager.getInstance().setImageDownloadDone(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = this.f36054b == 0 ? 102 : 104;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36055c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36056d);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36057e);
            bundle.putString("key", this.f36055c + "_" + this.f36057e + "_" + this.f36058f.getSecondRequestIndex());
            messageObtain.setData(bundle);
            this.f36053a.sendMessage(messageObtain);
        }
    }

    private static final class l implements H5DownLoadManager.ZipDownloadListener {

        private Context f36067b;

        private String f36068c;

        private String f36069d;

        private String f36070e;

        private CampaignEx f36071f;

        private int f36072g;

        private Handler f36073h;

        private n f36074i;

        private CopyOnWriteArrayList<CampaignEx> f36075j;

        private boolean f36066a = false;

        private long f36076k = System.currentTimeMillis();

        class a implements Runnable {

            final int f36077a;

            final String f36078b;

            final String f36079c;

            final String f36080d;

            a(int i10, String str, String str2, String str3) {
                this.f36077a = i10;
                this.f36078b = str;
                this.f36079c = str2;
                this.f36080d = str3;
            }

            @Override
            public void run() {
                if (l.this.f36071f == null || l.this.f36067b == null) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                    mVar.j("m_download_end");
                    if (l.this.f36067b != null) {
                        mVar.c(k0.s(l.this.f36067b.getApplicationContext()));
                    }
                    mVar.d(this.f36077a);
                    if (l.this.f36071f != null) {
                        mVar.b(l.this.f36071f.getId());
                        mVar.n(l.this.f36071f.getRequestId());
                        mVar.k(l.this.f36071f.getCurrentLocalRid());
                        mVar.o(l.this.f36071f.getRequestIdNotice());
                    }
                    mVar.t(this.f36078b);
                    mVar.m(this.f36079c);
                    mVar.u(l.this.f36068c);
                    if (!TextUtils.isEmpty(this.f36080d)) {
                        mVar.q(this.f36080d);
                    }
                    mVar.e(2);
                    mVar.b("scenes", "1");
                    mVar.b("url", this.f36078b);
                    b.b(mVar, l.this.f36071f);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, l.this.f36071f);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    }
                }
            }
        }

        class RunnableC0496b implements Runnable {

            final int f36082a;

            final long f36083b;

            final String f36084c;

            final String f36085d;

            final String f36086e;

            RunnableC0496b(int i10, long j10, String str, String str2, String str3) {
                this.f36082a = i10;
                this.f36083b = j10;
                this.f36084c = str;
                this.f36085d = str2;
                this.f36086e = str3;
            }

            @Override
            public void run() {
                if (l.this.f36071f == null) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("m_download_end", this.f36082a, this.f36083b + "", this.f36084c, l.this.f36071f.getId(), l.this.f36068c, this.f36085d, "1");
                    mVar.n(l.this.f36071f.getRequestId());
                    mVar.k(l.this.f36071f.getCurrentLocalRid());
                    mVar.o(l.this.f36071f.getRequestIdNotice());
                    mVar.b(l.this.f36071f.getId());
                    mVar.a(l.this.f36071f.getAdSpaceT());
                    mVar.q(this.f36086e);
                    mVar.b("scenes", "1");
                    if (l.this.f36071f.getAdType() == 287) {
                        mVar.a("3");
                    } else if (l.this.f36071f.getAdType() == 94) {
                        mVar.a("1");
                    }
                    mVar.b("url", this.f36084c);
                    mVar.e(3);
                    b.b(mVar, l.this.f36071f);
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, l.this.f36068c, l.this.f36071f);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    }
                }
            }
        }

        public l(Context context, String str, String str2, String str3, CampaignEx campaignEx, int i10, Handler handler, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36067b = context;
            this.f36069d = str;
            this.f36068c = str2;
            this.f36070e = str3;
            this.f36071f = campaignEx;
            this.f36072g = i10;
            this.f36073h = handler;
            this.f36074i = nVar;
            this.f36075j = copyOnWriteArrayList;
        }

        @Override
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f36076k;
            int i10 = this.f36072g;
            if (i10 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36068c);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36069d);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36070e);
                bundle.putString("key", this.f36068c + "_" + this.f36070e + "_" + this.f36071f.getSecondRequestIndex());
                bundle.putString("url", str2);
                bundle.putString("message", str);
                messageObtain.setData(bundle);
                this.f36073h.sendMessage(messageObtain);
                return;
            }
            if (i10 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36068c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36069d);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36070e);
                bundle2.putString("url", str2);
                bundle2.putString("key", this.f36068c + "_" + this.f36070e + "_" + this.f36071f.getSecondRequestIndex());
                bundle2.putString("message", str);
                messageObtain2.setData(bundle2);
                this.f36073h.sendMessage(messageObtain2);
                if (this.f36066a) {
                    a(3, jCurrentTimeMillis, str2, "zip download failed", "");
                    return;
                }
                return;
            }
            if (i10 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = Sdk$SDKError.Reason.AD_IS_LOADING_VALUE;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36068c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36069d);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36070e);
            bundle3.putString("url", str2);
            bundle3.putString("key", this.f36068c + "_" + this.f36070e + "_" + this.f36071f.getSecondRequestIndex());
            bundle3.putString("message", str);
            messageObtain3.setData(bundle3);
            this.f36073h.sendMessage(messageObtain3);
            if (this.f36074i != null) {
                try {
                    this.f36074i.a(str2, this.f36070e, b.b(880006, new MBridgeIds(this.f36069d, this.f36068c, this.f36070e), "", null, null));
                } catch (Exception e10) {
                    o0.b("RewardCampaignsResourceManager", e10.getMessage());
                }
            }
            a(3, str2, str, "");
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f36076k;
            int i10 = this.f36072g;
            if (i10 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36068c);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36069d);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36070e);
                bundle.putString("key", this.f36068c + "_" + this.f36070e + "_" + this.f36071f.getSecondRequestIndex());
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                this.f36073h.sendMessage(messageObtain);
                return;
            }
            if (i10 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36068c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36069d);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36070e);
                bundle2.putString("key", this.f36068c + "_" + this.f36070e + "_" + this.f36071f.getSecondRequestIndex());
                bundle2.putString("url", str);
                messageObtain2.setData(bundle2);
                this.f36073h.sendMessage(messageObtain2);
                if (this.f36066a) {
                    a(1, jCurrentTimeMillis, str, "", str2);
                    return;
                }
                return;
            }
            if (i10 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 103;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36068c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36069d);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36070e);
            bundle3.putString("key", this.f36068c + "_" + this.f36070e + "_" + this.f36071f.getSecondRequestIndex());
            messageObtain3.setData(bundle3);
            this.f36073h.sendMessage(messageObtain3);
            n nVar = this.f36074i;
            if (nVar != null) {
                nVar.a(this.f36069d, this.f36068c, this.f36070e, str);
            }
            if (z10) {
                return;
            }
            a(1, str, "", str2);
        }

        public void a(boolean z10) {
            this.f36066a = z10;
        }

        private void a(int i10, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i10, str, str2, str3));
        }

        private void a(int i10, long j10, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new RunnableC0496b(i10, j10, str, str2, str3));
        }
    }

    private static final class m extends Handler {

        private Context f36088a;

        private ConcurrentHashMap<String, h> f36089b;

        private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> f36090c;

        public m(Looper looper) {
            super(looper);
            this.f36089b = new ConcurrentHashMap<>();
            this.f36090c = new ConcurrentHashMap<>();
        }

        public void a(String str, h hVar) {
            this.f36089b.put(str, hVar);
        }

        /* JADX WARN: Code duplicated, block: B:175:0x0368 A[Catch: Exception -> 0x0356, TRY_LEAVE, TryCatch #7 {Exception -> 0x0356, blocks: (B:165:0x033c, B:175:0x0368), top: B:246:0x00a3 }] */
        /* JADX WARN: Code duplicated, block: B:179:0x03a9 A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Code duplicated, block: B:182:0x03b8  */
        /* JADX WARN: Code duplicated, block: B:189:0x03ce  */
        /* JADX WARN: Code duplicated, block: B:191:0x03d2  */
        /* JADX WARN: Code duplicated, block: B:193:0x03d6  */
        /* JADX WARN: Code duplicated, block: B:199:0x03ea A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Code duplicated, block: B:202:0x03f9 A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Code duplicated, block: B:205:0x0408 A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v26 */
        /* JADX WARN: Type inference failed for: r10v27 */
        /* JADX WARN: Type inference failed for: r10v28 */
        /* JADX WARN: Type inference failed for: r10v33 */
        /* JADX WARN: Type inference failed for: r10v37 */
        /* JADX WARN: Type inference failed for: r10v38 */
        /* JADX WARN: Type inference failed for: r10v39 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v44 */
        /* JADX WARN: Type inference failed for: r10v5, types: [com.mbridge.msdk.foundation.entity.CampaignEx] */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r12v1, types: [int] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r12v8 */
        /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r15v10 */
        /* JADX WARN: Type inference failed for: r15v14 */
        /* JADX WARN: Type inference failed for: r15v15 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v5 */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r15v8 */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v14 */
        /* JADX WARN: Type inference failed for: r6v16 */
        /* JADX WARN: Type inference failed for: r6v17 */
        /* JADX WARN: Type inference failed for: r6v18 */
        /* JADX WARN: Type inference failed for: r6v20 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6, types: [int] */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override
        public void handleMessage(Message message) {
            boolean zA;
            ?? r10;
            ?? r11;
            com.mbridge.msdk.videocommon.download.b bVar;
            boolean z10;
            int i10;
            String str;
            boolean z11;
            int i11;
            Bundle data = message.getData();
            String string = data.getString(MBridgeConstans.PLACEMENT_ID);
            String string2 = data.getString(MBridgeConstans.PROPERTIES_UNIT_ID);
            String string3 = data.getString(TrackingKey.REQUEST_ID);
            String string4 = data.getString("key");
            f fVar = (f) b.f35966g.get(string4);
            h hVar = this.f36089b.get(string4);
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f36090c.get(string4);
            int i12 = message.what;
            ?? r15 = "RewardCampaignsResourceManager";
            switch (i12) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                    break;
                default:
                    switch (i12) {
                        case 200:
                        case 201:
                        case AD_IS_LOADING_VALUE:
                        case AD_IS_PLAYING_VALUE:
                            if (fVar != null && hVar != null) {
                                String string5 = data.getString("message");
                                if (string5 == null) {
                                    string5 = "";
                                }
                                ?? C = b.c(message.what);
                                String str2 = "resource download failed " + b.d(message.what) + " " + string5;
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = fVar.f36015h;
                                CampaignEx campaignEx = (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.size() <= 0) ? null : fVar.f36015h.get(0);
                                try {
                                    try {
                                        if (!fVar.f36008a) {
                                            bVar = com.mbridge.msdk.videocommon.download.b.getInstance();
                                            String str3 = fVar.f36012e;
                                            z10 = fVar.f36009b;
                                            i10 = fVar.f36011d;
                                            str = str3;
                                            z11 = fVar.f36008a;
                                            if (bVar.a(94, str, z10, i10, z11, fVar.f36010c, copyOnWriteArrayList)) {
                                                hVar.a(string, string2, string3, fVar.f36015h);
                                                r10 = C;
                                                r11 = 0;
                                            } else {
                                                if (campaignEx != null) {
                                                    i11 = message.what;
                                                    if (i11 != 200) {
                                                        if (i11 != 201) {
                                                            if (i11 != 203) {
                                                                if (i11 != 205) {
                                                                }
                                                            } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                            }
                                                        } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                        }
                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                    }
                                                }
                                                r10 = C;
                                                r11 = 0;
                                                r11 = 0;
                                                hVar.a(fVar.f36015h, b.b(r10 == true ? 1 : 0, new MBridgeIds(string, string2, string3), str2, null, null));
                                                r10 = r10;
                                            }
                                            this.f36089b.remove(string4);
                                            b.f35966g.remove(string4);
                                            this.f36090c.remove(string4);
                                            C = str;
                                            r15 = z11;
                                        } else {
                                            try {
                                                if (fVar.f36016i != null) {
                                                    if (fVar.f36010c != 1) {
                                                        try {
                                                            String string6 = data.getString("url");
                                                            int i13 = message.what;
                                                            try {
                                                                if (i13 == 200) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but  video download fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        for (int i14 = 0; i14 < fVar.f36016i.size(); i14++) {
                                                                            if (fVar.f36016i.get(i14).getVideoUrlEncode().equals(string6)) {
                                                                                fVar.f36016i.remove(i14);
                                                                            }
                                                                        }
                                                                        b.f35966g.remove(string4);
                                                                        b.f35966g.put(string4, fVar);
                                                                    }
                                                                } else if (i13 == 201) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but download endcard fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        for (int i15 = 0; i15 < fVar.f36016i.size(); i15++) {
                                                                            CampaignEx campaignEx2 = fVar.f36016i.get(i15);
                                                                            if (campaignEx2.getRewardTemplateMode() != null && campaignEx2.getRewardTemplateMode().c().equals(string6)) {
                                                                                fVar.f36016i.remove(i15);
                                                                            }
                                                                            if (!TextUtils.isEmpty(campaignEx2.getendcard_url()) && campaignEx2.getendcard_url().equals(string6)) {
                                                                                fVar.f36016i.remove(i15);
                                                                            }
                                                                        }
                                                                        b.f35966g.remove(string4);
                                                                        b.f35966g.put(string4, fVar);
                                                                    }
                                                                } else if (i13 == 203) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but download template fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        for (int i16 = 0; i16 < fVar.f36016i.size(); i16++) {
                                                                            CampaignEx campaignEx3 = fVar.f36016i.get(i16);
                                                                            if (campaignEx3.getRewardTemplateMode() != null && campaignEx3.getRewardTemplateMode().e().equals(string6)) {
                                                                                fVar.f36016i.remove(i16);
                                                                            }
                                                                        }
                                                                        b.f35966g.remove(string4);
                                                                        b.f35966g.put(string4, fVar);
                                                                    }
                                                                } else if (i13 == 205) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but download BTL Template fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        fVar.f36016i.clear();
                                                                        b.f35966g.remove(string4);
                                                                        b.f35966g.put(string4, fVar);
                                                                    }
                                                                }
                                                                try {
                                                                    if (com.mbridge.msdk.videocommon.download.b.getInstance().a(94, fVar.f36012e, fVar.f36009b, fVar.f36011d, fVar.f36008a, fVar.f36010c, copyOnWriteArrayList)) {
                                                                        try {
                                                                            hVar.a(string, string2, string3, fVar.f36015h);
                                                                            this.f36089b.remove(string4);
                                                                            b.f35966g.remove(string4);
                                                                            this.f36090c.remove(string4);
                                                                        } catch (Exception e10) {
                                                                            e = e10;
                                                                            r10 = C;
                                                                            r11 = 0;
                                                                            hVar.a(fVar.f36015h, b.b(r10, new MBridgeIds(string, string2, string3), str2, e, r11));
                                                                            return;
                                                                        }
                                                                    } else if (fVar.f36016i.size() == 0) {
                                                                        ?? r16 = C;
                                                                        C = 0;
                                                                        hVar.a(fVar.f36015h, b.b(r16 == true ? 1 : 0, new MBridgeIds(string, string2, string3), str2, null, null));
                                                                        this.f36089b.remove(string4);
                                                                        b.f35966g.remove(string4);
                                                                        this.f36090c.remove(string4);
                                                                        r15 = r16;
                                                                    }
                                                                } catch (Exception e11) {
                                                                    e = e11;
                                                                    r15 = C;
                                                                    C = 0;
                                                                    r11 = C;
                                                                    r10 = r15;
                                                                    hVar.a(fVar.f36015h, b.b(r10, new MBridgeIds(string, string2, string3), str2, e, r11));
                                                                    return;
                                                                }
                                                            } catch (Exception e12) {
                                                                e = e12;
                                                                r10 = C;
                                                                r11 = 0;
                                                            }
                                                        } catch (Exception e13) {
                                                            e = e13;
                                                            r15 = C;
                                                            C = 0;
                                                            r11 = C;
                                                            r10 = r15;
                                                        }
                                                        break;
                                                    } else {
                                                        if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                                                            int i17 = message.what;
                                                            if (i17 != 200) {
                                                                if (i17 != 201) {
                                                                    if (i17 != 203) {
                                                                        if (i17 == 205) {
                                                                            if (!campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList3 = fVar.f36015h;
                                                                                if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                                                                                    CampaignEx campaignEx4 = fVar.f36015h.get(0);
                                                                                    if (campaignEx4.getCMPTEntryUrl().equals(campaignEx4.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                                    }
                                                                } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                }
                                                            } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                            }
                                                        }
                                                        try {
                                                            r11 = 0;
                                                            try {
                                                                hVar.a(fVar.f36015h, b.b(C, new MBridgeIds(string, string2, string3), str2, null, null));
                                                                this.f36089b.remove(string4);
                                                                b.f35966g.remove(string4);
                                                                this.f36090c.remove(string4);
                                                            } catch (Exception e14) {
                                                                e = e14;
                                                                r10 = C;
                                                                hVar.a(fVar.f36015h, b.b(r10, new MBridgeIds(string, string2, string3), str2, e, r11));
                                                                return;
                                                            }
                                                        } catch (Exception e15) {
                                                            e = e15;
                                                            r11 = 0;
                                                        }
                                                    }
                                                } else {
                                                    bVar = com.mbridge.msdk.videocommon.download.b.getInstance();
                                                    String str4 = fVar.f36012e;
                                                    z10 = fVar.f36009b;
                                                    i10 = fVar.f36011d;
                                                    str = str4;
                                                    z11 = fVar.f36008a;
                                                    try {
                                                        if (bVar.a(94, str, z10, i10, z11, fVar.f36010c, copyOnWriteArrayList)) {
                                                            hVar.a(string, string2, string3, fVar.f36015h);
                                                            r10 = C;
                                                            r11 = 0;
                                                        } else {
                                                            if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                                                                i11 = message.what;
                                                                if (i11 != 200) {
                                                                    if (i11 != 201) {
                                                                        if (i11 != 203) {
                                                                            if (i11 != 205 && campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                            }
                                                                        } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                                        }
                                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                    }
                                                                } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                                }
                                                            }
                                                            r10 = C;
                                                            r11 = 0;
                                                            r11 = 0;
                                                            try {
                                                                hVar.a(fVar.f36015h, b.b(r10 == true ? 1 : 0, new MBridgeIds(string, string2, string3), str2, null, null));
                                                                r10 = r10;
                                                            } catch (Exception e16) {
                                                                e = e16;
                                                            }
                                                        }
                                                        this.f36089b.remove(string4);
                                                        b.f35966g.remove(string4);
                                                        this.f36090c.remove(string4);
                                                        C = str;
                                                        r15 = z11;
                                                    } catch (Exception e17) {
                                                        e = e17;
                                                        r10 = C;
                                                        r11 = 0;
                                                    }
                                                }
                                            } catch (Exception e18) {
                                                e = e18;
                                                r15 = C;
                                            }
                                        }
                                    } catch (Exception e19) {
                                        e = e19;
                                    }
                                } catch (Exception e20) {
                                    e = e20;
                                    r10 = C;
                                }
                                hVar.a(fVar.f36015h, b.b(r10, new MBridgeIds(string, string2, string3), str2, e, r11));
                                break;
                            }
                            break;
                    }
                    return;
            }
            if (fVar == null || hVar == null) {
                return;
            }
            try {
                try {
                    zA = com.mbridge.msdk.videocommon.download.b.getInstance().a(94, fVar.f36012e, fVar.f36009b, fVar.f36011d, fVar.f36008a, fVar.f36010c, copyOnWriteArrayList);
                } catch (Exception e21) {
                    e = e21;
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                    }
                    zA = false;
                }
            } catch (Exception e22) {
                e = e22;
            }
            if (zA) {
                hVar.a(string, string2, string3, fVar.f36015h);
                this.f36089b.remove(string4);
                b.f35966g.remove(string4);
                this.f36090c.remove(string4);
            }
        }

        public void a(Context context) {
            this.f36088a = context;
        }

        public void a(String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36090c.put(str, copyOnWriteArrayList);
        }
    }

    public interface n {
        void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4);
    }

    public interface o {
        void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0547a c0547a, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0547a c0547a);
    }

    private static final class r {

        private static final b f36134a = new b(null);
    }

    b(a aVar) {
        this();
    }

    public static int c(int i10) {
        if (i10 == 200) {
            return 880004;
        }
        if (i10 == 201) {
            return 880007;
        }
        if (i10 != 203) {
            return i10 != 205 ? 880024 : 880005;
        }
        return 880006;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static synchronized String d(int i10) {
        if (i10 == 200) {
            return "video";
        }
        if (i10 == 201) {
            return "zip/html";
        }
        if (i10 != 203) {
            return i10 != 205 ? TmcConstants.ROUTE_UNKNOWN : "tpl";
        }
        return "temp";
    }

    private b() {
        this.f35969c = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;
        this.f35970d = "down_type";
        this.f35971e = "h3c";
        this.f35972f = new ArrayList(6);
        HandlerThread handlerThread = new HandlerThread("mb-reward-load-thread");
        f35966g = new ConcurrentHashMap<>();
        handlerThread.start();
        this.f35967a = new m(handlerThread.getLooper());
    }

    public void c() {
    }

    public static b b() {
        return r.f36134a;
    }

    public static void b(com.mbridge.msdk.foundation.entity.m mVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (cVarC != null) {
                mVar.s(cVarC.x());
            }
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC != null) {
                mVar.r(aVarC.f());
            }
        } catch (Exception e10) {
            o0.b("RewardCampaignsResourceManager", e10.getMessage());
        }
    }

    public static com.mbridge.msdk.foundation.error.b b(int i10, MBridgeIds mBridgeIds, String str, Throwable th2, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i10);
        bVar.a(mBridgeIds);
        bVar.a(th2);
        bVar.c(str);
        bVar.a(campaignEx);
        return bVar;
    }

    private static final class k implements com.mbridge.msdk.videocommon.listener.a {

        private Handler f36061a;

        private final String f36062b;

        private final String f36063c;

        private final String f36064d;

        private final String f36065e;

        public k(Handler handler, String str, String str2, String str3, String str4) {
            this.f36061a = handler;
            this.f36063c = str;
            this.f36062b = str2;
            this.f36064d = str3;
            this.f36065e = str4;
        }

        @Override
        public void a(String str) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36062b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36063c);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36064d);
            bundle.putString("key", this.f36065e);
            bundle.putString("url", str);
            messageObtain.setData(bundle);
            this.f36061a.sendMessage(messageObtain);
        }

        @Override
        public void a(String str, String str2) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str2, false);
            Message messageObtain = Message.obtain();
            messageObtain.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36062b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36063c);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36064d);
            bundle.putString("url", str2);
            bundle.putString("key", this.f36065e);
            bundle.putString("message", str);
            messageObtain.setData(bundle);
            this.f36061a.sendMessage(messageObtain);
        }
    }

    public synchronized void a(Context context, boolean z10, int i10, boolean z11, int i11, String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, h hVar, n nVar) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        String str4 = str2 + "_" + str3 + "_" + copyOnWriteArrayList2.get(0).getSecondRequestIndex();
        f35966g.put(str4, new f(z10, z11, i10, copyOnWriteArrayList2.size(), str2, str3, i11, copyOnWriteArrayList2));
        this.f35967a.a(str4, hVar);
        this.f35967a.a(context);
        this.f35967a.a(str4, copyOnWriteArrayList2);
        this.f35967a.post(new a(copyOnWriteArrayList2, context, str2, i11, str, str3, str4, nVar));
    }

    class C0495b implements x.c {

        final int f35982a;

        final CampaignEx f35983b;

        C0495b(int i10, CampaignEx campaignEx) {
            this.f35982a = i10;
            this.f35983b = campaignEx;
        }

        @Override
        public void a(String str, String str2, String str3, String str4, boolean z10) {
            if (z10) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                int i10 = this.f35982a;
                if (i10 == 0) {
                    mVar.e(1);
                    mVar.d(1);
                    mVar.j("m_download_end");
                } else if (i10 == 1) {
                    mVar.e(2);
                    mVar.d(1);
                    mVar.j("m_download_end");
                } else if (i10 == 2) {
                    mVar.e(3);
                    mVar.d(1);
                    mVar.j("m_download_end");
                    mVar.b(this.f35983b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                    mVar.f("1");
                }
                mVar.o(this.f35983b.getRequestIdNotice());
                mVar.b("url", str);
                mVar.b("scenes", "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f35983b);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e10.getMessage());
                }
            }
        }

        @Override
        public void a(String str, DownloadError downloadError) {
            String message = "";
            if (downloadError != null) {
                try {
                    if (downloadError.getException() != null) {
                        message = downloadError.getException().getMessage();
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            int i10 = this.f35982a;
            if (i10 == 0) {
                mVar.e(1);
                mVar.d(3);
                mVar.j("m_download_end");
            } else if (i10 == 1) {
                mVar.e(2);
                mVar.d(3);
                mVar.j("m_download_end");
            } else if (i10 == 2) {
                mVar.e(3);
                mVar.d(3);
                mVar.j("m_download_end");
                mVar.b(this.f35983b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                mVar.f("1");
            }
            b.b(mVar, this.f35983b);
            mVar.o(this.f35983b.getRequestIdNotice());
            mVar.m(message);
            mVar.b("scenes", "1");
            mVar.b("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f35983b);
        }
    }

    public void a(int i10, CampaignEx campaignEx, String str, String str2) {
        x.a(i10, str, str2, new C0495b(i10, campaignEx), campaignEx);
    }

    public void a(Context context, String str, String str2, String str3, CampaignEx campaignEx, String str4, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        if (TextUtils.isEmpty(str4) || campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = a(campaignEx, 3);
        if (str4.contains(".zip") && str4.contains(ResourceManager.KEY_MD5FILENAME)) {
            boolean zIsEmpty = TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str4));
            try {
                l lVar = new l(context, str, str2, str3, campaignEx, 497, this.f35967a, nVar, copyOnWriteArrayList);
                lVar.a(zIsEmpty);
                H5DownLoadManager.getInstance().downloadH5Res(cVarA, str4, lVar);
                return;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    return;
                }
                return;
            }
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str4));
        try {
            i iVar = new i(497, str, str2, str3, campaignEx, nVar, this.f35967a, copyOnWriteArrayList);
            iVar.a(zIsEmpty2);
            H5DownLoadManager.getInstance().downloadH5Res(cVarA, str4, iVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
            }
        }
    }

    private static class g extends com.mbridge.msdk.mbsignalcommon.listener.a {

        private final Handler f36017a;

        private final Runnable f36018b;

        private final boolean f36019c;

        private final boolean f36020d;

        private int f36021e;

        private String f36022f;

        private String f36023g;

        private String f36024h;

        private String f36025i;

        private com.mbridge.msdk.videocommon.a.C0547a f36026j;

        private CampaignEx f36027k;

        private CopyOnWriteArrayList<CampaignEx> f36028l;

        private com.mbridge.msdk.videocommon.setting.c f36029m;

        private final o f36030n;

        private boolean f36031o;

        private boolean f36032p;

        private boolean f36033q;

        private int f36034r = 0;

        private boolean f36035s;

        private long f36036t;

        public g(boolean z10, Handler handler, Runnable runnable, boolean z11, boolean z12, int i10, String str, String str2, String str3, String str4, com.mbridge.msdk.videocommon.a.C0547a c0547a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z13, long j10) {
            this.f36017a = handler;
            this.f36018b = runnable;
            this.f36019c = z11;
            this.f36020d = z12;
            this.f36021e = i10;
            this.f36022f = str;
            this.f36024h = str2;
            this.f36023g = str3;
            this.f36025i = str4;
            this.f36026j = c0547a;
            this.f36027k = campaignEx;
            this.f36028l = copyOnWriteArrayList;
            this.f36029m = cVar;
            this.f36030n = oVar;
            this.f36031o = z13;
            this.f36035s = z10;
            this.f36036t = j10;
        }

        @Override
        public void a(WebView webView, int i10) {
            Runnable runnable;
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                eVar.a("result", Integer.valueOf(i10));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f36027k, eVar);
            } catch (Throwable th2) {
                o0.b("RVWindVaneWebView", th2.getMessage());
            }
            if (this.f36033q) {
                return;
            }
            String str = this.f36023g + "_" + this.f36022f;
            if (i10 == 1) {
                if (this.f36031o) {
                    com.mbridge.msdk.videocommon.a.d(this.f36023g + "_" + this.f36025i);
                } else {
                    com.mbridge.msdk.videocommon.a.c(this.f36023g + "_" + this.f36025i);
                }
                com.mbridge.msdk.videocommon.a.a(this.f36023g + "_" + this.f36025i + "_" + this.f36022f, this.f36026j, true, this.f36031o);
                Handler handler = this.f36017a;
                if (handler != null && (runnable = this.f36018b) != null) {
                    handler.removeCallbacks(runnable);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36023g + "_" + this.f36025i + "_" + this.f36022f, true);
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36026j;
                if (c0547a != null) {
                    c0547a.a(true);
                }
                o oVar = this.f36030n;
                if (oVar != null) {
                    oVar.a(str, this.f36024h, this.f36023g, this.f36025i, this.f36022f, this.f36026j);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36023g + "_" + this.f36025i + "_" + this.f36022f, false);
                com.mbridge.msdk.videocommon.a.C0547a c0547a2 = this.f36026j;
                if (c0547a2 != null) {
                    c0547a2.a(false);
                }
                if (this.f36030n != null) {
                    this.f36030n.a(str, this.f36025i, this.f36022f, this.f36026j, b.b(880008, new MBridgeIds(this.f36024h, this.f36023g, this.f36025i), "readyState:" + i10, null, this.f36027k));
                }
            }
            this.f36033q = true;
        }

        @Override
        public void a(WebView webView, String str, String str2, int i10, int i11) {
            boolean z10 = true;
            if (i10 == 1) {
                try {
                    com.mbridge.msdk.reward.controller.a aVar = new com.mbridge.msdk.reward.controller.a();
                    aVar.e(false);
                    if (i11 != 2) {
                        z10 = false;
                    }
                    aVar.d(z10);
                    aVar.c(str, str2);
                    aVar.a(new com.mbridge.msdk.video.bt.module.orglistener.a(null));
                    aVar.a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, i11, str2, true, 1));
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RVWindVaneWebView", e10.getMessage());
                    }
                }
            }
        }

        @Override
        public void a(Object obj, String str) {
            if (obj != null) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    String strOptString = new JSONObject(str).optString("id");
                    com.mbridge.msdk.video.bt.component.d.c().b(obj, strOptString);
                    String strF = com.mbridge.msdk.video.bt.component.d.c().f(strOptString);
                    CampaignEx campaignExC = com.mbridge.msdk.video.bt.component.d.c().c(strOptString);
                    com.mbridge.msdk.videocommon.setting.c cVarD = com.mbridge.msdk.video.bt.component.d.c().d(strOptString);
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(campaignExC);
                    WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b;
                    if (windVaneWebView != null) {
                        b.b().a(this.f36035s, windVaneWebView, campaignExC, (CopyOnWriteArrayList<CampaignEx>) copyOnWriteArrayList, cVarD, strF, strOptString, this.f36034r == 0 ? 3 : 6);
                        this.f36034r++;
                    }
                } catch (Throwable th2) {
                    o0.b("RVWindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override
        public void a(WebView webView, String str) {
            Runnable runnable;
            super.a(webView, str);
            if (this.f36032p) {
                return;
            }
            String str2 = this.f36023g + "_" + this.f36022f;
            if (!str.contains("wfr=1")) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36023g + "_" + this.f36025i + "_" + this.f36022f, true);
                Handler handler = this.f36017a;
                if (handler != null && (runnable = this.f36018b) != null) {
                    handler.removeCallbacks(runnable);
                }
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36026j;
                if (c0547a != null) {
                    c0547a.a(true);
                }
                o oVar = this.f36030n;
                if (oVar != null) {
                    oVar.a(str2, this.f36024h, this.f36023g, this.f36025i, this.f36022f, this.f36026j);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f36032p = true;
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36023g + "_" + this.f36025i + "_" + this.f36022f, false);
            if (this.f36030n != null) {
                String str3 = this.f36023g + "_" + this.f36022f;
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36026j;
                if (c0547a != null) {
                    c0547a.a(false);
                }
                this.f36030n.a(str3, this.f36025i, this.f36022f, this.f36026j, b.b(880008, new MBridgeIds(this.f36024h, this.f36023g, this.f36025i), "onReceivedError： " + i10 + "  " + str, null, this.f36027k));
            }
        }

        @Override
        public void a(WebView webView) {
            if (webView != null) {
                try {
                    com.mbridge.msdk.video.bt.component.d.c().c(this.f36023g, this.f36025i);
                } catch (Throwable th2) {
                    o0.b("RVWindVaneWebView", th2.getMessage());
                }
            }
        }
    }

    private static class p extends com.mbridge.msdk.mbsignalcommon.listener.b {

        private Handler f36091a;

        private Runnable f36092b;

        private final boolean f36093c;

        private final boolean f36094d;

        private String f36095e;

        private final o f36096f;

        private final WindVaneWebView f36097g;

        private final String f36098h;

        private final String f36099i;

        private final String f36100j;

        private final com.mbridge.msdk.videocommon.a.C0547a f36101k;

        private final CampaignEx f36102l;

        private CopyOnWriteArrayList<CampaignEx> f36103m;

        private long f36104n;

        private boolean f36105o;

        private boolean f36106p;

        private final Runnable f36107q;

        private final Runnable f36108r;

        class a implements Runnable {

            final o f36109a;

            final com.mbridge.msdk.videocommon.a.C0547a f36110b;

            final String f36111c;

            final String f36112d;

            final String f36113e;

            final String f36114f;

            a(o oVar, com.mbridge.msdk.videocommon.a.C0547a c0547a, String str, String str2, String str3, String str4) {
                this.f36109a = oVar;
                this.f36110b = c0547a;
                this.f36111c = str;
                this.f36112d = str2;
                this.f36113e = str3;
                this.f36114f = str4;
            }

            @Override
            public void run() {
                WindVaneWebView windVaneWebViewB;
                com.mbridge.msdk.videocommon.a.C0547a c0547a;
                if (this.f36109a != null && (c0547a = this.f36110b) != null) {
                    c0547a.a(true);
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36111c + "_" + this.f36112d + "_" + this.f36113e, true);
                    o oVar = this.f36109a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f36111c);
                    sb2.append("_");
                    sb2.append(this.f36113e);
                    oVar.a(sb2.toString(), this.f36114f, this.f36111c, this.f36112d, this.f36113e, this.f36110b);
                }
                com.mbridge.msdk.videocommon.a.C0547a c0547a2 = this.f36110b;
                if (c0547a2 == null || (windVaneWebViewB = c0547a2.b()) == null) {
                    return;
                }
                try {
                    windVaneWebViewB.release();
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e10.getMessage());
                    }
                }
            }
        }

        class RunnableC0497b implements Runnable {

            final o f36116a;

            final com.mbridge.msdk.videocommon.a.C0547a f36117b;

            final String f36118c;

            final String f36119d;

            final String f36120e;

            final String f36121f;

            RunnableC0497b(o oVar, com.mbridge.msdk.videocommon.a.C0547a c0547a, String str, String str2, String str3, String str4) {
                this.f36116a = oVar;
                this.f36117b = c0547a;
                this.f36118c = str;
                this.f36119d = str2;
                this.f36120e = str3;
                this.f36121f = str4;
            }

            @Override
            public void run() {
                WindVaneWebView windVaneWebViewB;
                com.mbridge.msdk.videocommon.a.C0547a c0547a;
                if (this.f36116a != null && (c0547a = this.f36117b) != null) {
                    c0547a.a(true);
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36118c + "_" + this.f36119d + "_" + this.f36120e, true);
                    o oVar = this.f36116a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f36118c);
                    sb2.append("_");
                    sb2.append(this.f36120e);
                    oVar.a(sb2.toString(), this.f36121f, this.f36118c, this.f36119d, this.f36120e, this.f36117b);
                }
                com.mbridge.msdk.videocommon.a.C0547a c0547a2 = this.f36117b;
                if (c0547a2 == null || (windVaneWebViewB = c0547a2.b()) == null) {
                    return;
                }
                try {
                    windVaneWebViewB.release();
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e10.getMessage());
                    }
                }
            }
        }

        public p(Handler handler, Runnable runnable, boolean z10, boolean z11, String str, o oVar, WindVaneWebView windVaneWebView, String str2, String str3, String str4, com.mbridge.msdk.videocommon.a.C0547a c0547a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, long j10) {
            this.f36091a = handler;
            this.f36092b = runnable;
            this.f36093c = z10;
            this.f36094d = z11;
            this.f36095e = str;
            this.f36096f = oVar;
            this.f36097g = windVaneWebView;
            this.f36098h = str2;
            this.f36099i = str4;
            this.f36100j = str3;
            this.f36101k = c0547a;
            this.f36102l = campaignEx;
            this.f36103m = copyOnWriteArrayList;
            this.f36104n = j10;
            a aVar = new a(oVar, c0547a, str4, str, str2, str3);
            this.f36108r = aVar;
            this.f36107q = new RunnableC0497b(oVar, c0547a, str4, str, str2, str3);
            if (handler != null) {
                handler.postDelayed(aVar, 5000L);
            }
        }

        @Override
        public void a(WebView webView, int i10) {
            Handler handler;
            Runnable runnable;
            Runnable runnable2;
            super.a(webView, i10);
            Handler handler2 = this.f36091a;
            if (handler2 != null && (runnable2 = this.f36107q) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.f36091a;
            if (handler3 != null && (runnable = this.f36108r) != null) {
                handler3.removeCallbacks(runnable);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                eVar.a("result", Integer.valueOf(i10));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f36102l, eVar);
            } catch (Throwable th2) {
                o0.b("WindVaneWebView", th2.getMessage());
            }
            if (this.f36106p) {
                return;
            }
            String str = this.f36099i + "_" + this.f36098h;
            if (i10 == 1) {
                Runnable runnable3 = this.f36092b;
                if (runnable3 != null && (handler = this.f36091a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36099i + "_" + this.f36095e + "_" + this.f36098h, true);
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36101k;
                if (c0547a != null) {
                    c0547a.a(true);
                }
                if (this.f36093c) {
                    if (this.f36094d) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36102l.getRequestIdNotice(), this.f36101k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36102l.getRequestIdNotice(), this.f36101k);
                    }
                } else if (this.f36094d) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f36102l.getRequestIdNotice(), this.f36101k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f36102l.getRequestIdNotice(), this.f36101k);
                }
                o oVar = this.f36096f;
                if (oVar != null) {
                    oVar.a(str, this.f36100j, this.f36099i, this.f36095e, this.f36098h, this.f36101k);
                }
            } else if (this.f36096f != null) {
                this.f36096f.a(str, this.f36095e, this.f36098h, this.f36101k, b.b(880009, new MBridgeIds(this.f36100j, this.f36099i, this.f36095e), "readyState:" + i10, null, this.f36102l));
            }
            this.f36106p = true;
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36099i + "_" + this.f36095e + "_" + this.f36098h, false);
            Handler handler = this.f36091a;
            if (handler != null) {
                if (this.f36107q != null) {
                    handler.removeCallbacks(this.f36108r);
                }
                Runnable runnable = this.f36107q;
                if (runnable != null) {
                    this.f36091a.removeCallbacks(runnable);
                }
            }
            try {
                String str3 = this.f36099i + "_" + this.f36098h;
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36101k;
                if (c0547a != null) {
                    c0547a.a(false);
                }
                if (this.f36096f != null) {
                    this.f36096f.a(str3, this.f36095e, str2, this.f36101k, b.b(880009, new MBridgeIds(this.f36100j, this.f36099i, this.f36095e), i10 + Utils.SEPARATOR + str, null, this.f36102l));
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("WindVaneWebView", e10.getLocalizedMessage());
                }
            }
        }

        @Override
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36099i + "_" + this.f36095e + "_" + this.f36098h, false);
            Handler handler = this.f36091a;
            if (handler != null) {
                if (this.f36107q != null) {
                    handler.removeCallbacks(this.f36108r);
                }
                Runnable runnable = this.f36107q;
                if (runnable != null) {
                    this.f36091a.removeCallbacks(runnable);
                }
            }
            try {
                String str = this.f36099i + "_" + this.f36098h;
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36101k;
                if (c0547a != null) {
                    c0547a.a(false);
                }
                if (this.f36096f != null) {
                    MBridgeIds mBridgeIds = new MBridgeIds(this.f36100j, this.f36099i, this.f36095e);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onReceivedSslError:");
                    sb2.append(sslError == null ? "" : Integer.valueOf(sslError.getPrimaryError()));
                    this.f36096f.a(str, this.f36095e, this.f36098h, this.f36101k, b.b(880009, mBridgeIds, sb2.toString(), null, this.f36102l));
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("WindVaneWebView", e10.getLocalizedMessage());
                }
            }
        }

        @Override
        public void a(WebView webView, String str) {
            Runnable runnable;
            Handler handler;
            Runnable runnable2;
            super.a(webView, str);
            Handler handler2 = this.f36091a;
            if (handler2 != null && (runnable2 = this.f36108r) != null) {
                handler2.removeCallbacks(runnable2);
            }
            if (this.f36105o) {
                return;
            }
            if (!str.contains("wfr=1")) {
                String str2 = this.f36099i + "_" + this.f36098h;
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36099i + "_" + this.f36095e + "_" + this.f36098h, true);
                Runnable runnable3 = this.f36092b;
                if (runnable3 != null && (handler = this.f36091a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36101k;
                if (c0547a != null) {
                    c0547a.a(true);
                }
                if (this.f36093c) {
                    if (this.f36102l.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36102l.getRequestIdNotice(), this.f36101k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36102l.getRequestIdNotice(), this.f36101k);
                    }
                } else if (this.f36102l.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f36102l.getRequestIdNotice(), this.f36101k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f36102l.getRequestIdNotice(), this.f36101k);
                }
                o oVar = this.f36096f;
                if (oVar != null) {
                    oVar.a(str2, this.f36100j, this.f36099i, this.f36095e, this.f36098h, this.f36101k);
                }
            } else {
                Handler handler3 = this.f36091a;
                if (handler3 != null && (runnable = this.f36107q) != null) {
                    handler3.postDelayed(runnable, 5000L);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f36105o = true;
        }
    }

    private static class q extends com.mbridge.msdk.mbsignalcommon.listener.b {

        private String f36123a;

        private final boolean f36124b;

        private final WindVaneWebView f36125c;

        private final String f36126d;

        private final String f36127e;

        private final com.mbridge.msdk.videocommon.a.C0547a f36128f;

        private final CampaignEx f36129g;

        private boolean f36130h;

        private String f36131i;

        private boolean f36132j;

        private boolean f36133k;

        public q(String str, boolean z10, WindVaneWebView windVaneWebView, String str2, String str3, com.mbridge.msdk.videocommon.a.C0547a c0547a, CampaignEx campaignEx, boolean z11, String str4) {
            this.f36124b = z10;
            this.f36125c = windVaneWebView;
            this.f36126d = str2;
            this.f36127e = str3;
            this.f36128f = c0547a;
            this.f36129g = campaignEx;
            this.f36123a = str;
            this.f36130h = z11;
            this.f36131i = str4;
        }

        @Override
        public void a(WebView webView, int i10) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                eVar.a("result", Integer.valueOf(i10));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f36129g, eVar);
            } catch (Throwable th2) {
                o0.b("WindVaneWebView", th2.getMessage());
            }
            if (this.f36133k) {
                return;
            }
            if (this.f36125c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f36123a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i10);
                    jSONObject2.put("error", "");
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f36125c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e10.getLocalizedMessage());
                    }
                }
            }
            String str = this.f36127e + "_" + this.f36129g.getId() + "_" + this.f36129g.getRequestId() + "_" + this.f36126d;
            if (i10 == 1) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36127e + "_" + this.f36131i + "_" + this.f36126d, true);
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36128f;
                if (c0547a != null) {
                    c0547a.a(true);
                }
                if (this.f36124b) {
                    if (this.f36129g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(str, this.f36128f, false, this.f36130h);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str, this.f36128f, false, this.f36130h);
                    }
                } else if (this.f36129g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(str, this.f36128f, false, this.f36130h);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str, this.f36128f, false, this.f36130h);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36127e + "_" + this.f36131i + "_" + this.f36126d, false);
                com.mbridge.msdk.videocommon.a.C0547a c0547a2 = this.f36128f;
                if (c0547a2 != null) {
                    c0547a2.a(false);
                }
            }
            this.f36133k = true;
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36127e + "_" + this.f36131i + "_" + this.f36126d, false);
            com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36128f;
            if (c0547a != null) {
                c0547a.a(false);
            }
            if (this.f36125c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f36123a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f36125c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e10.getLocalizedMessage());
                    }
                }
            }
        }

        @Override
        public void a(WebView webView, String str) {
            if (this.f36132j) {
                return;
            }
            if (!str.contains("wfr=1")) {
                if (this.f36125c != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", this.f36123a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f36125c, "componentReact", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("WindVaneWebView", e10.getLocalizedMessage());
                        }
                    }
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36127e + "_" + this.f36131i + "_" + this.f36126d, true);
                com.mbridge.msdk.videocommon.a.C0547a c0547a = this.f36128f;
                if (c0547a != null) {
                    c0547a.a(true);
                }
                String str2 = this.f36127e + "_" + this.f36129g.getId() + "_" + this.f36129g.getRequestId() + "_" + this.f36126d;
                if (this.f36124b) {
                    if (this.f36129g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36129g.getRequestIdNotice(), this.f36128f);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str2, this.f36128f, false, this.f36130h);
                    }
                } else if (this.f36129g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f36129g.getRequestIdNotice(), this.f36128f);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str2, this.f36128f, false, this.f36130h);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f36132j = true;
        }
    }

    public synchronized void a(Context context, CampaignEx campaignEx, String str, String str2, String str3, n nVar) {
        try {
            this.f35967a.a(context);
            if (campaignEx != null) {
                String cMPTEntryUrl = campaignEx.getCMPTEntryUrl();
                if (campaignEx.isDynamicView()) {
                    if (t0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, cMPTEntryUrl)) {
                        a(0, campaignEx, campaignEx.getMof_tplid() + "", cMPTEntryUrl);
                    }
                    ResDownloadCheckManager.getInstance().setZipDownloadDone(cMPTEntryUrl, true);
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 105;
                    Bundle bundle = new Bundle();
                    bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                    bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                    bundle.putString(TrackingKey.REQUEST_ID, str3);
                    bundle.putString("key", str2 + "_" + str3 + "_" + campaignEx.getSecondRequestIndex());
                    bundle.putString("url", cMPTEntryUrl);
                    messageObtain.setData(bundle);
                    this.f35967a.sendMessage(messageObtain);
                    if (nVar != null) {
                        nVar.a(str, str2, str3, cMPTEntryUrl);
                    }
                    return;
                }
            }
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid());
                    if (cVarA == null) {
                        cVarA = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.c cVar = cVarA;
                    cVar.a(campaignEx);
                    cVar.e(1);
                    cVar.f(a(campaignEx));
                    H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getCMPTEntryUrl(), new c(str2, str, str3, campaignEx, nVar, context));
                } catch (Exception e10) {
                    o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void a(Context context, int i10, CampaignEx campaignEx, String str, String str2, String str3, String str4) {
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(campaignEx, context, i10, str, str2, str3, str4));
    }

    /* JADX WARN: Code duplicated, block: B:61:0x01a9 A[Catch: all -> 0x003a, TryCatch #5 {, blocks: (B:4:0x0009, B:5:0x0021, B:8:0x0029, B:16:0x0046, B:26:0x0088, B:29:0x008e, B:31:0x0094, B:34:0x00a3, B:36:0x00eb, B:59:0x01a5, B:61:0x01a9, B:63:0x01b4, B:33:0x009d, B:56:0x015b, B:43:0x0104, B:45:0x0112, B:47:0x0124), top: B:75:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01b4 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0009, B:5:0x0021, B:8:0x0029, B:16:0x0046, B:26:0x0088, B:29:0x008e, B:31:0x0094, B:34:0x00a3, B:36:0x00eb, B:59:0x01a5, B:61:0x01a9, B:63:0x01b4, B:33:0x009d, B:56:0x015b, B:43:0x0104, B:45:0x0112, B:47:0x0124), top: B:75:0x0009 }] */
    public synchronized void a(boolean z10, Handler handler, boolean z11, boolean z12, WindVaneWebView windVaneWebView, String str, int i10, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, String str4, String str5, String str6, com.mbridge.msdk.videocommon.setting.c cVar, o oVar) {
        String str7;
        String str8;
        String str9;
        String str10;
        com.mbridge.msdk.video.signal.impl.k kVar;
        String str11 = str4 + "_" + str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (t0.i(str)) {
                if (oVar != null) {
                    oVar.a(str11, str3, str4, str5, str, null);
                }
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            com.mbridge.msdk.videocommon.a.C0547a c0547a = new com.mbridge.msdk.videocommon.a.C0547a();
            try {
                try {
                    try {
                        try {
                            try {
                                WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                                if (campaignEx != null) {
                                    windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
                                }
                                windVaneWebView2.setTempTypeForMetrics(2);
                                try {
                                    c0547a.a(windVaneWebView2);
                                    if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                                        kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                                    } else {
                                        kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                                    }
                                    com.mbridge.msdk.video.signal.impl.k kVar2 = kVar;
                                    kVar2.g(i10);
                                    kVar2.setUnitId(str4);
                                    kVar2.setRewardUnitSetting(cVar);
                                    kVar2.d(z10);
                                    windVaneWebView2.setWebViewListener(new p(handler, null, z11, z12, str5, oVar, windVaneWebView, str, str3, str4, c0547a, campaignEx, copyOnWriteArrayList, jCurrentTimeMillis));
                                    windVaneWebView2.setObject(kVar2);
                                    windVaneWebView2.loadUrl(str2);
                                    windVaneWebView2.setRid(str5);
                                } catch (Exception e10) {
                                    e = e10;
                                    str7 = str5;
                                    str8 = str4;
                                    if (MBridgeConstans.DEBUG) {
                                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                    }
                                    if (oVar != null) {
                                        oVar.a(str11, str5, str, null, b(880009, new MBridgeIds(str3, str8, str7), "", e, campaignEx));
                                    }
                                }
                            } catch (Exception unused) {
                                str10 = str;
                                str9 = str4;
                                if (oVar != null) {
                                    c0547a.a(true);
                                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str9 + "_" + str5 + "_" + str10, true);
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(str9);
                                    sb2.append("_");
                                    sb2.append(str10);
                                    oVar.a(sb2.toString(), str3, str4, str5, str, c0547a);
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                        }
                    } catch (Exception unused2) {
                        str9 = str4;
                        str10 = str;
                    }
                } catch (Throwable unused3) {
                    str7 = str5;
                    if (oVar != null) {
                        c0547a.a(true);
                        ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                        StringBuilder sb3 = new StringBuilder();
                        str8 = str4;
                        try {
                            sb3.append(str8);
                            sb3.append("_");
                            sb3.append(str7);
                            sb3.append("_");
                            sb3.append(str);
                            resDownloadCheckManager.setTemplatePreLoadDone(sb3.toString(), true);
                            oVar.a(str8 + "_" + str, str3, str4, str5, str, c0547a);
                        } catch (Exception e12) {
                            e = e12;
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                            }
                            if (oVar != null) {
                                oVar.a(str11, str5, str, null, b(880009, new MBridgeIds(str3, str8, str7), "", e, campaignEx));
                            }
                        }
                    }
                }
            } catch (Exception e13) {
                e = e13;
            }
        } catch (Exception e14) {
            e = e14;
            str7 = str5;
            str8 = str4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x01d5 A[Catch: all -> 0x0044, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x000b, B:7:0x0031, B:13:0x0049, B:15:0x007c, B:18:0x008a, B:20:0x00a5, B:22:0x00ab, B:24:0x00b5, B:27:0x00bc, B:29:0x00c2, B:30:0x00cc, B:32:0x00d2, B:34:0x00e6, B:36:0x00f4, B:38:0x00fd, B:39:0x0101, B:42:0x0112, B:44:0x015b, B:46:0x016f, B:48:0x018f, B:57:0x01d5, B:58:0x01f7, B:60:0x01fb, B:41:0x010b), top: B:67:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01fb A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x000b, B:7:0x0031, B:13:0x0049, B:15:0x007c, B:18:0x008a, B:20:0x00a5, B:22:0x00ab, B:24:0x00b5, B:27:0x00bc, B:29:0x00c2, B:30:0x00cc, B:32:0x00d2, B:34:0x00e6, B:36:0x00f4, B:38:0x00fd, B:39:0x0101, B:42:0x0112, B:44:0x015b, B:46:0x016f, B:48:0x018f, B:57:0x01d5, B:58:0x01f7, B:60:0x01fb, B:41:0x010b), top: B:67:0x000b }] */
    public synchronized void a(boolean z10, Handler handler, boolean z11, boolean z12, String str, String str2, String str3, String str4, String str5, int i10, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str6, String str7, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z13) {
        String str8;
        String str9;
        com.mbridge.msdk.video.signal.impl.k kVar;
        this.f35968b = z13;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str10 = str4 + "_" + str5;
        this.f35968b = z13;
        if (t0.i(str5)) {
            if (oVar != null) {
                oVar.a(str10, str3, str4, str, str5, null);
            }
            return;
        }
        try {
            o0.a("RewardCampaignsResourceManager", "开始预加载大模板资源");
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            com.mbridge.msdk.videocommon.a.C0547a c0547a = new com.mbridge.msdk.videocommon.a.C0547a();
            WindVaneWebView windVaneWebView = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            if (campaignEx != null) {
                windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
            }
            windVaneWebView.setTempTypeForMetrics(1);
            c0547a.a(windVaneWebView);
            String strB = com.mbridge.msdk.video.bt.component.d.c().b();
            String strB2 = com.mbridge.msdk.video.bt.component.d.c().b();
            c0547a.a(strB2);
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(str4);
                if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                    for (int i11 = 0; i11 < copyOnWriteArrayList.size(); i11++) {
                        CampaignEx campaignEx2 = copyOnWriteArrayList.get(i11);
                        for (CampaignEx campaignEx3 : copyOnWriteArrayListB) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i11, campaignEx2);
                            }
                        }
                    }
                }
                kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
            } else {
                kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
            }
            com.mbridge.msdk.video.signal.impl.k kVar2 = kVar;
            kVar2.g(i10);
            kVar2.setUnitId(str7);
            kVar2.c(strB2);
            kVar2.d(strB);
            kVar2.c(true);
            kVar2.setRewardUnitSetting(cVar);
            kVar2.d(z10);
            try {
                windVaneWebView.setWebViewListener(new g(z10, handler, null, z11, z12, i10, str5, str3, str4, str, c0547a, campaignEx, copyOnWriteArrayList, cVar, oVar, z13, jCurrentTimeMillis));
                windVaneWebView.setObject(kVar2);
                windVaneWebView.loadUrl(str6);
                str8 = str;
                try {
                    windVaneWebView.setRid(str8);
                    MBridgeBTRootLayout mBridgeBTRootLayout = new MBridgeBTRootLayout(com.mbridge.msdk.foundation.controller.c.m().d());
                    mBridgeBTRootLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    mBridgeBTRootLayout.setInstanceId(strB);
                    str9 = str4;
                    try {
                        mBridgeBTRootLayout.setUnitId(str9);
                        MBridgeBTLayout mBridgeBTLayout = new MBridgeBTLayout(com.mbridge.msdk.foundation.controller.c.m().d());
                        mBridgeBTLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        mBridgeBTLayout.setInstanceId(strB2);
                        mBridgeBTLayout.setUnitId(str9);
                        mBridgeBTLayout.setWebView(windVaneWebView);
                        AbstractMap abstractMapB = com.mbridge.msdk.video.bt.component.d.c().b(str9, str8);
                        abstractMapB.put(strB2, mBridgeBTLayout);
                        abstractMapB.put(strB, mBridgeBTRootLayout);
                        mBridgeBTRootLayout.addView(mBridgeBTLayout, new FrameLayout.LayoutParams(-1, -1));
                    } catch (Exception e10) {
                        e = e10;
                        if (oVar != null) {
                            oVar.a(str10, str, str5, null, b(880008, new MBridgeIds(str3, str9, str8), "", e, campaignEx));
                        }
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                        }
                    }
                } catch (Exception e11) {
                    e = e11;
                    str9 = str4;
                    if (oVar != null) {
                        oVar.a(str10, str, str5, null, b(880008, new MBridgeIds(str3, str9, str8), "", e, campaignEx));
                    }
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                    }
                }
            } catch (Exception e12) {
                e = e12;
                str8 = str;
            }
        } catch (Exception e13) {
            e = e13;
            str8 = str;
            str9 = str4;
        }
    }

    public void a(boolean z10, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, String str, String str2, int i10) {
        if (windVaneWebView != null) {
            if (campaignEx != null && cVar != null && campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", str2);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", ConstantsKt.ERROR_1000_MESSAGE);
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                        return;
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                            return;
                        }
                        return;
                    }
                }
                if (!TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) && campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY)) {
                    o0.a("RewardCampaignsResourceManager", "getTeamplateUrl contains cmpt=1");
                    return;
                } else {
                    new Handler(Looper.getMainLooper()).postDelayed(new e(z10, windVaneWebView, campaignEx, copyOnWriteArrayList, str, cVar, str2), i10 * 1000);
                    return;
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", str2);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("result", 2);
                jSONObject4.put("error", ConstantsKt.ERROR_1000_MESSAGE);
                jSONObject3.put("data", jSONObject4);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                }
            }
        }
    }

    public void a(boolean z10, WindVaneWebView windVaneWebView, String str, int i10, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, com.mbridge.msdk.videocommon.setting.c cVar, String str4, boolean z11) {
        com.mbridge.msdk.video.signal.impl.k kVar;
        String requestId;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            com.mbridge.msdk.videocommon.a.C0547a c0547a = new com.mbridge.msdk.videocommon.a.C0547a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            if (campaignEx != null) {
                windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
            }
            windVaneWebView2.setTempTypeForMetrics(2);
            c0547a.a(windVaneWebView2);
            String requestId2 = "";
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(str3);
                if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                    for (int i11 = 0; i11 < copyOnWriteArrayList.size(); i11++) {
                        CampaignEx campaignEx2 = copyOnWriteArrayList.get(i11);
                        for (CampaignEx campaignEx3 : copyOnWriteArrayListB) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i11, campaignEx2);
                            }
                        }
                    }
                }
                com.mbridge.msdk.video.signal.impl.k kVar2 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                requestId = copyOnWriteArrayList.get(0).getRequestId();
                kVar = kVar2;
            } else {
                com.mbridge.msdk.video.signal.impl.k kVar3 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                if (campaignEx != null) {
                    requestId2 = campaignEx.getRequestId();
                }
                kVar = kVar3;
                requestId = requestId2;
            }
            kVar.g(i10);
            kVar.setUnitId(str3);
            kVar.c(str4);
            kVar.setRewardUnitSetting(cVar);
            kVar.d(z10);
            windVaneWebView2.setWebViewListener(new q(str4, false, windVaneWebView, str, str3, c0547a, campaignEx, z11, requestId));
            windVaneWebView2.setObject(kVar);
            windVaneWebView2.loadUrl(str2);
            windVaneWebView2.setRid(requestId);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
            }
        }
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
            } catch (Throwable th2) {
                o0.b("RewardCampaignsResourceManager", th2.getMessage());
            }
        }
        return 0;
    }

    public com.mbridge.msdk.foundation.same.report.metrics.c a(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = campaignEx != null ? com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid()) : null;
        if (cVarA == null) {
            cVarA = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        cVarA.a(campaignEx);
        cVarA.f(a(campaignEx));
        cVarA.e(i10);
        return cVarA;
    }
}
