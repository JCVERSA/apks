package com.mbridge.msdk.click;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.MIMManager;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.LoadingActivity;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

public class a {

    public static boolean f33434n;

    public static Map<String, Long> f33435o = new HashMap();

    public static Set<String> f33436p = new HashSet();

    private String f33437a;

    private long f33438b;

    private com.mbridge.msdk.foundation.db.g f33439c;

    private Context f33440d;

    private com.mbridge.msdk.click.e f33441e;

    private final com.mbridge.msdk.foundation.same.report.h f33443g;

    private com.mbridge.msdk.setting.g f33444h;

    private final boolean f33445i;

    private boolean f33448l;

    private j f33449m;

    private NativeListener.NativeTrackingListener f33442f = null;

    private boolean f33446j = false;

    private boolean f33447k = true;

    class b implements g {
        b() {
        }

        @Override
        public void a(Object obj) {
        }

        @Override
        public void b(Object obj) {
        }

        @Override
        public void a(Object obj, String str) {
        }
    }

    class c implements Runnable {

        final boolean f33454a;

        final boolean f33455b;

        final CampaignEx f33456c;

        c(boolean z10, boolean z11, CampaignEx campaignEx) {
            this.f33454a = z10;
            this.f33455b = z11;
            this.f33456c = campaignEx;
        }

        @Override
        public void run() {
            if (this.f33454a && !a.f33434n && !a.this.f33448l && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER && !this.f33455b) {
                a.this.c(this.f33456c);
            }
            if (this.f33454a || a.this.f33442f == null || a.f33434n || a.this.f33448l || !MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                return;
            }
            a.this.f33442f.onShowLoading(this.f33456c);
        }
    }

    class e implements Runnable {

        final boolean f33464a;

        final Campaign f33465b;

        e(boolean z10, Campaign campaign) {
            this.f33464a = z10;
            this.f33465b = campaign;
        }

        @Override
        public void run() {
            if (this.f33464a && !a.f33434n && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.a();
            }
            if (a.this.f33442f == null || a.f33434n || !MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                return;
            }
            a.this.f33442f.onDismissLoading(this.f33465b);
        }
    }

    public a(Context context, String str) {
        this.f33439c = null;
        this.f33440d = null;
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(str);
        this.f33444h = gVarD;
        if (gVarD == null) {
            this.f33444h = com.mbridge.msdk.setting.h.b().a();
        }
        this.f33445i = this.f33444h.J0();
        Context applicationContext = context.getApplicationContext();
        this.f33440d = applicationContext;
        this.f33437a = str;
        if (this.f33439c == null) {
            this.f33439c = com.mbridge.msdk.foundation.db.g.a(applicationContext);
        }
        this.f33443g = new com.mbridge.msdk.foundation.same.report.h(this.f33440d);
    }

    public static String b(int i10) {
        if (i10 == 1) {
            return "2000136";
        }
        if (i10 == 2) {
            return "2000137";
        }
        if (i10 != 3) {
            return i10 != 4 ? "" : "2000138";
        }
        return "2000139";
    }

    public void c() {
        try {
            this.f33442f = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(CampaignEx campaignEx) {
        try {
            Intent intent = new Intent(this.f33440d, (Class<?>) LoadingActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("icon_url", campaignEx.getIconUrl());
            this.f33440d.startActivity(intent);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", "Exception", e10);
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z10, boolean z11) {
        if (context == null) {
            return;
        }
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, null, str2, z10, z11, com.mbridge.msdk.click.retry.a.f33585l);
    }

    public boolean b(CampaignEx campaignEx) {
        Long l10;
        if (campaignEx == null) {
            return true;
        }
        try {
            if (2 != campaignEx.getLinkType() && 3 != campaignEx.getLinkType()) {
                return true;
            }
            String id2 = campaignEx.getId();
            Map<String, Long> map = f33435o;
            if (map == null) {
                return true;
            }
            if (map.containsKey(id2) && (l10 = f33435o.get(id2)) != null) {
                if (l10.longValue() > System.currentTimeMillis() || f33436p.contains(campaignEx.getId())) {
                    return false;
                }
            }
            f33435o.put(campaignEx.getId(), Long.valueOf(System.currentTimeMillis() + ((long) (campaignEx.getClickTimeOutInterval() * 1000))));
            return true;
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return true;
            }
            e10.printStackTrace();
            return true;
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z10, boolean z11, int i10) {
        int i11;
        if (context == null) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            i11 = -1;
        } else {
            i11 = str2.startsWith("tcp") ? 1 : 0;
        }
        a(i10, campaignEx, i11);
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, new C0448a(i11, str2, i10, campaignEx), str2, z10, z11, i10);
    }

    private static void a(int i10, CampaignEx campaignEx, int i11) {
        if (campaignEx != null) {
            try {
                String strB = b(i10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("net_ty", Integer.valueOf(i11));
                eVar.a("result", 3);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strB, campaignEx, eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private int b() {
        try {
            com.mbridge.msdk.setting.g gVar = this.f33444h;
            if (gVar != null) {
                return gVar.V();
            }
            return 1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    class C0448a implements g {

        final int f33450a;

        final String f33451b;

        final int f33452c;

        final CampaignEx f33453d;

        C0448a(int i10, String str, int i11, CampaignEx campaignEx) {
            this.f33450a = i10;
            this.f33451b = str;
            this.f33452c = i11;
            this.f33453d = campaignEx;
        }

        @Override
        public void a(Object obj) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                eVar.a("net_ty", String.valueOf(this.f33450a));
                if (obj != null && (obj instanceof JumpLoaderResult)) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String str = jumpLoaderResult.getStatusCode() + "";
                    eVar.a("status_code", str);
                    if (str.startsWith("2")) {
                        eVar.a("result", 1);
                    } else {
                        String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                        if (TextUtils.isEmpty(exceptionMsg)) {
                            exceptionMsg = "UNKNOWN EXCEPTION and Status Code is : " + str;
                        }
                        eVar.a("failingURL", z0.d(this.f33451b));
                        eVar.a("reason", exceptionMsg);
                    }
                }
                String strB = a.b(this.f33452c);
                if (this.f33453d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strB, this.f33453d, eVar);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", e10.getMessage());
                }
            }
        }

        @Override
        public void b(Object obj) {
        }

        @Override
        public void a(Object obj, String str) {
            try {
                String strB = a.b(this.f33452c);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                if (obj instanceof JumpLoaderResult) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                    if (!TextUtils.isEmpty(exceptionMsg)) {
                        str = exceptionMsg;
                    }
                    eVar.a("reason", str);
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult.getStatusCode()));
                }
                eVar.a("code", "");
                eVar.a("failingURL", z0.d(this.f33451b));
                eVar.a("net_ty", String.valueOf(this.f33450a));
                if (this.f33453d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strB, this.f33453d, eVar);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", e10.getMessage());
                }
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String[] strArr, boolean z10, boolean z11) {
        if (context == null || campaignEx == null || TextUtils.isEmpty(str) || strArr == null) {
            return;
        }
        com.mbridge.msdk.click.e eVar = new com.mbridge.msdk.click.e(context.getApplicationContext());
        for (String str2 : strArr) {
            eVar.a(str, campaignEx, new b(), str2, z10, z11, com.mbridge.msdk.click.retry.a.f33585l);
        }
    }

    class d implements g {

        final CampaignEx f33458a;

        final boolean f33459b;

        final Boolean f33460c;

        final List f33461d;

        final boolean f33462e;

        d(CampaignEx campaignEx, boolean z10, Boolean bool, List list, boolean z11) {
            this.f33458a = campaignEx;
            this.f33459b = z10;
            this.f33460c = bool;
            this.f33461d = list;
            this.f33462e = z11;
        }

        /* JADX WARN: Code duplicated, block: B:30:0x0097  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v16, types: [int] */
        /* JADX WARN: Type inference failed for: r1v25 */
        @Override
        public void a(Object obj) {
            Throwable th2;
            JumpLoaderResult jumpLoaderResult;
            ?? StartsWith;
            Set<String> set = a.f33436p;
            if (set != null) {
                set.remove(this.f33458a.getId());
            }
            JumpLoaderResult jumpLoaderResult2 = null;
            if (obj != null) {
                try {
                    if (obj instanceof JumpLoaderResult) {
                        jumpLoaderResult = (JumpLoaderResult) obj;
                        try {
                            this.f33458a.setJumpResult(jumpLoaderResult);
                            a aVar = a.this;
                            aVar.a(this.f33458a, jumpLoaderResult, this.f33459b, aVar.f33446j, this.f33460c, (List<String>) this.f33461d);
                            if (jumpLoaderResult.isjumpDone()) {
                                com.mbridge.msdk.click.b.a(com.mbridge.msdk.foundation.db.d.a(a.this.f33439c), this.f33458a, a.this.f33437a);
                            }
                            a.this.a(this.f33462e, this.f33458a);
                        } catch (Throwable th3) {
                            th2 = th3;
                            o0.b("CommonClickControl", th2.getMessage());
                        }
                        jumpLoaderResult2 = jumpLoaderResult;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    jumpLoaderResult = null;
                }
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", "1");
                if (jumpLoaderResult2 != null) {
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult2.getStatusCode()));
                }
                CampaignEx campaignEx = this.f33458a;
                if (campaignEx != null) {
                    String clickURL = campaignEx.getClickURL();
                    if (TextUtils.isEmpty(clickURL)) {
                        StartsWith = -1;
                    } else {
                        StartsWith = clickURL.startsWith("tcp");
                    }
                } else {
                    StartsWith = -1;
                }
                eVar.a("net_ty", Integer.valueOf((int) StartsWith));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000138", this.f33458a, eVar);
            } catch (Throwable th5) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th5.getMessage());
                }
            }
        }

        @Override
        public void b(Object obj) {
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0065  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v10, types: [int] */
        /* JADX WARN: Type inference failed for: r6v21 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override
        public void a(Object obj, String str) {
            ?? StartsWith;
            Set<String> set = a.f33436p;
            if (set != null) {
                set.remove(this.f33458a.getId());
            }
            JumpLoaderResult jumpLoaderResult = null;
            if (obj != null) {
                try {
                    if (obj instanceof JumpLoaderResult) {
                        JumpLoaderResult jumpLoaderResult2 = (JumpLoaderResult) obj;
                        try {
                            a.this.a((JumpLoaderResult) obj, this.f33458a, true);
                            jumpLoaderResult = jumpLoaderResult2;
                        } catch (Throwable th2) {
                            th = th2;
                            jumpLoaderResult = jumpLoaderResult2;
                            o0.b("CommonClickControl", th.getMessage());
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (a.this.f33442f != null) {
                a.this.f33442f.onRedirectionFailed(this.f33458a, str);
            }
            a.this.a(this.f33462e, this.f33458a);
            try {
                CampaignEx campaignEx = this.f33458a;
                if (campaignEx != null) {
                    String clickURL = campaignEx.getClickURL();
                    if (TextUtils.isEmpty(clickURL)) {
                        StartsWith = -1;
                    } else {
                        StartsWith = clickURL.startsWith("tcp");
                    }
                } else {
                    StartsWith = -1;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", "2");
                eVar.a("net_ty", Integer.valueOf((int) StartsWith));
                if (jumpLoaderResult != null) {
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult.getStatusCode()));
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000138", this.f33458a, eVar);
            } catch (Throwable th4) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th4.getMessage());
                }
            }
        }
    }

    public void a(String str) {
        this.f33437a = str;
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f33442f = nativeTrackingListener;
    }

    public void a(j jVar) {
        this.f33449m = jVar;
    }

    public void a(boolean z10) {
        this.f33447k = z10;
    }

    public void a(CampaignEx campaignEx, NativeListener.NativeAdListener nativeAdListener) {
        if (nativeAdListener != null && campaignEx != null) {
            nativeAdListener.onAdClick(campaignEx);
        }
        a(campaignEx);
    }

    public void a(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            if (b(campaignEx)) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", campaignEx);
                String noticeUrl = campaignEx.getNoticeUrl();
                com.mbridge.msdk.foundation.db.d dVarA = com.mbridge.msdk.foundation.db.d.a(this.f33439c);
                dVarA.a();
                JumpLoaderResult jumpLoaderResultB = dVarA.b(campaignEx.getId(), this.f33437a);
                if (jumpLoaderResultB != null) {
                    if (jumpLoaderResultB.getNoticeurl() != null) {
                        jumpLoaderResultB.setNoticeurl(null);
                    }
                    campaignEx.setJumpResult(jumpLoaderResultB);
                    com.mbridge.msdk.click.b.a(dVarA, campaignEx, this.f33437a);
                }
                ArrayList arrayList = new ArrayList();
                AppletsModel appletsModel = AppletModelManager.getInstance().get(campaignEx);
                if (t0.b(campaignEx)) {
                    MIMManager.b().a(campaignEx);
                    arrayList.add(CampaignEx.JSON_KEY_DEEP_LINK_URL);
                    if (com.mbridge.msdk.click.c.d(this.f33440d, campaignEx.getDeepLinkURL())) {
                        NativeListener.NativeTrackingListener nativeTrackingListener = this.f33442f;
                        if (nativeTrackingListener != null) {
                            nativeTrackingListener.onStartRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, noticeUrl + "&opdptype=1", -1);
                        com.mbridge.msdk.click.b.a(campaignEx);
                        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f33442f;
                        if (nativeTrackingListener2 != null) {
                            nativeTrackingListener2.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        a(campaignEx, 3, 1, arrayList);
                        return;
                    }
                    noticeUrl = noticeUrl + "&opdptype=0";
                    MIMManager.b().b(campaignEx);
                }
                String str = noticeUrl;
                if (campaignEx.getLinkType() == 12) {
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f33442f;
                    if (nativeTrackingListener3 != null) {
                        nativeTrackingListener3.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, str, -1);
                    a(this.f33440d, campaignEx, arrayList);
                    NativeListener.NativeTrackingListener nativeTrackingListener4 = this.f33442f;
                    if (nativeTrackingListener4 != null) {
                        nativeTrackingListener4.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                if (appletsModel != null && appletsModel.isSupportWxScheme()) {
                    if (appletsModel.isRequestSuccess()) {
                        if (com.mbridge.msdk.click.c.d(this.f33440d, appletsModel.getDeepLink())) {
                            NativeListener.NativeTrackingListener nativeTrackingListener5 = this.f33442f;
                            if (nativeTrackingListener5 != null) {
                                nativeTrackingListener5.onStartRedirection(campaignEx, campaignEx.getClickURL());
                            }
                            if (this.f33440d != null) {
                                Intent intent = new Intent();
                                intent.setAction("mb_dp_close_broadcast_receiver");
                                try {
                                    this.f33440d.sendBroadcast(intent);
                                } catch (Exception e10) {
                                    if (MBridgeConstans.DEBUG) {
                                        o0.b("CommonClickControl", e10.getMessage());
                                    }
                                }
                            }
                            com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, str + "&opdptype=1", -1);
                            com.mbridge.msdk.click.b.a(campaignEx);
                            NativeListener.NativeTrackingListener nativeTrackingListener6 = this.f33442f;
                            if (nativeTrackingListener6 != null) {
                                nativeTrackingListener6.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                                return;
                            }
                            return;
                        }
                        str = str + "&opdptype=0";
                    } else {
                        if (appletsModel.isRequesting()) {
                            NativeListener.NativeTrackingListener nativeTrackingListener7 = this.f33442f;
                            if (nativeTrackingListener7 != null) {
                                nativeTrackingListener7.onStartRedirection(campaignEx, campaignEx.getClickURL());
                            }
                            appletsModel.setAppletSchemeCallBack(a(this.f33442f, campaignEx, appletsModel, this));
                            return;
                        }
                        if (appletsModel.can(1)) {
                            if (appletsModel.isRequestTimesMaxPerDay()) {
                                if (!TextUtils.isEmpty(appletsModel.getReBuildClickUrl())) {
                                    campaignEx.setClickURL(appletsModel.getReBuildClickUrl());
                                }
                            } else {
                                NativeListener.NativeTrackingListener nativeTrackingListener8 = this.f33442f;
                                if (nativeTrackingListener8 != null) {
                                    nativeTrackingListener8.onStartRedirection(campaignEx, campaignEx.getClickURL());
                                }
                                appletsModel.requestWxAppletsScheme(1, a(this.f33442f, campaignEx, appletsModel, this));
                                return;
                            }
                        }
                    }
                }
                if (com.mbridge.msdk.util.b.b()) {
                    com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, str, -1);
                }
                if (!campaignEx.getUserActivation() && com.mbridge.msdk.click.c.a(this.f33440d, campaignEx.getPackageName())) {
                    com.mbridge.msdk.click.c.b(this.f33440d, campaignEx.getPackageName());
                    if (com.mbridge.msdk.util.b.a()) {
                        com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, str, com.mbridge.msdk.foundation.same.a.N);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener9 = this.f33442f;
                    if (nativeTrackingListener9 != null) {
                        nativeTrackingListener9.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    if (com.mbridge.msdk.util.b.a()) {
                        a(campaignEx, true, Boolean.TRUE, (List<String>) arrayList);
                    } else {
                        a(campaignEx, true, (Boolean) null, (List<String>) arrayList);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener10 = this.f33442f;
                    if (nativeTrackingListener10 != null) {
                        nativeTrackingListener10.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        s0.a(this.f33442f);
                        return;
                    }
                    return;
                }
                int linkType = campaignEx.getLinkType();
                int iB = b();
                if (com.mbridge.msdk.util.b.a() && linkType != 3) {
                    com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, str, -1);
                }
                boolean z10 = linkType == 8 || linkType == 9 || linkType == 4;
                String clickURL = campaignEx.getClickURL();
                if (!TextUtils.isEmpty(clickURL) && (clickURL.startsWith("market://") || clickURL.startsWith("https://play.google.com/"))) {
                    arrayList.add("google_play");
                    NativeListener.NativeTrackingListener nativeTrackingListener11 = this.f33442f;
                    if (nativeTrackingListener11 != null) {
                        nativeTrackingListener11.onStartRedirection(campaignEx, campaignEx.getClickURL());
                    }
                    if (s0.a.a(this.f33440d, campaignEx.getClickURL(), this.f33442f)) {
                        a(jumpLoaderResultB, campaignEx, false);
                        NativeListener.NativeTrackingListener nativeTrackingListener12 = this.f33442f;
                        if (nativeTrackingListener12 != null) {
                            nativeTrackingListener12.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        }
                        a(campaignEx, 1, 1, arrayList);
                        return;
                    }
                    a(iB, campaignEx.getClickURL(), campaignEx, this.f33442f, arrayList);
                    a(jumpLoaderResultB, campaignEx, false);
                    NativeListener.NativeTrackingListener nativeTrackingListener13 = this.f33442f;
                    if (nativeTrackingListener13 != null) {
                        nativeTrackingListener13.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                if (!z10) {
                    if (linkType == 2) {
                        if (com.mbridge.msdk.util.b.a()) {
                            a(campaignEx, false, Boolean.TRUE, (List<String>) arrayList);
                            return;
                        } else {
                            a(campaignEx, false, (Boolean) null, (List<String>) arrayList);
                            return;
                        }
                    }
                    if (linkType == 3) {
                        arrayList.add("apk");
                        if (com.mbridge.msdk.util.b.a()) {
                            a(campaignEx, false, Boolean.TRUE, (List<String>) arrayList);
                            a(campaignEx, 2, 1, arrayList);
                            return;
                        } else {
                            a(campaignEx, false, (Boolean) null, (List<String>) arrayList);
                            return;
                        }
                    }
                    String clickURL2 = campaignEx.getClickURL();
                    NativeListener.NativeTrackingListener nativeTrackingListener14 = this.f33442f;
                    if (nativeTrackingListener14 != null) {
                        nativeTrackingListener14.onStartRedirection(campaignEx, clickURL2);
                    }
                    if (TextUtils.isEmpty(clickURL2)) {
                        NativeListener.NativeTrackingListener nativeTrackingListener15 = this.f33442f;
                        if (nativeTrackingListener15 != null) {
                            nativeTrackingListener15.onRedirectionFailed(campaignEx, clickURL2);
                        }
                        a(jumpLoaderResultB, campaignEx, true);
                        return;
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener16 = this.f33442f;
                    if (nativeTrackingListener16 != null) {
                        nativeTrackingListener16.onFinishRedirection(campaignEx, clickURL2);
                    }
                    s0.a(this.f33440d, clickURL2, this.f33442f, campaignEx, arrayList);
                    if (com.mbridge.msdk.util.b.a()) {
                        a(jumpLoaderResultB, campaignEx, false);
                        return;
                    } else {
                        a(jumpLoaderResultB, campaignEx, true);
                        return;
                    }
                }
                String clickURL3 = campaignEx.getClickURL();
                NativeListener.NativeTrackingListener nativeTrackingListener17 = this.f33442f;
                if (nativeTrackingListener17 != null) {
                    nativeTrackingListener17.onStartRedirection(campaignEx, clickURL3);
                }
                if (TextUtils.isEmpty(clickURL3)) {
                    NativeListener.NativeTrackingListener nativeTrackingListener18 = this.f33442f;
                    if (nativeTrackingListener18 != null) {
                        nativeTrackingListener18.onRedirectionFailed(campaignEx, clickURL3);
                    }
                    a(jumpLoaderResultB, campaignEx, true);
                    return;
                }
                if (linkType == 8) {
                    if (campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                        BaseTrackingListener baseTrackingListener = this.f33442f;
                        if (baseTrackingListener == null && (baseTrackingListener = this.f33449m) != null) {
                            baseTrackingListener.onStartRedirection(campaignEx, clickURL3);
                        }
                        s0.a(this.f33440d, clickURL3, campaignEx, this, baseTrackingListener, arrayList);
                    } else {
                        s0.a(this.f33440d, clickURL3, campaignEx, this.f33442f, arrayList);
                        NativeListener.NativeTrackingListener nativeTrackingListener19 = this.f33442f;
                        if (nativeTrackingListener19 != null) {
                            nativeTrackingListener19.onFinishRedirection(campaignEx, clickURL3);
                        }
                    }
                    a(jumpLoaderResultB, campaignEx, false);
                    return;
                }
                if (linkType == 9) {
                    s0.a(this.f33440d, clickURL3, this.f33442f, campaignEx, arrayList);
                    a(jumpLoaderResultB, campaignEx, false);
                    NativeListener.NativeTrackingListener nativeTrackingListener20 = this.f33442f;
                    if (nativeTrackingListener20 != null) {
                        nativeTrackingListener20.onFinishRedirection(campaignEx, clickURL3);
                        return;
                    }
                    return;
                }
                if (linkType == 4) {
                    if (iB == 2) {
                        s0.a(this.f33440d, clickURL3, campaignEx, this.f33442f, arrayList);
                    } else {
                        s0.a(this.f33440d, clickURL3, this.f33442f, campaignEx, arrayList);
                    }
                }
                NativeListener.NativeTrackingListener nativeTrackingListener21 = this.f33442f;
                if (nativeTrackingListener21 != null) {
                    nativeTrackingListener21.onFinishRedirection(campaignEx, clickURL3);
                }
                a(jumpLoaderResultB, campaignEx, false);
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", th2.getMessage(), th2);
            }
        }
    }

    private AppletSchemeCallBack a(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        return new h(nativeTrackingListener, campaignEx, appletsModel, aVar);
    }

    private void a(Context context, CampaignEx campaignEx, List<String> list) {
        if (context == null) {
            com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, 2, "context is null", this.f33437a);
            return;
        }
        boolean z10 = k0.D() == 1;
        boolean z11 = k0.D(context) == 1;
        if (z10 && z11) {
            String ghId = campaignEx.getGhId();
            String ghPath = campaignEx.getGhPath();
            String bindId = campaignEx.getBindId();
            String strI = com.mbridge.msdk.foundation.controller.c.m().i();
            if (!TextUtils.isEmpty(ghId)) {
                try {
                    if (!TextUtils.isEmpty(strI)) {
                        bindId = strI;
                    }
                    Object objD = k0.d(bindId);
                    Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
                    Object objNewInstance = cls.newInstance();
                    cls.getField("userName").set(objNewInstance, ghId);
                    cls.getField("path").set(objNewInstance, ghPath);
                    cls.getField("miniprogramType").set(objNewInstance, cls.getField("MINIPTOGRAM_TYPE_RELEASE").get(null));
                    Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq")).invoke(objD, objNewInstance);
                    com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 1, "", this.f33437a);
                    return;
                } catch (Throwable th2) {
                    com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, th2.getMessage(), this.f33437a);
                    a(campaignEx, list);
                    return;
                }
            }
            a(campaignEx, list);
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "ghid is empty", this.f33437a);
            return;
        }
        com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "integrated:" + z10 + "-hasWx:" + z11, this.f33437a);
        a(campaignEx, list);
    }

    private void a(CampaignEx campaignEx, List<String> list) {
        if (b() == 2) {
            s0.a(this.f33440d, campaignEx.getClickURL(), campaignEx, this.f33442f, list);
        } else {
            s0.a(this.f33440d, campaignEx.getClickURL(), this.f33442f, campaignEx, list);
        }
    }

    private void a(CampaignEx campaignEx, boolean z10, Boolean bool, List<String> list) {
        boolean z11;
        try {
            this.f33438b = System.currentTimeMillis();
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f33442f;
            if (nativeTrackingListener == null || z10) {
                z11 = true;
            } else {
                nativeTrackingListener.onStartRedirection(campaignEx, campaignEx.getClickURL());
                z11 = !this.f33442f.onInterceptDefaultLoadingDialog();
            }
            this.f33448l = false;
            boolean z12 = true;
            if (campaignEx.getJumpResult() != null) {
                if (!z10) {
                    a(campaignEx, campaignEx.getJumpResult(), true, this.f33446j, bool, list);
                }
                this.f33448l = true;
                this.f33446j = false;
                z12 = false;
            }
            if (!com.mbridge.msdk.foundation.db.d.a(this.f33439c).c(campaignEx.getId(), this.f33437a) || campaignEx.getJumpResult() == null) {
                com.mbridge.msdk.foundation.db.d dVarA = com.mbridge.msdk.foundation.db.d.a(this.f33439c);
                dVarA.a();
                JumpLoaderResult jumpLoaderResultB = dVarA.b(campaignEx.getId(), this.f33437a);
                if (jumpLoaderResultB != null && !z10) {
                    campaignEx.setJumpResult(jumpLoaderResultB);
                    if (z12) {
                        a(campaignEx, jumpLoaderResultB, z12, this.f33446j, bool, list);
                        this.f33448l = true;
                        this.f33446j = false;
                        z12 = false;
                    }
                } else {
                    if (campaignEx.getClick_mode().equals(PrepareException.ERROR_NO_URL) && !campaignEx.getPackageName().isEmpty() && campaignEx.getLinkType() == 2 && !z10) {
                        boolean zA = s0.a.a(this.f33440d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f33442f);
                        if (list != null) {
                            list.add("google_play");
                        }
                        if (zA) {
                            a(campaignEx, 1, 1, list);
                        }
                        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f33442f;
                        if (nativeTrackingListener2 != null && z12) {
                            nativeTrackingListener2.onDismissLoading(campaignEx);
                            this.f33442f.onFinishRedirection(campaignEx, null);
                        }
                        this.f33448l = true;
                        z12 = false;
                    }
                    if (z10) {
                        this.f33448l = true;
                        this.f33446j = false;
                        z12 = false;
                    }
                }
                new Handler(Looper.getMainLooper()).post(new c(z11, z10, campaignEx));
                com.mbridge.msdk.click.e eVar = this.f33441e;
                if (eVar != null) {
                    eVar.a();
                }
                Set<String> set = f33436p;
                if (set != null && set.contains(campaignEx.getId())) {
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f33442f;
                    if (nativeTrackingListener3 != null) {
                        nativeTrackingListener3.onDismissLoading(campaignEx);
                        this.f33442f.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                Set<String> set2 = f33436p;
                if (set2 != null) {
                    set2.add(campaignEx.getId());
                }
                com.mbridge.msdk.click.e eVar2 = new com.mbridge.msdk.click.e(this.f33440d);
                this.f33441e = eVar2;
                eVar2.a(this.f33437a, campaignEx, new d(campaignEx, z12, bool, list, z11));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(boolean z10, Campaign campaign) {
        new Handler(Looper.getMainLooper()).post(new e(z10, campaign));
    }

    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, int i10, boolean z10) {
        if (campaignEx == null || jumpLoaderResult == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f33438b;
            com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e();
            int iS = k0.s(this.f33440d);
            eVar.e(iS);
            eVar.h(k0.a(this.f33440d, iS));
            eVar.i(campaignEx.getRequestId());
            eVar.j(campaignEx.getRequestIdNotice());
            eVar.a(i10);
            eVar.c(jCurrentTimeMillis + "");
            eVar.a(campaignEx.getId());
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            eVar.b((this.f33438b / 1000) + "");
            eVar.c(Integer.parseInt(campaignEx.getLandingType()));
            eVar.d(campaignEx.getLinkType());
            eVar.k(this.f33437a);
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            if (this.f33445i) {
                eVar.b(jumpLoaderResult.getStatusCode());
                if (!TextUtils.isEmpty(jumpLoaderResult.getHeader())) {
                    eVar.f(URLEncoder.encode(jumpLoaderResult.getHeader(), "utf-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getContent())) {
                    eVar.d(URLEncoder.encode(jumpLoaderResult.getContent(), "UTF-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getExceptionMsg())) {
                    eVar.e(URLEncoder.encode(jumpLoaderResult.getExceptionMsg(), "utf-8"));
                }
            }
            if (z10) {
                this.f33443g.a("click_jump_error", eVar, this.f33437a);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(eVar);
            ArrayList<JSONObject> arrayListA = com.mbridge.msdk.foundation.entity.e.a(arrayList);
            if (arrayListA == null || arrayListA.isEmpty()) {
                return;
            }
            Iterator<JSONObject> it = arrayListA.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(it.next());
            }
        } catch (Throwable th2) {
            o0.b("CommonClickControl", th2.getMessage());
        }
    }

    public void a(Campaign campaign, String str) {
        try {
            if (!TextUtils.isEmpty(str) && campaign != null) {
                CampaignEx campaignEx = campaign instanceof CampaignEx ? (CampaignEx) campaign : null;
                if (!str.startsWith("market://") && !str.startsWith("https://play.google.com/")) {
                    com.mbridge.msdk.click.b.a(str, this.f33440d, this.f33437a, campaignEx, this.f33442f);
                    return;
                }
                if (s0.a.a(this.f33440d, str, this.f33442f) || campaignEx == null) {
                    return;
                }
                if (!TextUtils.isEmpty(campaignEx.getPackageName())) {
                    s0.a.a(this.f33440d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f33442f);
                    return;
                }
                if (b() == 2) {
                    s0.a(this.f33440d, campaignEx.getClickURL(), campaignEx, this.f33442f, new ArrayList());
                } else {
                    s0.a(this.f33440d, campaignEx.getClickURL(), this.f33442f, campaignEx, new ArrayList());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, boolean z10) {
        a(jumpLoaderResult, campaignEx, 1, z10);
    }

    private void a(int i10, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener, List<String> list) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (i10 == 2) {
                    s0.a(this.f33440d, str, campaignEx, nativeTrackingListener, list);
                } else {
                    s0.a(this.f33440d, str, nativeTrackingListener, campaignEx, list);
                }
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", th2.getMessage(), th2);
            }
        }
    }

    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, int i10, List<String> list) {
        boolean z11 = true;
        boolean z12 = false;
        if (z10) {
            try {
                int i11 = Integer.parseInt(campaignEx.getLandingType());
                if (i11 == 1) {
                    s0.a(this.f33440d, jumpLoaderResult.getUrl(), this.f33442f, campaignEx, list);
                } else if (i11 == 2) {
                    s0.a(this.f33440d, jumpLoaderResult.getUrl(), campaignEx, this.f33442f, list);
                } else if (campaignEx.getPackageName() != null) {
                    if (s0.a.a(this.f33440d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f33442f)) {
                        if (list != null) {
                            try {
                                list.add("google_play");
                            } catch (Throwable th2) {
                                th = th2;
                                if (MBridgeConstans.DEBUG) {
                                    o0.b("CommonClickControl", th.getMessage(), th);
                                }
                                return z11;
                            }
                        }
                        a(campaignEx, 1, 1, list);
                    } else {
                        a(i10, jumpLoaderResult.getUrl(), campaignEx, this.f33442f, list);
                    }
                } else {
                    a(i10, jumpLoaderResult.getUrl(), campaignEx, this.f33442f, list);
                }
                z12 = true;
            } catch (Throwable th3) {
                th = th3;
                z11 = false;
            }
        }
        if (z12) {
            a(jumpLoaderResult, campaignEx, true);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f33442f;
            if (nativeTrackingListener == null) {
                return z12;
            }
            nativeTrackingListener.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
            return z12;
        }
        a(jumpLoaderResult, campaignEx, true);
        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f33442f;
        if (nativeTrackingListener2 == null || !z10) {
            return z12;
        }
        nativeTrackingListener2.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
        return z12;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0044 A[Catch: all -> 0x0018, TRY_LEAVE, TryCatch #0 {all -> 0x0018, blocks: (B:4:0x0004, B:6:0x000a, B:9:0x001a, B:10:0x0026, B:12:0x002b, B:14:0x002f, B:15:0x0037, B:17:0x003d, B:18:0x0040, B:20:0x0044), top: B:26:0x0004 }] */
    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, List<String> list) {
        NativeListener.NativeTrackingListener nativeTrackingListener;
        NativeListener.NativeTrackingListener nativeTrackingListener2;
        boolean z11 = false;
        if (z10) {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    com.mbridge.msdk.click.b.a(this.f33440d, this.f33437a, campaignEx, campaignEx.getNoticeUrl(), com.mbridge.msdk.foundation.same.a.M);
                }
                s0.a(this.f33440d, campaignEx.getClickURL(), this.f33442f, campaignEx, list);
                z11 = true;
                a(jumpLoaderResult, campaignEx, true);
                if (z11) {
                    nativeTrackingListener2 = this.f33442f;
                    if (nativeTrackingListener2 != null) {
                        nativeTrackingListener2.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                    }
                } else {
                    if (com.mbridge.msdk.util.b.a()) {
                        a(jumpLoaderResult, campaignEx, true);
                    }
                    nativeTrackingListener = this.f33442f;
                    if (nativeTrackingListener != null) {
                        nativeTrackingListener.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th2.getMessage(), th2);
                }
            }
        } else {
            a(jumpLoaderResult, campaignEx, true);
            if (z11) {
                nativeTrackingListener2 = this.f33442f;
                if (nativeTrackingListener2 != null) {
                    nativeTrackingListener2.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                }
            } else {
                if (com.mbridge.msdk.util.b.a()) {
                    a(jumpLoaderResult, campaignEx, true);
                }
                nativeTrackingListener = this.f33442f;
                if (nativeTrackingListener != null) {
                    nativeTrackingListener.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
                }
            }
        }
        return z11;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00f4 A[Catch: Exception -> 0x003c, TryCatch #0 {Exception -> 0x003c, blocks: (B:3:0x000a, B:6:0x000f, B:10:0x001a, B:12:0x0024, B:14:0x002a, B:18:0x003f, B:21:0x004d, B:23:0x0053, B:26:0x0067, B:28:0x006b, B:30:0x007d, B:33:0x0087, B:35:0x0091, B:37:0x009b, B:40:0x00ab, B:42:0x00b9, B:49:0x0103, B:52:0x0109, B:75:0x0178, B:77:0x0186, B:79:0x018e, B:83:0x0196, B:78:0x018b, B:44:0x00cb, B:46:0x00d5, B:48:0x00f4, B:56:0x0117, B:58:0x012e, B:61:0x0134, B:64:0x0140, B:66:0x0146, B:68:0x014a, B:70:0x0150, B:72:0x0162, B:74:0x0171, B:85:0x01a0, B:87:0x01a7), top: B:91:0x000a }] */
    public void a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, boolean z11, Boolean bool, List<String> list) {
        try {
            if (this.f33447k) {
                com.mbridge.msdk.click.b.a();
                boolean z12 = true;
                if (campaignEx == null || jumpLoaderResult == null) {
                    if (z10) {
                        a(jumpLoaderResult, campaignEx, true);
                        NativeListener.NativeTrackingListener nativeTrackingListener = this.f33442f;
                        if (nativeTrackingListener != null) {
                            nativeTrackingListener.onRedirectionFailed(null, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                int iB = b();
                int code = jumpLoaderResult.getCode();
                if (bool != null && !bool.booleanValue()) {
                    com.mbridge.msdk.click.b.a(jumpLoaderResult, this.f33440d, this.f33437a, campaignEx, Boolean.FALSE, this.f33442f, list);
                    return;
                }
                if (TextUtils.isEmpty(jumpLoaderResult.getUrl()) && z10) {
                    int linkType = campaignEx.getLinkType();
                    if (linkType == 2) {
                        a(campaignEx, jumpLoaderResult, z10, b(), list);
                        return;
                    }
                    if (linkType == 3) {
                        a(campaignEx, jumpLoaderResult, z10, list);
                        return;
                    }
                    s0.a(this.f33440d, campaignEx.getClickURL(), this.f33442f, campaignEx, list);
                    a(jumpLoaderResult, campaignEx, true);
                    NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f33442f;
                    if (nativeTrackingListener2 != null) {
                        nativeTrackingListener2.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                        return;
                    }
                    return;
                }
                if (code == 1) {
                    if (TextUtils.isEmpty(campaignEx.getPackageName()) || TextUtils.isEmpty(jumpLoaderResult.getUrl()) || !jumpLoaderResult.getUrl().contains(campaignEx.getPackageName()) || !z10) {
                        if (z10) {
                            if (TextUtils.isEmpty(campaignEx.getPackageName())) {
                                a(iB, jumpLoaderResult.getUrl(), campaignEx, this.f33442f, list);
                            } else {
                                if (!s0.a.a(this.f33440d, MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + campaignEx.getPackageName(), this.f33442f)) {
                                    a(iB, jumpLoaderResult.getUrl(), campaignEx, this.f33442f, list);
                                }
                            }
                        }
                    } else if (!s0.a.a(this.f33440d, jumpLoaderResult.getUrl(), this.f33442f)) {
                        a(iB, jumpLoaderResult.getUrl(), campaignEx, this.f33442f, list);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f33442f;
                    if (nativeTrackingListener3 != null && z10) {
                        nativeTrackingListener3.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                    }
                    z12 = true;
                } else if (code == 3) {
                    if (z10) {
                        com.mbridge.msdk.click.b.a(this.f33440d, campaignEx, this.f33437a, jumpLoaderResult, bool, this.f33442f, list);
                    }
                    NativeListener.NativeTrackingListener nativeTrackingListener4 = this.f33442f;
                    if (nativeTrackingListener4 != null && z10) {
                        nativeTrackingListener4.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                    }
                } else {
                    z12 = true;
                    if (z10) {
                        if (3 == campaignEx.getLinkType()) {
                            a(campaignEx, jumpLoaderResult, z10, list);
                            return;
                        } else {
                            if (2 == campaignEx.getLinkType()) {
                                a(campaignEx, jumpLoaderResult, z10, b(), list);
                                return;
                            }
                            s0.a(this.f33440d, jumpLoaderResult.getUrl(), this.f33442f, campaignEx, list);
                            NativeListener.NativeTrackingListener nativeTrackingListener5 = this.f33442f;
                            if (nativeTrackingListener5 != null) {
                                nativeTrackingListener5.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                            }
                        }
                    }
                }
                if (a(campaignEx.getLinkType(), jumpLoaderResult.getUrl())) {
                    a(jumpLoaderResult, campaignEx, false);
                } else {
                    a(jumpLoaderResult, campaignEx, z12);
                }
                NativeListener.NativeTrackingListener nativeTrackingListener6 = this.f33442f;
                if (nativeTrackingListener6 == null || z10 || !z11) {
                    return;
                }
                nativeTrackingListener6.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0017 -> B:15:0x0018). Please report as a decompilation issue!!! */
    private boolean a(int i10, String str) {
        boolean z10;
        try {
            if (i10 == 2) {
                if (s0.a.b(str)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else if (TextUtils.isEmpty(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return z10;
    }

    public void a() {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            this.f33440d.sendBroadcast(intent);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", "Exception", e10);
            }
        }
    }

    private void a(CampaignEx campaignEx, int i10, int i11, List<String> list) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i10));
            eVar.a("result", Integer.valueOf(i11));
            if (list != null) {
                eVar.a("click_path", list.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", e10.getMessage());
            }
        }
    }
}
