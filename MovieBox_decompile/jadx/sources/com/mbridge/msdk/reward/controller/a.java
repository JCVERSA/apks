package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

public class a {

    public static String f36231b0 = "";

    public static String f36232c0;

    private static ConcurrentHashMap<String, Integer> f36233d0 = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, String> f36234e0 = new ConcurrentHashMap<>();

    public static ConcurrentHashMap<String, i> f36235f0 = new ConcurrentHashMap<>();
    private Queue<Integer> I;
    private String J;
    private CopyOnWriteArrayList<CampaignEx> S;
    private List<CampaignEx> T;

    private Context f36236a;

    private com.mbridge.msdk.reward.adapter.c f36238b;

    private com.mbridge.msdk.videocommon.setting.c f36239c;

    private com.mbridge.msdk.videocommon.setting.a f36240d;

    private volatile InterVideoOutListener f36241e;

    private volatile h f36242f;

    private String f36243g;

    private String f36244h;

    private MBridgeIds f36245i;

    g f36246j;

    private String f36247k;

    private volatile String f36248l;

    private String f36249m;

    private int f36253q;

    private int f36254r;

    private int f36255s;

    private boolean f36260x;

    private int f36250n = 0;

    private int f36252p = 2;

    private boolean f36256t = false;

    private boolean f36257u = false;

    private boolean f36258v = false;

    private boolean f36259w = false;

    private boolean f36261y = false;

    private String f36262z = "";
    private String A = "";
    private ArrayList<Integer> B = new ArrayList<>(7);
    private boolean C = false;
    private final Object D = new Object();
    public boolean E = false;
    int F = 25;
    int G = 1;
    private List<CampaignEx> H = new ArrayList();
    private com.mbridge.msdk.foundation.db.g K = null;
    private volatile boolean L = true;
    private volatile boolean M = false;
    private volatile boolean N = false;
    private volatile boolean O = false;
    private volatile boolean P = false;
    private volatile boolean Q = false;
    private volatile boolean R = false;
    volatile boolean U = false;
    volatile boolean V = false;
    volatile boolean W = false;
    volatile boolean X = false;
    volatile boolean Y = false;
    private JSONArray Z = new JSONArray();

    private int f36237a0 = 1;

    private Handler f36251o = new com.mbridge.msdk.reward.controller.b(this);

    class C0502a implements com.mbridge.msdk.videocommon.net.c {
        C0502a() {
        }

        @Override
        public void a(String str) {
        }

        @Override
        public void onFailed(String str) {
        }
    }

    class c implements com.mbridge.msdk.reward.adapter.b.n {

        com.mbridge.msdk.foundation.same.report.metrics.c f36283a;

        final CampaignEx f36284b;

        final CopyOnWriteArrayList f36285c;

        final boolean f36286d;

        final int f36287e;

        c(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z10, int i10) {
            this.f36284b = campaignEx;
            this.f36285c = copyOnWriteArrayList;
            this.f36286d = z10;
            this.f36287e = i10;
            this.f36283a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override
        public void a(String str, String str2, String str3, String str4) {
        }

        @Override
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String unitId = bVar == null ? "" : bVar.e().getUnitId();
            a aVar = a.this;
            aVar.c(unitId, (List<CampaignEx>) aVar.T);
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (this.f36283a == null) {
                this.f36283a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f36283a.b(this.f36285c);
            this.f36283a.a(bVar);
            if (!this.f36286d && a.this.f36242f != null) {
                if (a.this.X) {
                    return;
                }
                a.this.X = true;
                a.this.f36242f.b(bVar, this.f36283a);
                return;
            }
            if (this.f36287e != 1 || a.this.X || a.this.f36242f == null) {
                return;
            }
            a.this.X = true;
            a.this.f36242f.b(bVar, this.f36283a);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            try {
                if (a.this.K == null) {
                    a.this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                com.mbridge.msdk.foundation.db.h hVarA = com.mbridge.msdk.foundation.db.h.a(a.this.K);
                if (hVarA != null) {
                    hVarA.b(a.this.f36244h);
                }
            } catch (Throwable unused) {
                o0.b("RewardVideoController", "can't find DailyPlayCapDao");
            }
        }
    }

    public class f implements Runnable {

        private final com.mbridge.msdk.reward.adapter.c f36302a;

        private final int f36303b;

        private final boolean f36304c;

        private boolean f36305d = false;

        private int f36306e;

        private String f36307f;

        private com.mbridge.msdk.foundation.same.report.metrics.c f36308g;

        public f(com.mbridge.msdk.reward.adapter.c cVar, int i10, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar2) {
            this.f36302a = cVar;
            this.f36303b = i10;
            this.f36304c = z10;
            if (cVar != null) {
                cVar.c(false);
            }
            this.f36307f = str;
            this.f36308g = cVar2;
        }

        public void a() {
            this.f36305d = true;
        }

        @Override
        public void run() {
            if (this.f36305d) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.f36302a;
            if (cVar != null) {
                cVar.c(true);
            }
            o0.b("RewardVideoController", "adSource=" + this.f36303b + " CommonCancelTimeTask mIsDevCall：" + this.f36304c);
            a.this.a(com.mbridge.msdk.foundation.error.a.a(880023, "v3 is timeout"), this.f36308g);
        }

        public void a(int i10) {
            this.f36306e = i10;
        }
    }

    public class g implements com.mbridge.msdk.reward.adapter.a {

        private com.mbridge.msdk.reward.adapter.c f36310a;

        private boolean f36311b;

        private f f36312c;

        public g(com.mbridge.msdk.reward.adapter.c cVar, boolean z10) {
            this.f36310a = cVar;
            this.f36311b = z10;
        }

        public void a(f fVar) {
            this.f36312c = fVar;
        }

        @Override
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f36312c;
            if (fVar != null) {
                fVar.a();
                a.this.f36251o.removeCallbacks(this.f36312c);
            }
            if (a.this.f36242f != null) {
                a.this.f36242f.a(a.this.f36248l, a.this.f36244h, cVar);
            }
        }

        @Override
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f36312c;
            if (fVar != null) {
                fVar.a();
                a.this.f36251o.removeCallbacks(this.f36312c);
            }
            a.this.a(list);
            if (a.this.f36242f != null) {
                if (list != null && list.size() == 1) {
                    CampaignEx campaignEx = list.get(0);
                    if (!com.mbridge.msdk.foundation.same.c.a(a.this.f36236a, campaignEx) && campaignEx.getFilterAdsVideoCallState() == 0) {
                        if (a.this.f36237a0 <= 1) {
                            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, "load exception second");
                            if (cVar != null) {
                                cVar.a(bVarA);
                                cVar.b(true);
                            }
                            a.this.f36242f.a(bVarA, cVar);
                            return;
                        }
                        a.m(a.this);
                        return;
                    }
                }
                a.this.f36242f.c(a.this.f36248l, a.this.f36244h, cVar);
            }
        }

        @Override
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f36312c;
            if (fVar != null) {
                fVar.a();
                a.this.f36251o.removeCallbacks(this.f36312c);
            }
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f36310a;
            if (cVar2 != null) {
                cVar2.a((com.mbridge.msdk.reward.adapter.a) null);
                this.f36310a = null;
            }
            a.this.a(list);
            if (a.this.f36242f != null) {
                a.this.f36242f.a(bVar, cVar);
            }
        }
    }

    public final class h {

        private WeakReference<InterVideoOutListener> f36314a;

        private volatile AtomicInteger f36315b;

        private Handler f36316c;

        private String f36317d;

        private boolean f36318e;

        h(a aVar, InterVideoOutListener interVideoOutListener, Handler handler, String str, C0502a c0502a) {
            this(interVideoOutListener, handler, str);
        }

        public void c(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            Handler handler = this.f36316c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f36315b.get() == 2 || this.f36316c == null) {
                return;
            }
            a.m(a.this);
            this.f36315b.set(2);
            if (a.this.O) {
                return;
            }
            a.this.O = true;
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar.b(a.this.H);
            a.this.a("2000048", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putString("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.f36316c.sendMessage(messageObtain);
            }
        }

        public void d(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            Handler handler = this.f36316c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f36315b.get() == 2 || this.f36316c == null) {
                return;
            }
            if (this.f36315b.get() == 1) {
                this.f36315b.set(3);
            }
            if (a.this.O) {
                return;
            }
            a.this.O = true;
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar.a(true);
            cVar.b(a.this.H);
            a.this.a("2000048", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putSerializable("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.f36316c.sendMessage(messageObtain);
            }
            if (a.this.P) {
                this.f36315b.set(2);
            }
        }

        private h(InterVideoOutListener interVideoOutListener, Handler handler, String str) {
            this.f36314a = new WeakReference<>(interVideoOutListener);
            this.f36315b = new AtomicInteger(0);
            this.f36316c = handler;
            this.f36317d = str;
        }

        public void b(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f36316c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, true);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 17;
                this.f36316c.sendMessage(messageObtain);
                if (q0.a().a("l_s_i_l_v_s", false)) {
                    d(str, str2, cVar);
                }
            }
        }

        public int a() {
            return this.f36315b.get();
        }

        public void a(int i10) {
            this.f36315b.set(i10);
        }

        public void a(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if ((this.f36315b.get() != 1 && this.f36315b.get() != 3) || this.f36316c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, false);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 17;
                this.f36316c.sendMessage(messageObtain);
                if (q0.a().a("l_s_i_l_v_s", false)) {
                    c(str, str2, cVar);
                }
            }
        }

        public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            a.this.a("2000047", cVar, weakReference != null ? weakReference.get() : null);
            if (this.f36316c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 18;
                if (cVar != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("metrics_data_lrid", cVar.o());
                    messageObtain.setData(bundle);
                }
                this.f36316c.sendMessage(messageObtain);
            }
        }

        public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String strG;
            CampaignEx campaignEx;
            if (bVar != null && cVar != null) {
                strG = bVar.g();
                cVar.a(bVar);
            } else {
                strG = "";
            }
            if (a.this.f36238b != null && a.this.f36237a0 == 1) {
                a.this.f36238b.a(a.this.f36246j);
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListF = a.this.f36238b.f();
                CampaignEx campaignEx2 = (a.this.H == null || a.this.H.size() == 0) ? null : (CampaignEx) a.this.H.get(0);
                if (campaignEx2 != null) {
                    campaignEx = campaignEx2;
                } else if (copyOnWriteArrayListF == null || copyOnWriteArrayListF.size() == 0) {
                    campaignEx = null;
                } else {
                    campaignEx2 = copyOnWriteArrayListF.get(0);
                    campaignEx = campaignEx2;
                }
                if (a.this.f36257u && ((campaignEx == null || TextUtils.isEmpty(campaignEx.getNLRid())) && ((copyOnWriteArrayListF == null || copyOnWriteArrayListF.size() == 0) && a.this.f36238b.a(campaignEx, true, bVar, 2, cVar)))) {
                    return;
                } else {
                    a.this.f36238b.a((com.mbridge.msdk.reward.adapter.a) null);
                }
            }
            Handler handler = this.f36316c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f36315b.get() == 2 || this.f36316c == null) {
                return;
            }
            a.this.P = true;
            if (!a.this.R || strG.contains("resource load timeout")) {
                a.this.Q = true;
            }
            if (a.this.O) {
                this.f36315b.set(2);
            }
            if (a.this.P && a.this.Q && !a.this.O) {
                if (a.this.f36237a0 > 1) {
                    a.m(a.this);
                    a.this.f36238b.a(a.this.f36246j);
                    return;
                }
                this.f36315b.set(2);
                a.this.a("2000047", cVar, interVideoOutListener);
                if (interVideoOutListener != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.obj = strG;
                    messageObtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        messageObtain.setData(bundle);
                    }
                    this.f36316c.sendMessage(messageObtain);
                }
            }
        }

        public void b(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String strG;
            WeakReference<InterVideoOutListener> weakReference = this.f36314a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f36315b.get() == 2 || this.f36316c == null) {
                return;
            }
            a.this.Q = true;
            if (bVar != null) {
                strG = bVar.g();
            } else {
                strG = "";
            }
            if (strG.contains("resource load timeout")) {
                a.this.P = true;
            }
            if (a.this.Q && a.this.P && !a.this.O) {
                this.f36315b.set(2);
                if (interVideoOutListener != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.obj = strG;
                    messageObtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        messageObtain.setData(bundle);
                    }
                    this.f36316c.sendMessage(messageObtain);
                }
                if (cVar == null) {
                    cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                cVar.a(true);
                a.this.a("2000047", cVar, interVideoOutListener);
            }
        }

        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f36315b.set(2);
            b(str, cVar);
        }

        public void a(boolean z10) {
            this.f36318e = z10;
        }
    }

    public final class i extends com.mbridge.msdk.video.bt.module.orglistener.b {

        private a f36320c;

        private Handler f36321d;

        private int f36322e;

        class RunnableC0509a implements Runnable {
            RunnableC0509a() {
            }

            @Override
            public void run() {
                if (i.this.f36320c != null) {
                    i.this.f36320c.a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, a.this.f36256t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, a.this.f36244h, true, 1));
                }
            }
        }

        i(a aVar, a aVar2, Handler handler, C0502a c0502a) {
            this(aVar2, handler);
        }

        @Override
        public void b(String str, String str2) {
            try {
                a aVar = this.f36320c;
                if (aVar == null || aVar.f36241e == null) {
                    return;
                }
                try {
                    this.f36320c.f36241e.onVideoComplete(a.this.f36245i);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e10.getMessage());
                    }
                }
                this.f36322e = 5;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        public void e() {
            a.this.B.clear();
            this.f36320c = null;
        }

        private i(a aVar, Handler handler) {
            this.f36322e = 0;
            this.f36320c = aVar;
            this.f36321d = handler;
        }

        @Override
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.E = false;
            try {
                com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(a.this.f36244h, a.this.f36256t);
                a aVar2 = this.f36320c;
                aVar.a(cVar.o(), (aVar2 == null || aVar2.f36238b == null) ? "" : this.f36320c.f36238b.H, 3, a.f36231b0);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e10.getMessage());
                }
            }
            try {
                a aVar3 = this.f36320c;
                if (aVar3 != null) {
                    aVar3.C = true;
                    if (this.f36320c.f36238b != null) {
                        this.f36320c.f36238b.H = "";
                    }
                    this.f36320c.q();
                    if (a.this.f36257u) {
                        a.this.a();
                    }
                    a aVar4 = a.this;
                    aVar4.a("2000130", cVar, aVar4.f36241e, "");
                    b();
                    if (this.f36320c.f36241e != null) {
                        this.f36320c.f36241e.onAdShow(a.this.f36245i);
                        this.f36322e = 2;
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", th2.getMessage());
                }
            }
        }

        @Override
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
            try {
                a aVar = this.f36320c;
                if (aVar != null && aVar.f36241e != null) {
                    if (cVar2 == null) {
                        cVar2 = com.mbridge.msdk.videocommon.entity.c.a(this.f36320c.f36249m);
                    }
                    if (a.this.f36257u) {
                        a.this.a();
                        a.this.v();
                        com.mbridge.msdk.foundation.same.buffer.b.d(a.this.f36244h, a.this.m());
                    }
                    this.f36320c.f36241e.onAdClose(a.this.f36245i, new RewardInfo(z10, cVar2.c(), String.valueOf(cVar2.a())));
                    this.f36322e = 7;
                    this.f36320c.C = false;
                    e();
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().b("2000152", cVar, null);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e10.getMessage());
                }
            }
        }

        @Override
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
            try {
                a aVar = a.this;
                aVar.E = false;
                if (this.f36320c != null) {
                    if (aVar.f36257u) {
                        a.this.a();
                    }
                    this.f36320c.C = false;
                    a.this.a("2000131", cVar, this.f36320c.f36241e, str);
                    a();
                    if (this.f36320c.f36241e != null) {
                        try {
                            this.f36320c.f36241e.onShowFail(cVar, a.this.f36245i, str);
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e10.getMessage());
                            }
                        }
                        this.f36322e = 4;
                    }
                }
            } catch (Exception e11) {
                this.f36322e = 0;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override
        public void a(boolean z10, String str, String str2) {
            try {
                a aVar = this.f36320c;
                if (aVar == null || aVar.f36241e == null) {
                    return;
                }
                if (a.this.f36257u) {
                    a.this.a();
                }
                this.f36320c.C = false;
                try {
                    this.f36320c.f36241e.onVideoAdClicked(z10, a.this.f36245i);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e10.getMessage());
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override
        public void a(boolean z10, int i10) {
            try {
                a aVar = this.f36320c;
                if (aVar != null && aVar.f36241e != null) {
                    try {
                        this.f36320c.f36241e.onAdCloseWithIVReward(a.this.f36245i, new RewardInfo(z10, i10));
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e10.getMessage());
                        }
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override
        public void a(String str, String str2) {
            try {
                a aVar = this.f36320c;
                if (aVar == null || aVar.f36241e == null) {
                    return;
                }
                try {
                    this.f36320c.f36241e.onEndcardShow(a.this.f36245i);
                    com.mbridge.msdk.foundation.feedback.b.b().a(str2 + "_2", 2);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e10.getMessage());
                    }
                }
                this.f36322e = 6;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override
        public void a(int i10, String str, String str2) {
            this.f36322e = i10;
            a aVar = this.f36320c;
            if (aVar == null || aVar.f36257u || this.f36320c.f36256t || this.f36320c.f36239c == null || !this.f36320c.f36239c.a(this.f36322e) || this.f36320c.f36242f == null || this.f36320c.f36242f.a() == 1 || this.f36320c.f36242f.a() == 3 || a.this.B.contains(Integer.valueOf(this.f36322e))) {
                return;
            }
            a.this.B.add(Integer.valueOf(this.f36322e));
            int iF = this.f36320c.f36239c.f() * 1000;
            if (this.f36322e == 4) {
                iF = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
            }
            Handler handler = this.f36321d;
            if (handler != null) {
                handler.removeMessages(1001001);
                this.f36321d.sendEmptyMessageDelayed(1001001, iF);
            } else {
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0509a(), iF);
            }
        }
    }

    public class j {
        public j() {
        }

        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f36237a0++;
            a aVar = a.this;
            aVar.b(aVar.f36260x, str, cVar);
        }
    }

    static int m(a aVar) {
        int i10 = aVar.f36237a0;
        aVar.f36237a0 = i10 - 1;
        return i10;
    }

    private void w() {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f36236a)).b(this.f36244h);
    }

    private void x() {
        try {
            List<CampaignEx> listC = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f36236a)).c(this.f36244h);
            if (listC == null || listC.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : listC) {
                if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                } else {
                    com.mbridge.msdk.videocommon.a.e(this.f36244h + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl());
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        com.mbridge.msdk.videocommon.a.e(this.f36244h + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e10.getMessage());
            }
        }
    }

    public void f(boolean z10) {
        this.f36261y = z10;
    }

    public MBridgeIds g() {
        return this.f36245i;
    }

    public List<CampaignEx> h() {
        return this.T;
    }

    public CopyOnWriteArrayList<CampaignEx> i() {
        return this.S;
    }

    public String j() {
        com.mbridge.msdk.reward.adapter.c cVar = this.f36238b;
        return cVar != null ? cVar.g() : "";
    }

    public h k() {
        return this.f36242f;
    }

    public String l() {
        return this.f36248l;
    }

    public String m() {
        com.mbridge.msdk.reward.adapter.c cVar = this.f36238b;
        return cVar != null ? cVar.a(this.C) : "";
    }

    public com.mbridge.msdk.reward.adapter.c n() {
        return this.f36238b;
    }

    public InterVideoOutListener o() {
        return this.f36241e;
    }

    public String p() {
        return this.f36244h;
    }

    public void q() {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e());
    }

    public boolean r() {
        return this.f36257u;
    }

    public boolean s() {
        return this.f36260x;
    }

    public boolean t() {
        return this.f36256t;
    }

    public boolean u() {
        return (this.f36241e == null || this.f36242f == null) ? false : true;
    }

    public void v() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (!this.C || (concurrentHashMap = f36234e0) == null || concurrentHashMap.containsKey(m())) {
            return;
        }
        f36234e0.remove(m());
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c b(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        String strA;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        try {
            b(z10);
            if (TextUtils.isEmpty(str)) {
                strA = SameMD5.getMD5(t0.d());
            } else {
                strA = a(str);
            }
            this.A = strA;
            cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(strA);
            if (cVar2 == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(strA, cVar);
                    cVar.d(true);
                    cVar2 = cVar;
                } catch (Exception e10) {
                    e = e10;
                }
            }
            cVar2.h(strA);
            cVar2.m(this.f36244h);
            if (eVar != null) {
                if (eVar.a("adtp")) {
                    cVar2.a(Integer.parseInt((String) eVar.b("adtp")));
                }
                if (eVar.a(CampaignEx.JSON_KEY_HB)) {
                    String str2 = (String) eVar.b(CampaignEx.JSON_KEY_HB);
                    cVar2.g(str2);
                    if (str2.equals("1")) {
                        cVar2.f(str);
                    }
                }
            }
            cVar2.e(z10 ? "2" : "1");
            if (!z10) {
                return cVar2;
            }
            com.mbridge.msdk.reward.report.metrics.a.a().a("2000123", cVar2);
            return cVar2;
        } catch (Exception e11) {
            e = e11;
            cVar = cVar2;
        }
        if (MBridgeConstans.DEBUG) {
            o0.b("RewardVideoController", e.getMessage());
        }
        return cVar;
    }

    public void c(String str, List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() <= 0 || this.O) {
                    return;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(list, str);
            } catch (Throwable th2) {
                o0.b("RewardVideoController", th2.getMessage());
            }
        }
    }

    private void f() {
        com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(this.f36236a, this.f36248l, this.f36244h);
        this.f36238b = cVar;
        cVar.d(this.f36256t);
        this.f36238b.e(this.f36257u);
        if (this.f36256t) {
            this.f36238b.a(this.f36253q, this.f36254r, this.f36255s);
        }
        this.f36238b.a(this.f36239c);
    }

    public void d(boolean z10) {
        this.f36256t = z10;
        if (z10) {
            this.f36252p = com.mbridge.msdk.foundation.same.a.X;
        } else {
            this.f36252p = com.mbridge.msdk.foundation.same.a.W;
        }
    }

    public void e(boolean z10) {
        this.f36257u = z10;
    }

    class d implements com.mbridge.msdk.reward.adapter.b.n {

        com.mbridge.msdk.foundation.same.report.metrics.c f36289a;

        final CampaignEx f36290b;

        final CopyOnWriteArrayList f36291c;

        final com.mbridge.msdk.reward.adapter.c f36292d;

        final boolean f36293e;

        final int f36294f;

        d(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar, boolean z10, int i10) {
            this.f36290b = campaignEx;
            this.f36291c = copyOnWriteArrayList;
            this.f36292d = cVar;
            this.f36293e = z10;
            this.f36294f = i10;
            this.f36289a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override
        public void a(String str, String str2, String str3, String str4) {
            a.this.V = true;
            if (!a.this.U || a.this.W || a.this.f36251o == null) {
                return;
            }
            a.this.W = true;
            a.this.f36251o.post(new RunnableC0507a(str3, str, str2));
        }

        @Override
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String unitId;
            if (bVar != null) {
                unitId = bVar.e().getUnitId();
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            } else {
                unitId = "";
            }
            a aVar = a.this;
            aVar.c(unitId, (List<CampaignEx>) aVar.T);
            if (this.f36289a == null) {
                this.f36289a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f36289a.a(bVar);
            this.f36289a.b(this.f36291c);
            a.this.V = false;
            if (a.this.f36242f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            a.this.f36242f.b(bVar, this.f36289a);
        }

        class RunnableC0507a implements Runnable {

            final String f36296a;

            final String f36297b;

            final String f36298c;

            RunnableC0507a(String str, String str2, String str3) {
                this.f36296a = str;
                this.f36297b = str2;
                this.f36298c = str3;
            }

            @Override
            public void run() {
                com.mbridge.msdk.reward.adapter.b bVarB = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = a.this.f36261y;
                Handler handler = a.this.f36251o;
                boolean z11 = a.this.f36256t;
                boolean z12 = a.this.f36257u;
                String str = this.f36296a;
                String requestIdNotice = d.this.f36290b.getRequestIdNotice();
                String str2 = this.f36297b;
                String str3 = this.f36298c;
                String cMPTEntryUrl = d.this.f36290b.getCMPTEntryUrl();
                int i10 = a.this.f36252p;
                d dVar = d.this;
                bVarB.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i10, dVar.f36290b, dVar.f36291c, H5DownLoadManager.getInstance().getH5ResAddress(d.this.f36290b.getCMPTEntryUrl()), this.f36298c, a.this.f36239c, new C0508a(), true);
            }

            class C0508a implements com.mbridge.msdk.reward.adapter.b.o {
                C0508a() {
                }

                @Override
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0547a c0547a) {
                    d dVar = d.this;
                    com.mbridge.msdk.reward.adapter.c cVar = dVar.f36292d;
                    if (cVar != null && cVar.a(dVar.f36291c, dVar.f36293e, dVar.f36294f)) {
                        if (a.this.f36242f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccess");
                        d dVar2 = d.this;
                        a.this.a(dVar2.f36291c);
                        d dVar3 = d.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = dVar3.f36289a;
                        if (cVar2 != null) {
                            cVar2.b(dVar3.f36291c);
                        }
                        a.this.f36242f.d(str2, str3, d.this.f36289a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, (List<CampaignEx>) aVar.T);
                    if (a.this.f36242f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    d dVar4 = d.this;
                    if (dVar4.f36289a == null) {
                        dVar4.f36289a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar5 = d.this;
                    dVar5.f36289a.b(dVar5.f36291c);
                    d.this.f36289a.a(bVarA);
                    a.this.f36242f.b(bVarA, d.this.f36289a);
                }

                @Override
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0547a c0547a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0507a runnableC0507a = RunnableC0507a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0507a.f36298c, (List<CampaignEx>) aVar.T);
                    if (a.this.f36242f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    d dVar = d.this;
                    if (dVar.f36289a == null) {
                        dVar.f36289a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f36289a.b(dVar2.f36291c);
                    d.this.f36289a.a(bVar);
                    a.this.f36242f.b(bVar, d.this.f36289a);
                }
            }
        }
    }

    public void e() {
        m0.b();
    }

    private boolean d() {
        if (this.f36238b == null) {
            f();
        }
        com.mbridge.msdk.reward.adapter.c cVar = this.f36238b;
        if (cVar != null) {
            return cVar.b(true);
        }
        return false;
    }

    public void c(String str, String str2) {
        try {
            this.f36236a = com.mbridge.msdk.foundation.controller.c.m().d();
            this.f36244h = str2;
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            this.f36248l = str;
            this.f36245i = new MBridgeIds(this.f36248l, this.f36244h);
            this.f36240d = com.mbridge.msdk.videocommon.setting.b.b().c();
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new com.mbridge.msdk.reward.controller.c(this.f36236a, this.f36244h));
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        } catch (Throwable th2) {
            o0.b("RewardVideoController", th2.getMessage(), th2);
        }
    }

    public void a(int i10) {
        this.f36252p = i10;
    }

    private void d(String str, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.m(this.f36244h);
            cVar.a(this.f36256t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("event_name", str);
            eVar.a("reason", str2);
            cVar.a("m_temp_is_ready_check", eVar);
            com.mbridge.msdk.reward.report.metrics.a.a().a("m_temp_is_ready_check", cVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            w0.b(this.f36236a, "MBridge_ConfirmTitle" + this.f36244h, str.trim());
        }
        if (!TextUtils.isEmpty(str2)) {
            w0.b(this.f36236a, "MBridge_ConfirmContent" + this.f36244h, str2.trim());
        }
        if (!TextUtils.isEmpty(str4)) {
            w0.b(this.f36236a, "MBridge_CancelText" + this.f36244h, str4.trim());
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        w0.b(this.f36236a, "MBridge_ConfirmText" + this.f36244h, str3.trim());
    }

    class b implements com.mbridge.msdk.reward.adapter.b.h {

        com.mbridge.msdk.foundation.same.report.metrics.c f36264a;

        final CampaignEx f36265b;

        final boolean f36266c;

        final com.mbridge.msdk.reward.adapter.c f36267d;

        final int f36268e;

        b(CampaignEx campaignEx, boolean z10, com.mbridge.msdk.reward.adapter.c cVar, int i10) {
            this.f36265b = campaignEx;
            this.f36266c = z10;
            this.f36267d = cVar;
            this.f36268e = i10;
            this.f36264a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            a.this.U = true;
            if (this.f36266c) {
                if (!a.this.V || a.this.W || a.this.f36251o == null) {
                    return;
                }
                a.this.W = true;
                a.this.f36251o.post(new RunnableC0505b(str3, str, str2, copyOnWriteArrayList));
                return;
            }
            for (CampaignEx campaignEx : copyOnWriteArrayList) {
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) || campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) || a.this.f36251o == null) {
                    com.mbridge.msdk.reward.adapter.c cVar = this.f36267d;
                    if (cVar == null || !cVar.a(copyOnWriteArrayList, this.f36266c, this.f36268e)) {
                        a aVar = a.this;
                        aVar.c(str2, (List<CampaignEx>) aVar.T);
                        if (a.this.f36242f != null && !a.this.X) {
                            a.this.X = true;
                            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                            if (this.f36264a == null) {
                                this.f36264a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            }
                            this.f36264a.b(a.this.S);
                            this.f36264a.a(bVarA);
                            a.this.f36242f.b(bVarA, this.f36264a);
                        }
                    } else if (a.this.f36242f != null && !a.this.Y) {
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        a.this.a(copyOnWriteArrayList);
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f36264a;
                        if (cVar2 != null) {
                            cVar2.b(copyOnWriteArrayList);
                        }
                        a.this.f36242f.d(str, str2, this.f36264a);
                    }
                } else {
                    a.this.f36251o.post(new RunnableC0503a(campaignEx, copyOnWriteArrayList, str, str2, str3));
                }
            }
        }

        class RunnableC0503a implements Runnable {

            final CampaignEx f36270a;

            final CopyOnWriteArrayList f36271b;

            final String f36272c;

            final String f36273d;

            final String f36274e;

            RunnableC0503a(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, String str2, String str3) {
                this.f36270a = campaignEx;
                this.f36271b = copyOnWriteArrayList;
                this.f36272c = str;
                this.f36273d = str2;
                this.f36274e = str3;
            }

            @Override
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.f36261y, a.this.f36251o, a.this.f36256t, a.this.f36257u, null, this.f36270a.getRewardTemplateMode().e(), a.this.f36252p, b.this.f36265b, this.f36271b, H5DownLoadManager.getInstance().getH5ResAddress(this.f36270a.getRewardTemplateMode().e()), this.f36272c, this.f36273d, this.f36274e, this.f36270a.getRequestIdNotice(), a.this.f36239c, new C0504a());
            }

            class C0504a implements com.mbridge.msdk.reward.adapter.b.o {
                C0504a() {
                }

                @Override
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0547a c0547a) {
                    RunnableC0503a runnableC0503a = RunnableC0503a.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.f36267d;
                    if (cVar != null && cVar.a(runnableC0503a.f36271b, bVar.f36266c, bVar.f36268e)) {
                        if (a.this.f36242f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        RunnableC0503a runnableC0503a2 = RunnableC0503a.this;
                        a.this.a(runnableC0503a2.f36271b);
                        a.this.f36242f.d(str2, str3, b.this.f36264a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, (List<CampaignEx>) aVar.T);
                    if (a.this.f36242f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f36264a == null) {
                        bVar2.f36264a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0503a runnableC0503a3 = RunnableC0503a.this;
                    b.this.f36264a.b(runnableC0503a3.f36271b);
                    b.this.f36264a.a(bVarA);
                    a.this.f36242f.b(bVarA, b.this.f36264a);
                }

                @Override
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0547a c0547a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0503a runnableC0503a = RunnableC0503a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0503a.f36273d, (List<CampaignEx>) aVar.T);
                    if (a.this.f36242f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    bVar.c("errorCode: 3301 errorMessage: temp preload failed");
                    b bVar2 = b.this;
                    if (bVar2.f36264a == null) {
                        bVar2.f36264a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b bVar3 = b.this;
                    bVar3.f36264a.b(a.this.S);
                    b.this.f36264a.a(bVar);
                    a.this.f36242f.b(bVar, b.this.f36264a);
                }
            }
        }

        class RunnableC0505b implements Runnable {

            final String f36277a;

            final String f36278b;

            final String f36279c;

            final CopyOnWriteArrayList f36280d;

            RunnableC0505b(String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f36277a = str;
                this.f36278b = str2;
                this.f36279c = str3;
                this.f36280d = copyOnWriteArrayList;
            }

            @Override
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.f36261y, a.this.f36251o, a.this.f36256t, a.this.f36257u, this.f36277a, b.this.f36265b.getRequestIdNotice(), this.f36278b, this.f36279c, b.this.f36265b.getCMPTEntryUrl(), a.this.f36252p, b.this.f36265b, this.f36280d, H5DownLoadManager.getInstance().getH5ResAddress(b.this.f36265b.getCMPTEntryUrl()), this.f36279c, a.this.f36239c, new C0506a(), true);
            }

            class C0506a implements com.mbridge.msdk.reward.adapter.b.o {
                C0506a() {
                }

                @Override
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0547a c0547a) {
                    RunnableC0505b runnableC0505b = RunnableC0505b.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.f36267d;
                    if (cVar != null && cVar.a(runnableC0505b.f36280d, bVar.f36266c, bVar.f36268e)) {
                        if (a.this.f36242f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        RunnableC0505b runnableC0505b2 = RunnableC0505b.this;
                        a.this.a(runnableC0505b2.f36280d);
                        RunnableC0505b runnableC0505b3 = RunnableC0505b.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = b.this.f36264a;
                        if (cVar2 != null) {
                            cVar2.b(runnableC0505b3.f36280d);
                        }
                        a.this.f36242f.d(str2, str3, b.this.f36264a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, (List<CampaignEx>) aVar.T);
                    if (a.this.f36242f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3504 errorMessage: tpl temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f36264a == null) {
                        bVar2.f36264a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b.this.f36264a.a(bVarA);
                    RunnableC0505b runnableC0505b4 = RunnableC0505b.this;
                    b.this.f36264a.b(runnableC0505b4.f36280d);
                    a.this.f36242f.b(bVarA, b.this.f36264a);
                }

                @Override
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0547a c0547a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0505b runnableC0505b = RunnableC0505b.this;
                    a aVar = a.this;
                    aVar.c(runnableC0505b.f36279c, (List<CampaignEx>) aVar.T);
                    if (a.this.f36242f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3302 errorMessage: tpl preload failed");
                    }
                    b bVar2 = b.this;
                    if (bVar2.f36264a == null) {
                        bVar2.f36264a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0505b runnableC0505b2 = RunnableC0505b.this;
                    b.this.f36264a.b(runnableC0505b2.f36280d);
                    b.this.f36264a.a(bVar);
                    a.this.f36242f.b(bVar, b.this.f36264a);
                }
            }
        }

        @Override
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            a.this.U = false;
            a aVar = a.this;
            aVar.c(aVar.f36244h, (List<CampaignEx>) a.this.T);
            if (a.this.f36242f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            if (this.f36264a == null) {
                this.f36264a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f36264a.b(copyOnWriteArrayList);
            if (bVar != null) {
                bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
            }
            this.f36264a.a(bVar);
            a.this.f36242f.b(bVar, this.f36264a);
        }
    }

    public boolean c(boolean z10) {
        boolean zA;
        try {
            if (c()) {
                if (!z10) {
                    return false;
                }
                d("is_ready_start", "over cap check error");
                com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 10);
                cVar.a("m_offer_ready", eVar);
                a(false, cVar, (List<CampaignEx>) this.f36238b.h());
                return false;
            }
            if (this.f36257u) {
                try {
                    zA = a(z10);
                } catch (Exception e10) {
                    if (!MBridgeConstans.DEBUG) {
                        return false;
                    }
                    o0.b("RewardVideoController", e10.getMessage());
                    return false;
                }
            } else {
                zA = d();
            }
            return zA;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            o0.b("RewardVideoController", th2.getMessage());
            return false;
        }
    }

    public void a(int i10, int i11, int i12) {
        this.f36253q = i10;
        this.f36254r = i11;
        if (i11 == com.mbridge.msdk.foundation.same.a.K) {
            this.f36255s = i12 < 0 ? 5 : i12;
        }
        if (i11 == com.mbridge.msdk.foundation.same.a.J) {
            this.f36255s = i12 < 0 ? 80 : i12;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ivRewardEnable", 1);
            jSONObject.put("ivRewardMode", i10 == com.mbridge.msdk.foundation.same.a.H ? 0 : 1);
            jSONObject.put("ivRewardPlayValueMode", i11 == com.mbridge.msdk.foundation.same.a.J ? 0 : 1);
            jSONObject.put("ivRewardPlayValue", i12);
            com.mbridge.msdk.setting.h.b().i(this.f36244h, jSONObject.toString());
        } catch (Exception unused) {
            o0.b("RewardVideoController", "setIVRewardEnable to SP was ERROR");
        }
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f36242f != null) {
            String strB = com.mbridge.msdk.foundation.error.a.b(880001, "");
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880001, "");
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            this.f36242f.a(strB, cVar);
        }
    }

    private boolean c() {
        try {
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
            com.mbridge.msdk.foundation.db.h hVarA = com.mbridge.msdk.foundation.db.h.a(this.K);
            if (this.f36239c == null) {
                this.f36239c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36244h, this.f36256t);
            }
            return hVarA != null && hVarA.a(this.f36244h, this.f36239c.k());
        } catch (Throwable unused) {
            o0.b("RewardVideoController", "cap check error");
        }
    }

    public static void a(String str, int i10) {
        try {
            if (f36233d0 == null || !y0.b(str)) {
                return;
            }
            f36233d0.put(str, Integer.valueOf(i10));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e10.getMessage());
            }
        }
    }

    private CopyOnWriteArrayList<CampaignEx> b(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int vcn = 1;
                    for (CampaignEx campaignEx : list) {
                        if (campaignEx != null) {
                            if (campaignEx.getVcn() > vcn) {
                                vcn = campaignEx.getVcn();
                            }
                            if (campaignEx.getTokenRule() == 1) {
                                String requestId = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId)) {
                                    if (linkedHashMap.containsKey(requestId)) {
                                        List list2 = (List) linkedHashMap.get(requestId);
                                        if (list2 != null) {
                                            list2.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(campaignEx);
                                        linkedHashMap.put(requestId, arrayList);
                                    }
                                }
                            } else {
                                String requestId2 = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId2)) {
                                    if (linkedHashMap2.containsKey(requestId2)) {
                                        List list3 = (List) linkedHashMap2.get(requestId2);
                                        if (list3 != null) {
                                            list3.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList2 = new ArrayList();
                                        arrayList2.add(campaignEx);
                                        linkedHashMap2.put(requestId2, arrayList2);
                                    }
                                }
                            }
                        }
                    }
                    if (linkedHashMap2.size() + linkedHashMap.size() >= vcn && linkedHashMap.size() > 0 && linkedHashMap.entrySet() != null && linkedHashMap.entrySet().iterator() != null && linkedHashMap.entrySet().iterator().next() != null && ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue() != null) {
                        copyOnWriteArrayList.addAll((Collection) ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue());
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f36244h, str, vcn);
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e10.getMessage());
                }
            }
        }
        return copyOnWriteArrayList;
    }

    public static void a(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (concurrentHashMap = f36234e0) == null || concurrentHashMap.containsKey(str)) {
            return;
        }
        f36234e0.put(str, str2);
    }

    public void a() {
        try {
            String str = "";
            MBridgeIds mBridgeIds = this.f36245i;
            if (mBridgeIds != null) {
                if (!this.C) {
                    mBridgeIds.setBidToken("");
                    return;
                }
                String strM = m();
                if (TextUtils.isEmpty(strM)) {
                    return;
                }
                ConcurrentHashMap<String, String> concurrentHashMap = f36234e0;
                if (concurrentHashMap != null && concurrentHashMap.containsKey(strM) && !TextUtils.isEmpty(f36234e0.get(strM))) {
                    str = f36234e0.get(strM);
                }
                this.f36245i.setBidToken(str);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(InterVideoOutListener interVideoOutListener) {
        this.f36241e = interVideoOutListener;
        this.f36242f = new h(this, interVideoOutListener, this.f36251o, this.f36244h, null);
    }

    public void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        a(z10, "", eVar);
    }

    public void a(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarB = b(z10, str, eVar);
        this.f36262z = str;
        if (this.f36242f == null) {
            this.f36242f = new h(this, null, this.f36251o, this.f36244h, null);
        }
        if (this.f36242f != null && this.f36242f.a() == 1) {
            a(z10, cVarB);
            return;
        }
        this.f36237a0 = 1;
        if (this.f36242f != null && this.f36242f.a() == 3) {
            this.L = false;
        } else {
            this.L = true;
            if (this.f36242f != null) {
                this.f36242f.a(1);
            }
        }
        this.f36260x = z10;
        this.f36251o.removeMessages(1001001);
        this.O = false;
        this.N = false;
        this.P = false;
        this.Q = false;
        x();
        w();
        com.mbridge.msdk.reward.adapter.b.b().c();
        try {
            if (TextUtils.isEmpty(str)) {
                if (this.f36256t) {
                    com.mbridge.msdk.timer.b.getInstance().addInterstitialList(this.f36248l, this.f36244h);
                } else {
                    com.mbridge.msdk.timer.b.getInstance().addRewardList(this.f36248l, this.f36244h);
                }
            }
            if (this.f36257u && TextUtils.isEmpty(str)) {
                a(cVarB);
                return;
            }
            if (com.mbridge.msdk.system.a.map == null) {
                b(cVarB);
                return;
            }
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36244h);
            this.f36239c = cVarC;
            if (cVarC == null) {
                this.J = com.mbridge.msdk.foundation.controller.c.m().b();
                com.mbridge.msdk.videocommon.setting.b.b().a(this.J, com.mbridge.msdk.foundation.controller.c.m().c(), this.f36244h, new C0502a());
                this.f36239c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36244h, this.f36256t);
            }
            if (!TextUtils.isEmpty(this.f36248l)) {
                this.f36239c.f(this.f36248l);
            }
            int iN = this.f36239c.n() * 1000;
            if (this.f36251o != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1001002;
                if (cVarB != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("metrics_data_lrid", cVarB.o());
                    messageObtain.setData(bundle);
                }
                this.f36251o.sendMessageDelayed(messageObtain, iN);
            }
            this.I = this.f36239c.z();
            try {
                a(z10, str, cVarB);
            } catch (Exception e10) {
                if (this.f36242f != null) {
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, "load exception");
                    if (cVarB != null) {
                        cVarB.a(bVarA);
                        cVarB.b(true);
                    }
                    this.f36242f.a(bVarA, cVarB);
                }
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e10.getMessage());
                }
            }
        } catch (Exception e11) {
            if (this.f36242f != null) {
                com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880001, "");
                if (cVarB != null) {
                    cVarB.a(bVarA2);
                    cVarB.b(true);
                }
                this.f36242f.a(bVarA2, cVarB);
            }
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    private boolean b(String str, String str2) {
        try {
            com.mbridge.msdk.reward.adapter.c cVar = this.f36238b;
            if (cVar == null || !str.equals(cVar.j())) {
                com.mbridge.msdk.reward.adapter.c cVar2 = new com.mbridge.msdk.reward.adapter.c(this.f36236a, this.f36248l, str);
                this.f36238b = cVar2;
                cVar2.d(this.f36256t);
                this.f36238b.e(this.f36257u);
            }
            this.f36238b.a(this.f36252p);
            this.f36238b.a(this.f36239c);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e10.getMessage());
            }
        }
        List<CampaignEx> listB = com.mbridge.msdk.videocommon.cache.a.a().b(str, 1, this.f36257u);
        this.T = com.mbridge.msdk.videocommon.cache.a.a().a(str, 1, this.f36257u);
        if (listB != null && listB.size() > 0) {
            com.mbridge.msdk.videocommon.cache.a.a().a(str, listB, str2);
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.S;
            if (copyOnWriteArrayList == null) {
                this.S = new CopyOnWriteArrayList<>();
            } else {
                copyOnWriteArrayList.clear();
            }
            for (CampaignEx campaignEx : listB) {
                campaignEx.setLocalRequestId(str2);
                this.S.add(campaignEx);
            }
            a(this.S);
            return true;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.S;
        if (copyOnWriteArrayList2 == null) {
            return false;
        }
        copyOnWriteArrayList2.clear();
        return false;
    }

    public void b(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(cVar);
        String str2 = cVarA.o() + "label_second";
        cVarA.h(str2);
        com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str2, cVarA);
        try {
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f36238b;
            if (cVar2 == null || !this.f36244h.equals(cVar2.j())) {
                com.mbridge.msdk.reward.adapter.c cVar3 = new com.mbridge.msdk.reward.adapter.c(this.f36236a, this.f36248l, this.f36244h);
                this.f36238b = cVar3;
                cVar3.d(this.f36256t);
                this.f36238b.e(this.f36257u);
            }
            if (this.f36256t) {
                this.f36238b.a(this.f36253q, this.f36254r, this.f36255s);
            }
            if (cVarA.j() != null && !cVarA.j().isEmpty()) {
                this.Z.put(cVarA.j().get(0).getId());
            }
            this.f36238b.a(this.f36252p);
            this.f36238b.a(this.f36239c);
            f fVar = new f(this.f36238b, this.G, z10, str, cVarA);
            fVar.a(this.F);
            this.f36246j.a(fVar);
            this.f36238b.a(this.f36246j);
            this.f36238b.a(1, this.Z.toString());
            this.f36238b.a(this.G, this.F, z10, str, this.f36261y, cVarA);
            this.f36251o.postDelayed(fVar, this.F * 1000);
        } catch (Exception e10) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, e10.getMessage());
            cVarA.a(bVarA);
            cVarA.b(true);
            a(bVarA, cVarA);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e10.getMessage());
            }
        }
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f36242f != null) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880035, "");
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            this.f36242f.a("bidToken is empty", cVar);
        }
    }

    private boolean b() {
        if (this.f36238b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> listA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f36244h);
        if (listA == null || listA.size() <= 0) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : listA) {
            if (cVar != null) {
                this.f36238b.c(cVar.a());
                this.f36238b.b(cVar.d());
                if (this.f36238b.m()) {
                    return true;
                }
                com.mbridge.msdk.videocommon.cache.a.a().d(this.f36244h, cVar.a());
            }
        }
        return false;
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (!this.f36260x) {
            if (z10) {
                this.f36260x = z10;
            }
        } else if (z10) {
            String strB = com.mbridge.msdk.foundation.error.a.b(880016, "errorCode: 3501 errorMessage: current unit is loading");
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880016, "errorCode: 3501 errorMessage: current unit is loading");
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            this.f36242f.b(strB, cVar);
        }
    }

    private void b(boolean z10) {
        List<String> listE;
        if (z10) {
            try {
                com.mbridge.msdk.foundation.db.e eVarA = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f36236a));
                if (eVarA != null && (listE = eVarA.e(this.f36244h)) != null && listE.size() > 0) {
                    Iterator<String> it = listE.iterator();
                    while (it.hasNext()) {
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().c(it.next());
                    }
                }
                LinkedHashMap<String, com.mbridge.msdk.foundation.same.report.metrics.c> linkedHashMapC = com.mbridge.msdk.foundation.same.report.metrics.d.b().c();
                if (linkedHashMapC == null || linkedHashMapC.size() <= 0) {
                    return;
                }
                Iterator<Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c>> it2 = linkedHashMapC.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c> next = it2.next();
                    if (next != null && next.getValue().z()) {
                        it2.remove();
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private void a(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.reward.candidate.a aVar;
        com.mbridge.msdk.reward.candidate.a aVar2;
        if (this.f36242f != null) {
            if (!this.f36257u) {
                this.R = b(this.f36244h, cVar.o());
                if (this.R) {
                    if (!c()) {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.S;
                        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                            return;
                        }
                        try {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            eVar.a("cache", 1);
                            cVar.a("2000127", eVar);
                            cVar.a("2000048", eVar);
                            cVar.a(copyOnWriteArrayList);
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e10.getMessage());
                            }
                        }
                        this.f36242f.b(this.f36248l, this.f36244h, cVar);
                        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
                        this.f36242f.a(this.f36257u);
                        com.mbridge.msdk.reward.adapter.c cVar2 = this.f36238b;
                        if (cVar2 != null && cVar2.a(copyOnWriteArrayList, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
                            a(copyOnWriteArrayList);
                            this.f36242f.d(this.f36248l, this.f36244h, cVar);
                        } else {
                            a(copyOnWriteArrayList, this.f36238b);
                        }
                        if (this.L) {
                            com.mbridge.msdk.reward.adapter.c cVar3 = this.f36238b;
                            if (cVar3 != null) {
                                cVar3.c(this.S);
                            }
                            a(this.I, z10, str, cVar);
                            return;
                        }
                        return;
                    }
                    o0.a("RewardVideoController", "非BID，本地存在可用的缓存，超过上限");
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.S;
                    if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
                        Iterator<CampaignEx> it = this.S.iterator();
                        while (it.hasNext()) {
                            com.mbridge.msdk.videocommon.cache.a.a().a(it.next(), this.f36244h);
                        }
                    }
                    com.mbridge.msdk.reward.adapter.c cVar4 = this.f36238b;
                    if (cVar4 != null) {
                        cVar4.c(this.S);
                    }
                    if (z10) {
                        if (this.f36242f != null) {
                            String strB = com.mbridge.msdk.foundation.error.a.b(880019, "");
                            cVar.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                            cVar.b(true);
                            this.f36242f.a(strB, cVar);
                            return;
                        }
                        return;
                    }
                    this.R = false;
                    this.f36242f.a(this.f36257u);
                    a(this.I, z10, str, cVar);
                    return;
                }
                if (!c()) {
                    this.R = false;
                    com.mbridge.msdk.reward.adapter.c cVar5 = this.f36238b;
                    if (cVar5 != null) {
                        cVar5.c(this.S);
                    }
                    this.f36242f.a(this.f36257u);
                    a(this.I, z10, str, cVar);
                    return;
                }
                if (z10) {
                    if (this.f36242f != null) {
                        String strB2 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                        cVar.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                        cVar.b(true);
                        this.f36242f.a(strB2, cVar);
                        return;
                    }
                    return;
                }
                this.R = false;
                com.mbridge.msdk.reward.adapter.c cVar6 = this.f36238b;
                if (cVar6 != null) {
                    cVar6.c(this.S);
                }
                this.f36242f.a(this.f36257u);
                a(this.I, z10, str, cVar);
                return;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.cache.a.a().b(this.f36244h, 1, this.f36257u, "");
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB2 = null;
            if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                if (!c()) {
                    if (this.f36238b == null) {
                        f();
                    }
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = a(str, copyOnWriteArrayListB);
                    if (copyOnWriteArrayListA != null && copyOnWriteArrayListA.size() > 0) {
                        a(copyOnWriteArrayListA, str, cVar);
                        return;
                    }
                    try {
                        com.mbridge.msdk.reward.candidate.a aVar3 = new com.mbridge.msdk.reward.candidate.a(this.f36244h, this.f36256t);
                        com.mbridge.msdk.foundation.cache.c cVar7 = new com.mbridge.msdk.foundation.cache.c();
                        if (aVar3.a(str)) {
                            aVar2 = aVar3;
                            cVar7 = aVar3.a(str, cVar, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.f36238b);
                            if (cVar7 != null && cVar7.g() == com.mbridge.msdk.foundation.cache.c.f34152l && cVar7.c() != null && cVar7.c().size() > 0 && this.f36238b != null) {
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListC = cVar7.c();
                                ArrayList arrayList = new ArrayList();
                                for (CampaignEx campaignEx2 : copyOnWriteArrayListB) {
                                    if (campaignEx2 != null) {
                                        String requestId = campaignEx2.getRequestId();
                                        if (!TextUtils.isEmpty(requestId)) {
                                            for (int i10 = 0; i10 < copyOnWriteArrayListC.size(); i10++) {
                                                CampaignEx campaignEx3 = copyOnWriteArrayListC.get(i10);
                                                if (campaignEx3 != null) {
                                                    if (requestId.equals(campaignEx3.getRequestId())) {
                                                        break;
                                                    } else if (i10 == copyOnWriteArrayListC.size() - 1) {
                                                        arrayList.add(campaignEx2);
                                                    }
                                                }
                                            }
                                            if (copyOnWriteArrayListC.size() != 0) {
                                                break;
                                            }
                                            arrayList.add(campaignEx2);
                                            break;
                                        }
                                    }
                                }
                                this.f36238b.c(arrayList);
                                this.f36238b.a(cVar7.c(), false, true, true);
                                copyOnWriteArrayListB2 = new CopyOnWriteArrayList<>(cVar7.c());
                            }
                        } else {
                            aVar2 = aVar3;
                            copyOnWriteArrayListB2 = b(str, copyOnWriteArrayListB);
                            if (copyOnWriteArrayListB2.size() > 0) {
                                com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, copyOnWriteArrayListB2);
                            }
                            cVar7.d("cb is closed");
                            cVar7.a(com.mbridge.msdk.foundation.cache.c.f34151k);
                        }
                        aVar2.a(cVar, str, cVar7, (List<com.mbridge.msdk.foundation.cache.a.b>) null, (JSONObject) null, 1);
                        if (copyOnWriteArrayListB2 != null && copyOnWriteArrayListB2.size() > 0) {
                            a(copyOnWriteArrayListB2, str, cVar);
                            if (this.f36238b != null && !aVar2.a(str)) {
                                this.f36238b.c(copyOnWriteArrayListB2);
                            }
                        }
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e11.getMessage());
                        }
                    }
                    this.R = false;
                    this.f36242f.a(this.f36257u);
                    a(this.I, z10, str, cVar);
                    return;
                }
                com.mbridge.msdk.videocommon.cache.a.a().b(this.f36244h, str);
                if (!z10 || this.f36242f == null) {
                    return;
                }
                String strB3 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880019, "");
                if (cVar != null) {
                    cVar.a(bVarA);
                    cVar.b(true);
                }
                this.f36242f.a(strB3, cVar);
                return;
            }
            if (!c()) {
                try {
                    com.mbridge.msdk.reward.candidate.a aVar4 = new com.mbridge.msdk.reward.candidate.a(this.f36244h, this.f36256t);
                    com.mbridge.msdk.foundation.cache.c cVar8 = new com.mbridge.msdk.foundation.cache.c();
                    if (aVar4.a(str)) {
                        if (this.f36238b == null) {
                            com.mbridge.msdk.reward.adapter.c cVar9 = new com.mbridge.msdk.reward.adapter.c(this.f36236a, this.f36248l, this.f36244h);
                            this.f36238b = cVar9;
                            cVar9.d(this.f36256t);
                            this.f36238b.e(this.f36257u);
                            if (this.f36256t) {
                                this.f36238b.a(this.f36253q, this.f36254r, this.f36255s);
                            }
                            this.f36238b.a(this.f36252p);
                            this.f36238b.a(this.f36239c);
                        }
                        aVar = aVar4;
                        cVar8 = aVar4.a(str, cVar, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.f36238b);
                        if (cVar8 != null && cVar8.g() == com.mbridge.msdk.foundation.cache.c.f34152l && cVar8.c() != null && cVar8.c().size() > 0 && this.f36238b != null) {
                            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListC2 = cVar8.c();
                            if (copyOnWriteArrayListB != null) {
                                ArrayList arrayList2 = new ArrayList();
                                for (CampaignEx campaignEx4 : copyOnWriteArrayListB) {
                                    if (campaignEx4 != null) {
                                        String requestId2 = campaignEx4.getRequestId();
                                        if (!TextUtils.isEmpty(requestId2)) {
                                            for (int i11 = 0; i11 < copyOnWriteArrayListC2.size(); i11++) {
                                                CampaignEx campaignEx5 = copyOnWriteArrayListC2.get(i11);
                                                if (campaignEx5 != null) {
                                                    if (requestId2.equals(campaignEx5.getRequestId())) {
                                                        break;
                                                    } else if (i11 == copyOnWriteArrayListC2.size() - 1) {
                                                        arrayList2.add(campaignEx4);
                                                    }
                                                }
                                            }
                                            if (copyOnWriteArrayListC2.size() != 0) {
                                                break;
                                            }
                                            arrayList2.add(campaignEx4);
                                            break;
                                        }
                                    }
                                }
                                this.f36238b.c(arrayList2);
                            }
                            this.f36238b.a(cVar8.c(), false, true, true);
                            copyOnWriteArrayListB2 = new CopyOnWriteArrayList<>(cVar8.c());
                        }
                    } else {
                        aVar = aVar4;
                        copyOnWriteArrayListB2 = b(str, copyOnWriteArrayListB);
                        if (copyOnWriteArrayListB2.size() > 0) {
                            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, copyOnWriteArrayListB2);
                        }
                        cVar8.d("cb is closed 2");
                        cVar8.a(com.mbridge.msdk.foundation.cache.c.f34151k);
                    }
                    aVar.a(cVar, str, cVar8, (List<com.mbridge.msdk.foundation.cache.a.b>) null, (JSONObject) null, 1);
                    if (copyOnWriteArrayListB2 != null && copyOnWriteArrayListB2.size() > 0) {
                        a(copyOnWriteArrayListB2, str, cVar);
                        if (this.f36238b != null && !aVar.a(str)) {
                            this.f36238b.c(copyOnWriteArrayListB2);
                        }
                    }
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e12.getMessage());
                    }
                }
                this.R = false;
                this.f36242f.a(this.f36257u);
                a(this.I, z10, str, cVar);
                return;
            }
            com.mbridge.msdk.videocommon.cache.a.a().b(this.f36244h, str);
            if (!z10 || this.f36242f == null) {
                return;
            }
            String strB4 = com.mbridge.msdk.foundation.error.a.b(880019, "");
            com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880019, "");
            if (cVar != null) {
                cVar.a(bVarA2);
                cVar.b(true);
            }
            this.f36242f.a(strB4, cVar);
        }
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            cVar.a("2000127", eVar);
            cVar.a("2000048", eVar);
            cVar.a(copyOnWriteArrayList);
        } catch (Exception e10) {
            o0.b("RewardVideoController", e10.getMessage());
        }
        this.R = true;
        this.f36242f.a(this.f36257u);
        this.f36242f.b(this.f36248l, this.f36244h, cVar);
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        a(campaignEx.getRequestId(), str);
        com.mbridge.msdk.reward.adapter.c cVar2 = this.f36238b;
        if (cVar2 != null && cVar2.a(copyOnWriteArrayList, true ^ TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
            a(copyOnWriteArrayList);
            this.f36242f.d(this.f36248l, this.f36244h, cVar);
        } else {
            a(copyOnWriteArrayList, this.f36238b);
        }
    }

    private CopyOnWriteArrayList<CampaignEx> a(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null && str.equals(campaignEx.getBidToken())) {
                    copyOnWriteArrayList.add(campaignEx);
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar) {
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        boolean zIsEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z10 = !zIsEmpty;
        int nscpt = campaignEx.getNscpt();
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        com.mbridge.msdk.reward.adapter.b.b().a(this.f36236a, z10, nscpt, this.f36257u, this.f36256t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, this.f36248l, this.f36244h, campaignEx.getRequestId(), copyOnWriteArrayList, new b(campaignEx, z10, cVar, nscpt), new c(campaignEx, copyOnWriteArrayList, z10, nscpt));
        if (zIsEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f36236a, campaignEx, this.f36248l, this.f36244h, campaignEx.getRequestId(), new d(campaignEx, copyOnWriteArrayList, cVar, z10, nscpt));
    }

    private void a(Queue<Integer> queue, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        Integer numPoll;
        try {
            this.F = 25;
            this.G = 1;
            if (queue != null && queue.size() > 0 && (numPoll = queue.poll()) != null) {
                this.F = numPoll.intValue();
            }
            try {
                a(this.G, this.F, z10, str, cVar);
            } catch (Exception e10) {
                com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, "load mv api error:" + e10.getMessage());
                if (cVar != null) {
                    cVar.a(bVarA);
                    cVar.b(true);
                }
                a(bVarA, cVar);
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e10.getMessage());
                }
            }
        } catch (Exception e11) {
            com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880020, "load mv api error:" + e11.getMessage());
            if (cVar != null) {
                cVar.a(bVarA2);
                cVar.b(true);
            }
            a(bVarA2, cVar);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f36242f != null) {
            this.Q = true;
            this.f36242f.a(bVar, cVar);
        }
    }

    public void a(int i10, int i11, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f36238b;
            if (cVar2 == null || !this.f36244h.equals(cVar2.j())) {
                com.mbridge.msdk.reward.adapter.c cVar3 = new com.mbridge.msdk.reward.adapter.c(this.f36236a, this.f36248l, this.f36244h);
                this.f36238b = cVar3;
                cVar3.d(this.f36256t);
                this.f36238b.e(this.f36257u);
            }
            if (this.f36256t) {
                this.f36238b.a(this.f36253q, this.f36254r, this.f36255s);
            }
            this.H = new ArrayList();
            this.f36238b.a(this.f36252p);
            this.f36238b.a(this.f36239c);
            f fVar = new f(this.f36238b, i10, z10, str, cVar);
            fVar.a(i11);
            g gVar = new g(this.f36238b, z10);
            this.f36246j = gVar;
            gVar.a(fVar);
            this.f36238b.a(this.f36246j);
            this.f36238b.a(0, "");
            this.f36238b.a(new j());
            this.f36238b.a(i10, i11, z10, str, this.f36261y, cVar);
            this.f36251o.postDelayed(fVar, i11 * 1000);
        } catch (Exception e10) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, e10.getMessage());
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            a(bVarA, cVar);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e10.getMessage());
            }
        }
    }

    private void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.videocommon.setting.c cVar2;
        com.mbridge.msdk.videocommon.setting.c cVar3;
        boolean zL;
        boolean zM;
        try {
            if (this.f36238b == null) {
                f();
            }
            if (this.f36238b != null) {
                o0.b("RewardVideoController", "controller 819");
                if (this.f36257u) {
                    zL = a(false);
                } else {
                    zL = this.f36238b.l();
                }
                C0502a c0502a = null;
                if (zL) {
                    o0.c("RewardVideoController", "invoke adapter show isReady");
                    i iVar = new i(this, this, this.f36251o, c0502a);
                    f36235f0.put(this.f36244h, iVar);
                    this.f36238b.a(iVar, str, this.f36243g, this.f36252p, this.f36247k, cVar);
                    this.E = false;
                    return;
                }
                if (this.f36257u) {
                    zM = b();
                } else {
                    zM = this.f36238b.m();
                }
                if (zM) {
                    o0.c("RewardVideoController", "invoke adapter show isSpareOfferReady");
                    i iVar2 = new i(this, this, this.f36251o, c0502a);
                    f36235f0.put(this.f36244h, iVar2);
                    this.f36238b.a(iVar2, str, this.f36243g, this.f36252p, this.f36247k, cVar);
                    this.E = false;
                    return;
                }
            }
            this.E = false;
            a("2000131", cVar, this.f36241e, "can't show because load is failed");
            if (this.f36241e != null) {
                try {
                    this.f36241e.onShowFail(cVar, this.f36245i, "can't show because load is failed");
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e10.getMessage());
                    }
                }
            }
            if (this.f36256t || this.f36257u || (cVar3 = this.f36239c) == null || !cVar3.a(4) || this.f36242f == null || this.f36242f.a() == 1 || this.f36242f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f36244h, true, 1));
        } catch (Exception e11) {
            this.E = false;
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getLocalizedMessage());
            }
            a("2000131", cVar, this.f36241e, "show exception");
            if (this.f36241e != null) {
                try {
                    this.f36241e.onShowFail(cVar, this.f36245i, "show exception");
                } catch (Exception unused) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e11.getMessage());
                    }
                }
            }
            if (this.f36256t || this.f36257u || (cVar2 = this.f36239c) == null || !cVar2.a(4) || this.f36242f == null || this.f36242f.a() == 1 || this.f36242f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f36244h, true, 1));
        }
    }

    private boolean a(boolean z10) {
        if (this.f36238b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> listA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f36244h);
        String str = this.A;
        if (listA == null || listA.size() <= 0) {
            if (!z10) {
                return false;
            }
            d("is_ready_ctir_false", "no effective campaign list");
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.h(str);
            cVar.f(this.f36262z);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 8);
            cVar.a("m_offer_ready", eVar);
            a(false, cVar, (List<CampaignEx>) this.f36238b.h());
            return false;
        }
        String strD = com.mbridge.msdk.foundation.same.buffer.b.d(this.f36244h);
        boolean zA = TextUtils.isEmpty(strD) ? false : a(listA, strD, z10);
        if (z10) {
            d("is_ready_ctir_" + zA, "");
        }
        if (zA) {
            if (!z10) {
                return zA;
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar2.h(str);
            a(zA, cVar2, this.f36238b.h());
            return zA;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar3 : listA) {
            if (cVar3 != null) {
                this.f36238b.c(cVar3.a());
                this.f36238b.b(cVar3.d());
                if (this.f36238b.b(z10)) {
                    cVar3.d();
                    return true;
                }
            }
        }
        return zA;
    }

    private boolean a(List<com.mbridge.msdk.foundation.entity.c> list, String str, boolean z10) {
        if (list == null) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : list) {
            if (cVar != null && str.equals(cVar.b())) {
                this.f36238b.c(cVar.a());
                this.f36238b.b(cVar.d());
                if (this.f36238b.l()) {
                    if (z10) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        cVar2.h(cVar.d());
                        a(false, cVar2, (List<CampaignEx>) this.f36238b.h());
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:129:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:164:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void a(String str, String str2, String str3, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.videocommon.setting.c cVar;
        com.mbridge.msdk.videocommon.setting.c cVar2;
        com.mbridge.msdk.videocommon.setting.c cVar3;
        com.mbridge.msdk.videocommon.setting.c cVar4;
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = a(eVar);
        try {
            this.f36249m = str;
            this.f36243g = str2;
            this.f36247k = str3;
            synchronized (this.D) {
                if (this.E) {
                    a("2000131", cVarA, this.f36241e, "campaing is show progressing ");
                    if (this.f36241e != null) {
                        try {
                            this.f36241e.onShowFail(cVarA, this.f36245i, "campaing is show progressing ");
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e10.getMessage());
                            }
                        }
                    }
                    return;
                }
                this.E = true;
                Context context = this.f36236a;
                if (context == null) {
                    a("2000131", cVarA, this.f36241e, "context is null");
                    if (this.f36241e != null) {
                        try {
                            this.f36241e.onShowFail(cVarA, this.f36245i, "context is null");
                        } catch (Exception e11) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e11.getMessage());
                            }
                        }
                    }
                    if (!this.f36256t && !this.f36257u && (cVar4 = this.f36239c) != null && cVar4.a(4) && this.f36242f != null && this.f36242f.a() != 1 && this.f36242f.a() != 3) {
                        a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f36244h, true, 1));
                    }
                    this.E = false;
                    return;
                }
                if (this.f36256t && !t0.l(context) && q0.a().a("s_a_w_n_c", true)) {
                    a("2000131", cVarA, this.f36241e, "network exception");
                    if (this.f36241e != null) {
                        try {
                            this.f36241e.onShowFail(cVarA, this.f36245i, "network exception");
                        } catch (Exception e12) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e12.getMessage());
                            }
                        }
                    }
                    if (!this.f36256t && !this.f36257u && (cVar3 = this.f36239c) != null && cVar3.a(4) && this.f36242f != null && this.f36242f.a() != 1 && this.f36242f.a() != 3) {
                        a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f36244h, true, 1));
                    }
                    this.E = false;
                    return;
                }
                if (c()) {
                    a("2000131", cVarA, this.f36241e, "Play more than limit");
                    if (this.f36241e != null) {
                        try {
                            this.f36241e.onShowFail(cVarA, this.f36245i, "Play more than limit");
                        } catch (Exception e13) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e13.getMessage());
                            }
                        }
                    }
                    if (!this.f36256t && !this.f36257u && (cVar2 = this.f36239c) != null && cVar2.a(4) && this.f36242f != null && this.f36242f.a() != 1 && this.f36242f.a() != 3) {
                        a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f36244h, true, 1));
                    }
                    this.E = false;
                    return;
                }
                if (TextUtils.isEmpty(this.f36243g)) {
                    this.f36243g = com.mbridge.msdk.foundation.tools.f.d();
                }
                try {
                    String str4 = new SimpleDateFormat("dd").format(new Date());
                    String str5 = (String) w0.a(this.f36236a, "reward_date", "0");
                    if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str4) && !str5.equals(str4)) {
                        w0.b(this.f36236a, "reward_date", str4);
                    }
                } catch (Exception e14) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e14.getMessage());
                    }
                }
                a(str, cVarA);
                return;
                this.E = false;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getLocalizedMessage());
                }
                a("2000131", cVarA, this.f36241e, "show exception");
                if (this.f36241e != null) {
                    try {
                        this.f36241e.onShowFail(cVarA, this.f36245i, "show exception");
                    } catch (Exception unused) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e.getMessage());
                        }
                    }
                }
                if (!this.f36256t || this.f36257u || (cVar = this.f36239c) == null || !cVar.a(4) || this.f36242f == null || this.f36242f.a() == 1 || this.f36242f.a() == 3) {
                    return;
                }
                a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f36244h, true, 1));
            }
        } catch (Exception e15) {
            this.E = false;
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e15.getLocalizedMessage());
            }
            a("2000131", cVarA, this.f36241e, "show exception");
            if (this.f36241e != null) {
                this.f36241e.onShowFail(cVarA, this.f36245i, "show exception");
            }
            if (this.f36256t) {
            }
        }
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c a(com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        CampaignEx campaignEx;
        try {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f36244h);
            String currentLocalRid = "";
            if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0 && (campaignEx = copyOnWriteArrayListB.get(0)) != null) {
                currentLocalRid = campaignEx.getCurrentLocalRid();
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = TextUtils.isEmpty(currentLocalRid) ? null : com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(currentLocalRid);
            if (cVar2 != null) {
                cVar2.b(copyOnWriteArrayListB);
                cVar2.a("2000128", eVar);
                cVar2.h(currentLocalRid);
                cVar2.m(this.f36244h);
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar2);
                return cVar2;
            }
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            try {
                cVar.m(this.f36244h);
                eVar.a("metrics_data_reason", "未获取到待展示的campaign信息 本地new metricsData");
                cVar.a("2000128", eVar);
                if (TextUtils.isEmpty(currentLocalRid)) {
                    cVar.h(SameMD5.getMD5(t0.d()));
                } else {
                    cVar.h(currentLocalRid);
                    cVar.b(copyOnWriteArrayListB);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(currentLocalRid, cVar);
                }
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar);
            } catch (Exception e10) {
                e = e10;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getMessage());
                }
            }
            return cVar;
        } catch (Exception e11) {
            e = e11;
            cVar = null;
        }
    }

    public void a(List<CampaignEx> list) {
        if (list != null && list.size() > 0) {
            this.H = list;
        } else {
            this.H = new ArrayList();
        }
    }

    private String a(String str) {
        String md5 = "";
        try {
            if (TextUtils.isEmpty(str)) {
                md5 = SameMD5.getMD5(t0.d());
            }
            String[] strArrSplit = str.split("_");
            if (strArrSplit != null && strArrSplit.length >= 3) {
                md5 = strArrSplit[2];
            }
            return TextUtils.isEmpty(md5) ? SameMD5.getMD5(t0.d()) : md5;
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return "";
            }
            e10.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(Message message) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA;
        if (message != null) {
            try {
                Bundle data = message.getData();
                if (data != null) {
                    cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(data.getString("metrics_data_lrid"));
                } else {
                    cVarA = null;
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        } else {
            cVarA = null;
        }
        return cVarA == null ? new com.mbridge.msdk.foundation.same.report.metrics.c() : cVarA;
    }

    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener) {
        if (this.f36260x) {
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (interVideoOutListener != null) {
                    eVar.a("listener_state", 1);
                } else {
                    eVar.a("listener_state", 2);
                }
                cVar.a(str, eVar);
                com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener, String str2) {
        if (cVar == null) {
            try {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (!TextUtils.isEmpty(str2)) {
            eVar.a("reason", str2);
        }
        if (interVideoOutListener != null) {
            eVar.a("listener_state", 1);
        } else {
            eVar.a("listener_state", 2);
        }
        cVar.a(str, eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x0040 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:4:0x0009, B:6:0x000f, B:8:0x0016, B:12:0x002f, B:14:0x0039, B:17:0x0040, B:21:0x0075, B:23:0x0088, B:25:0x0096), top: B:31:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0070  */
    /* JADX WARN: Code duplicated, block: B:20:0x0073  */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        String nLRid;
        String str;
        int i10;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        String localRequestId = "";
        if (list == null) {
            str = "";
            if (TextUtils.isEmpty(localRequestId)) {
                return cVar;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
            eVar.a("auto_load", 2);
            cVar2.a("2000127", eVar);
            cVar2.a("2000048", eVar);
            if (this.f36256t) {
                i10 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
            } else {
                i10 = 94;
            }
            cVar2.a(i10);
            cVar2.g("1");
            cVar2.e("2");
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar2);
            }
        } else {
            try {
                if (list.size() <= 0) {
                    str = "";
                } else {
                    if (list.get(0) == null) {
                        nLRid = "";
                    } else {
                        localRequestId = list.get(0).getLocalRequestId();
                        nLRid = list.get(0).getNLRid();
                    }
                    cVar2.h(localRequestId);
                    cVar2.b(list);
                    str = localRequestId;
                    localRequestId = nLRid;
                }
                if (TextUtils.isEmpty(localRequestId)) {
                    return cVar;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar2.a("cache", 1);
                eVar2.a(CampaignEx.JSON_KEY_HB, 1);
                eVar2.a("auto_load", 2);
                cVar2.a("2000127", eVar2);
                cVar2.a("2000048", eVar2);
                if (this.f36256t) {
                    i10 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
                } else {
                    i10 = 94;
                }
                cVar2.a(i10);
                cVar2.g("1");
                cVar2.e("2");
                if (!TextUtils.isEmpty(str) && !com.mbridge.msdk.foundation.same.report.metrics.d.b().c().containsKey(str)) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar2);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
        return cVar2;
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, List<CampaignEx> list) {
        if (cVar == null) {
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                cVar.h(campaignEx.getLocalRequestId());
                cVar.f(campaignEx.getBidToken());
            }
            cVar.b(list);
        }
        a(z10, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.m(this.f36244h);
        cVar.a(this.f36256t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
        eVar.a("result", Integer.valueOf(z10 ? 1 : 2));
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f36257u ? 1 : 0));
        cVar.a("m_offer_ready", eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a("m_offer_ready", cVar);
    }
}
