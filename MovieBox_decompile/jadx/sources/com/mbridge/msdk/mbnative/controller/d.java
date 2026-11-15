package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.k;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.PreloadListener;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.network.g;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class d extends com.mbridge.msdk.mbnative.controller.b {

    private static final String f35511r = "d";

    private static Map<String, Map<Long, Object>> f35512s = new HashMap();

    private static Map<String, Boolean> f35513t = new HashMap();

    private static Map<String, k> f35514u = new HashMap();

    private static Map<String, Integer> f35515v = new HashMap();

    private static Map<String, Integer> f35516w = new HashMap();

    private static d f35517x = null;

    private static int f35518y = -1;

    private static int f35519z = -2;

    private j f35520b;

    private com.mbridge.msdk.click.a f35521c;

    private l f35522d;

    private String f35523e;

    private Map<String, Object> f35527i;

    private List<Integer> f35528j;

    protected List<Integer> f35529k;

    private List<Integer> f35530l;

    private boolean f35531m;

    private boolean f35532n;

    private int f35533o;

    private int f35534p;

    Queue<Integer> f35524f = null;

    Queue<Long> f35525g = null;

    private int f35526h = 0;

    private com.mbridge.msdk.foundation.same.task.b f35535q = new com.mbridge.msdk.foundation.same.task.b(com.mbridge.msdk.foundation.controller.c.m().d());

    class a extends Handler {
        a() {
        }

        @Override
        public void handleMessage(Message message) {
        }
    }

    public class b extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {

        private int f35537c;

        private int f35538d;

        private int f35539e;

        private int f35540f;

        private int f35541g;

        private Runnable f35544j;

        private com.mbridge.msdk.preload.listenter.a f35546l;

        private List<String> f35542h = null;

        private boolean f35543i = false;

        private boolean f35545k = true;

        class a implements Runnable {

            final CampaignUnit f35548a;

            a(CampaignUnit campaignUnit) {
                this.f35548a = campaignUnit;
            }

            @Override
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (b.this.f35544j != null) {
                    b bVar = b.this;
                    d.this.f35499a.removeCallbacks(bVar.f35544j);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    d.this.a(this.f35548a);
                }
                if (d.f35512s.containsKey("0_" + b.this.unitId)) {
                    d.f35512s.remove("0_" + b.this.unitId);
                }
                if (b.this.f35541g > 0) {
                    if (this.f35548a.ads.size() > b.this.f35541g) {
                        b bVar2 = b.this;
                        bVar2.f35538d = bVar2.f35541g;
                    } else {
                        b.this.f35538d = this.f35548a.ads.size();
                    }
                } else if (b.this.f35541g == -1) {
                    b.this.f35538d = 0;
                } else if (b.this.f35541g == -3) {
                    b.this.f35538d = this.f35548a.ads.size();
                } else if (b.this.f35541g == -2) {
                    if (this.f35548a.getTemplate() == 3) {
                        if (b.this.f35540f != 0) {
                            b bVar3 = b.this;
                            bVar3.f35538d = bVar3.f35540f;
                        }
                    } else if (b.this.f35539e != 0) {
                        b bVar4 = b.this;
                        bVar4.f35538d = bVar4.f35539e;
                    }
                    if (b.this.f35538d <= 0) {
                        b.this.f35538d = ((Integer) d.f35515v.get(b.this.unitId)).intValue();
                    }
                }
                if (this.f35548a.ads.size() < b.this.f35538d) {
                    b.this.f35538d = this.f35548a.ads.size();
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i10 = 0; i10 < this.f35548a.ads.size(); i10++) {
                    CampaignEx campaignEx = this.f35548a.ads.get(i10);
                    campaignEx.setCampaignUnitId(b.this.unitId);
                    boolean zC = t0.c(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx.getPackageName());
                    d.this.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
                    if (arrayList.size() < b.this.f35538d && campaignEx.getOfferType() != 99) {
                        if (t0.c(campaignEx)) {
                            campaignEx.setRtinsType(zC ? 1 : 2);
                        }
                        if (com.mbridge.msdk.foundation.same.c.b(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx)) {
                            arrayList.add(campaignEx);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList2.add(campaignEx);
                            }
                        } else {
                            t0.a(b.this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.f34520x);
                        }
                        b.this.a(campaignEx, null, null);
                    }
                    d dVar = d.this;
                    dVar.a(dVar.f35531m, campaignEx);
                }
                b bVar5 = b.this;
                d.this.a(arrayList2, bVar5.unitId);
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(this.f35548a.getAds().get(0) != null ? this.f35548a.getAds().get(0).getType() : 1);
                if (bVarA != null) {
                    bVarA.a(b.this.unitId, arrayList);
                }
                d.a(b.this.f35537c, b.this.unitId);
                if (Looper.myLooper() != null && z10) {
                    Looper.loop();
                }
                if (this.f35548a.getAds().get(0) != null) {
                    com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f35548a.getAds().get(0).getMaitve(), this.f35548a.getAds().get(0).getMaitve_src());
                }
            }
        }

        class C0484b extends com.mbridge.msdk.foundation.same.c.a {

            final CampaignEx f35550a;

            final Context f35551b;

            C0484b(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f35550a = campaignEx;
                this.f35551b = context;
            }

            @Override
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f35550a, this.f35551b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        class c implements Runnable {

            final String f35553a;

            final int f35554b;

            c(String str, int i10) {
                this.f35553a = str;
                this.f35554b = i10;
            }

            @Override
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!b.this.f35543i) {
                    if (b.this.f35544j != null) {
                        b bVar = b.this;
                        d.this.f35499a.removeCallbacks(bVar.f35544j);
                    }
                    if (b.this.a() == 1 || b.this.f35545k) {
                        b bVar2 = b.this;
                        d dVar = d.this;
                        String str = this.f35553a;
                        int iA = bVar2.a();
                        b bVar3 = b.this;
                        dVar.a(str, iA, bVar3.unitId, bVar3.placementId, bVar3.f35546l);
                    }
                } else if (b.this.f35545k) {
                    b bVar4 = b.this;
                    d dVar2 = d.this;
                    String str2 = this.f35553a;
                    int iA2 = bVar4.a();
                    b bVar5 = b.this;
                    dVar2.a(str2, iA2, bVar5.unitId, bVar5.placementId, bVar5.f35546l);
                }
                if (this.f35554b == -1) {
                    d.b(b.this.f35537c, b.this.unitId);
                }
                if (Looper.myLooper() == null || !z10) {
                    return;
                }
                Looper.loop();
            }
        }

        class RunnableC0485d implements Runnable {

            final List f35556a;

            RunnableC0485d(List list) {
                this.f35556a = list;
            }

            @Override
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!b.this.f35543i && b.this.f35544j != null) {
                    b bVar = b.this;
                    d.this.f35499a.removeCallbacks(bVar.f35544j);
                }
                List list = this.f35556a;
                if (list != null && list.size() > 0) {
                    Iterator it = this.f35556a.iterator();
                    while (it.hasNext()) {
                        for (CampaignEx campaignEx : ((Frame) it.next()).getCampaigns()) {
                            d dVar = d.this;
                            dVar.a(dVar.f35531m, campaignEx);
                        }
                    }
                    HashMap map = new HashMap();
                    map.put(Long.valueOf(System.currentTimeMillis()), this.f35556a);
                    if (d.f35512s.containsKey("1_" + b.this.unitId)) {
                        d.f35512s.remove("1_" + b.this.unitId);
                    }
                    d.f35512s.put("1_" + b.this.unitId, map);
                }
                if (Looper.myLooper() == null || !z10) {
                    return;
                }
                Looper.loop();
            }
        }

        public b(int i10) {
            this.f35537c = i10;
        }

        public void b(List<String> list) {
            this.f35542h = list;
        }

        public void c(int i10) {
            this.f35539e = i10;
        }

        public void d(int i10) {
            this.f35538d = i10;
        }

        public void e(int i10) {
            this.f35540f = i10;
        }

        public void b(int i10) {
            this.f35541g = i10;
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f35546l = aVar;
        }

        public void b(boolean z10) {
            this.f35545k = z10;
        }

        @Override
        public void a(boolean z10) {
            this.f35543i = z10;
        }

        @Override
        public void a(List<g> list, CampaignUnit campaignUnit) {
            d.this.f35532n = true;
            d.this.a(true, this.f35546l, (String) null);
            d.this.a(new Thread(new a(campaignUnit)));
        }

        public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                com.mbridge.msdk.foundation.same.c.a(campaignEx, contextD, cVar, new C0484b(campaignEx, contextD, aVar));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }

        @Override
        public void a(int i10, String str) {
            d.this.a(new Thread(new c(str, i10)));
        }

        public void a(Runnable runnable) {
            this.f35544j = runnable;
        }

        @Override
        public void a(List<Frame> list) {
            d.this.a(new Thread(new RunnableC0485d(list)));
        }
    }

    public class c implements Runnable {

        private int f35558a;

        private com.mbridge.msdk.foundation.same.task.d f35559b;

        private int f35560c;

        private String f35561d;

        private String f35562e;

        private com.mbridge.msdk.preload.listenter.a f35563f;

        private boolean f35564g = false;

        public c(int i10, com.mbridge.msdk.foundation.same.task.d dVar, int i11, String str, String str2) {
            this.f35558a = i10;
            this.f35559b = dVar;
            this.f35560c = i11;
            this.f35561d = str;
            this.f35562e = str2;
        }

        public void a(boolean z10) {
            this.f35564g = z10;
        }

        @Override
        public void run() {
            this.f35559b.a(true);
            int i10 = this.f35558a;
            if (i10 != 1) {
                if (i10 != 2) {
                    return;
                }
                d.this.a("REQUEST_TIMEOUT", this.f35560c, this.f35561d, this.f35562e, this.f35563f);
            } else {
                d.this.f35532n = true;
                if (this.f35564g || this.f35560c == 1) {
                    d.this.a("REQUEST_TIMEOUT", this.f35560c, this.f35561d, this.f35562e, this.f35563f);
                }
            }
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f35563f = aVar;
        }

        public void a(String str) {
            this.f35561d = str;
        }
    }

    public d() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f35499a = new a();
    }

    public static Map<String, Integer> c() {
        return f35515v;
    }

    public static Map<String, Integer> d() {
        return f35516w;
    }

    public static Map<String, k> e() {
        return f35514u;
    }

    public static Map<String, Map<Long, Object>> f() {
        return f35512s;
    }

    public static Map<String, Boolean> g() {
        return f35513t;
    }

    public static void b(int i10, String str) {
        if (f35514u.containsKey(str)) {
            k kVar = f35514u.get(str);
            if (i10 == 1) {
                kVar.a(0);
            } else if (i10 == 2) {
                kVar.b(0);
            }
            f35514u.put(str, kVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:81:0x01f7  */
    public void a(Map<String, Object> map, int i10) {
        String str;
        Object obj;
        int i11;
        int i12;
        List<Campaign> listA;
        Object obj2;
        try {
            this.f35527i = map;
            this.f35532n = false;
            if (map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                String str2 = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                if (f35512s.containsKey(((i10 + 1) % 2) + "_" + str2)) {
                    if (!f35512s.containsKey(i10 + "_" + str2)) {
                        return;
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                if (map.containsKey(MBridgeConstans.PREIMAGE)) {
                    this.f35531m = ((Boolean) map.get(MBridgeConstans.PREIMAGE)).booleanValue();
                }
                com.mbridge.msdk.click.a aVar = this.f35521c;
                if (aVar == null) {
                    this.f35521c = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), str2);
                } else {
                    aVar.a(str2);
                }
                if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM)) {
                    this.f35526h = ((Integer) map.get(MBridgeConstans.PROPERTIES_AD_FRAME_NUM)).intValue();
                }
                if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY)) {
                    this.f35523e = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
                }
                if (f35513t.containsKey(str2) && f35513t.get(str2).booleanValue()) {
                    Map<String, Map<Long, Object>> mapF = f();
                    Map<Long, Object> map2 = mapF.get(i10 + "_" + str2);
                    com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (map2 != null && map2.size() > 0) {
                        Long next = map2.keySet().iterator().next();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (gVarD == null) {
                            gVarD = h.b().a();
                        }
                        if (jCurrentTimeMillis - next.longValue() >= gVarD.Z() * 1000) {
                            mapF.remove(str2);
                        } else if (i10 == 1) {
                            return;
                        }
                    }
                }
                f35513t.put(str2, Boolean.TRUE);
                this.f35534p = 1;
                try {
                    if (map.containsKey("ad_num")) {
                        int iIntValue = ((Integer) map.get("ad_num")).intValue();
                        this.f35534p = iIntValue;
                        if (iIntValue < 1) {
                            this.f35534p = 1;
                        }
                        if (this.f35534p > 10) {
                            this.f35534p = 10;
                        }
                    }
                } catch (Exception unused) {
                    o0.b(f35511r, "ADNUM MUST BE INTEGER");
                }
                f35515v.put(str2, Integer.valueOf(this.f35534p));
                com.mbridge.msdk.preload.listenter.a aVar2 = (!map.containsKey(MBridgeConstans.PRELOAD_RESULT_LISTENER) || (obj2 = map.get(MBridgeConstans.PRELOAD_RESULT_LISTENER)) == null) ? null : new com.mbridge.msdk.preload.listenter.a((PreloadListener) obj2);
                String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                String strC = com.mbridge.msdk.foundation.controller.c.m().c();
                if (map.containsKey("app_id") && map.containsKey(MBridgeConstans.APP_KEY) && map.containsKey(MBridgeConstans.KEY_WORD)) {
                    strB = (String) map.get("app_id");
                    strC = (String) map.get(MBridgeConstans.APP_KEY);
                }
                a(strB, strC, str2);
                l lVarE = h.b().e(strB, str2);
                this.f35522d = lVarE;
                if (lVarE == null) {
                    this.f35522d = l.i(str2);
                }
                if (map.containsKey(MBridgeConstans.PLACEMENT_ID) && map.get(MBridgeConstans.PLACEMENT_ID) != null) {
                    str = (String) map.get(MBridgeConstans.PLACEMENT_ID);
                    if (TextUtils.isEmpty(str)) {
                        str = "";
                    }
                } else {
                    str = "";
                }
                String str3 = str;
                this.f35528j = this.f35522d.b();
                this.f35529k = this.f35522d.c();
                this.f35530l = this.f35522d.c();
                List<Integer> list = this.f35528j;
                if (list == null || list.size() <= 0) {
                    if (aVar2 != null) {
                        aVar2.onPreloadFaild("do not have sorceList");
                        return;
                    }
                    return;
                }
                this.f35524f = new LinkedList();
                Iterator<Integer> it = this.f35528j.iterator();
                while (it.hasNext()) {
                    this.f35524f.add(it.next());
                }
                List<Integer> list2 = this.f35530l;
                if (list2 != null && list2.size() > 0) {
                    this.f35525g = new LinkedList();
                    Iterator<Integer> it2 = this.f35530l.iterator();
                    while (it2.hasNext()) {
                        this.f35525g.add(Long.valueOf(it2.next().intValue() * 1000));
                    }
                }
                if (this.f35528j.contains(1) && i10 == 0) {
                    try {
                        long jIntValue = this.f35529k.get(this.f35528j.indexOf(1)).intValue() * 1000;
                        l lVar = this.f35522d;
                        obj = MBridgeConstans.NATIVE_INFO;
                        i12 = 0;
                        try {
                            a(1, jIntValue, i10, lVar, str2, str3, false, aVar2);
                            com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(1);
                            if (bVarA == null || (listA = bVarA.a(str2, 0)) == null || listA.size() <= 0) {
                                i11 = 1;
                            } else {
                                i11 = 1;
                                try {
                                    a(true, aVar2, (String) null);
                                } catch (Exception unused2) {
                                }
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        obj = MBridgeConstans.NATIVE_INFO;
                        i11 = 1;
                        i12 = 0;
                    }
                } else {
                    obj = MBridgeConstans.NATIVE_INFO;
                    i11 = 1;
                    i12 = 0;
                }
                a(i10, this.f35522d, str2, str3, aVar2);
                l lVar2 = this.f35522d;
                d().put(str2, Integer.valueOf(lVar2 != null ? lVar2.y() * this.f35534p : i11));
                try {
                    int i13 = MBMediaView.f35824p0;
                    e.a(com.mbridge.msdk.foundation.controller.c.m().d(), str2);
                    m0.a();
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a();
                    Object obj3 = obj;
                    int iA = a(map.containsKey(obj3) ? (String) map.get(obj3) : null);
                    if (iA <= 0) {
                        iA = this.f35534p;
                    }
                    List<Campaign> listA2 = a(str2, iA);
                    if (listA2 != null) {
                        ArrayList arrayList = new ArrayList();
                        for (int i14 = i12; i14 < listA2.size(); i14 += i11) {
                            CampaignEx campaignEx = (CampaignEx) listA2.get(i14);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList.add(campaignEx);
                            }
                        }
                        if (arrayList.size() > 0) {
                            Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                            Class[] clsArr = new Class[5];
                            clsArr[i12] = Context.class;
                            clsArr[i11] = String.class;
                            clsArr[2] = CopyOnWriteArrayList.class;
                            clsArr[3] = Integer.TYPE;
                            clsArr[4] = com.mbridge.msdk.videocommon.listener.a.class;
                            Method method = com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", clsArr);
                            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(arrayList);
                            Integer numValueOf = Integer.valueOf(i11);
                            Object[] objArr = new Object[5];
                            objArr[i12] = contextD;
                            objArr[i11] = str2;
                            objArr[2] = copyOnWriteArrayList;
                            objArr[3] = numValueOf;
                            objArr[4] = null;
                            method.invoke(objInvoke, objArr);
                            Class[] clsArr2 = new Class[i11];
                            clsArr2[i12] = String.class;
                            Method method2 = com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, clsArr2);
                            Object[] objArr2 = new Object[i11];
                            objArr2[i12] = str2;
                            method2.invoke(objInvoke, objArr2);
                        }
                    }
                } catch (Throwable unused5) {
                    o0.b(f35511r, "init cam cache failed");
                }
            }
        } catch (Exception e10) {
            o0.b(f35511r, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
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
            o0.b(f35511r, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
        return 0;
    }

    public List<Campaign> a(String str, int i10) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        l lVarE = h.b().e("", str);
        this.f35522d = lVarE;
        if (lVarE == null) {
            this.f35522d = l.i(str);
        }
        List<Integer> listB = this.f35522d.b();
        this.f35528j = listB;
        if (listB == null || listB.size() <= 0 || !this.f35528j.contains(1) || (bVarA = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return bVarA.a(str, i10);
    }

    public void a(int i10, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar) {
        Queue<Integer> queue = this.f35524f;
        if (queue == null || queue.size() <= 0) {
            return;
        }
        try {
            int iIntValue = this.f35524f.poll().intValue();
            long jLongValue = MBridgeConstans.REQUEST_TIME_OUT;
            Queue<Long> queue2 = this.f35525g;
            if (queue2 != null && queue2.size() > 0) {
                jLongValue = this.f35525g.poll().longValue();
            }
            o0.c(f35511r, "preload start queue adsource = " + iIntValue);
            a(iIntValue, jLongValue, str, str2, this.f35527i, i10, lVar, aVar);
        } catch (Throwable unused) {
            o0.b(f35511r, "queue poll exception");
        }
    }

    public void a(int i10, long j10, String str, String str2, Map<String, Object> map, int i11, l lVar, com.mbridge.msdk.preload.listenter.a aVar) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        if (i10 != 1 && (bVarA = com.mbridge.msdk.mbnative.cache.c.a(i10)) != null) {
            List<Campaign> listA = bVarA.a(str, this.f35534p);
            if (listA != null && listA.size() > 0) {
                a(true, aVar, (String) null);
                return;
            }
        }
        if (i10 == 1) {
            a(i10, j10, i11, lVar, str, str2, true, aVar);
        } else if (i10 != 2) {
            a(i10, j10, i11, lVar, str, str2, aVar, false);
        } else {
            a(2, j10, i11, lVar, str, str2, aVar, false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:126:0x02b5 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02c4 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02d6 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:134:0x02ea A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0309  */
    /* JADX WARN: Code duplicated, block: B:147:0x0314  */
    /* JADX WARN: Code duplicated, block: B:149:0x0317 A[Catch: Exception -> 0x009c, TRY_ENTER, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:150:0x032c  */
    /* JADX WARN: Code duplicated, block: B:152:0x032f A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:155:0x037e A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:158:0x038b A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:163:0x03bf A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:168:0x041a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:169:0x041c A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:172:0x044d A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0461  */
    /* JADX WARN: Code duplicated, block: B:175:0x0466 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Instruction removed from duplicated block: B:149:0x0317, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:152:0x032f, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override
    public void a(int i10, long j10, int i11, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar, boolean z10) {
        int i12;
        int i13;
        int iOptInt;
        int iA;
        int i14;
        String strA;
        b bVar;
        long j11;
        k kVar;
        JSONArray jSONArrayB;
        String str3;
        int iOptInt2;
        String string;
        List<Campaign> listA;
        List<Campaign> listA2;
        try {
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a();
            int iF = this.f35522d.f();
            int iE = this.f35522d.e();
            com.mbridge.msdk.mbnative.service.net.a aVar2 = new com.mbridge.msdk.mbnative.service.net.a(com.mbridge.msdk.foundation.controller.c.m().d());
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
            String strB = com.mbridge.msdk.foundation.controller.c.m().b();
            String strC = com.mbridge.msdk.foundation.controller.c.m().c();
            Map<String, Object> map = this.f35527i;
            if (map != null && map.containsKey("app_id") && this.f35527i.containsKey(MBridgeConstans.APP_KEY) && this.f35527i.containsKey(MBridgeConstans.KEY_WORD) && this.f35527i.get(MBridgeConstans.KEY_WORD) != null) {
                if (this.f35527i.get("app_id") instanceof String) {
                    strB = (String) this.f35527i.get("app_id");
                }
                if (this.f35527i.get(MBridgeConstans.APP_KEY) instanceof String) {
                    strC = (String) this.f35527i.get(MBridgeConstans.APP_KEY);
                }
                String str4 = this.f35527i.get(MBridgeConstans.KEY_WORD) instanceof String ? (String) this.f35527i.get(MBridgeConstans.KEY_WORD) : null;
                if (!TextUtils.isEmpty(str4)) {
                    eVar.a("smart", i0.b(str4));
                }
            }
            String str5 = strB;
            String str6 = strC;
            eVar.a("app_id", str5);
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            eVar.a("req_type", "1");
            if (!TextUtils.isEmpty(this.f35523e)) {
                eVar.a("category", this.f35523e);
            }
            if (!TextUtils.isEmpty(str2)) {
                eVar.a(MBridgeConstans.PLACEMENT_ID, str2);
            }
            eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str5 + str6));
            eVar.a("only_impression", "1");
            String strD = t0.d(str);
            if (!TextUtils.isEmpty(strD)) {
                eVar.a("j", strD);
            }
            int iIntValue = f35515v.get(str).intValue();
            if (iF != f35518y && iF != 0 && iIntValue != 0) {
                if (i11 == 0) {
                    com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(i10);
                    if (z10) {
                        if (bVarA != null && (listA2 = bVarA.a(str, iIntValue)) != null && listA2.size() > 0) {
                            a(true, aVar, (String) null);
                            return;
                        } else {
                            if (this.f35532n) {
                                a("", i11, str, str2, aVar);
                                return;
                            }
                            return;
                        }
                    }
                    if (i10 != 1 && bVarA != null && (listA = bVarA.a(str, iIntValue)) != null && listA.size() > 0) {
                        a(true, aVar, (String) null);
                        return;
                    }
                }
                if (iIntValue != 0) {
                    eVar.a("ad_num", iIntValue + "");
                }
                if (this.f35526h != 0) {
                    eVar.a("frame_num", this.f35526h + "");
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    String str7 = (String) this.f35527i.get(MBridgeConstans.NATIVE_INFO);
                    if (TextUtils.isEmpty(str7)) {
                        i12 = iIntValue;
                    } else {
                        o0.b(f35511r, "nativeinfo" + str7);
                        try {
                            JSONArray jSONArray = new JSONArray(str7);
                            if (jSONArray.length() > 0) {
                                str3 = str7;
                                int i15 = 0;
                                iOptInt = 0;
                                iOptInt2 = 0;
                                while (i15 < jSONArray.length()) {
                                    try {
                                        JSONObject jSONObject = (JSONObject) jSONArray.opt(i15);
                                        int i16 = iOptInt;
                                        i12 = iIntValue;
                                        try {
                                            int iOptInt3 = jSONObject.optInt("id", 0);
                                            if (2 == iOptInt3) {
                                                iOptInt = jSONObject.optInt("ad_num");
                                                if (iF > 0) {
                                                    try {
                                                        jSONObject.put("ad_num", iF);
                                                    } catch (JSONException e10) {
                                                        e = e10;
                                                        o0.b(f35511r, com.mbridge.msdk.mbnative.common.a.a(e));
                                                        i13 = iOptInt2;
                                                        string = str3;
                                                        eVar.a(MBridgeConstans.NATIVE_INFO, string);
                                                        iF = i12;
                                                        eVar.a("ad_num", iF + "");
                                                        eVar.a("ping_mode", "1");
                                                        if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                                                            h.b().a();
                                                        }
                                                        if (!NativeController.b(this.f35527i)) {
                                                            jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                                                            if (jSONArrayB.length() > 0) {
                                                                eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34669h, t0.a(jSONArrayB));
                                                            }
                                                        }
                                                        a(eVar, i10);
                                                        if (f35514u.containsKey(str)) {
                                                            iA = 0;
                                                        } else {
                                                            iA = 0;
                                                        }
                                                        if (this.f35527i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                                                            i14 = 1;
                                                            if (i10 == 1) {
                                                                eVar.a("tnum", this.f35533o + "");
                                                            }
                                                            eVar.a("offset", iA + "");
                                                            eVar.a("ad_type", "42");
                                                            eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                                                            strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                                                            if (!TextUtils.isEmpty(strA)) {
                                                                eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                                                            }
                                                            if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                                                                eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                                                            }
                                                            if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                                                                eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                                                            }
                                                            eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                                                            bVar = new b(i10);
                                                            bVar.setUnitId(str);
                                                            bVar.setPlacementId(str2);
                                                            bVar.setAdType(42);
                                                            bVar.d(i12);
                                                            bVar.c(iOptInt);
                                                            bVar.e(i13);
                                                            bVar.b(iE);
                                                            bVar.a(aVar);
                                                            if (i10 == 1) {
                                                                bVar.b(true);
                                                            } else {
                                                                bVar.b(true);
                                                            }
                                                            bVar.b(NativeController.a(this.f35527i));
                                                            c cVar = new c(1, bVar, i11, str, str2);
                                                            bVar.a(cVar);
                                                            bVar.a(i11);
                                                            cVar.a(aVar);
                                                            cVar.a(z10);
                                                            cVar.a(str);
                                                            if (i11 == 0) {
                                                                j11 = j10;
                                                                aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                                                            } else {
                                                                j11 = j10;
                                                                if (i11 == 1) {
                                                                    aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                                                                }
                                                            }
                                                            this.f35499a.postDelayed(cVar, j11);
                                                            return;
                                                        }
                                                        i14 = 1;
                                                        if (i10 == i14) {
                                                            eVar.a("tnum", this.f35534p + "");
                                                        }
                                                        eVar.a("offset", iA + "");
                                                        eVar.a("ad_type", "42");
                                                        eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                                                        strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                                                        if (!TextUtils.isEmpty(strA)) {
                                                            eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                                                        }
                                                        if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                                                            eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                                                        }
                                                        if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                                                            eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                                                        }
                                                        eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                                                        bVar = new b(i10);
                                                        bVar.setUnitId(str);
                                                        bVar.setPlacementId(str2);
                                                        bVar.setAdType(42);
                                                        bVar.d(i12);
                                                        bVar.c(iOptInt);
                                                        bVar.e(i13);
                                                        bVar.b(iE);
                                                        bVar.a(aVar);
                                                        if (i10 == 1) {
                                                            bVar.b(true);
                                                        } else {
                                                            bVar.b(true);
                                                        }
                                                        bVar.b(NativeController.a(this.f35527i));
                                                        c cVar2 = new c(1, bVar, i11, str, str2);
                                                        bVar.a(cVar2);
                                                        bVar.a(i11);
                                                        cVar2.a(aVar);
                                                        cVar2.a(z10);
                                                        cVar2.a(str);
                                                        if (i11 == 0) {
                                                            j11 = j10;
                                                            aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                                                        } else {
                                                            j11 = j10;
                                                            if (i11 == 1) {
                                                                aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                                                            }
                                                        }
                                                        this.f35499a.postDelayed(cVar2, j11);
                                                        return;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            } else {
                                                if (3 == iOptInt3) {
                                                    iOptInt2 = jSONObject.optInt("ad_num");
                                                    if (iF > 0) {
                                                        jSONObject.put("ad_num", iF);
                                                    }
                                                }
                                                iOptInt = i16;
                                            }
                                            i15++;
                                            iIntValue = i12;
                                        } catch (JSONException e11) {
                                            e = e11;
                                            iOptInt = i16;
                                        }
                                    } catch (JSONException e12) {
                                        e = e12;
                                        i12 = iIntValue;
                                    }
                                }
                                i12 = iIntValue;
                                i13 = iOptInt2;
                            } else {
                                i12 = iIntValue;
                                str3 = str7;
                                i13 = 0;
                                iOptInt = 0;
                            }
                            try {
                                this.f35533o = Math.max(iOptInt, i13);
                                string = jSONArray.toString();
                            } catch (JSONException e13) {
                                e = e13;
                                iOptInt2 = i13;
                                o0.b(f35511r, com.mbridge.msdk.mbnative.common.a.a(e));
                                i13 = iOptInt2;
                                string = str3;
                            }
                        } catch (JSONException e14) {
                            e = e14;
                            i12 = iIntValue;
                            str3 = str7;
                            iOptInt = 0;
                            iOptInt2 = 0;
                        }
                        eVar.a(MBridgeConstans.NATIVE_INFO, string);
                    }
                    iF = i12;
                    eVar.a("ad_num", iF + "");
                    eVar.a("ping_mode", "1");
                    if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                        h.b().a();
                    }
                    if (!NativeController.b(this.f35527i)) {
                        jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                        if (jSONArrayB.length() > 0) {
                            eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34669h, t0.a(jSONArrayB));
                        }
                    }
                    a(eVar, i10);
                    if (f35514u.containsKey(str) || (kVar = f35514u.get(str)) == null) {
                        iA = 0;
                    } else if (i10 == 1 || i10 != 2) {
                        iA = kVar.a();
                    } else {
                        iA = kVar.b();
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                        i14 = 1;
                        if (i10 == 1) {
                            eVar.a("tnum", this.f35533o + "");
                        }
                        eVar.a("offset", iA + "");
                        eVar.a("ad_type", "42");
                        eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                        strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                        if (!TextUtils.isEmpty(strA)) {
                            eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                        }
                        if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) && (this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH) instanceof Integer)) {
                            eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                        }
                        if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) && (this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT) instanceof Integer)) {
                            eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                        }
                        eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                        bVar = new b(i10);
                        bVar.setUnitId(str);
                        bVar.setPlacementId(str2);
                        bVar.setAdType(42);
                        bVar.d(i12);
                        bVar.c(iOptInt);
                        bVar.e(i13);
                        bVar.b(iE);
                        bVar.a(aVar);
                        if (i10 == 1 || z10) {
                            bVar.b(true);
                        }
                        bVar.b(NativeController.a(this.f35527i));
                        c cVar3 = new c(1, bVar, i11, str, str2);
                        bVar.a(cVar3);
                        bVar.a(i11);
                        cVar3.a(aVar);
                        cVar3.a(z10);
                        cVar3.a(str);
                        if (i11 == 0) {
                            j11 = j10;
                            aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                        } else {
                            j11 = j10;
                            if (i11 == 1) {
                                aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                            }
                        }
                        this.f35499a.postDelayed(cVar3, j11);
                        return;
                    }
                    i14 = 1;
                    if (i10 == i14) {
                        eVar.a("tnum", this.f35534p + "");
                    }
                    eVar.a("offset", iA + "");
                    eVar.a("ad_type", "42");
                    eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                    strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                    if (!TextUtils.isEmpty(strA)) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                        eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                        eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                    }
                    eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                    bVar = new b(i10);
                    bVar.setUnitId(str);
                    bVar.setPlacementId(str2);
                    bVar.setAdType(42);
                    bVar.d(i12);
                    bVar.c(iOptInt);
                    bVar.e(i13);
                    bVar.b(iE);
                    bVar.a(aVar);
                    if (i10 == 1) {
                        bVar.b(true);
                    } else {
                        bVar.b(true);
                    }
                    bVar.b(NativeController.a(this.f35527i));
                    c cVar4 = new c(1, bVar, i11, str, str2);
                    bVar.a(cVar4);
                    bVar.a(i11);
                    cVar4.a(aVar);
                    cVar4.a(z10);
                    cVar4.a(str);
                    if (i11 == 0) {
                        j11 = j10;
                        aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                    } else {
                        j11 = j10;
                        if (i11 == 1) {
                            aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                        }
                    }
                    this.f35499a.postDelayed(cVar4, j11);
                    return;
                }
                i12 = iIntValue;
                if (iF != f35519z && iF != 0) {
                    i13 = 0;
                    iOptInt = 0;
                }
                eVar.a("ad_num", iF + "");
                eVar.a("ping_mode", "1");
                if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                    h.b().a();
                }
                if (!NativeController.b(this.f35527i)) {
                    jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                    if (jSONArrayB.length() > 0) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34669h, t0.a(jSONArrayB));
                    }
                }
                a(eVar, i10);
                if (f35514u.containsKey(str)) {
                    iA = 0;
                } else {
                    iA = 0;
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    i14 = 1;
                    if (i10 == 1) {
                        eVar.a("tnum", this.f35533o + "");
                    }
                    eVar.a("offset", iA + "");
                    eVar.a("ad_type", "42");
                    eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                    strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                    if (!TextUtils.isEmpty(strA)) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                        eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                        eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                    }
                    eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                    bVar = new b(i10);
                    bVar.setUnitId(str);
                    bVar.setPlacementId(str2);
                    bVar.setAdType(42);
                    bVar.d(i12);
                    bVar.c(iOptInt);
                    bVar.e(i13);
                    bVar.b(iE);
                    bVar.a(aVar);
                    if (i10 == 1) {
                        bVar.b(true);
                    } else {
                        bVar.b(true);
                    }
                    bVar.b(NativeController.a(this.f35527i));
                    c cVar5 = new c(1, bVar, i11, str, str2);
                    bVar.a(cVar5);
                    bVar.a(i11);
                    cVar5.a(aVar);
                    cVar5.a(z10);
                    cVar5.a(str);
                    if (i11 == 0) {
                        j11 = j10;
                        aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                    } else {
                        j11 = j10;
                        if (i11 == 1) {
                            aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                        }
                    }
                    this.f35499a.postDelayed(cVar5, j11);
                    return;
                }
                i14 = 1;
                if (i10 == i14) {
                    eVar.a("tnum", this.f35534p + "");
                }
                eVar.a("offset", iA + "");
                eVar.a("ad_type", "42");
                eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                    eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                    eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                bVar = new b(i10);
                bVar.setUnitId(str);
                bVar.setPlacementId(str2);
                bVar.setAdType(42);
                bVar.d(i12);
                bVar.c(iOptInt);
                bVar.e(i13);
                bVar.b(iE);
                bVar.a(aVar);
                if (i10 == 1) {
                    bVar.b(true);
                } else {
                    bVar.b(true);
                }
                bVar.b(NativeController.a(this.f35527i));
                c cVar6 = new c(1, bVar, i11, str, str2);
                bVar.a(cVar6);
                bVar.a(i11);
                cVar6.a(aVar);
                cVar6.a(z10);
                cVar6.a(str);
                if (i11 == 0) {
                    j11 = j10;
                    aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                } else {
                    j11 = j10;
                    if (i11 == 1) {
                        aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                    }
                }
                this.f35499a.postDelayed(cVar6, j11);
                return;
                i13 = 0;
                iOptInt = 0;
                iF = i12;
                eVar.a("ad_num", iF + "");
                eVar.a("ping_mode", "1");
                if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                    h.b().a();
                }
                if (!NativeController.b(this.f35527i)) {
                    jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                    if (jSONArrayB.length() > 0) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34669h, t0.a(jSONArrayB));
                    }
                }
                a(eVar, i10);
                if (f35514u.containsKey(str)) {
                    iA = 0;
                } else {
                    iA = 0;
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    i14 = 1;
                    if (i10 == 1) {
                        eVar.a("tnum", this.f35533o + "");
                    }
                    eVar.a("offset", iA + "");
                    eVar.a("ad_type", "42");
                    eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                    strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                    if (!TextUtils.isEmpty(strA)) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                        eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                    }
                    if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                        eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                    }
                    eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                    bVar = new b(i10);
                    bVar.setUnitId(str);
                    bVar.setPlacementId(str2);
                    bVar.setAdType(42);
                    bVar.d(i12);
                    bVar.c(iOptInt);
                    bVar.e(i13);
                    bVar.b(iE);
                    bVar.a(aVar);
                    if (i10 == 1) {
                        bVar.b(true);
                    } else {
                        bVar.b(true);
                    }
                    bVar.b(NativeController.a(this.f35527i));
                    c cVar7 = new c(1, bVar, i11, str, str2);
                    bVar.a(cVar7);
                    bVar.a(i11);
                    cVar7.a(aVar);
                    cVar7.a(z10);
                    cVar7.a(str);
                    if (i11 == 0) {
                        j11 = j10;
                        aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                    } else {
                        j11 = j10;
                        if (i11 == 1) {
                            aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                        }
                    }
                    this.f35499a.postDelayed(cVar7, j11);
                    return;
                }
                i14 = 1;
                if (i10 == i14) {
                    eVar.a("tnum", this.f35534p + "");
                }
                eVar.a("offset", iA + "");
                eVar.a("ad_type", "42");
                eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                    eVar.a("video_width", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f35527i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                    eVar.a("video_height", ((Integer) this.f35527i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                bVar = new b(i10);
                bVar.setUnitId(str);
                bVar.setPlacementId(str2);
                bVar.setAdType(42);
                bVar.d(i12);
                bVar.c(iOptInt);
                bVar.e(i13);
                bVar.b(iE);
                bVar.a(aVar);
                if (i10 == 1) {
                    bVar.b(true);
                } else {
                    bVar.b(true);
                }
                bVar.b(NativeController.a(this.f35527i));
                c cVar8 = new c(1, bVar, i11, str, str2);
                bVar.a(cVar8);
                bVar.a(i11);
                cVar8.a(aVar);
                cVar8.a(z10);
                cVar8.a(str);
                if (i11 == 0) {
                    j11 = j10;
                    aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                } else {
                    j11 = j10;
                    if (i11 == 1) {
                        aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f34633b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j11, 30000L));
                    }
                }
                this.f35499a.postDelayed(cVar8, j11);
                return;
            }
            a("The request was refused", i11, str, str2, aVar);
        } catch (Exception e15) {
            String str8 = f35511r;
            o0.b(str8, com.mbridge.msdk.mbnative.common.a.a(e15));
            o0.b(str8, e15.getMessage());
        }
    }

    public static void a(int i10, String str) {
        k kVar;
        if (f35514u.containsKey(str)) {
            kVar = f35514u.get(str);
        } else {
            kVar = new k();
        }
        int iIntValue = f35515v.get(str).intValue();
        int iIntValue2 = d().containsKey(str) ? d().get(str).intValue() : 1;
        if (i10 == 1) {
            int iA = iIntValue + kVar.a();
            kVar.a(iA <= iIntValue2 ? iA : 0);
        } else if (i10 == 2) {
            int iB = iIntValue + kVar.b();
            kVar.b(iB <= iIntValue2 ? iB : 0);
        }
        f35514u.put(str, kVar);
    }

    public void a(String str, int i10, String str2, String str3, com.mbridge.msdk.preload.listenter.a aVar) {
        Log.e(f35511r, str);
        try {
            Queue<Integer> queue = this.f35524f;
            if (queue == null || queue.size() > 0) {
                if (this.f35524f != null) {
                    a(i10, this.f35522d, str2, str3, aVar);
                    return;
                }
            }
            a(false, aVar, str);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (this.f35520b == null) {
            this.f35520b = new j();
        }
        this.f35520b.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, str3);
    }

    public void a(boolean z10, com.mbridge.msdk.preload.listenter.a aVar, String str) {
        if (z10) {
            if (aVar == null || aVar.a()) {
                return;
            }
            aVar.a(true);
            aVar.onPreloadSucceed();
            return;
        }
        if (aVar == null || aVar.a()) {
            return;
        }
        aVar.a(true);
        aVar.onPreloadFaild(str);
    }

    public void a(boolean z10, Campaign campaign) {
        if (campaign == null) {
            return;
        }
        if (z10 && campaign.getIconDrawable() == null) {
            campaign.loadIconUrlAsyncWithBlock(null);
        }
        if (z10 && campaign.getBigDrawable() == null) {
            campaign.loadImageUrlAsyncWithBlock(null);
        }
    }

    public void a(Thread thread) {
        if (!MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD) {
            thread.run();
        } else {
            thread.start();
        }
    }

    public void a(List<CampaignEx> list, String str) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    try {
                        int i10 = MBMediaView.f35824p0;
                        Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                        if (objInvoke != null) {
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(objInvoke, com.mbridge.msdk.foundation.controller.c.m().d(), str, new CopyOnWriteArrayList(list), 1, null);
                            com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, String.class).invoke(objInvoke, str);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        o0.b(f35511r, "please import the videocommon aar");
                        return;
                    }
                    o0.b(f35511r, com.mbridge.msdk.mbnative.common.a.a(e));
                }
            } catch (Exception e10) {
                o0.b(f35511r, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }
}
