package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.SQLException;
import android.net.Uri;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.hisavana.sdk.ext.attr.AttrData;
import com.cloud.hisavana.sdk.y;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.transsion.livecaption.constant.ICode;
import com.transsion.push.PushConstants;
import defpackage.abb;
import defpackage.azd;
import defpackage.c74;
import defpackage.cy9;
import defpackage.e74;
import defpackage.g1a;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.lxd;
import defpackage.o9;
import defpackage.qud;
import defpackage.swd;
import defpackage.ul4;
import defpackage.y45;
import defpackage.z30;
import defpackage.z71;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.internal.Lambda;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class y {
    public static boolean b;
    public static long d;
    public static int e;
    public static long f;
    public static final y a = new y();
    public static boolean c = true;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0005\u001a,\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Triple;", "", "", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lkotlin/Triple;"}, k = 3, mv = {1, 9, 0})
    public static final class a extends Lambda implements c74 {
        public static final a a = new a();

        public a() {
            super(0);
        }

        @Override
        public final Triple<List<Map<String, Object>>, String, String> invoke() {
            return y.a.S();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u000726\u0010\u0006\u001a2\u0012.\u0012,\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/cloud/sdk/commonutil/util/a;", "Lkotlin/Triple;", "", "", "", "", "result", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/sdk/commonutil/util/a;)V"}, k = 3, mv = {1, 9, 0})
    public static final class b extends Lambda implements e74 {
        public static final b a = new b();

        @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V"}, k = 3, mv = {1, 9, 0})
        public static final class a extends Lambda implements c74 {
            final com.cloud.sdk.commonutil.util.a a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(com.cloud.sdk.commonutil.util.a aVar) {
                super(0);
                this.a = aVar;
            }

            public final void a() {
                y.a.r((String) ((Triple) ((com.cloud.sdk.commonutil.util.a.b) this.a).a()).getSecond());
            }

            @Override
            public Object invoke() {
                a();
                return zfb.a;
            }
        }

        public b() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.a aVar) throws JSONException {
            y45.j(aVar, "result");
            if (!(aVar instanceof com.cloud.sdk.commonutil.util.a.b)) {
                if (aVar instanceof com.cloud.sdk.commonutil.util.a.C0054a) {
                    ikd.b().e("AttrDataManager", "cycleClick error: " + ((com.cloud.sdk.commonutil.util.a.C0054a) aVar).a());
                    return;
                }
                return;
            }
            if (ikd.c()) {
                ikd.b().i("AttrDataManager", "cycleClick success result value : " + ((com.cloud.sdk.commonutil.util.a.b) aVar).a());
            }
            com.cloud.sdk.commonutil.util.a.b bVar = (com.cloud.sdk.commonutil.util.a.b) aVar;
            y.a.q(new com.cloud.sdk.commonutil.util.a.b(new Pair((List) ((Triple) bVar.a()).getFirst(), (String) ((Triple) bVar.a()).getThird())), 1, new a(aVar));
        }

        @Override
        public Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.a) obj);
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "timeInterval", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(I)V"}, k = 3, mv = {1, 9, 0})
    public static final class c extends Lambda implements e74 {
        final AdsDTO a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(AdsDTO adsDTO) {
            super(1);
            this.a = adsDTO;
        }

        public final void a(int i) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            y yVar = y.a;
            if (jCurrentTimeMillis - yVar.L() >= ((long) i) * DateUtils.MILLIS_PER_HOUR) {
                y.f = jCurrentTimeMillis;
                o9.e().q("attr_click_time", jCurrentTimeMillis);
                yVar.H();
            }
            yVar.w(this.a);
        }

        @Override
        public Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V"}, k = 3, mv = {1, 9, 0})
    public static final class d extends Lambda implements c74 {
        final AdsDTO a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(AdsDTO adsDTO) {
            super(0);
            this.a = adsDTO;
        }

        public final void a() {
            y.a.M(this.a);
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V"}, k = 3, mv = {1, 9, 0})
    public static final class e extends Lambda implements c74 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        public final void a() {
            y.a.v();
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0004\u001a&\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00000\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlin/Pair;", "", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lkotlin/Pair;"}, k = 3, mv = {1, 9, 0})
    public static final class f extends Lambda implements c74 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override
        public final Pair<List<Pair<String, Long>>, List<String>> invoke() {
            return y.a.T();
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u000620\u0010\u0005\u001a,\u0012(\u0012&\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/cloud/sdk/commonutil/util/a;", "Lkotlin/Pair;", "", "", "", "result", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/sdk/commonutil/util/a;)V"}, k = 3, mv = {1, 9, 0})
    public static final class g extends Lambda implements e74 {
        public static final g a = new g();

        public g() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.a aVar) throws JSONException {
            y45.j(aVar, "result");
            if (!(aVar instanceof com.cloud.sdk.commonutil.util.a.b)) {
                if (aVar instanceof com.cloud.sdk.commonutil.util.a.C0054a) {
                    ikd.b().e("AttrDataManager", "postShowData error: " + ((com.cloud.sdk.commonutil.util.a.C0054a) aVar).a());
                    return;
                }
                return;
            }
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("success result value : ");
            com.cloud.sdk.commonutil.util.a.b bVar = (com.cloud.sdk.commonutil.util.a.b) aVar;
            sb.append(bVar.a());
            ikdVarB.i("AttrDataManager", sb.toString());
            if (((Collection) ((Pair) bVar.a()).getFirst()).isEmpty()) {
                return;
            }
            y.a.s((Pair) bVar.a());
        }

        @Override
        public Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.a) obj);
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(I)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    public static final class h extends Lambda implements e74 {
        public static final h a = new h();

        public h() {
            super(1);
        }

        public final CharSequence a(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append('\'');
            sb.append(i);
            sb.append('\'');
            return sb.toString();
        }

        @Override
        public Object invoke(Object obj) {
            return a(((Number) obj).intValue());
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0005\u001a$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Pair;", "", "", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lkotlin/Pair;"}, k = 3, mv = {1, 9, 0})
    public static final class i extends Lambda implements c74 {
        final AdsDTO a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(AdsDTO adsDTO) {
            super(0);
            this.a = adsDTO;
        }

        @Override
        public final Pair<List<Map<String, Object>>, String> invoke() {
            return y.a.N(this.a);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u00072.\u0010\u0006\u001a*\u0012&\u0012$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/cloud/sdk/commonutil/util/a;", "Lkotlin/Pair;", "", "", "", "", "result", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/sdk/commonutil/util/a;)V"}, k = 3, mv = {1, 9, 0})
    public static final class j extends Lambda implements e74 {
        public static final j a = new j();

        public j() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.a aVar) throws JSONException {
            y45.j(aVar, "result");
            if (aVar instanceof com.cloud.sdk.commonutil.util.a.b) {
                if (ikd.c()) {
                    ikd.b().i("AttrDataManager", "realClick success result value : " + ((com.cloud.sdk.commonutil.util.a.b) aVar).a());
                }
                y.n(y.a, (com.cloud.sdk.commonutil.util.a.b) aVar, 2, null, 4, null);
                return;
            }
            if (aVar instanceof com.cloud.sdk.commonutil.util.a.C0054a) {
                ikd.b().e("AttrDataManager", "realClick error: " + ((com.cloud.sdk.commonutil.util.a.C0054a) aVar).a());
            }
        }

        @Override
        public Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.a) obj);
            return zfb.a;
        }
    }

    public static final void E() {
        HSRoomDatabase.t().h().a();
    }

    public static final void F(AdsDTO adsDTO) {
        azd azdVarH = HSRoomDatabase.t().h();
        String strD = a.d(adsDTO);
        String adCreativeId = adsDTO.getAdCreativeId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        y45.g(adCreativeId);
        azdVarH.a(new z30(0, strD, jCurrentTimeMillis, adCreativeId, 1, null));
    }

    public static final void I(final AdsDTO adsDTO) {
        if (a.P()) {
            return;
        }
        HSScopeHelper.a.r(new Runnable() {
            @Override
            public final void run() {
                y.K(adsDTO);
            }
        });
    }

    public static final void K(AdsDTO adsDTO) {
        lxd.a.b(new c(adsDTO), new d(adsDTO), e.a);
    }

    public static void n(y yVar, com.cloud.sdk.commonutil.util.a.b bVar, int i2, c74 c74Var, int i3, Object obj) throws JSONException {
        if ((i3 & 4) != 0) {
            c74Var = null;
        }
        yVar.q(bVar, i2, c74Var);
    }

    public final void B() {
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "clear impressions");
        }
        try {
            HSScopeHelper.a.r(new Runnable() {
                @Override
                public final void run() {
                    y.E();
                }
            });
        } catch (SQLException e2) {
            ikd.b().e("AttrDataManager", "SQL error executing delete query: " + e2.getMessage());
        } catch (Exception e3) {
            ikd.b().e("AttrDataManager", "Error executing delete query: " + e3.getMessage());
        }
    }

    public final void C(final AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().i("AttrDataManager", "Ad is null.");
            return;
        }
        if (u(adsDTO, false)) {
            return;
        }
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "ad info : " + adsDTO);
        }
        try {
            HSScopeHelper.a.r(new Runnable() {
                @Override
                public final void run() {
                    y.F(adsDTO);
                }
            });
        } catch (Exception e2) {
            ikd.b().e("AttrDataManager", "insert imp fail " + Log.getStackTraceString(e2));
        }
    }

    public final void H() {
        HSScopeHelper.a.q(a.a, b.a);
    }

    public final String J() {
        String string = UUID.randomUUID().toString();
        y45.i(string, "toString(...)");
        String strN = g1a.N(string, "-", "", false, 4, null);
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("ew_");
        String strSubstring = strN.substring(0, 6);
        y45.i(strSubstring, "substring(...)");
        sb.append(strSubstring);
        sb.append("_");
        sb.append(jCurrentTimeMillis);
        String string2 = sb.toString();
        y45.i(string2, "toString(...)");
        return string2;
    }

    public final long L() {
        long j2 = f;
        return j2 > 0 ? j2 : o9.e().h("attr_click_time");
    }

    public final void M(AdsDTO adsDTO) {
        HSScopeHelper.a.q(new i(adsDTO), j.a);
    }

    public final Pair N(AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().i("AttrDataManager", "Ad is null.");
            return new Pair(null, null);
        }
        if (u(adsDTO, true)) {
            return new Pair(null, null);
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Integer pullNewestLive = adsDTO.getPullNewestLive();
        y45.i(pullNewestLive, "getPullNewestLive(...)");
        linkedHashMap.put("action_type", pullNewestLive);
        linkedHashMap.put(TtmlNode.TAG_P, d(adsDTO));
        ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
        Integer pullNewestLive2 = adsDTO.getPullNewestLive();
        y45.i(pullNewestLive2, "getPullNewestLive(...)");
        linkedHashMap.put("type", e(storeDeeplink, pullNewestLive2.intValue()));
        String codeSeatId = adsDTO.getCodeSeatId();
        y45.i(codeSeatId, "getCodeSeatId(...)");
        linkedHashMap.put("adId", codeSeatId);
        linkedHashMap.put("time", Long.valueOf(System.currentTimeMillis()));
        arrayList.add(linkedHashMap);
        return new Pair(arrayList, adsDTO.getAdCreativeId());
    }

    public final void O() {
        h();
        Q();
    }

    public final boolean P() {
        if (b) {
            return false;
        }
        ikd.b().i("AttrDataManager", "Attr func disable.");
        return true;
    }

    public final void Q() {
        if (R()) {
            return;
        }
        HSScopeHelper.a.q(f.a, g.a);
    }

    public final boolean R() {
        if (!b) {
            ikd.b().i("AttrDataManager", "Attr func disable.");
            return true;
        }
        int iD = lxd.a.d();
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "Attr showConfig : " + iD);
        }
        if (iD < 0) {
            B();
            return true;
        }
        if (iD != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - d < ((long) iD) * DateUtils.MILLIS_PER_HOUR) {
                return true;
            }
            d = jCurrentTimeMillis;
            U();
        } else {
            if (!c) {
                return true;
            }
            c = false;
        }
        return false;
    }

    public final Triple S() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        try {
            List<swd> listB = HSRoomDatabase.t().e().b();
            if (listB != null && !listB.isEmpty()) {
                for (swd swdVar : listB) {
                    if (swdVar != null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        arrayList2.add(Integer.valueOf(swdVar.g()));
                        arrayList3.add(swdVar.b());
                        linkedHashMap.put("action_type", Integer.valueOf(swdVar.a()));
                        linkedHashMap.put(TtmlNode.TAG_P, swdVar.f());
                        linkedHashMap.put("type", swdVar.e());
                        linkedHashMap.put("adId", swdVar.d());
                        linkedHashMap.put("time", Long.valueOf(swdVar.c()));
                        arrayList.add(linkedHashMap);
                    }
                }
            }
        } catch (SQLException e2) {
            ikd.b().e("AttrDataManager", "queryClick SQLException fail: " + e2.getMessage());
        } catch (Exception e3) {
            ikd.b().e("AttrDataManager", "queryClick Exception fail: " + e3.getMessage());
        }
        return new Triple(arrayList, i81.y0(arrayList2, null, null, null, 0, null, h.a, 31, null), i81.y0(arrayList3, null, null, null, 0, null, null, 63, null));
    }

    public final Pair T() throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            List<z30> listB = HSRoomDatabase.t().h().b();
            if (listB != null) {
                for (z30 z30Var : listB) {
                    if (z30Var != null) {
                        arrayList.add(new Pair(z30Var.c(), Long.valueOf(z30Var.b())));
                    }
                    if (z30Var != null) {
                        arrayList2.add(z30Var.a());
                    }
                }
            }
            return new Pair(arrayList, arrayList2);
        } catch (SQLException e2) {
            throw new SQLException(String.valueOf(e2));
        } catch (Exception e3) {
            throw new Exception(String.valueOf(e3));
        }
    }

    public final void U() {
        h();
        e = 0;
    }

    public final String d(AdsDTO adsDTO) {
        String psPackageName;
        String str;
        String packageName = adsDTO.getPackageName();
        if (packageName == null || j1a.o0(packageName)) {
            psPackageName = adsDTO.getPsPackageName();
            str = "getPsPackageName(...)";
        } else {
            psPackageName = adsDTO.getPackageName();
            str = "getPackageName(...)";
        }
        y45.i(psPackageName, str);
        return psPackageName;
    }

    public final String e(List list, int i2) {
        if (i2 != 2) {
            return "";
        }
        if (list == null || list.isEmpty()) {
            ikd.b().i("AttrDataManager", "ad store deep link is empty");
            return "OTHER";
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.length() != 0) {
                if (g1a.R(str, "palmplay://", false, 2, null)) {
                    return "PS";
                }
                if (g1a.R(str, "aha://", false, 2, null)) {
                    return "AHA";
                }
                return (g1a.R(str, "market://", false, 2, null) || j1a.X(str, "play.google.com", false, 2, null)) ? "GP" : "OTHER";
            }
        }
        return "";
    }

    public final Pair f(boolean z, int i2) throws JSONException {
        JSONObject jSONObject;
        String string;
        String str = z ? "successive_failures_imp" : "successive_failures_click";
        try {
            jSONObject = new JSONObject(o9.e().k(str, ""));
        } catch (Exception unused) {
            jSONObject = new JSONObject();
            jSONObject.put("count", 0);
            jSONObject.put("error_list", "");
        }
        int iOptInt = jSONObject.optInt("count", 0);
        String strOptString = jSONObject.optString("error_list", "");
        if (4 == i2 || 5 == i2) {
            int i3 = e + 1;
            e = i3;
            if (i3 > 3) {
                b = false;
                B();
                v();
            }
        } else {
            iOptInt++;
            StringBuilder sb = new StringBuilder();
            sb.append(strOptString);
            y45.i(strOptString, "element");
            if (j1a.o0(strOptString)) {
                string = String.valueOf(i2);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(',');
                sb2.append(i2);
                string = sb2.toString();
            }
            sb.append(string);
            strOptString = sb.toString();
            jSONObject.put("count", iOptInt);
            jSONObject.put("error_list", strOptString);
            o9.e().r(str, jSONObject.toString());
            if (iOptInt > 5) {
                b = false;
                o9.e().o("hs_attr_shutdown", true);
                B();
                v();
            }
        }
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "本次errorCode: " + i2 + " | 临时降级失败次数 : " + e + " | 永久降级失败次数和原因 :" + str + " : " + jSONObject);
        }
        return new Pair(Integer.valueOf(iOptInt), strOptString);
    }

    public final Pair g(boolean z, Object obj) {
        int i2;
        String lastPathSegment;
        int i3;
        String strJ = J();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("action", z ? PushConstants.PUSH_SERVICE_TYPE_SHOW : PushConstants.PUSH_SERVICE_TYPE_CLICK);
        linkedHashMap.put("linkId", strJ);
        linkedHashMap.put(ICode.CALL.CALL_KEY_CONTENT, obj);
        String strD = GsonUtil.d(linkedHashMap);
        com.cloud.hisavana.sdk.a.C0040a c0040a = com.cloud.hisavana.sdk.a.d;
        String strF = com.cloud.hisavana.sdk.a.C0040a.a(c0040a, null, 1, null).f(strD);
        String strE = com.cloud.hisavana.sdk.a.C0040a.a(c0040a, null, 1, null).e(strF + "ew2913");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ContentResolver contentResolver = ul4.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("sign", strE);
            contentValues.put("data", strF);
            contentValues.put("from", "ew");
            Uri uriInsert = contentResolver.insert(Uri.parse("content://com.common.bgainfo.provider/attribute_ew"), contentValues);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (uriInsert == null || (lastPathSegment = uriInsert.getLastPathSegment()) == null) {
                lastPathSegment = "";
            }
            boolean zE = y45.e(lastPathSegment, "3");
            if (uriInsert == null) {
                i3 = 1;
            } else if (zE) {
                i3 = 5;
            } else {
                i3 = jCurrentTimeMillis2 >= 5000 ? 2 : 0;
            }
            if (ikd.c()) {
                ikd.b().i("AttrDataManager", "content: " + strD + "\ninsertedUri: " + uriInsert + " \nerrorCode: " + i3);
            }
            i2 = i3;
        } catch (IllegalArgumentException e2) {
            ikd.b().e("AttrDataManager", "postData error: " + e2);
            String message = e2.getMessage();
            i2 = (message == null || !j1a.X(message, "content://com.common.bgainfo.provider/attribute_ew", false, 2, null)) ? 3 : 4;
        } catch (Exception e3) {
            ikd.b().e("AttrDataManager", "postData error: " + e3);
        }
        return new Pair(strJ, Integer.valueOf(i2));
    }

    public final void h() {
        boolean zG = cy9.g(ul4.a());
        boolean z = false;
        boolean zD = o9.e().d("hs_attr_shutdown", false);
        lxd lxdVar = lxd.a;
        int iD = lxdVar.d();
        int iA = lxdVar.a();
        if (zG && !zD && (iD >= 0 || iA >= 0)) {
            z = true;
        }
        b = z;
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "enableAttr: " + b + "\nShowDataSyncTimeInterval : " + iD + "\nShowDataSyncTimeInterval : " + iA);
        }
    }

    public final void i(int i2) {
        if (i2 <= 0) {
            ikd.b().i("AttrDataManager", "Invalid limit value: " + i2);
            return;
        }
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "delete impressions " + i2);
        }
        try {
            HSRoomDatabase.t().h().a(i2);
        } catch (SQLException e2) {
            ikd.b().e("AttrDataManager", "SQL error executing delete query: " + e2.getMessage());
        } catch (Exception e3) {
            ikd.b().e("AttrDataManager", "Error executing delete query: " + e3.getMessage());
        }
    }

    public final void q(com.cloud.sdk.commonutil.util.a.b bVar, int i2, c74 c74Var) throws JSONException {
        Collection collection = (Collection) ((Pair) bVar.a()).getFirst();
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Object arrayList = (List) ((Pair) bVar.a()).getFirst();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        Pair pairG = g(false, arrayList);
        AttrData attrData = new AttrData(0, null, 0, 0L, null, 0, null, 0, 255, null);
        attrData.setType(i2);
        attrData.setLinkId((String) pairG.getFirst());
        List list = (List) ((Pair) bVar.a()).getFirst();
        attrData.setCount(list != null ? list.size() : 0);
        String str = (String) ((Pair) bVar.a()).getSecond();
        if (str == null) {
            str = "";
        }
        attrData.setCreatives(str);
        attrData.setEventTs(System.currentTimeMillis());
        attrData.setErrorCode(((Number) pairG.getSecond()).intValue());
        if (((Number) pairG.getSecond()).intValue() == 0) {
            if (c74Var != null) {
                c74Var.invoke();
            }
            t(false);
            attrData.setFailCount(0);
            attrData.setErrorList("");
        } else {
            Pair pairF = f(false, ((Number) pairG.getSecond()).intValue());
            attrData.setFailCount(((Number) pairF.getFirst()).intValue());
            attrData.setErrorList((String) pairF.getSecond());
        }
        AthenaTracker.K(attrData);
    }

    public final void r(String str) {
        if (str == null || j1a.o0(str)) {
            return;
        }
        try {
            if (ikd.c()) {
                ikd.b().d("AttrDataManager", "deleteClicks sql---->,ids: " + str);
            }
            qud qudVarE = HSRoomDatabase.t().e();
            List listO0 = j1a.O0(str, new String[]{StringUtils.COMMA}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(z71.v(listO0, 10));
            Iterator it = listO0.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(Integer.parseInt((String) it.next())));
            }
            qudVarE.a(arrayList);
        } catch (Exception e2) {
            ikd.b().e("AttrDataManager", "deleteClicks fail " + Log.getStackTraceString(e2));
        }
    }

    public final void s(Pair pair) throws JSONException {
        Iterable<Pair> iterable = (Iterable) pair.getFirst();
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        for (Pair pair2 : iterable) {
            arrayList.add(kotlin.collections.a.p(abb.a(TtmlNode.TAG_P, (String) pair2.component1()), abb.a("showTime", Long.valueOf(((Number) pair2.component2()).longValue()))));
        }
        Pair pairG = g(true, arrayList);
        AttrData attrData = new AttrData(0, null, 0, 0L, null, 0, null, 0, 255, null);
        attrData.setLinkId((String) pairG.getFirst());
        attrData.setCount(((List) pair.getSecond()).size());
        attrData.setCreatives(i81.y0((Iterable) pair.getSecond(), null, null, null, 0, null, null, 63, null));
        attrData.setEventTs(System.currentTimeMillis());
        attrData.setErrorCode(((Number) pairG.getSecond()).intValue());
        if (((Number) pairG.getSecond()).intValue() == 0) {
            i(((List) pair.getSecond()).size());
            t(true);
            attrData.setFailCount(0);
            attrData.setErrorList("");
        } else {
            Pair pairF = f(true, ((Number) pairG.getSecond()).intValue());
            attrData.setFailCount(((Number) pairF.getFirst()).intValue());
            attrData.setErrorList((String) pairF.getSecond());
        }
        AthenaTracker.V(attrData);
    }

    public final void t(boolean z) {
        e = 0;
        o9.e().r(z ? "successive_failures_imp" : "successive_failures_click", "");
    }

    public final boolean u(AdsDTO adsDTO, boolean z) {
        Integer pullNewestLive;
        if (!b) {
            ikd.b().i("AttrDataManager", "Attr func disable.");
            return true;
        }
        if (!z && lxd.a.d() == -1) {
            ikd.b().i("AttrDataManager", "Show func disable.");
            return true;
        }
        String packageName = adsDTO != null ? adsDTO.getPackageName() : null;
        if (packageName == null || j1a.o0(packageName)) {
            String psPackageName = adsDTO != null ? adsDTO.getPsPackageName() : null;
            if (psPackageName == null || j1a.o0(psPackageName)) {
                ikd.b().i("AttrDataManager", "Ad pkg is empty.");
                return true;
            }
        }
        if (adsDTO != null && adsDTO.getSource() == 4) {
            ikd.b().i("AttrDataManager", "Filter default ad.");
            return true;
        }
        if (!z || adsDTO == null || (pullNewestLive = adsDTO.getPullNewestLive()) == null || pullNewestLive.intValue() != 0) {
            return false;
        }
        ikd.b().i("AttrDataManager", "Exclude regular ads.");
        return true;
    }

    public final void v() {
        try {
            HSRoomDatabase.t().e().a();
        } catch (Exception e2) {
            ikd.b().e("AttrDataManager", "clearClicks fail " + Log.getStackTraceString(e2));
        }
    }

    public final void w(AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().i("AttrDataManager", "Ad is null.");
            return;
        }
        if (u(adsDTO, true)) {
            return;
        }
        if (ikd.c()) {
            ikd.b().i("AttrDataManager", "insertClick ad info : " + adsDTO);
        }
        try {
            Integer pullNewestLive = adsDTO.getPullNewestLive();
            y45.i(pullNewestLive, "getPullNewestLive(...)");
            int iIntValue = pullNewestLive.intValue();
            String strD = d(adsDTO);
            ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
            Integer pullNewestLive2 = adsDTO.getPullNewestLive();
            y45.i(pullNewestLive2, "getPullNewestLive(...)");
            String strE = e(storeDeeplink, pullNewestLive2.intValue());
            String codeSeatId = adsDTO.getCodeSeatId();
            y45.i(codeSeatId, "getCodeSeatId(...)");
            long jCurrentTimeMillis = System.currentTimeMillis();
            String adCreativeId = adsDTO.getAdCreativeId();
            y45.i(adCreativeId, "getAdCreativeId(...)");
            swd swdVar = new swd(0, iIntValue, strD, strE, codeSeatId, jCurrentTimeMillis, adCreativeId, 1, null);
            HSRoomDatabase.t().e().a(swdVar);
            if (ikd.c()) {
                ikd.b().i("AttrDataManager", "insertClick success contentValues ---> " + swdVar);
            }
        } catch (Exception e2) {
            ikd.b().e("AttrDataManager", "insertClick fail " + Log.getStackTraceString(e2));
        }
    }
}
