package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.SQLException;
import android.net.Uri;
import android.util.Log;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.hisavana.sdk.ext.attr.AttrData;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
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
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

public final class x {

    private static boolean f22414b;

    private static long f22416d;

    private static int f22417e;

    private static long f22418f;

    public static final x f22413a = new x();

    private static boolean f22415c = true;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0005\u001a,\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Triple;", "", "", "", "", "a", "()Lkotlin/Triple;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function0<Triple<? extends List<Map<String, Object>>, ? extends String, ? extends String>> {

        public static final a f22419a = new a();

        a() {
            super(0);
        }

        @Override
        public final Triple<List<Map<String, Object>>, String, String> invoke() {
            return x.f22413a.S();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u000726\u0010\u0006\u001a2\u0012.\u0012,\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/cloud/sdk/commonutil/util/f;", "Lkotlin/Triple;", "", "", "", "", "result", "", "a", "(Lcom/cloud/sdk/commonutil/util/f;)V"}, k = 3, mv = {1, 9, 0})
    static final class b extends Lambda implements Function1<com.cloud.sdk.commonutil.util.f, Unit> {

        public static final b f22420a = new b();

        @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
        static final class a extends Lambda implements Function0<Unit> {

            final com.cloud.sdk.commonutil.util.f f22421a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(com.cloud.sdk.commonutil.util.f fVar) {
                super(0);
                this.f22421a = fVar;
            }

            public final void a() {
                x.f22413a.r((String) ((Triple) ((com.cloud.sdk.commonutil.util.f.b) this.f22421a).a()).getSecond());
            }

            @Override
            public Object invoke() {
                a();
                return Unit.f64096a;
            }
        }

        b() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.f result) throws JSONException {
            Intrinsics.h(result, "result");
            if (!(result instanceof com.cloud.sdk.commonutil.util.f.b)) {
                if (result instanceof com.cloud.sdk.commonutil.util.f.a) {
                    b4.b().e("AttrDataManager", "cycleClick error: " + ((com.cloud.sdk.commonutil.util.f.a) result).a());
                    return;
                }
                return;
            }
            if (b4.c()) {
                b4.b().i("AttrDataManager", "cycleClick success result value : " + ((com.cloud.sdk.commonutil.util.f.b) result).a());
            }
            com.cloud.sdk.commonutil.util.f.b bVar = (com.cloud.sdk.commonutil.util.f.b) result;
            x.f22413a.q(new com.cloud.sdk.commonutil.util.f.b(new Pair((List) ((Triple) bVar.a()).getFirst(), (String) ((Triple) bVar.a()).getThird())), 1, new a(result));
        }

        @Override
        public Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.f) obj);
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "timeInterval", "", "a", "(I)V"}, k = 3, mv = {1, 9, 0})
    static final class c extends Lambda implements Function1<Integer, Unit> {

        final AdsDTO f22422a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(AdsDTO adsDTO) {
            super(1);
            this.f22422a = adsDTO;
        }

        public final void a(int i10) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            x xVar = x.f22413a;
            if (jCurrentTimeMillis - xVar.L() >= ((long) i10) * 3600000) {
                x.f22418f = jCurrentTimeMillis;
                l7.a.e().q("attr_click_time", jCurrentTimeMillis);
                xVar.H();
            }
            xVar.w(this.f22422a);
        }

        @Override
        public Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class d extends Lambda implements Function0<Unit> {

        final AdsDTO f22423a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(AdsDTO adsDTO) {
            super(0);
            this.f22423a = adsDTO;
        }

        public final void a() {
            x.f22413a.M(this.f22423a);
        }

        @Override
        public Object invoke() {
            a();
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class e extends Lambda implements Function0<Unit> {

        public static final e f22424a = new e();

        e() {
            super(0);
        }

        public final void a() {
            x.f22413a.v();
        }

        @Override
        public Object invoke() {
            a();
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0004\u001a&\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00000\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlin/Pair;", "", "", "", "a", "()Lkotlin/Pair;"}, k = 3, mv = {1, 9, 0})
    static final class f extends Lambda implements Function0<Pair<? extends List<Pair<? extends String, ? extends Long>>, ? extends List<String>>> {

        public static final f f22425a = new f();

        f() {
            super(0);
        }

        @Override
        public final Pair<List<Pair<String, Long>>, List<String>> invoke() {
            return x.f22413a.T();
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u000620\u0010\u0005\u001a,\u0012(\u0012&\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/cloud/sdk/commonutil/util/f;", "Lkotlin/Pair;", "", "", "", "result", "", "a", "(Lcom/cloud/sdk/commonutil/util/f;)V"}, k = 3, mv = {1, 9, 0})
    static final class g extends Lambda implements Function1<com.cloud.sdk.commonutil.util.f, Unit> {

        public static final g f22426a = new g();

        g() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.f result) throws JSONException {
            Intrinsics.h(result, "result");
            if (!(result instanceof com.cloud.sdk.commonutil.util.f.b)) {
                if (result instanceof com.cloud.sdk.commonutil.util.f.a) {
                    b4.b().e("AttrDataManager", "postShowData error: " + ((com.cloud.sdk.commonutil.util.f.a) result).a());
                    return;
                }
                return;
            }
            b4 b4VarB = b4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("success result value : ");
            com.cloud.sdk.commonutil.util.f.b bVar = (com.cloud.sdk.commonutil.util.f.b) result;
            sb2.append(bVar.a());
            b4VarB.i("AttrDataManager", sb2.toString());
            if (((Collection) ((Pair) bVar.a()).getFirst()).isEmpty()) {
                return;
            }
            x.f22413a.s((Pair) bVar.a());
        }

        @Override
        public Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.f) obj);
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    static final class h extends Lambda implements Function1<Integer, CharSequence> {

        public static final h f22427a = new h();

        h() {
            super(1);
        }

        public final CharSequence a(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('\'');
            sb2.append(i10);
            sb2.append('\'');
            return sb2.toString();
        }

        @Override
        public Object invoke(Object obj) {
            return a(((Number) obj).intValue());
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0005\u001a$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Pair;", "", "", "", "", "a", "()Lkotlin/Pair;"}, k = 3, mv = {1, 9, 0})
    static final class i extends Lambda implements Function0<Pair<? extends List<Map<String, Object>>, ? extends String>> {

        final AdsDTO f22428a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(AdsDTO adsDTO) {
            super(0);
            this.f22428a = adsDTO;
        }

        @Override
        public final Pair<List<Map<String, Object>>, String> invoke() {
            return x.f22413a.N(this.f22428a);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u00072.\u0010\u0006\u001a*\u0012&\u0012$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/cloud/sdk/commonutil/util/f;", "Lkotlin/Pair;", "", "", "", "", "result", "", "a", "(Lcom/cloud/sdk/commonutil/util/f;)V"}, k = 3, mv = {1, 9, 0})
    static final class j extends Lambda implements Function1<com.cloud.sdk.commonutil.util.f, Unit> {

        public static final j f22429a = new j();

        j() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.f result) throws JSONException {
            Intrinsics.h(result, "result");
            if (result instanceof com.cloud.sdk.commonutil.util.f.b) {
                if (b4.c()) {
                    b4.b().i("AttrDataManager", "realClick success result value : " + ((com.cloud.sdk.commonutil.util.f.b) result).a());
                }
                x.n(x.f22413a, (com.cloud.sdk.commonutil.util.f.b) result, 2, null, 4, null);
                return;
            }
            if (result instanceof com.cloud.sdk.commonutil.util.f.a) {
                b4.b().e("AttrDataManager", "realClick error: " + ((com.cloud.sdk.commonutil.util.f.a) result).a());
            }
        }

        @Override
        public Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.f) obj);
            return Unit.f64096a;
        }
    }

    private x() {
    }

    private final void B() {
        if (b4.c()) {
            b4.b().i("AttrDataManager", "clear impressions");
        }
        try {
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    x.E();
                }
            });
        } catch (SQLException e10) {
            b4.b().e("AttrDataManager", "SQL error executing delete query: " + e10.getMessage());
        } catch (Exception e11) {
            b4.b().e("AttrDataManager", "Error executing delete query: " + e11.getMessage());
        }
    }

    public static final void E() {
        HSRoomDatabase.v0().n0().a();
    }

    public static final void F(AdsDTO adsDTO) {
        v5 v5VarN0 = HSRoomDatabase.v0().n0();
        String strD = f22413a.d(adsDTO);
        String adCreativeId = adsDTO.getAdCreativeId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.e(adCreativeId);
        v5VarN0.a(new com.cloud.hisavana.sdk.b(0, strD, jCurrentTimeMillis, adCreativeId, 1, null));
    }

    public final void H() {
        HSScopeHelper.f22503a.k(a.f22419a, b.f22420a);
    }

    public static final void I(final AdsDTO adsDTO) {
        if (f22413a.P()) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                x.K(adsDTO);
            }
        });
    }

    private final String J() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        String strQ = StringsKt.Q(string, "-", "", false, 4, null);
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ew_");
        String strSubstring = strQ.substring(0, 6);
        Intrinsics.g(strSubstring, "substring(...)");
        sb2.append(strSubstring);
        sb2.append("_");
        sb2.append(jCurrentTimeMillis);
        String string2 = sb2.toString();
        Intrinsics.g(string2, "toString(...)");
        return string2;
    }

    public static final void K(AdsDTO adsDTO) {
        o5.f22109a.c(new c(adsDTO), new d(adsDTO), e.f22424a);
    }

    public final long L() {
        long j10 = f22418f;
        return j10 > 0 ? j10 : l7.a.e().h("attr_click_time");
    }

    public final void M(AdsDTO adsDTO) {
        HSScopeHelper.f22503a.k(new i(adsDTO), j.f22429a);
    }

    public final Pair N(AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().i("AttrDataManager", "Ad is null.");
            return new Pair(null, null);
        }
        if (u(adsDTO, true)) {
            return new Pair(null, null);
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Integer pullNewestLive = adsDTO.getPullNewestLive();
        Intrinsics.g(pullNewestLive, "getPullNewestLive(...)");
        linkedHashMap.put("action_type", pullNewestLive);
        linkedHashMap.put(TtmlNode.TAG_P, d(adsDTO));
        ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
        Integer pullNewestLive2 = adsDTO.getPullNewestLive();
        Intrinsics.g(pullNewestLive2, "getPullNewestLive(...)");
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, e(storeDeeplink, pullNewestLive2.intValue()));
        String codeSeatId = adsDTO.getCodeSeatId();
        Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
        linkedHashMap.put("adId", codeSeatId);
        linkedHashMap.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        arrayList.add(linkedHashMap);
        return new Pair(arrayList, adsDTO.getAdCreativeId());
    }

    private final boolean P() {
        if (f22414b) {
            return false;
        }
        b4.b().i("AttrDataManager", "Attr func disable.");
        return true;
    }

    private final boolean R() {
        if (!f22414b) {
            b4.b().i("AttrDataManager", "Attr func disable.");
            return true;
        }
        int iD = o5.f22109a.d();
        if (b4.c()) {
            b4.b().i("AttrDataManager", "Attr showConfig : " + iD);
        }
        if (iD < 0) {
            B();
            return true;
        }
        if (iD != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - f22416d < ((long) iD) * 3600000) {
                return true;
            }
            f22416d = jCurrentTimeMillis;
            U();
        } else {
            if (!f22415c) {
                return true;
            }
            f22415c = false;
        }
        return false;
    }

    public final Triple S() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        try {
            List<n5> listB = HSRoomDatabase.v0().k0().b();
            if (listB != null && !listB.isEmpty()) {
                for (n5 n5Var : listB) {
                    if (n5Var != null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        arrayList2.add(Integer.valueOf(n5Var.g()));
                        arrayList3.add(n5Var.b());
                        linkedHashMap.put("action_type", Integer.valueOf(n5Var.a()));
                        linkedHashMap.put(TtmlNode.TAG_P, n5Var.f());
                        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, n5Var.e());
                        linkedHashMap.put("adId", n5Var.d());
                        linkedHashMap.put(EventConstants.KEY_TIME, Long.valueOf(n5Var.c()));
                        arrayList.add(linkedHashMap);
                    }
                }
            }
        } catch (SQLException e10) {
            b4.b().e("AttrDataManager", "queryClick SQLException fail: " + e10.getMessage());
        } catch (Exception e11) {
            b4.b().e("AttrDataManager", "queryClick Exception fail: " + e11.getMessage());
        }
        return new Triple(arrayList, CollectionsKt.s0(arrayList2, null, null, null, 0, null, h.f22427a, 31, null), CollectionsKt.s0(arrayList3, null, null, null, 0, null, null, 63, null));
    }

    public final Pair T() throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            List<com.cloud.hisavana.sdk.b> listB = HSRoomDatabase.v0().n0().b();
            if (listB != null) {
                for (com.cloud.hisavana.sdk.b bVar : listB) {
                    if (bVar != null) {
                        arrayList.add(new Pair(bVar.c(), Long.valueOf(bVar.b())));
                    }
                    if (bVar != null) {
                        arrayList2.add(bVar.a());
                    }
                }
            }
            return new Pair(arrayList, arrayList2);
        } catch (SQLException e10) {
            throw new SQLException(String.valueOf(e10));
        } catch (Exception e11) {
            throw new Exception(String.valueOf(e11));
        }
    }

    private final void U() {
        h();
        f22417e = 0;
    }

    private final String d(AdsDTO adsDTO) {
        String psPackageName;
        String str;
        String packageName = adsDTO.getPackageName();
        if (packageName == null || StringsKt.q0(packageName)) {
            psPackageName = adsDTO.getPsPackageName();
            str = "getPsPackageName(...)";
        } else {
            psPackageName = adsDTO.getPackageName();
            str = "getPackageName(...)";
        }
        Intrinsics.g(psPackageName, str);
        return psPackageName;
    }

    private final String e(List list, int i10) {
        if (i10 != 2) {
            return "";
        }
        if (list == null || list.isEmpty()) {
            b4.b().i("AttrDataManager", "ad store deep link is empty");
            return "OTHER";
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.length() != 0) {
                if (StringsKt.W(str, "palmplay://", false, 2, null)) {
                    return "PS";
                }
                if (StringsKt.W(str, "aha://", false, 2, null)) {
                    return "AHA";
                }
                return (StringsKt.W(str, "market://", false, 2, null) || StringsKt.c0(str, Constants.GP_DEEPLINK, false, 2, null)) ? "GP" : "OTHER";
            }
        }
        return "";
    }

    private final Pair f(boolean z10, int i10) throws JSONException {
        JSONObject jSONObject;
        String string;
        String str = z10 ? "successive_failures_imp" : "successive_failures_click";
        try {
            jSONObject = new JSONObject(l7.a.e().k(str, ""));
        } catch (Exception unused) {
            jSONObject = new JSONObject();
            jSONObject.put("count", 0);
            jSONObject.put("error_list", "");
        }
        int iOptInt = jSONObject.optInt("count", 0);
        String element = jSONObject.optString("error_list", "");
        if (4 == i10 || 5 == i10) {
            int i11 = f22417e + 1;
            f22417e = i11;
            if (i11 > 3) {
                f22414b = false;
                B();
                v();
            }
        } else {
            iOptInt++;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(element);
            Intrinsics.g(element, "element");
            if (StringsKt.q0(element)) {
                string = String.valueOf(i10);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(',');
                sb3.append(i10);
                string = sb3.toString();
            }
            sb2.append(string);
            element = sb2.toString();
            jSONObject.put("count", iOptInt);
            jSONObject.put("error_list", element);
            l7.a.e().r(str, jSONObject.toString());
            if (iOptInt > 5) {
                f22414b = false;
                l7.a.e().o("hs_attr_shutdown", true);
                B();
                v();
            }
        }
        if (b4.c()) {
            b4.b().i("AttrDataManager", "本次errorCode: " + i10 + " | 临时降级失败次数 : " + f22417e + " | 永久降级失败次数和原因 :" + str + " : " + jSONObject);
        }
        return new Pair(Integer.valueOf(iOptInt), element);
    }

    private final Pair g(boolean z10, Object obj) {
        int i10;
        String lastPathSegment;
        int i11;
        String strJ = J();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, z10 ? PushConstants.PUSH_SERVICE_TYPE_SHOW : "click");
        linkedHashMap.put("linkId", strJ);
        linkedHashMap.put("content", obj);
        String strD = GsonUtil.d(linkedHashMap);
        com.cloud.hisavana.sdk.h.a aVar = com.cloud.hisavana.sdk.h.f21873d;
        String strF = com.cloud.hisavana.sdk.h.a.a(aVar, null, 1, null).f(strD);
        String strE = com.cloud.hisavana.sdk.h.a.a(aVar, null, 1, null).e(strF + "ew2913");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put(TmcConstants.EXTRA_APP_DEV_TOKEN, strE);
            contentValues.put("data", strF);
            contentValues.put("from", "ew");
            Uri uriInsert = contentResolver.insert(Uri.parse("content://com.common.bgainfo.provider/attribute_ew"), contentValues);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (uriInsert == null || (lastPathSegment = uriInsert.getLastPathSegment()) == null) {
                lastPathSegment = "";
            }
            boolean zC = Intrinsics.c(lastPathSegment, "3");
            if (uriInsert == null) {
                i11 = 1;
            } else if (zC) {
                i11 = 5;
            } else {
                i11 = jCurrentTimeMillis2 >= 5000 ? 2 : 0;
            }
            if (b4.c()) {
                b4.b().i("AttrDataManager", "content: " + strD + "\ninsertedUri: " + uriInsert + " \nerrorCode: " + i11);
            }
            i10 = i11;
        } catch (IllegalArgumentException e10) {
            b4.b().e("AttrDataManager", "postData error: " + e10);
            String message = e10.getMessage();
            i10 = (message == null || !StringsKt.c0(message, "content://com.common.bgainfo.provider/attribute_ew", false, 2, null)) ? 3 : 4;
        } catch (Exception e11) {
            b4.b().e("AttrDataManager", "postData error: " + e11);
        }
        return new Pair(strJ, Integer.valueOf(i10));
    }

    private final void i(int i10) {
        if (i10 <= 0) {
            b4.b().i("AttrDataManager", "Invalid limit value: " + i10);
            return;
        }
        if (b4.c()) {
            b4.b().i("AttrDataManager", "delete impressions " + i10);
        }
        try {
            HSRoomDatabase.v0().n0().a(i10);
        } catch (SQLException e10) {
            b4.b().e("AttrDataManager", "SQL error executing delete query: " + e10.getMessage());
        } catch (Exception e11) {
            b4.b().e("AttrDataManager", "Error executing delete query: " + e11.getMessage());
        }
    }

    static void n(x xVar, com.cloud.sdk.commonutil.util.f.b bVar, int i10, Function0 function0, int i11, Object obj) throws JSONException {
        if ((i11 & 4) != 0) {
            function0 = null;
        }
        xVar.q(bVar, i10, function0);
    }

    public final void q(com.cloud.sdk.commonutil.util.f.b bVar, int i10, Function0 function0) throws JSONException {
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
        attrData.setType(i10);
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
            if (function0 != null) {
                function0.invoke();
            }
            t(false);
            attrData.setFailCount(0);
            attrData.setErrorList("");
        } else {
            Pair pairF = f(false, ((Number) pairG.getSecond()).intValue());
            attrData.setFailCount(((Number) pairF.getFirst()).intValue());
            attrData.setErrorList((String) pairF.getSecond());
        }
        AthenaTracker.H(attrData);
    }

    public final void r(String str) {
        if (str == null || StringsKt.q0(str)) {
            return;
        }
        try {
            if (b4.c()) {
                b4.b().d("AttrDataManager", "deleteClicks sql---->,ids: " + str);
            }
            x4 x4VarK0 = HSRoomDatabase.v0().k0();
            List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(CollectionsKt.v(listS0, 10));
            Iterator it = listS0.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(Integer.parseInt((String) it.next())));
            }
            x4VarK0.a(arrayList);
        } catch (Exception e10) {
            b4.b().e("AttrDataManager", "deleteClicks fail " + Log.getStackTraceString(e10));
        }
    }

    public final void s(Pair pair) throws JSONException {
        Iterable<Pair> iterable = (Iterable) pair.getFirst();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterable, 10));
        for (Pair pair2 : iterable) {
            arrayList.add(MapsKt.l(TuplesKt.a(TtmlNode.TAG_P, (String) pair2.component1()), TuplesKt.a("showTime", Long.valueOf(((Number) pair2.component2()).longValue()))));
        }
        Pair pairG = g(true, arrayList);
        AttrData attrData = new AttrData(0, null, 0, 0L, null, 0, null, 0, 255, null);
        attrData.setLinkId((String) pairG.getFirst());
        attrData.setCount(((List) pair.getSecond()).size());
        attrData.setCreatives(CollectionsKt.s0((Iterable) pair.getSecond(), null, null, null, 0, null, null, 63, null));
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
        AthenaTracker.Q(attrData);
    }

    private final void t(boolean z10) {
        f22417e = 0;
        l7.a.e().r(z10 ? "successive_failures_imp" : "successive_failures_click", "");
    }

    private final boolean u(AdsDTO adsDTO, boolean z10) {
        Integer pullNewestLive;
        if (!f22414b) {
            b4.b().i("AttrDataManager", "Attr func disable.");
            return true;
        }
        if (!z10 && o5.f22109a.d() == -1) {
            b4.b().i("AttrDataManager", "Show func disable.");
            return true;
        }
        String packageName = adsDTO != null ? adsDTO.getPackageName() : null;
        if (packageName == null || StringsKt.q0(packageName)) {
            String psPackageName = adsDTO != null ? adsDTO.getPsPackageName() : null;
            if (psPackageName == null || StringsKt.q0(psPackageName)) {
                b4.b().i("AttrDataManager", "Ad pkg is empty.");
                return true;
            }
        }
        if (adsDTO != null && adsDTO.getSource() == 4) {
            b4.b().i("AttrDataManager", "Filter default ad.");
            return true;
        }
        if (!z10 || adsDTO == null || (pullNewestLive = adsDTO.getPullNewestLive()) == null || pullNewestLive.intValue() != 0) {
            return false;
        }
        b4.b().i("AttrDataManager", "Exclude regular ads.");
        return true;
    }

    public final void v() {
        try {
            HSRoomDatabase.v0().k0().a();
        } catch (Exception e10) {
            b4.b().e("AttrDataManager", "clearClicks fail " + Log.getStackTraceString(e10));
        }
    }

    public final void w(AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().i("AttrDataManager", "Ad is null.");
            return;
        }
        if (u(adsDTO, true)) {
            return;
        }
        if (b4.c()) {
            b4.b().i("AttrDataManager", "insertClick ad info : " + adsDTO);
        }
        try {
            Integer pullNewestLive = adsDTO.getPullNewestLive();
            Intrinsics.g(pullNewestLive, "getPullNewestLive(...)");
            int iIntValue = pullNewestLive.intValue();
            String strD = d(adsDTO);
            ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
            Integer pullNewestLive2 = adsDTO.getPullNewestLive();
            Intrinsics.g(pullNewestLive2, "getPullNewestLive(...)");
            String strE = e(storeDeeplink, pullNewestLive2.intValue());
            String codeSeatId = adsDTO.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            long jCurrentTimeMillis = System.currentTimeMillis();
            String adCreativeId = adsDTO.getAdCreativeId();
            Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
            n5 n5Var = new n5(0, iIntValue, strD, strE, codeSeatId, jCurrentTimeMillis, adCreativeId, 1, null);
            HSRoomDatabase.v0().k0().a(n5Var);
            if (b4.c()) {
                b4.b().i("AttrDataManager", "insertClick success contentValues ---> " + n5Var);
            }
        } catch (Exception e10) {
            b4.b().e("AttrDataManager", "insertClick fail " + Log.getStackTraceString(e10));
        }
    }

    public final void C(final AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().i("AttrDataManager", "Ad is null.");
            return;
        }
        if (u(adsDTO, false)) {
            return;
        }
        if (b4.c()) {
            b4.b().i("AttrDataManager", "ad info : " + adsDTO);
        }
        try {
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    x.F(adsDTO);
                }
            });
        } catch (Exception e10) {
            b4.b().e("AttrDataManager", "insert imp fail " + Log.getStackTraceString(e10));
        }
    }

    public final void O() {
        h();
        Q();
    }

    public final void Q() {
        if (R()) {
            return;
        }
        HSScopeHelper.f22503a.k(f.f22425a, g.f22426a);
    }

    public final void h() {
        boolean zF = com.cloud.hisavana.sdk.common.util.h0.f(com.cloud.sdk.commonutil.util.e.a());
        boolean z10 = false;
        boolean zD = l7.a.e().d("hs_attr_shutdown", false);
        o5 o5Var = o5.f22109a;
        int iD = o5Var.d();
        int iA = o5Var.a();
        if (zF && !zD && (iD >= 0 || iA >= 0)) {
            z10 = true;
        }
        f22414b = z10;
        if (b4.c()) {
            b4.b().i("AttrDataManager", "enableAttr: " + f22414b + "\nShowDataSyncTimeInterval : " + iD + "\nShowDataSyncTimeInterval : " + iA);
        }
    }
}
