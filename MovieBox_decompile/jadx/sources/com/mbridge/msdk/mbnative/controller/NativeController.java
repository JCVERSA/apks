package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NativeController extends com.mbridge.msdk.mbnative.controller.a {

    private static final String f35405c0 = "NativeController";

    public static Map<String, Long> f35406d0 = new HashMap();

    private static boolean f35407e0;
    private int A;
    private int B;
    private com.mbridge.msdk.foundation.same.task.b C;
    private List<com.mbridge.msdk.mbnative.controller.c> D;
    private List<com.mbridge.msdk.mbnative.controller.c.d> E;
    private CopyOnWriteArrayList<com.mbridge.msdk.foundation.same.task.a> F;
    private Hashtable<String, com.iab.omid.library.mmadbridge.adsession.b> G;
    private int H;
    private int I;
    private n J;
    private boolean K;
    private boolean L;
    private Timer M;
    private String N;
    private String O;
    private ViewTreeObserver.OnGlobalLayoutListener P;
    private com.mbridge.msdk.setting.l Q;
    private long R;
    private int S;
    private int T;
    private boolean U;
    private int V;
    private int W;
    private boolean X;
    private List<Campaign> Y;
    private String Z;

    private com.iab.omid.library.mmadbridge.adsession.b f35408a0;

    protected List<Integer> f35409b;

    private com.iab.omid.library.mmadbridge.adsession.a f35410b0;

    protected List<Integer> f35411c;

    Map<String, Object> f35412d;

    private com.mbridge.msdk.setting.j f35413e;

    private com.mbridge.msdk.mbnative.listener.a f35414f;

    private NativeListener.NativeTrackingListener f35415g;

    private Context f35416h;

    private String f35417i;

    private String f35418j;

    private Queue<Integer> f35419k;

    private Queue<Long> f35420l;

    private String f35421m;

    private com.mbridge.msdk.foundation.same.report.h f35422n;

    private String f35423o;

    private com.mbridge.msdk.click.a f35424p;

    private int f35425q;

    private int f35426r;

    private int f35427s;

    private int f35428t;

    private String f35429u;

    private boolean f35430v;

    private boolean f35431w;

    private boolean f35432x;

    private int f35433y;

    private int f35434z;

    class a implements Runnable {

        final List f35435a;

        final NativeListener.NativeAdListener f35436b;

        final int f35437c;

        a(List list, NativeListener.NativeAdListener nativeAdListener, int i10) {
            this.f35435a = list;
            this.f35436b = nativeAdListener;
            this.f35437c = i10;
        }

        @Override
        public void run() {
            List list = this.f35435a;
            if (list != null && list.size() > 0) {
                CampaignEx campaignEx = (CampaignEx) this.f35435a.get(0);
                NativeController.this.O = campaignEx.getRequestId();
                NativeController.this.Y = this.f35435a;
            }
            NativeController.this.f35430v = true;
            this.f35436b.onAdLoaded(this.f35435a, this.f35437c);
            com.mbridge.msdk.mbnative.report.a.a(NativeController.this.f35416h, (List<Campaign>) this.f35435a, NativeController.this.f35417i);
        }
    }

    class b implements Runnable {

        final com.mbridge.msdk.mbnative.listener.a f35439a;

        final CampaignEx f35440b;

        final String f35441c;

        b(com.mbridge.msdk.mbnative.listener.a aVar, CampaignEx campaignEx, String str) {
            this.f35439a = aVar;
            this.f35440b = campaignEx;
            this.f35441c = str;
        }

        @Override
        public void run() {
            this.f35439a.a(this.f35440b, this.f35441c);
        }
    }

    class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
        }
    }

    class d extends TimerTask {

        final long f35444a;

        final o f35445b;

        final List f35446c;

        d(long j10, o oVar, List list) {
            this.f35444a = j10;
            this.f35445b = oVar;
            this.f35446c = list;
        }

        @Override
        public void run() {
            boolean z10;
            if (System.currentTimeMillis() - this.f35444a >= 60000) {
                this.f35445b.a();
                NativeController.this.c();
                return;
            }
            int iS = k0.s(NativeController.this.f35416h);
            int iQ = NativeController.this.h().q();
            if (iS != 9 && iQ == 2) {
                this.f35445b.a();
                NativeController.this.c();
                return;
            }
            if (iQ == 3) {
                this.f35445b.a();
                NativeController.this.c();
                return;
            }
            loop0: while (true) {
                z10 = false;
                for (Campaign campaign : this.f35446c) {
                    String id2 = campaign.getId();
                    if (campaign instanceof CampaignEx) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(id2);
                        CampaignEx campaignEx = (CampaignEx) campaign;
                        sb2.append(campaignEx.getVideoUrlEncode());
                        sb2.append(campaignEx.getBidToken());
                        id2 = sb2.toString();
                    }
                    com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(NativeController.this.f35417i, id2);
                    if (aVarA != null && com.mbridge.msdk.videocommon.download.l.a(aVarA, NativeController.this.h().C())) {
                        z10 = true;
                    }
                }
                break loop0;
            }
            if (z10) {
                this.f35445b.a();
                NativeController.this.c();
            }
        }
    }

    class e implements ViewTreeObserver.OnGlobalLayoutListener {

        final ImageView f35448a;

        final View f35449b;

        e(ImageView imageView, View view) {
            this.f35448a = imageView;
            this.f35449b = view;
        }

        @Override
        public void onGlobalLayout() {
            if (this.f35448a != null) {
                this.f35448a.setLayoutParams(new FrameLayout.LayoutParams(this.f35449b.getWidth(), this.f35449b.getHeight()));
            }
        }
    }

    class f extends com.mbridge.msdk.widget.a {

        final CampaignEx f35451b;

        f(CampaignEx campaignEx) {
            this.f35451b = campaignEx;
        }

        @Override
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f35451b);
        }
    }

    class g extends com.mbridge.msdk.widget.a {

        final CampaignEx f35453b;

        g(CampaignEx campaignEx) {
            this.f35453b = campaignEx;
        }

        @Override
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f35453b);
        }
    }

    class h implements com.mbridge.msdk.widget.dialog.b {

        final CampaignEx f35455a;

        h(CampaignEx campaignEx) {
            this.f35455a = campaignEx;
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
            NativeController.this.f35424p.a(this.f35455a, NativeController.this.f35414f);
            NativeController.this.b(this.f35455a);
        }

        @Override
        public void c() {
        }
    }

    class i extends com.mbridge.msdk.widget.a {

        final CampaignEx f35457b;

        i(CampaignEx campaignEx) {
            this.f35457b = campaignEx;
        }

        @Override
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f35457b);
        }
    }

    class j implements com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a {

        final s f35459a;

        j(s sVar) {
            this.f35459a = sVar;
        }

        @Override
        public void a(com.mbridge.msdk.foundation.same.task.a.b bVar) {
            if (bVar != com.mbridge.msdk.foundation.same.task.a.b.FINISH || NativeController.this.F == null || NativeController.this.F.size() <= 0 || !NativeController.this.F.contains(this.f35459a)) {
                return;
            }
            NativeController.this.F.remove(this.f35459a);
        }
    }

    class k implements com.mbridge.msdk.mbnative.controller.c.d {

        final CampaignEx f35461a;

        k(CampaignEx campaignEx) {
            this.f35461a = campaignEx;
        }

        @Override
        public void a(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            com.mbridge.msdk.mbnative.report.b.a(this.f35461a, NativeController.this.f35416h, NativeController.this.f35417i, NativeController.this.f35414f);
        }
    }

    class l implements o {

        final List f35463a;

        final int f35464b;

        final com.mbridge.msdk.mbnative.listener.a f35465c;

        final List f35466d;

        l(List list, int i10, com.mbridge.msdk.mbnative.listener.a aVar, List list2) {
            this.f35463a = list;
            this.f35464b = i10;
            this.f35465c = aVar;
            this.f35466d = list2;
        }

        @Override
        public void a() {
            List listA = NativeController.this.a((List<Campaign>) this.f35463a, true);
            if (listA == null || listA.size() <= 0) {
                NativeController.this.a(this.f35465c, "has no ads", (CampaignEx) this.f35466d.get(0));
            } else {
                NativeController.this.a((List<Campaign>) listA, this.f35464b, this.f35465c);
            }
        }
    }

    class m implements o {

        final List f35468a;

        final int f35469b;

        final com.mbridge.msdk.mbnative.listener.a f35470c;

        m(List list, int i10, com.mbridge.msdk.mbnative.listener.a aVar) {
            this.f35468a = list;
            this.f35469b = i10;
            this.f35470c = aVar;
        }

        @Override
        public void a() {
            List listA = NativeController.this.a((List<Campaign>) this.f35468a, false);
            if (listA == null || listA.size() <= 0) {
                NativeController.this.a(this.f35470c, "has no ads", (CampaignEx) null);
            } else {
                NativeController.this.a((List<Campaign>) listA, this.f35469b, this.f35470c);
            }
        }
    }

    public class n extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {

        private Runnable f35473d;

        private boolean f35472c = false;

        private boolean f35474e = true;

        private List<String> f35475f = null;

        class a extends com.mbridge.msdk.foundation.same.c.a {

            final CampaignEx f35477a;

            a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f35477a = campaignEx;
            }

            @Override
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f35477a, NativeController.this.f35416h, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        public n() {
        }

        @Override
        public void a(boolean z10) {
            this.f35472c = z10;
        }

        public void b(boolean z10) {
            this.f35474e = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v4, types: [com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.out.Campaign, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r14v1, types: [com.mbridge.msdk.mbnative.controller.NativeController, com.mbridge.msdk.mbnative.controller.a] */
        /* JADX WARN: Type inference failed for: r14v10 */
        /* JADX WARN: Type inference failed for: r14v11, types: [int] */
        /* JADX WARN: Type inference failed for: r14v12 */
        /* JADX WARN: Type inference failed for: r16v0, types: [com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.mbnative.controller.NativeController$n, com.mbridge.msdk.mbnative.service.net.b] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public void a(List<com.mbridge.msdk.tracker.network.g> list, CampaignUnit campaignUnit) {
            Integer num;
            boolean z10 = true;
            NativeController.this.U = true;
            com.mbridge.msdk.foundation.db.j jVarA = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(NativeController.this.f35416h));
            jVarA.a();
            Runnable runnable = this.f35473d;
            if (runnable != null) {
                NativeController.this.f35498a.removeCallbacks(runnable);
            }
            if (com.mbridge.msdk.util.b.a()) {
                NativeController.this.a(campaignUnit);
            }
            if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
                this.unitId = "0_" + this.unitId;
                com.mbridge.msdk.mbnative.controller.d.b(NativeController.this.f35427s, this.unitId);
                NativeController.this.f35428t = 0;
                return;
            }
            NativeController.this.f35423o = campaignUnit.getSessionId();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (NativeController.this.S <= 0) {
                if (NativeController.this.S == -3) {
                    NativeController.this.S = campaignUnit.getAds().size();
                } else {
                    NativeController nativeController = NativeController.this;
                    nativeController.S = nativeController.f35426r;
                }
                if (NativeController.this.V != 0 && campaignUnit.getTemplate() == 2) {
                    NativeController nativeController2 = NativeController.this;
                    nativeController2.S = nativeController2.V;
                }
                if (NativeController.this.W != 0 && campaignUnit.getTemplate() == 3) {
                    NativeController nativeController3 = NativeController.this;
                    nativeController3.S = nativeController3.W;
                }
            }
            int i10 = 0;
            while (i10 < campaignUnit.getAds().size()) {
                CampaignEx campaignEx = campaignUnit.getAds().get(i10);
                campaignEx.setCampaignUnitId(this.unitId);
                if (!TextUtils.isEmpty(NativeController.this.N)) {
                    campaignEx.setBidToken(NativeController.this.N);
                    campaignEx.setIsBidCampaign(z10);
                }
                if (NativeController.f35407e0) {
                    campaignEx.loadIconUrlAsyncWithBlock(null);
                    campaignEx.loadImageUrlAsyncWithBlock(null);
                }
                boolean zC = t0.c(NativeController.this.f35416h, campaignEx.getPackageName());
                ?? r14 = NativeController.this;
                r14.a(((NativeController) r14).f35416h, campaignEx);
                if (i10 < NativeController.this.f35426r && campaignEx.getOfferType() != 99) {
                    if (t0.c(campaignEx)) {
                        campaignEx.setRtinsType(zC ? z10 : 2);
                    }
                    if (com.mbridge.msdk.foundation.same.c.b(NativeController.this.f35416h, campaignEx)) {
                        arrayList.add(campaignEx);
                        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                            arrayList3.add(campaignEx);
                        }
                    } else {
                        t0.a(this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.f34520x);
                        NativeController.this.Z = "APP ALREADY INSTALLED";
                    }
                    a(campaignEx, null, null);
                }
                if (i10 < NativeController.this.S && campaignEx.getOfferType() != 99) {
                    if (t0.c(campaignEx)) {
                        campaignEx.setRtinsType(zC ? 1 : 2);
                    }
                    if (!zC || t0.c(campaignEx)) {
                        arrayList2.add(campaignEx);
                    }
                }
                if (!jVarA.a(campaignEx.getId())) {
                    com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                    gVar.a(campaignEx.getId());
                    gVar.b(campaignEx.getFca());
                    gVar.c(campaignEx.getFcb());
                    gVar.a(0);
                    gVar.d(0);
                    gVar.a(System.currentTimeMillis());
                    jVarA.b(gVar);
                }
                com.mbridge.msdk.click.c.a(NativeController.this.f35416h, campaignEx.getMaitve(), campaignEx.getMaitve_src());
                i10++;
                z10 = true;
            }
            NativeController.this.d(arrayList3);
            int type = campaignUnit.getAds().get(0) != null ? campaignUnit.getAds().get(0).getType() : 1;
            com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(type);
            if (bVarA != null) {
                bVarA.a(this.unitId, arrayList2, NativeController.this.N);
            }
            if (arrayList.size() == 0) {
                if (NativeController.this.Z.contains("INSTALLED")) {
                    NativeController.this.a("APP ALREADY INSTALLED", a(), b(), campaignUnit.getAds().get(0));
                    new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
                    return;
                } else {
                    NativeController.this.a("v3 response error", a(), b(), campaignUnit.getAds().get(0));
                    new com.mbridge.msdk.foundation.error.b(880003);
                    return;
                }
            }
            NativeController nativeController4 = NativeController.this;
            nativeController4.c((List<Campaign>) nativeController4.a(type, (List<Campaign>) nativeController4.a(arrayList)));
            if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.unitId) && Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.unitId))) {
                com.mbridge.msdk.mbnative.controller.d.a(NativeController.this.f35427s, this.unitId);
                return;
            }
            int iIntValue = (!com.mbridge.msdk.mbnative.controller.d.d().containsKey(this.unitId) || (num = com.mbridge.msdk.mbnative.controller.d.d().get(this.unitId)) == null) ? 1 : num.intValue();
            int i11 = NativeController.this.f35426r + NativeController.this.f35428t;
            NativeController.this.f35428t = i11 <= iIntValue ? i11 : 0;
        }

        public void b(List<String> list) {
            this.f35475f = list;
        }

        private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                com.mbridge.msdk.foundation.same.c.a(campaignEx, NativeController.this.f35416h, cVar, new a(campaignEx, aVar));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }

        @Override
        public void a(int i10, String str) {
            NativeController.this.U = true;
            if (this.f35472c) {
                if (NativeController.this.f35430v || !this.f35474e) {
                    return;
                }
                NativeController.this.a(str, a(), b(), (CampaignEx) null);
                return;
            }
            if (i10 == -1) {
                com.mbridge.msdk.mbnative.controller.d.b(NativeController.this.f35427s, this.unitId);
                NativeController.this.f35428t = 0;
            }
            Runnable runnable = this.f35473d;
            if (runnable != null) {
                NativeController.this.f35498a.removeCallbacks(runnable);
            }
            if (NativeController.this.f35430v) {
                return;
            }
            if (a() == 1 || this.f35474e) {
                NativeController.this.a(str, a(), b(), (CampaignEx) null);
            }
        }

        public void a(Runnable runnable) {
            this.f35473d = runnable;
        }

        @Override
        public void a(List<Frame> list) {
            if (this.f35472c) {
                return;
            }
            Runnable runnable = this.f35473d;
            if (runnable != null) {
                NativeController.this.f35498a.removeCallbacks(runnable);
            }
            if (list == null || list.size() == 0) {
                if (NativeController.this.f35414f != null) {
                    NativeController.this.f35430v = true;
                    NativeController.this.f35414f.onAdLoadError("frame is empty");
                    return;
                }
                return;
            }
            Iterator<Frame> it = list.iterator();
            while (it.hasNext()) {
                List<CampaignEx> campaigns = it.next().getCampaigns();
                if (campaigns == null || campaigns.size() == 0) {
                    if (NativeController.this.f35414f != null) {
                        NativeController.this.f35430v = true;
                        NativeController.this.f35414f.onAdLoadError("ads in frame is empty");
                        return;
                    }
                    return;
                }
                for (CampaignEx campaignEx : campaigns) {
                    if (NativeController.f35407e0) {
                        campaignEx.loadImageUrlAsyncWithBlock(null);
                        campaignEx.loadIconUrlAsyncWithBlock(null);
                    }
                }
            }
            if (NativeController.this.f35414f != null) {
                NativeController.this.f35414f.onAdFramesLoaded(list);
            }
        }
    }

    public interface o {
        void a();
    }

    public class p implements Runnable {

        private int f35479a;

        private com.mbridge.msdk.foundation.same.task.d f35480b;

        private int f35481c;

        private String f35482d;

        public p(int i10, com.mbridge.msdk.foundation.same.task.d dVar, int i11, String str) {
            this.f35479a = i10;
            this.f35480b = dVar;
            this.f35481c = i11;
            this.f35482d = str;
        }

        @Override
        public void run() {
            this.f35480b.a(true);
            int i10 = this.f35479a;
            if (i10 == 1) {
                NativeController.this.U = true;
                NativeController.this.a("REQUEST_TIMEOUT", this.f35481c, this.f35482d, (CampaignEx) null);
            } else {
                if (i10 != 2) {
                    return;
                }
                if (!NativeController.this.f35430v || this.f35481c == 1) {
                    NativeController.this.a("REQUEST_TIMEOUT", this.f35481c, this.f35482d, (CampaignEx) null);
                }
            }
        }
    }

    private static class q implements H5DownLoadManager.IH5SourceDownloadListener {

        private String f35484a;

        private CampaignEx f35485b;

        private long f35486c = System.currentTimeMillis();

        private boolean f35487d;

        public q(String str, CampaignEx campaignEx, boolean z10) {
            this.f35487d = true;
            this.f35484a = str;
            this.f35485b = campaignEx;
            this.f35487d = z10;
        }

        @Override
        public void onFailed(String str, String str2) {
            try {
                if (this.f35487d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f35486c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 3, jCurrentTimeMillis + "", str, this.f35485b.getId(), this.f35484a, str2, "2");
                    mVar.n(this.f35485b.getRequestId());
                    mVar.k(this.f35485b.getCurrentLocalRid());
                    mVar.o(this.f35485b.getRequestIdNotice());
                    CampaignEx campaignEx = this.f35485b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f35485b.getId());
                    }
                    CampaignEx campaignEx2 = this.f35485b;
                    if (campaignEx2 != null) {
                        mVar.a(campaignEx2.getAdSpaceT());
                    }
                    mVar.a("1");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f35484a, this.f35485b);
                }
            } catch (Exception e10) {
                o0.b(NativeController.f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            try {
                if (this.f35487d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f35486c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 1, jCurrentTimeMillis + "", str, this.f35485b.getId(), this.f35484a, "", "2");
                    CampaignEx campaignEx = this.f35485b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f35485b.getId());
                    }
                    CampaignEx campaignEx2 = this.f35485b;
                    if (campaignEx2 != null) {
                        mVar.n(campaignEx2.getRequestId());
                        mVar.o(this.f35485b.getRequestIdNotice());
                        mVar.k(this.f35485b.getCurrentLocalRid());
                        mVar.a(this.f35485b.getAdSpaceT());
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        mVar.q(str2);
                    }
                    mVar.a("1");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f35484a, this.f35485b);
                }
            } catch (Exception e10) {
                o0.b(NativeController.f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    protected static class r extends Handler {

        private WeakReference<NativeController> f35488a;

        public r(NativeController nativeController) {
            this.f35488a = new WeakReference<>(nativeController);
        }

        @Override
        public void handleMessage(Message message) {
            WeakReference<NativeController> weakReference;
            NativeController nativeController;
            super.handleMessage(message);
            try {
                if (message.what == 0 && (weakReference = this.f35488a) != null && (nativeController = weakReference.get()) != null) {
                    nativeController.f35422n.a(message.arg1, (String) message.obj);
                }
                if (message.what == 1) {
                    WeakReference<NativeController> weakReference2 = this.f35488a;
                    NativeController nativeController2 = (weakReference2 == null || weakReference2.get() == null) ? null : this.f35488a.get();
                    if (nativeController2 != null) {
                        nativeController2.f35431w = true;
                        List<Campaign> listA = nativeController2.a(nativeController2.f35417i, nativeController2.f35426r, nativeController2.N);
                        if (nativeController2.f35430v) {
                            return;
                        }
                        nativeController2.c(listA);
                    }
                }
            } catch (Exception e10) {
                o0.b(NativeController.f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    private static class s extends com.mbridge.msdk.foundation.same.task.a {

        private CampaignEx f35489a;

        private WeakReference<View> f35490b;

        private WeakReference<List<View>> f35491c;

        private WeakReference<NativeController> f35492d;

        private WeakReference<com.iab.omid.library.mmadbridge.adsession.b> f35493e;

        public s(CampaignEx campaignEx, View view, List<View> list, NativeController nativeController, com.iab.omid.library.mmadbridge.adsession.b bVar) {
            this.f35489a = campaignEx;
            this.f35490b = new WeakReference<>(view);
            this.f35491c = new WeakReference<>(list);
            this.f35492d = new WeakReference<>(nativeController);
            this.f35493e = new WeakReference<>(bVar);
        }

        @Override
        public void cancelTask() {
        }

        @Override
        public void pauseTask(boolean z10) {
        }

        @Override
        public void runTask() {
            WeakReference<View> weakReference;
            try {
                if (this.f35492d == null || (weakReference = this.f35490b) == null || this.f35491c == null) {
                    return;
                }
                View view = weakReference.get();
                List<View> list = this.f35491c.get();
                NativeController nativeController = this.f35492d.get();
                WeakReference<com.iab.omid.library.mmadbridge.adsession.b> weakReference2 = this.f35493e;
                com.iab.omid.library.mmadbridge.adsession.b bVar = weakReference2 != null ? weakReference2.get() : null;
                if (view == null || nativeController == null) {
                    return;
                }
                nativeController.a(this.f35489a, view, list, bVar);
            } catch (Exception e10) {
                o0.b(NativeController.f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    private static final class t implements H5DownLoadManager.ZipDownloadListener {

        String f35494a;

        CampaignEx f35495b;

        private long f35496c = System.currentTimeMillis();

        private boolean f35497d;

        public t(String str, CampaignEx campaignEx, boolean z10) {
            this.f35497d = true;
            this.f35494a = str;
            this.f35495b = campaignEx;
            this.f35497d = z10;
        }

        @Override
        public void onFailed(String str, String str2) {
            try {
                if (this.f35497d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f35496c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 3, jCurrentTimeMillis + "", str2, this.f35495b.getId(), this.f35494a, str, "1");
                    CampaignEx campaignEx = this.f35495b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f35495b.getId());
                    }
                    CampaignEx campaignEx2 = this.f35495b;
                    if (campaignEx2 != null) {
                        mVar.n(campaignEx2.getRequestId());
                        mVar.k(this.f35495b.getCurrentLocalRid());
                        mVar.o(this.f35495b.getRequestIdNotice());
                        mVar.a(this.f35495b.getAdSpaceT());
                    }
                    mVar.a("2");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f35494a, this.f35495b);
                }
            } catch (Exception e10) {
                o0.b(NativeController.f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }

        @Override
        public void onSuccess(String str, String str2, boolean z10) {
            try {
                if (this.f35497d) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.f35496c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000043", 1, jCurrentTimeMillis + "", str, this.f35495b.getId(), this.f35494a, "", "1");
                    CampaignEx campaignEx = this.f35495b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        mVar.b(this.f35495b.getId());
                    }
                    CampaignEx campaignEx2 = this.f35495b;
                    if (campaignEx2 != null) {
                        mVar.n(campaignEx2.getRequestId());
                        mVar.k(this.f35495b.getCurrentLocalRid());
                        mVar.o(this.f35495b.getRequestIdNotice());
                        mVar.a(this.f35495b.getAdSpaceT());
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        mVar.q(str2);
                    }
                    mVar.a("2");
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f35494a, this.f35495b);
                }
            } catch (Exception e10) {
                o0.b(NativeController.f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    public NativeController(com.mbridge.msdk.mbnative.listener.a aVar, NativeListener.NativeTrackingListener nativeTrackingListener, Map<String, Object> map, Context context) {
        int iIntValue;
        Object obj;
        this.f35425q = 1;
        this.f35426r = 1;
        this.f35427s = -1;
        this.f35428t = 0;
        this.f35430v = false;
        this.f35431w = false;
        this.f35432x = false;
        this.f35433y = 0;
        this.f35434z = 0;
        this.A = 0;
        this.B = 0;
        this.F = new CopyOnWriteArrayList<>();
        this.G = new Hashtable<>();
        this.H = 1;
        this.I = 2;
        this.N = "";
        this.O = "";
        this.Z = "";
        this.f35416h = context;
        this.f35412d = map;
        this.f35413e = new com.mbridge.msdk.setting.j();
        this.f35414f = aVar;
        this.f35415g = nativeTrackingListener;
        this.D = new ArrayList();
        this.E = new ArrayList();
        String str = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
        this.f35417i = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!map.containsKey(MBridgeConstans.PLACEMENT_ID) || map.get(MBridgeConstans.PLACEMENT_ID) == null) {
            this.f35418j = "";
        } else {
            this.f35418j = (String) map.get(MBridgeConstans.PLACEMENT_ID);
        }
        if (map.containsKey(MBridgeConstans.PREIMAGE) && (obj = map.get(MBridgeConstans.PREIMAGE)) != null) {
            f35407e0 = ((Boolean) obj).booleanValue();
        }
        this.f35419k = new LinkedList();
        this.f35420l = new LinkedList();
        this.C = new com.mbridge.msdk.foundation.same.task.b(this.f35416h);
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f35498a = new r(this);
        if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY)) {
            this.f35429u = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
        }
        try {
            boolean zEquals = com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f35417i) ? Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f35417i)) : false;
            Object obj2 = map.get("ad_num");
            Object obj3 = map.get(MBridgeConstans.PROPERTIES_AD_FRAME_NUM);
            if (zEquals) {
                if (com.mbridge.msdk.mbnative.controller.d.c().containsKey(this.f35417i)) {
                    Integer num = com.mbridge.msdk.mbnative.controller.d.c().get(this.f35417i);
                    if (num != null) {
                        this.f35426r = num.intValue();
                    }
                    if (map.containsKey("ad_num") && obj2 != null) {
                        int iIntValue2 = ((Integer) obj2).intValue();
                        this.f35433y = iIntValue2;
                        this.f35425q = iIntValue2;
                    }
                    if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM) && obj3 != null) {
                        int iIntValue3 = ((Integer) obj3).intValue();
                        this.f35434z = iIntValue3;
                        this.A = iIntValue3;
                    }
                }
            } else if (map.containsKey("ad_num") && obj2 != null) {
                try {
                    iIntValue = ((Integer) obj2).intValue();
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(f35405c0, e10.getMessage());
                    }
                    iIntValue = 1;
                }
                iIntValue = iIntValue < 1 ? 1 : iIntValue;
                iIntValue = iIntValue > 10 ? 10 : iIntValue;
                this.f35426r = iIntValue;
                this.f35425q = iIntValue;
                if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM)) {
                    this.A = ((Integer) obj3).intValue();
                }
            } else if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM) && obj3 != null) {
                try {
                    this.A = ((Integer) obj3).intValue();
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(f35405c0, e11.getMessage());
                    }
                }
            }
        } catch (Exception e12) {
            o0.b(f35405c0, com.mbridge.msdk.mbnative.common.a.a(e12));
        }
        this.f35422n = new com.mbridge.msdk.foundation.same.report.h(this.f35416h);
        this.f35424p = new com.mbridge.msdk.click.a(this.f35416h, this.f35417i);
        try {
            int i10 = MBMediaView.f35824p0;
            this.L = true;
            Map<String, Object> map2 = this.f35412d;
            if (map2 != null && (map2.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) || this.f35412d.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) || map.containsKey(MBridgeConstans.NATIVE_VIDEO_SUPPORT))) {
                this.K = true;
            }
            com.mbridge.msdk.mbnative.controller.e.a(this.f35416h, this.f35417i);
            m0.a();
            if (TextUtils.isEmpty(this.f35417i)) {
                return;
            }
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f35416h)).a();
            int iA = a(map.containsKey(MBridgeConstans.NATIVE_INFO) ? (String) map.get(MBridgeConstans.NATIVE_INFO) : null);
            List<Campaign> listA = a(this.f35417i, iA <= 0 ? this.f35425q : iA);
            if (listA != null) {
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < listA.size(); i11++) {
                    CampaignEx campaignEx = (CampaignEx) listA.get(i11);
                    if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                        arrayList.add(campaignEx);
                    }
                }
                if (arrayList.size() > 0) {
                    Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                    com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(objInvoke, context, this.f35417i, new CopyOnWriteArrayList(arrayList), 1, null);
                    com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, String.class).invoke(objInvoke, this.f35417i);
                }
            }
        } catch (Throwable unused) {
            o0.b(f35405c0, "please import the nativex aar");
        }
    }

    private List<Campaign> e(List<Campaign> list) {
        if (list != null) {
            CampaignEx campaignEx = null;
            for (int size = list.size() - 1; size >= 0; size--) {
                try {
                    campaignEx = (CampaignEx) list.get(size);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (campaignEx != null && TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                    Campaign campaignRemove = list.remove(size);
                    com.mbridge.msdk.mbnative.cache.c.a(campaignEx.getType()).a(this.f35417i, campaignRemove, this.N);
                    o0.a(f35405c0, "remove no videoURL ads:" + campaignRemove);
                }
            }
        }
        return list;
    }

    private void f() {
        try {
            if (this.f35421m == null) {
                return;
            }
            JSONArray jSONArray = new JSONArray(this.f35421m);
            if (jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i10);
                    int iOptInt = jSONObject.optInt("id", 0);
                    if (2 == iOptInt) {
                        this.V = jSONObject.optInt("ad_num");
                        if (this.T > 0) {
                            jSONObject.remove("ad_num");
                            jSONObject.put("ad_num", this.T);
                        }
                    } else if (3 == iOptInt) {
                        this.W = jSONObject.optInt("ad_num");
                        if (this.T > 0) {
                            jSONObject.remove("ad_num");
                            jSONObject.put("ad_num", this.T);
                        }
                    }
                }
            }
            this.H = Math.max(this.V, this.W);
            this.f35421m = jSONArray.toString();
        } catch (JSONException e10) {
            o0.b(f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
    }

    public com.mbridge.msdk.setting.l h() {
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e("", this.f35417i);
        this.Q = lVarE;
        if (lVarE == null) {
            this.Q = com.mbridge.msdk.setting.l.i(this.f35417i);
        }
        return this.Q;
    }

    public String g() {
        return this.O;
    }

    public void i() {
        com.mbridge.msdk.foundation.same.task.a next;
        com.mbridge.msdk.foundation.same.task.b bVar = this.C;
        if (bVar != null) {
            bVar.a();
            this.C = null;
        }
        Hashtable<String, com.iab.omid.library.mmadbridge.adsession.b> hashtable = this.G;
        if (hashtable != null) {
            for (com.iab.omid.library.mmadbridge.adsession.b bVar2 : hashtable.values()) {
                if (bVar2 != null) {
                    bVar2.c();
                }
            }
            this.G.clear();
        }
        Handler handler = this.f35498a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f35415g = null;
        this.f35424p.c();
        try {
            Context context = this.f35416h;
            if (context != null) {
                com.mbridge.msdk.foundation.same.image.b.a(context).b();
            }
            List<com.mbridge.msdk.mbnative.controller.c> list = this.D;
            if (list != null && list.size() > 0) {
                Iterator<com.mbridge.msdk.mbnative.controller.c> it = this.D.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                this.D.clear();
                this.D = null;
            }
            List<com.mbridge.msdk.mbnative.controller.c.d> list2 = this.E;
            if (list2 != null && list2.size() > 0) {
                for (com.mbridge.msdk.mbnative.controller.c.d dVar : this.E) {
                }
                this.E.clear();
                this.E = null;
            }
            CopyOnWriteArrayList<com.mbridge.msdk.foundation.same.task.a> copyOnWriteArrayList = this.F;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return;
            }
            Iterator<com.mbridge.msdk.foundation.same.task.a> it2 = this.F.iterator();
            if (it2.hasNext() && (next = it2.next()) != null) {
                next.cancel();
                this.f35498a.removeCallbacks(next);
            }
            this.F.clear();
        } catch (Exception unused) {
        }
    }

    public void j() {
        List<Integer> list = this.f35409b;
        if (list != null && list.size() > 0) {
            Queue<Integer> queue = this.f35419k;
            if (queue != null && queue.size() > 0) {
                this.f35419k.clear();
            }
            for (Integer num : this.f35409b) {
                Queue<Integer> queue2 = this.f35419k;
                if (queue2 != null) {
                    queue2.add(num);
                }
            }
        }
        List<Integer> list2 = this.f35411c;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        Queue<Long> queue3 = this.f35420l;
        if (queue3 != null && queue3.size() > 0) {
            this.f35420l.clear();
        }
        for (Integer num2 : this.f35411c) {
            Queue<Long> queue4 = this.f35420l;
            if (queue4 != null) {
                queue4.add(Long.valueOf(num2.intValue() * 1000));
            }
        }
    }

    public void d(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    try {
                        int i10 = MBMediaView.f35824p0;
                        Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                        if (objInvoke != null) {
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(objInvoke, this.f35416h, this.f35417i, new CopyOnWriteArrayList(list), 1, null);
                            com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, String.class).invoke(objInvoke, this.f35417i);
                        }
                        Iterator<CampaignEx> it = list.iterator();
                        while (it.hasNext()) {
                            CampaignEx next = it.next();
                            if (next != null && !TextUtils.isEmpty(next.getImageUrl())) {
                                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(next.getImageUrl(), new c());
                            }
                            String str = "";
                            if (next != null) {
                                try {
                                    str = next.getendcard_url();
                                } catch (Exception unused) {
                                }
                            }
                            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            cVar.a(next);
                            if (!TextUtils.isEmpty(str)) {
                                cVar.f((next == null || next.getAabEntity() == null) ? 0 : next.getAabEntity().h3c);
                                if (str.contains(".zip") && str.contains(ResourceManager.KEY_MD5FILENAME)) {
                                    H5DownLoadManager.getInstance().downloadH5Res(cVar, str, new t(this.f35417i, next, TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str))));
                                } else {
                                    H5DownLoadManager.getInstance().downloadH5Res(cVar, str, new q(this.f35417i, next, TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str))));
                                }
                            }
                        }
                    } catch (Throwable unused2) {
                        o0.b(f35405c0, "please import the videocommon and nativex aar");
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public boolean c(List<Campaign> list) {
        if ((!TextUtils.isEmpty(this.N) && list != null && list.size() == 0) || list == null || list.size() <= 0) {
            return false;
        }
        com.mbridge.msdk.mbnative.listener.a aVar = this.f35414f;
        if (aVar == null) {
            return true;
        }
        CampaignEx campaignEx = (CampaignEx) list.get(0);
        if (campaignEx != null && campaignEx.isActiveOm()) {
            com.iab.omid.library.mmadbridge.adsession.b bVarA = a(campaignEx);
            this.f35408a0 = bVarA;
            if (bVarA != null) {
                bVarA.g();
                com.iab.omid.library.mmadbridge.adsession.a aVarA = com.iab.omid.library.mmadbridge.adsession.a.a(this.f35408a0);
                this.f35410b0 = aVarA;
                aVarA.c();
            }
        }
        int template = campaignEx != null ? campaignEx.getTemplate() : 2;
        com.mbridge.msdk.foundation.db.j jVarA = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f35416h));
        jVarA.a();
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx2 = (CampaignEx) list.get(i10);
            if (!jVarA.a(campaignEx2.getId())) {
                com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                gVar.a(campaignEx2.getId());
                gVar.b(campaignEx2.getFca());
                gVar.c(campaignEx2.getFcb());
                gVar.a(0);
                gVar.d(0);
                gVar.a(System.currentTimeMillis());
                jVarA.b(gVar);
            }
        }
        if (this.L && this.K) {
            if (h().m() == 3) {
                List<Campaign> listE = e(list);
                if (list.size() > 0) {
                    a(list, new l(listE, template, aVar, list));
                    return true;
                }
                a(aVar, "has no ads", (CampaignEx) null);
                return true;
            }
            List<Campaign> listB = b(list);
            if (listB != null && listB.size() > 0) {
                a(listB, new m(list, template, aVar));
                return true;
            }
            a(list, template, aVar);
            return true;
        }
        if (list.size() > 0) {
            Iterator<Campaign> it = list.iterator();
            while (it.hasNext()) {
                it.next().setVideoLength(0);
            }
            a(list, template, aVar);
            return true;
        }
        a(aVar, "has no ads", (CampaignEx) null);
        return true;
    }

    public static boolean b(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        try {
            return map.containsKey("app_id") && map.containsKey(MBridgeConstans.APP_KEY) && map.containsKey(MBridgeConstans.KEY_WORD) && map.get(MBridgeConstans.KEY_WORD) != null;
        } catch (Exception e10) {
            o0.b(f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            return false;
        }
    }

    public void b(int i10, String str) {
        com.mbridge.msdk.mbnative.listener.a aVar;
        Long lPoll;
        Queue<Integer> queue = this.f35419k;
        if (queue != null && queue.size() > 0) {
            Integer numPoll = this.f35419k.poll();
            int iIntValue = numPoll != null ? numPoll.intValue() : 1;
            this.R = MBridgeConstans.REQUEST_TIME_OUT;
            Queue<Long> queue2 = this.f35420l;
            if (queue2 != null && queue2.size() > 0 && (lPoll = this.f35420l.poll()) != null) {
                this.R = lPoll.longValue();
            }
            b(iIntValue, this.R, i10, str);
            return;
        }
        if (this.f35430v || (aVar = this.f35414f) == null) {
            return;
        }
        this.f35430v = true;
        aVar.onAdLoadError("no ad source");
    }

    public String e() {
        ArrayList arrayList = new ArrayList();
        List<Campaign> list = this.Y;
        if (list != null) {
            for (Campaign campaign : list) {
                CampaignEx campaignEx = new CampaignEx();
                campaignEx.setCreativeId(campaign.getCreativeId());
                arrayList.add(campaignEx);
            }
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    public static List<String> a(Map<String, Object> map) {
        Exception e10;
        ArrayList arrayList = null;
        try {
            if (!(map.get(MBridgeConstans.KEY_WORD) instanceof String)) {
                return null;
            }
            String str = (String) map.get(MBridgeConstans.KEY_WORD);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() == 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString(TtmlNode.TAG_P);
                        if (TextUtils.isEmpty(strOptString)) {
                            continue;
                        } else {
                            arrayList2.add(strOptString);
                        }
                    }
                } catch (Exception e11) {
                    e10 = e11;
                    arrayList = arrayList2;
                }
            }
            return arrayList2;
        } catch (Exception e12) {
            e10 = e12;
        }
        o0.b(f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        return arrayList;
    }

    public void b(int i10, long j10, int i11, String str) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        if (i11 == 0 && (bVarA = com.mbridge.msdk.mbnative.cache.c.a(i10)) != null) {
            if ((i10 == 1 || i10 == 2) && this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                this.f35426r = this.H;
            } else {
                this.f35426r = this.f35425q;
            }
            if (c(a(i10, a(bVarA.a(this.f35417i, this.f35426r))))) {
                return;
            }
        }
        if (i10 == 1) {
            a(j10, i11, true, this.f35417i, str);
        } else if (i10 != 2) {
            a(i10, j10, i11, str);
        } else {
            a(2, j10, i11, str);
        }
    }

    public List<Campaign> a(String str, int i10) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e("", str);
        this.Q = lVarE;
        if (lVarE == null) {
            this.Q = com.mbridge.msdk.setting.l.i(str);
        }
        List<Integer> listB = this.Q.b();
        this.f35409b = listB;
        if (listB == null || listB.size() <= 0 || !this.f35409b.contains(1) || (bVarA = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return bVarA.a(str, i10);
    }

    public void b(Context context, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.needShowIDialog() && com.mbridge.msdk.util.b.a()) {
                    h hVar = new h(campaignEx);
                    if (com.mbridge.msdk.click.c.a(campaignEx) && campaignEx.needShowIDialog()) {
                        if (a(this.f35424p, context, campaignEx, this.f35417i, hVar)) {
                            return;
                        }
                        b(campaignEx);
                        this.f35414f.onAdClick(campaignEx);
                        return;
                    }
                }
            } catch (Throwable th2) {
                o0.a(f35405c0, th2.getMessage());
            }
        }
        this.f35424p.a(campaignEx, this.f35414f);
        b(campaignEx);
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i10);
                    if (2 == jSONObject.optInt("id", 0)) {
                        return jSONObject.optInt("ad_num");
                    }
                }
            }
        } catch (Exception e10) {
            o0.b(f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
        return 0;
    }

    public void d() {
        m0.b();
    }

    public void b(CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.isReportClick()) {
            return;
        }
        campaignEx.setReportClick(true);
        if (campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(this.f35416h, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public void a(String str, String str2) {
        this.f35413e.a(this.f35416h, str, str2, this.f35417i);
    }

    public void a(int i10, String str) {
        boolean zEquals = false;
        this.f35430v = false;
        this.f35431w = false;
        this.f35432x = false;
        this.U = false;
        this.N = str;
        this.f35414f.a(!TextUtils.isEmpty(str));
        this.J = null;
        Map<String, Long> map = f35406d0;
        if (map != null && map.size() > 0) {
            f35406d0.clear();
        }
        if (com.mbridge.msdk.mbnative.controller.d.g() != null && com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f35417i)) {
            zEquals = Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f35417i));
        }
        a(zEquals, i10);
    }

    public void b(Campaign campaign, View view) {
        b(campaign, view, null);
    }

    public void c() {
        Timer timer = this.M;
        if (timer != null) {
            timer.cancel();
            this.M = null;
        }
    }

    public void b(Campaign campaign, View view, List<View> list) {
        Class<MBMediaView> cls;
        if (view != null && this.P != null) {
            try {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.P);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (campaign != null) {
            int type = campaign.getType();
            if (type == 1 || type == 2) {
                try {
                    cls = MBMediaView.class;
                    int i10 = MBMediaView.f35824p0;
                } catch (Throwable unused) {
                    cls = null;
                }
                if (list == null || list.size() <= 0) {
                    if (view != null) {
                        a(view, cls);
                    }
                } else {
                    Iterator<View> it = list.iterator();
                    while (it.hasNext()) {
                        a(it.next(), cls);
                    }
                }
            }
        }
    }

    private List<Campaign> b(List<Campaign> list) {
        ArrayList arrayList = null;
        if (list != null) {
            for (Campaign campaign : list) {
                if (campaign instanceof CampaignEx) {
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    if (TextUtils.isEmpty(campaignEx.getImageUrl()) && !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(campaign);
                    }
                }
            }
        }
        return arrayList;
    }

    private void a(boolean z10, int i10) {
        boolean zB;
        if (z10 && i10 == 1 && a(i10)) {
            return;
        }
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        String strC = com.mbridge.msdk.foundation.controller.c.m().c();
        if (this.f35412d.containsKey("app_id") && this.f35412d.containsKey(MBridgeConstans.APP_KEY) && this.f35412d.containsKey(MBridgeConstans.KEY_WORD)) {
            strB = (String) this.f35412d.get("app_id");
            strC = (String) this.f35412d.get(MBridgeConstans.APP_KEY);
        }
        a(strB, strC);
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(strB, this.f35417i);
        this.Q = lVarE;
        if (lVarE == null) {
            this.Q = com.mbridge.msdk.setting.l.i(this.f35417i);
        }
        com.mbridge.msdk.mbnative.controller.d.d().put(this.f35417i, Integer.valueOf(this.Q.y() * this.f35426r));
        this.f35409b = this.Q.b();
        this.f35411c = this.Q.c();
        this.T = this.Q.f();
        this.S = this.Q.e();
        this.f35426r = this.f35425q;
        List<Integer> list = this.f35409b;
        if (list != null && list.size() != 0) {
            try {
                zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception unused) {
                zB = false;
            }
            if (!zB) {
                com.mbridge.msdk.mbnative.listener.a aVar = this.f35414f;
                if (aVar != null) {
                    aVar.onAdLoadError("webview is not available");
                    return;
                }
                return;
            }
            if (this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO) && this.f35421m == null) {
                this.f35421m = (String) this.f35412d.get(MBridgeConstans.NATIVE_INFO);
                f();
            }
            if ((!this.f35409b.contains(1) || this.f35409b.get(0).intValue() == 1) && i10 == 0 && c(a(this.f35417i, this.f35426r, this.N))) {
                return;
            }
            this.X = true;
            if (this.f35409b.contains(1) && i10 == 0 && this.f35409b.get(0).intValue() != 1) {
                int iIntValue = this.f35409b.get(0).intValue();
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(iIntValue);
                if (iIntValue == 2 && this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    this.f35426r = this.H;
                } else {
                    this.f35426r = this.f35425q;
                }
                if (bVarA != null && c(a(iIntValue, a(bVarA.a(this.f35417i, this.f35426r))))) {
                    return;
                }
                this.X = false;
                try {
                    a(this.f35411c.get(this.f35409b.indexOf(1)).intValue() * 1000, i10, false, this.f35417i, this.N);
                } catch (Exception unused2) {
                }
            }
            this.f35498a.sendEmptyMessageDelayed(1, this.Q.K() * 1000);
            j();
            b(i10, this.N);
            return;
        }
        com.mbridge.msdk.mbnative.listener.a aVar2 = this.f35414f;
        if (aVar2 != null) {
            this.f35430v = true;
            aVar2.onAdLoadError("do not have sorceList");
        }
    }

    public NativeController() {
        this.f35425q = 1;
        this.f35426r = 1;
        this.f35427s = -1;
        this.f35428t = 0;
        this.f35430v = false;
        this.f35431w = false;
        this.f35432x = false;
        this.f35433y = 0;
        this.f35434z = 0;
        this.A = 0;
        this.B = 0;
        this.F = new CopyOnWriteArrayList<>();
        this.G = new Hashtable<>();
        this.H = 1;
        this.I = 2;
        this.N = "";
        this.O = "";
        this.Z = "";
    }

    public boolean a(int i10) {
        int iMin;
        int iOptInt;
        int iOptInt2;
        com.mbridge.msdk.mbnative.listener.a aVar;
        int i11 = 0;
        if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f35417i) && Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f35417i))) {
            Map<String, Map<Long, Object>> mapF = com.mbridge.msdk.mbnative.controller.d.f();
            Map<Long, Object> map = mapF.get(i10 + "_" + this.f35417i);
            Integer num = com.mbridge.msdk.mbnative.controller.d.c().get(this.f35417i);
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (num != null) {
                this.f35426r = num.intValue();
            }
            if (map != null && map.size() > 0) {
                Long next = map.keySet().iterator().next();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (gVarD == null) {
                    gVarD = com.mbridge.msdk.setting.h.b().a();
                }
                if (jCurrentTimeMillis - next.longValue() >= gVarD.Z() * 1000) {
                    mapF.remove(i10 + "_" + this.f35417i);
                } else {
                    if (i10 == 1) {
                        List<Frame> list = (List) map.get(next);
                        if (list == null || list.size() <= 0 || (aVar = this.f35414f) == null) {
                            return false;
                        }
                        if (this.A >= list.size()) {
                            mapF.remove(i10 + "_" + this.f35417i);
                            aVar.onAdFramesLoaded(list);
                            return true;
                        }
                        if (this.A == 0) {
                            return false;
                        }
                        List<Frame> listSubList = list.subList(0, this.f35434z);
                        aVar.onAdFramesLoaded(list);
                        list.removeAll(listSubList);
                        map.put(next, listSubList);
                        ArrayList arrayList = new ArrayList();
                        for (Frame frame : list) {
                            if (i11 >= this.A) {
                                arrayList.add(frame);
                            }
                            i11++;
                        }
                        map.put(next, arrayList);
                        mapF.put(i10 + "_" + this.f35417i, map);
                        aVar.onAdFramesLoaded(listSubList);
                        return true;
                    }
                    List list2 = (List) map.get(next);
                    if (list2 != null && list2.size() > 0) {
                        List<Campaign> arrayList2 = new ArrayList<>();
                        if (((CampaignEx) list2.get(0)).getType() == 1) {
                            if (TextUtils.isEmpty(this.f35421m)) {
                                iMin = Math.min(this.f35433y, list2.size());
                            } else {
                                try {
                                    JSONArray jSONArray = new JSONArray(this.f35421m);
                                    if (jSONArray.length() > 0) {
                                        iOptInt = 0;
                                        iOptInt2 = 0;
                                        for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                                            JSONObject jSONObject = (JSONObject) jSONArray.opt(i12);
                                            int iOptInt3 = jSONObject.optInt("id", 0);
                                            if (2 == iOptInt3) {
                                                iOptInt = jSONObject.optInt("ad_num");
                                            } else if (3 == iOptInt3) {
                                                iOptInt2 = jSONObject.optInt("ad_num");
                                            }
                                        }
                                    } else {
                                        iOptInt = 0;
                                        iOptInt2 = 0;
                                    }
                                    if (3 == ((CampaignEx) list2.get(0)).getTemplate()) {
                                        iMin = Math.min(iOptInt2, list2.size());
                                    } else {
                                        iMin = Math.min(iOptInt, list2.size());
                                    }
                                } catch (Exception unused) {
                                    o0.b(f35405c0, "load from catch error in get nativeinfo adnum");
                                    iMin = 0;
                                }
                            }
                            if (iMin <= 0) {
                                return false;
                            }
                            Iterator it = list2.iterator();
                            while (it.hasNext() && i11 != iMin) {
                                CampaignEx campaignEx = (CampaignEx) it.next();
                                campaignEx.getTemplate();
                                arrayList2.add(campaignEx);
                                it.remove();
                                i11++;
                            }
                        } else {
                            int iMin2 = Math.min(this.f35433y, list2.size());
                            if (iMin2 > 0) {
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext() && i11 != iMin2) {
                                    CampaignEx campaignEx2 = (CampaignEx) it2.next();
                                    campaignEx2.getTemplate();
                                    arrayList2.add(campaignEx2);
                                    it2.remove();
                                    i11++;
                                }
                            }
                        }
                        c(arrayList2);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void a(String str, int i10, String str2, CampaignEx campaignEx) {
        Queue<Integer> queue = this.f35419k;
        if ((queue != null && queue.size() <= 0) || this.f35419k == null) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f35414f;
            if (aVar == null || this.f35430v) {
                return;
            }
            this.f35430v = true;
            aVar.a(campaignEx, str);
            return;
        }
        b(i10, str2);
    }

    @Override
    public synchronized void a(int i10, long j10, int i11, String str) {
        n nVar;
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar;
        int i12;
        com.mbridge.msdk.foundation.entity.k kVar;
        try {
            try {
                if (this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    this.f35426r = Math.max(this.V, this.W);
                }
                if (i11 == 0) {
                    com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(i10);
                    if (bVarA != null && c(a(1, a(bVarA.a(this.f35417i, this.f35426r))))) {
                        return;
                    }
                    n nVar2 = this.J;
                    if (nVar2 != null && !this.U) {
                        nVar2.b(true);
                    }
                    if (this.U && !this.f35430v) {
                        a("mb load failed", i11, str, (CampaignEx) null);
                    }
                    if (!this.X) {
                        return;
                    }
                }
                int i13 = this.f35427s;
                if (i13 == -1) {
                    this.f35427s = i10;
                } else if (i13 != i10) {
                    this.f35428t = 0;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f35416h)).a();
                com.mbridge.msdk.mbnative.service.net.a aVar = new com.mbridge.msdk.mbnative.service.net.a(this.f35416h);
                com.mbridge.msdk.foundation.same.net.wrapper.e eVar2 = new com.mbridge.msdk.foundation.same.net.wrapper.e();
                String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                String strC = com.mbridge.msdk.foundation.controller.c.m().c();
                Map<String, Object> map = this.f35412d;
                if (map != null && map.containsKey("app_id") && this.f35412d.containsKey(MBridgeConstans.APP_KEY) && this.f35412d.containsKey(MBridgeConstans.KEY_WORD) && this.f35412d.get(MBridgeConstans.KEY_WORD) != null) {
                    if (this.f35412d.get("app_id") instanceof String) {
                        strB = (String) this.f35412d.get("app_id");
                    }
                    if (this.f35412d.get(MBridgeConstans.APP_KEY) instanceof String) {
                        strC = (String) this.f35412d.get(MBridgeConstans.APP_KEY);
                    }
                    String str2 = this.f35412d.get(MBridgeConstans.KEY_WORD) instanceof String ? (String) this.f35412d.get(MBridgeConstans.KEY_WORD) : null;
                    if (!TextUtils.isEmpty(str2)) {
                        eVar2.a("smart", i0.b(str2));
                    }
                }
                eVar2.a("app_id", strB);
                eVar2.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35417i);
                if (!TextUtils.isEmpty(this.f35418j)) {
                    eVar2.a(MBridgeConstans.PLACEMENT_ID, this.f35418j);
                }
                eVar2.a("req_type", "2");
                if (!TextUtils.isEmpty(this.f35429u)) {
                    eVar2.a("category", this.f35429u);
                }
                eVar2.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(strB + strC));
                if (this.T > 0 && i11 == 0) {
                    eVar2.a("ad_num", this.T + "");
                } else {
                    eVar2.a("ad_num", this.f35425q + "");
                }
                String strD = t0.d(this.f35417i);
                if (!TextUtils.isEmpty(strD)) {
                    eVar2.a("j", strD);
                }
                eVar2.a("only_impression", "1");
                eVar2.a("ping_mode", "1");
                if (this.A != 0) {
                    eVar2.a("frame_num", this.A + "");
                }
                if (!TextUtils.isEmpty(this.f35421m)) {
                    eVar2.a(MBridgeConstans.NATIVE_INFO, this.f35421m);
                    if (i10 == 1) {
                        eVar2.a("tnum", this.H + "");
                    }
                } else if (i10 == 1) {
                    eVar2.a("tnum", this.f35425q + "");
                }
                a(eVar2, i10);
                String strA = com.mbridge.msdk.foundation.same.buffer.b.a(this.f35417i, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                }
                if (this.f35412d.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) && (this.f35412d.get(MBridgeConstans.NATIVE_VIDEO_WIDTH) instanceof Integer)) {
                    eVar2.a("video_width", ((Integer) this.f35412d.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f35412d.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) && (this.f35412d.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT) instanceof Integer)) {
                    eVar2.a("video_height", ((Integer) this.f35412d.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                if (this.f35412d.containsKey(MBridgeConstans.NATIVE_VIDEO_SUPPORT) && (this.f35412d.get(MBridgeConstans.NATIVE_VIDEO_SUPPORT) instanceof Boolean)) {
                    ((Boolean) this.f35412d.get(MBridgeConstans.NATIVE_VIDEO_SUPPORT)).booleanValue();
                }
                eVar2.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                if (com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                    com.mbridge.msdk.setting.h.b().a();
                }
                if (!b(this.f35412d)) {
                    JSONArray jSONArrayB = t0.b(this.f35416h, this.f35417i);
                    if (jSONArrayB.length() > 0) {
                        eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34669h, t0.a(jSONArrayB));
                    }
                }
                if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f35417i) && com.mbridge.msdk.mbnative.controller.d.g().get(this.f35417i).booleanValue() && com.mbridge.msdk.mbnative.controller.d.e().get(this.f35417i) != null && (kVar = com.mbridge.msdk.mbnative.controller.d.e().get(this.f35417i)) != null) {
                    if (i10 == 1) {
                        this.f35428t = kVar.a();
                    } else if (i10 == 2) {
                        this.f35428t = kVar.b();
                    }
                }
                eVar2.a("offset", this.f35428t + "");
                eVar2.a("ad_type", "42");
                eVar2.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                if (!TextUtils.isEmpty(this.f35423o)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34670i, this.f35423o);
                }
                n nVar3 = new n();
                nVar3.b(a(this.f35412d));
                nVar3.setUnitId(this.f35417i);
                nVar3.setPlacementId(this.f35418j);
                nVar3.setAdType(42);
                nVar3.b(true);
                p pVar = new p(1, nVar3, i11, str);
                nVar3.a(pVar);
                nVar3.a(i11);
                nVar3.a(str);
                if (i11 == 0) {
                    if (!TextUtils.isEmpty(str)) {
                        eVar2.a("token", str);
                    }
                    nVar = nVar3;
                    eVar = eVar2;
                    i12 = 1;
                    aVar.choiceV3OrV5BySetting(1, eVar, nVar, str, com.mbridge.msdk.foundation.same.c.a(j10, 30000L));
                } else {
                    nVar = nVar3;
                    eVar = eVar2;
                    i12 = 1;
                }
                if (i11 == i12) {
                    aVar.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, nVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j10, 30000L));
                }
                this.f35498a.postDelayed(pVar, j10);
            } catch (Exception e10) {
                String str3 = f35405c0;
                o0.b(str3, com.mbridge.msdk.mbnative.common.a.a(e10));
                o0.b(str3, e10.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(View view, CampaignEx campaignEx) {
        BitmapDrawable bitmapDrawableA;
        ImageView imageView;
        if (!(view instanceof FrameLayout) || (bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f35417i, campaignEx.getAdType())) == null) {
            return;
        }
        try {
            int childCount = ((ViewGroup) view).getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    imageView = null;
                    break;
                }
                View childAt = ((ViewGroup) view).getChildAt(i10);
                if ((childAt instanceof ImageView) && childAt.getTag() != null && "mb_wm".equals((String) childAt.getTag())) {
                    ((ImageView) childAt).setLayoutParams(new FrameLayout.LayoutParams(view.getWidth(), view.getHeight()));
                    imageView = (ImageView) childAt;
                    break;
                }
                i10++;
            }
            if (imageView == null) {
                imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                imageView.setTag("mb_wm");
                t0.a(imageView, bitmapDrawableA, view.getResources().getDisplayMetrics());
                if (imageView.getParent() == null) {
                    ((FrameLayout) view).addView(imageView, new FrameLayout.LayoutParams(view.getWidth(), view.getHeight()));
                }
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.f35408a0;
                if (bVar != null) {
                    bVar.a(imageView, FriendlyObstructionPurpose.OTHER, null);
                }
            }
            this.P = new e(imageView, view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.P);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(Campaign campaign, View view, List<View> list) {
        Class<MBMediaView> cls;
        try {
            a(view, (CampaignEx) campaign);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f35415g;
            if (nativeTrackingListener != null) {
                this.f35424p.a(nativeTrackingListener);
            }
            com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f35417i, campaign, this.N);
            CampaignEx campaignEx = (CampaignEx) campaign;
            try {
                cls = MBMediaView.class;
                int i10 = MBMediaView.f35824p0;
            } catch (Throwable unused) {
                cls = null;
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f35417i, campaignEx, "native");
            if (view != null) {
                if (cls != null && cls.isInstance(view)) {
                    return;
                } else {
                    view.setOnClickListener(new f(campaignEx));
                }
            }
            if (list != null && list.size() > 0) {
                for (View view2 : list) {
                    if (cls != null && cls.isInstance(view2)) {
                        break;
                    } else {
                        view2.setOnClickListener(new g(campaignEx));
                    }
                }
            }
            if (campaignEx.isReport()) {
                return;
            }
            a(campaignEx, view, list);
            Log.e(f35405c0, "sendImpression" + campaignEx);
        } catch (Exception unused2) {
            o0.b(f35405c0, "registerview exception!");
        }
    }

    public void a(Campaign campaign, View view) {
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f35415g;
            if (nativeTrackingListener != null) {
                this.f35424p.a(nativeTrackingListener);
            }
            com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f35417i, campaign, this.N);
            CampaignEx campaignEx = (CampaignEx) campaign;
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f35417i, campaignEx, "native");
            i iVar = new i(campaignEx);
            try {
                int i10 = MBMediaView.f35824p0;
                a(view, iVar, MBMediaView.class);
            } catch (Throwable unused) {
                a(view, iVar, (Class) null);
            }
            if (!com.mbridge.msdk.util.b.a()) {
                a(view, (CampaignEx) campaign);
            }
            if (campaignEx.isReport()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(view);
            a(campaignEx, view, (List<View>) arrayList);
            o0.c(f35405c0, "sendImpression" + campaignEx);
        } catch (Exception unused2) {
            o0.b(f35405c0, "registerview exception!");
        }
    }

    private com.iab.omid.library.mmadbridge.adsession.b a(CampaignEx campaignEx) {
        if (this.G == null) {
            this.G = new Hashtable<>();
        }
        String requestIdNotice = campaignEx.getRequestIdNotice();
        com.iab.omid.library.mmadbridge.adsession.b bVarA = this.G.get(requestIdNotice);
        if (bVarA == null && campaignEx.isActiveOm() && TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            bVarA = com.mbridge.msdk.omsdk.b.a(this.f35416h, true, campaignEx.getOmid(), campaignEx.getRequestId(), campaignEx.getId(), this.f35417i, "", campaignEx.getRequestIdNotice());
        }
        if (bVarA != null) {
            this.G.put(requestIdNotice, bVarA);
        }
        return bVarA;
    }

    private void a(CampaignEx campaignEx, View view, List<View> list) {
        com.iab.omid.library.mmadbridge.adsession.b bVarA;
        try {
            if (this.f35416h == null || campaignEx == null) {
                bVarA = null;
            } else {
                bVarA = a(campaignEx);
                if (bVarA != null) {
                    bVarA.d(view);
                    bVarA.g();
                }
            }
            com.iab.omid.library.mmadbridge.adsession.b bVar = bVarA;
            com.mbridge.msdk.setting.l lVar = this.Q;
            int iS = lVar != null ? lVar.s() : 0;
            if (campaignEx != null && campaignEx.getImpReportType() == 1) {
                iS = 0;
            }
            s sVar = new s(campaignEx, view, list, this, bVar);
            if (this.F == null) {
                this.F = new CopyOnWriteArrayList<>();
            }
            this.F.add(sVar);
            sVar.setOnStateChangeListener(new j(sVar));
            Handler handler = this.f35498a;
            if (handler != null) {
                handler.postDelayed(sVar, iS * 1000);
            }
        } catch (Exception e10) {
            o0.b(f35405c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
    }

    private void a(View view, View.OnClickListener onClickListener, Class cls) {
        if (view == null || onClickListener == null) {
            return;
        }
        if (cls != null) {
            try {
                if (cls.isInstance(view)) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                a(viewGroup.getChildAt(i10), onClickListener, cls);
            }
        }
    }

    public void a(CampaignEx campaignEx, View view, List<View> list, com.iab.omid.library.mmadbridge.adsession.b bVar) {
        try {
            k kVar = new k(campaignEx);
            com.mbridge.msdk.mbnative.controller.c cVar = new com.mbridge.msdk.mbnative.controller.c(list, kVar, new Handler(Looper.getMainLooper()), campaignEx.getImpReportType());
            cVar.a(view);
            List<com.mbridge.msdk.mbnative.controller.c> list2 = this.D;
            if (list2 != null) {
                list2.add(cVar);
            }
            List<com.mbridge.msdk.mbnative.controller.c.d> list3 = this.E;
            if (list3 != null) {
                list3.add(kVar);
            }
            com.iab.omid.library.mmadbridge.adsession.a aVar = this.f35410b0;
            if (aVar != null) {
                aVar.b();
            }
        } catch (Exception unused) {
        }
    }

    private void a(View view, Class cls) {
        if (view == null) {
            return;
        }
        if (cls != null) {
            try {
                if (cls.isInstance(view)) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        view.setOnClickListener(null);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                a(viewGroup.getChildAt(i10), cls);
            }
        }
    }

    public List<Campaign> a(String str, int i10, String str2) {
        int i11;
        int i12;
        List<Campaign> listA = null;
        if (this.f35409b != null) {
            ArrayList arrayList = new ArrayList(this.f35409b);
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(((Integer) arrayList.get(i13)).intValue());
                if (bVarA != null) {
                    if ((((Integer) arrayList.get(i13)).intValue() == 1 || ((Integer) arrayList.get(i13)).intValue() == 2) && this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                        i12 = this.H;
                    } else {
                        i12 = this.f35425q;
                    }
                    listA = a(((Integer) arrayList.get(i13)).intValue(), bVarA.a(str, i12));
                    if (listA != null) {
                        break;
                    }
                }
            }
            if (listA == null) {
                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                    com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA2 = com.mbridge.msdk.mbnative.cache.c.a(((Integer) arrayList.get(i14)).intValue());
                    if ((((Integer) arrayList.get(i14)).intValue() == 1 || ((Integer) arrayList.get(i14)).intValue() == 2) && this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                        i11 = this.H;
                    } else {
                        i11 = this.f35425q;
                    }
                    listA = a(((Integer) arrayList.get(i14)).intValue(), bVarA2.b(str, i11));
                    if (listA != null) {
                        break;
                    }
                }
            }
        }
        return a(listA);
    }

    public void a(List<Campaign> list, int i10, NativeListener.NativeAdListener nativeAdListener) {
        this.f35498a.post(new a(list, nativeAdListener, i10));
    }

    public void a(com.mbridge.msdk.mbnative.listener.a aVar, String str, CampaignEx campaignEx) {
        this.f35498a.post(new b(aVar, campaignEx, str));
    }

    public List<Campaign> a(int i10, List<Campaign> list) {
        if (i10 != 1 || !this.f35412d.containsKey(MBridgeConstans.NATIVE_INFO) || list == null || list.size() <= 0) {
            return list;
        }
        CampaignEx campaignEx = (CampaignEx) list.get(0);
        int template = campaignEx != null ? campaignEx.getTemplate() : 1;
        if (template == 2) {
            int size = list.size();
            int i11 = this.V;
            return size >= i11 ? list.subList(0, i11) : list;
        }
        if (template != 3) {
            return list;
        }
        int size2 = list.size();
        int i12 = this.W;
        return size2 >= i12 ? list.subList(0, i12) : list;
    }

    private void a(List<Campaign> list, o oVar) {
        c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Timer timer = new Timer();
        this.M = timer;
        timer.schedule(new d(jCurrentTimeMillis, oVar, list), 0L, 1000L);
    }

    public List<Campaign> a(List<Campaign> list, boolean z10) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                Campaign campaign = list.get(size);
                String id2 = campaign.getId();
                boolean z11 = campaign instanceof CampaignEx;
                if (z11) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(id2);
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    sb2.append(campaignEx.getVideoUrlEncode());
                    sb2.append(campaignEx.getBidToken());
                    id2 = sb2.toString();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f35417i, id2);
                if (z10) {
                    if (aVarA == null || !com.mbridge.msdk.videocommon.download.l.a(aVarA, h().C())) {
                        com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f35417i, list.remove(size), this.N);
                    }
                } else if (z11) {
                    CampaignEx campaignEx2 = (CampaignEx) campaign;
                    if (TextUtils.isEmpty(campaignEx2.getImageUrl()) && !TextUtils.isEmpty(campaignEx2.getVideoUrlEncode()) && (aVarA == null || !com.mbridge.msdk.videocommon.download.l.a(aVarA, h().C()))) {
                        com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f35417i, list.remove(size), this.N);
                    }
                }
            }
        }
        return list;
    }

    public List<Campaign> a(List<Campaign> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        for (Campaign campaign : list) {
            if (campaign instanceof CampaignEx) {
                CampaignEx campaignEx = (CampaignEx) campaign;
                if (TextUtils.isEmpty(this.N) && TextUtils.isEmpty(campaignEx.getBidToken()) && !campaignEx.isBidCampaign()) {
                    arrayList2.add(campaignEx);
                } else if (!TextUtils.isEmpty(this.N) && TextUtils.equals(campaignEx.getBidToken(), this.N)) {
                    arrayList.add(campaign);
                }
            } else {
                arrayList2.add(campaign);
            }
        }
        return TextUtils.isEmpty(this.N) ? arrayList2 : arrayList;
    }
}
