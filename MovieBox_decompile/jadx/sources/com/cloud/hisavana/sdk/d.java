package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.json.JSONException;

public final class d {

    public static final d f21729a = new d();

    private static Uri f21730b;

    private static final C0282d f21731c;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", CommonLogUtil.TAG_AD, "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function1<AdsDTO, CharSequence> {

        public static final a f21732a = new a();

        a() {
            super(1);
        }

        @Override
        public final CharSequence invoke(AdsDTO ad2) {
            Intrinsics.h(ad2, "ad");
            int iC = com.cloud.hisavana.sdk.common.util.g.c(ad2, true);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string = com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg2);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{ad2.getAdCreativeId().toString(), Boolean.valueOf(ad2.isOfflineAd()), Integer.valueOf(ad2.getAdRequestVer()), Integer.valueOf(iC), Integer.valueOf(ad2.getMaxShowCount()), ad2.getShowNum(), String.valueOf(ad2.getFirstPrice())}, 7));
            Intrinsics.g(str, "format(...)");
            return str;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class b extends Lambda implements Function1<AdsDTO, Boolean> {

        public static final b f21733a = new b();

        b() {
            super(1);
        }

        @Override
        public final Boolean invoke(AdsDTO it) {
            Intrinsics.h(it, "it");
            return Boolean.valueOf(com.cloud.hisavana.sdk.common.util.g.b(it));
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/d$c", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class c extends TypeToken<List<? extends AdsDTO>> {
        c() {
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010'\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004J%\u0010\b\u001a\u00020\u00072\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"com/cloud/hisavana/sdk/d$d", "Ljava/util/LinkedHashMap;", "", "", "Lkotlin/collections/LinkedHashMap;", "", "eldest", "", "removeEldestEntry", "(Ljava/util/Map$Entry;)Z", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class C0282d extends LinkedHashMap<String, Integer> {
        C0282d() {
            super(30, 0.9f, true);
        }

        public boolean a(String str) {
            return super.containsKey(str);
        }

        public Set<String> b() {
            return super.keySet();
        }

        public int c() {
            return super.size();
        }

        @Override
        public final boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return a((String) obj);
            }
            return false;
        }

        @Override
        public final boolean containsValue(Object obj) {
            if (obj instanceof Integer) {
                return a((Integer) obj);
            }
            return false;
        }

        public Collection<Integer> d() {
            return super.values();
        }

        @Override
        public final Set<Map.Entry<String, Integer>> entrySet() {
            return a();
        }

        public Integer get(String str) {
            return (Integer) super.get((Object) str);
        }

        public Integer getOrDefault(String str, Integer num) {
            return (Integer) super.getOrDefault((Object) str, num);
        }

        @Override
        public final Set<String> keySet() {
            return b();
        }

        public Integer remove(String str) {
            return (Integer) super.remove((Object) str);
        }

        @Override
        protected boolean removeEldestEntry(Map.Entry<String, Integer> eldest) {
            return size() >= 26;
        }

        @Override
        public final int size() {
            return c();
        }

        @Override
        public final Collection<Integer> values() {
            return d();
        }

        public boolean a(Integer num) {
            return super.containsValue(num);
        }

        @Override
        public final Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        @Override
        public final Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (Integer) obj2);
        }

        @Override
        public final Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        public Set<Map.Entry<String, Integer>> a() {
            return super.entrySet();
        }

        @Override
        public final boolean remove(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof Integer)) {
                return a((String) obj, (Integer) obj2);
            }
            return false;
        }

        public boolean a(String str, Integer num) {
            return super.remove(str, num);
        }
    }

    static {
        Uri uri = Uri.parse("content://" + com.cloud.sdk.commonutil.util.e.d() + ".HisavanaContentProvider/ad_data");
        Intrinsics.g(uri, "parse(this)");
        f21730b = uri;
        f21731c = new C0282d();
    }

    private d() {
    }

    public static final void C(AdsDTO adsDTO) {
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f21730b, "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_request_ver < ? AND is_offline_ad = ? ", new String[]{adsDTO.getCodeSeatId(), String.valueOf(adsDTO.getAdRequestVer()), "1"});
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "delete ad error: " + e10.getMessage());
        }
    }

    public static final void D(List filteredAds) {
        Intrinsics.h(filteredAds, "$filteredAds");
        Iterator it = filteredAds.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO.isOfflineAd() && com.cloud.hisavana.sdk.common.util.g.e(adsDTO, true)) {
                f21729a.z(adsDTO);
            }
        }
        try {
            AdsDTO adsDTO2 = (AdsDTO) CollectionsKt.i0(filteredAds);
            if (adsDTO2.getSource() != 1 || adsDTO2.isOfflineAd()) {
                return;
            }
            d dVar = f21729a;
            String codeSeatId = adsDTO2.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            dVar.n(codeSeatId);
            dVar.y(filteredAds);
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "save to storage error: " + e10.getMessage());
        }
    }

    private final void E(AdsDTO adsDTO) {
        try {
            String adCreativeId = adsDTO.getAdCreativeId();
            if (TextUtils.isEmpty(adCreativeId)) {
                return;
            }
            C0282d c0282d = f21731c;
            if (c0282d.containsKey(adCreativeId)) {
                int iIntValue = ((Number) com.cloud.hisavana.sdk.common.util.b0.a(c0282d.get((Object) adCreativeId), 0)).intValue() + 1;
                Integer numValueOf = Integer.valueOf(iIntValue);
                Intrinsics.e(adCreativeId);
                c0282d.put(adCreativeId, numValueOf);
                adsDTO.setShowNum(Integer.valueOf(iIntValue));
            } else {
                Intrinsics.e(adCreativeId);
                Integer showNum = adsDTO.getShowNum();
                Intrinsics.g(showNum, "getShowNum(...)");
                c0282d.put(adCreativeId, showNum);
            }
        } catch (Exception unused) {
        }
    }

    private final void F(List list) {
        b4.b().d("AdDbHelper", "getAdListByCodeSeatId updateList " + list);
        if (list.isEmpty()) {
            return;
        }
        try {
            String strD = GsonUtil.d(list);
            ContentValues contentValues = new ContentValues();
            contentValues.put("AdsData", strD);
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().update(f21730b, contentValues, null, null);
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "updateAdsShowTimes error: " + e10.getMessage());
        }
    }

    public static final void I(AdsDTO adsDTO) {
        f21729a.E(adsDTO);
        List listQ = CollectionsKt.q(adsDTO);
        ContentValues contentValues = new ContentValues();
        contentValues.put("AdsData", GsonUtil.d(listQ));
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().update(f21730b, contentValues, null, null);
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "updateShowTimes " + e10.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r9v5 */
    private final List j(StringBuilder sb2, List list) {
        ?? r10;
        ?? arrayList = new ArrayList();
        try {
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            Uri uri = f21730b;
            String string = sb2.toString();
            Cursor cursorQuery = contentResolver.query(uri, null, string, (String[]) list.toArray(new String[0]), null);
            r10 = arrayList;
            if (cursorQuery != null) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        int columnIndex = cursorQuery.getColumnIndex("ad_bean");
                        int columnIndex2 = cursorQuery.getColumnIndex("_id");
                        if (columnIndex >= 0 && columnIndex2 >= 0) {
                            String string2 = cursorQuery.getString(columnIndex);
                            Intrinsics.e(string2);
                            if (string2.length() > 0) {
                                arrayList3.add(string2);
                                arrayList2.add(Integer.valueOf(cursorQuery.getInt(columnIndex2)));
                            }
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        CloseableKt.a(cursorQuery, null);
                        return arrayList;
                    }
                    String string3 = Arrays.toString(arrayList3.toArray(new String[0]));
                    Intrinsics.g(string3, "toString(...)");
                    Object objB = GsonUtil.b(string3, new c().getType());
                    Intrinsics.g(objB, "fromJson(...)");
                    try {
                        int iMin = Math.min(((List) objB).size(), arrayList2.size());
                        for (int i10 = 0; i10 < iMin; i10++) {
                            AdsDTO adsDTO = (AdsDTO) ((List) objB).get(i10);
                            if (adsDTO != null) {
                                adsDTO.setTableId(((Number) arrayList2.get(i10)).intValue());
                                adsDTO.setSource(adsDTO.isOfflineAd() ? 3 : 2);
                            }
                        }
                        Unit unit = Unit.f64096a;
                        try {
                            CloseableKt.a(cursorQuery, null);
                            r10 = objB;
                        } catch (Exception e10) {
                            e = e10;
                            arrayList = objB;
                            b4.b().e("AdDbHelper", "query by code seat id error: " + e.getMessage());
                            ((List) arrayList).clear();
                            r10 = arrayList;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        arrayList = objB;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    arrayList = arrayList;
                }
                try {
                    throw th;
                } catch (Throwable th4) {
                    CloseableKt.a(cursorQuery, th);
                    throw th4;
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return (List) r10;
    }

    private final Pair k(String str, boolean z10, int i10, List list, Map map, ConcurrentHashMap concurrentHashMap) {
        androidx.collection.b bVar = new androidx.collection.b();
        int i11 = 0;
        List<AdsDTO> listI = i(str, z10, list, false);
        if (listI.isEmpty()) {
            bVar.add(100);
            l(bVar, concurrentHashMap);
            return new Pair(new ArrayList(), new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (AdsDTO adsDTO : CollectionsKt.f0(listI)) {
            boolean zT = t(adsDTO, arrayList2, map, bVar);
            if (i11 < i10 && !zT) {
                if (u(adsDTO, z10)) {
                    arrayList3.add(adsDTO);
                }
                int iC = com.cloud.hisavana.sdk.common.util.g.c(adsDTO, z10);
                if (iC == 0) {
                    arrayList.add(adsDTO);
                    i11++;
                } else {
                    String adCreativeId = adsDTO.getAdCreativeId();
                    Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                    map.put(adCreativeId, Integer.valueOf(iC));
                    bVar.add(Integer.valueOf(iC));
                }
            } else if (i11 >= i10) {
                bVar.add(109);
            }
        }
        F(arrayList3);
        l(bVar, concurrentHashMap);
        if (c7.b.l()) {
            b4 b4VarB = b4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("get cached ads in db, codeSeatId: ");
            sb2.append(str);
            sb2.append(", all list is: ");
            ArrayList arrayList4 = new ArrayList(CollectionsKt.v(listI, 10));
            for (AdsDTO adsDTO2 : listI) {
                arrayList4.add(adsDTO2 != null ? adsDTO2.getAdCreativeId() : null);
            }
            sb2.append(arrayList4);
            sb2.append(", \n filtered: ");
            sb2.append(map);
            sb2.append(", \n result: ");
            ArrayList arrayList5 = new ArrayList(CollectionsKt.v(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList5.add(((AdsDTO) it.next()).getAdCreativeId());
            }
            sb2.append(arrayList5);
            b4VarB.d("AdDbHelper", sb2.toString());
        }
        return new Pair(arrayList, arrayList2);
    }

    private final void l(androidx.collection.b bVar, ConcurrentHashMap concurrentHashMap) {
        try {
            if (bVar.isEmpty()) {
                return;
            }
            String strD = GsonUtil.d(bVar);
            if (concurrentHashMap != null) {
                com.cloud.hisavana.sdk.common.util.f0.h(concurrentHashMap, "s_offline_return_filter", strD);
            }
        } catch (Throwable unused) {
        }
    }

    private final void n(final String str) {
        b4.b().d("AdDbHelper", "deleteOnLineAdByConfigId codeSeatId = " + str);
        if (str.length() == 0) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                d.w(str);
            }
        });
    }

    public static final void p(String str, p.c cVar, boolean z10, int i10, List list, ConcurrentHashMap concurrentHashMap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        try {
            ConfigCodeSeatDTO configCodeSeatDTOC = O.g().c(str);
            if (configCodeSeatDTOC != null) {
                d dVar = f21729a;
                Pair pairK = dVar.k(str, z10, i10, list, linkedHashMap, concurrentHashMap);
                arrayList.addAll((Collection) pairK.getFirst());
                dVar.s((List) pairK.getSecond());
                O.g().i(configCodeSeatDTOC);
            }
            if (b4.c()) {
                b4.b().d("AdDbHelper", "getAdByCodeSeatId " + arrayList);
            }
            if (cVar != null) {
                cVar.a(arrayList, linkedHashMap.isEmpty() ? "" : linkedHashMap.toString());
            }
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", Log.getStackTraceString(e10));
            if (cVar != null) {
                cVar.a(arrayList, linkedHashMap.isEmpty() ? "" : linkedHashMap.toString());
            }
        }
    }

    public static final void q(String str, List tempList) {
        Intrinsics.h(tempList, "$tempList");
        ContentValues contentValues = new ContentValues();
        contentValues.put("AdsData", GsonUtil.d(tempList));
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().insert(f21730b, contentValues);
            ConfigCodeSeatDTO configCodeSeatDTOC = O.g().c(str);
            if (configCodeSeatDTOC != null) {
                O.g().i(configCodeSeatDTOC);
            }
        } catch (Throwable th2) {
            b4.b().e("AdDbHelper", "insert Throwable exception occurred: " + th2.getMessage());
        }
    }

    private final void s(List list) {
        if (b4.c()) {
            b4.b().d("AdDbHelper", "deleteExpireAds " + list);
        }
        if (list.isEmpty()) {
            return;
        }
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f21730b, null, (String[]) list.toArray(new String[0]));
        } catch (Throwable th2) {
            b4.b().e("AdDbHelper", "deleteExpireAds Throwable exception occurred: " + th2.getMessage());
        }
    }

    private final boolean t(AdsDTO adsDTO, List list, Map map, androidx.collection.b bVar) {
        int i10;
        if (com.cloud.hisavana.sdk.common.util.g.b(adsDTO)) {
            if (bVar != null) {
                bVar.add(1);
            }
            list.add(String.valueOf(adsDTO.getTableId()));
            String adCreativeId = adsDTO.getAdCreativeId();
            Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
            map.put(adCreativeId, 1);
            return true;
        }
        Integer pullNewestLive = adsDTO.getPullNewestLive();
        Intrinsics.g(pullNewestLive, "getPullNewestLive(...)");
        int iA = com.cloud.hisavana.sdk.common.util.d0.a(pullNewestLive.intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
        if (iA != 1 && iA != 2) {
            return false;
        }
        list.add(String.valueOf(adsDTO.getTableId()));
        String adCreativeId2 = adsDTO.getAdCreativeId();
        Intrinsics.g(adCreativeId2, "getAdCreativeId(...)");
        if (iA == 1) {
            i10 = 5;
            if (bVar != null) {
                bVar.add(5);
            }
        } else {
            i10 = 6;
            if (bVar != null) {
                bVar.add(6);
            }
        }
        map.put(adCreativeId2, Integer.valueOf(i10));
        return true;
    }

    private final boolean u(AdsDTO adsDTO, boolean z10) {
        PslinkInfo pslinkInfo;
        adsDTO.setSource(adsDTO.isOfflineAd() ? 3 : 2);
        adsDTO.setUuid(com.cloud.hisavana.sdk.common.util.b.f21563a.e(adsDTO, z10 ? 1 : 0));
        String appInfo = adsDTO.getAppInfo();
        if (appInfo != null && !StringsKt.q0(appInfo) && (pslinkInfo = adsDTO.getPslinkInfo()) != null) {
            pslinkInfo.setShowId(adsDTO.getUuid());
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - adsDTO.getShowDate() < 86400000) {
            return false;
        }
        adsDTO.setShowDate(com.cloud.hisavana.sdk.common.util.k0.c(jCurrentTimeMillis));
        adsDTO.setShowNum(0);
        String strD = w2.f22392a.d(adsDTO);
        C0282d c0282d = f21731c;
        if (!c0282d.containsKey(strD)) {
            return true;
        }
        c0282d.put(strD, 0);
        return true;
    }

    public static final void v(AdsDTO adsDTO) {
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f21730b, "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_creative_id = ?AND is_offline_ad = ?", new String[]{adsDTO.getCodeSeatId(), adsDTO.getAdCreativeId(), "0"});
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "delete ad error: " + e10.getMessage());
        }
    }

    public static final void w(String codeSeatId) {
        Intrinsics.h(codeSeatId, "$codeSeatId");
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f21730b, "DELETE FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? ", new String[]{codeSeatId, "0"});
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "delete online ad err : " + e10.getMessage());
        }
    }

    public static final void x(String str, boolean z10) {
        try {
            List listI = f21729a.i(str, z10, null, false);
            if (listI.isEmpty()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (AdsDTO adsDTO : CollectionsKt.f0(listI)) {
                if (jCurrentTimeMillis - adsDTO.getShowDate() >= 86400000) {
                    adsDTO.setShowDate(com.cloud.hisavana.sdk.common.util.k0.c(jCurrentTimeMillis));
                    adsDTO.setShowNum(0);
                }
            }
            String strS0 = CollectionsKt.s0(CollectionsKt.f0(listI), "\n", null, null, 0, null, a.f21732a, 30, null);
            b4.b().d("AdDbHelper", "offline ad status is:\n" + strS0);
            if (c7.b.l()) {
                com.cloud.sdk.commonutil.util.q.b(strS0, 4);
            }
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "check for log error: " + e10.getMessage());
        }
    }

    public final void A(List list) {
        if (list == null || list.isEmpty()) {
            b4.b().e("AdDbHelper", "insertLoadedAd adsDTOList is null or size is 0");
            return;
        }
        final List listU0 = CollectionsKt.U0(CollectionsKt.f0(list));
        if (listU0.isEmpty()) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                d.D(listU0);
            }
        });
    }

    public final boolean B(String path) {
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        try {
            Cursor cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(f21730b, null, "SELECT * FROM adList_room WHERE file_path = ?", new String[]{path}, null);
            if (cursorQuery != null) {
                try {
                    boolean z10 = cursorQuery.getCount() > 0;
                    CloseableKt.a(cursorQuery, null);
                    return z10;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
        } catch (Exception e10) {
            b4.b().e("AdDbHelper", "Is file useful err: " + e10.getMessage());
        }
        return false;
    }

    public final int G(AdsDTO adsDTO) {
        try {
            Integer num = (Integer) f21731c.get((Object) w2.f22392a.d(adsDTO));
            if (num == null) {
                num = 0;
            }
            return num.intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final void H(final AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getSource() == 1) {
            return;
        }
        b4.b().d("AdDbHelper", "updateShowTimes getTableId " + adsDTO.getTableId() + " showNum " + adsDTO.getShowNum());
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                d.I(adsDTO);
            }
        });
    }

    public final List i(String str, boolean z10, List list, boolean z11) {
        List<String> listL;
        if (str == null || StringsKt.q0(str)) {
            b4.b().d("AdDbHelper", "getAdByCodeSeatId code seat id is null");
            return new ArrayList();
        }
        List listQ = CollectionsKt.q(str);
        StringBuilder sb2 = new StringBuilder("SELECT * FROM adList_room WHERE codeSeatId = ? ");
        if (list == null || (listL = CollectionsKt.f0(list)) == null) {
            listL = CollectionsKt.l();
        }
        if (z10) {
            sb2.append("AND is_offline_ad = ? ");
            listQ.add("1");
        } else if (!listL.isEmpty()) {
            sb2.append("AND ad_creative_id NOT IN (");
            for (String str2 : listL) {
                sb2.append("?,");
            }
            sb2.deleteCharAt(sb2.length() - 1);
            sb2.append(")");
            listQ.addAll(listL);
        } else if (z11) {
            sb2.append(" AND ad_request_ver = (SELECT MAX (ad_request_ver) FROM adList_room WHERE codeSeatId = ?)");
            listQ.add(str);
        }
        sb2.append(" ORDER BY ");
        sb2.append(BidResponsed.KEY_PRICE);
        sb2.append(" DESC");
        List listJ = j(sb2, listQ);
        if (b4.c()) {
            b4.b().d("AdDbHelper", "getAdListByCodeSeatId = " + ((Object) sb2) + ", " + str + " , result size: " + listJ.size());
        }
        return listJ;
    }

    public final void m(final AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                d.v(adsDTO);
            }
        });
    }

    public final void o(final String str, final int i10, final boolean z10, final List list, final ConcurrentHashMap concurrentHashMap, final p.c cVar) {
        if (str == null || str.length() == 0 || i10 <= 0) {
            if (cVar != null) {
                cVar.a(CollectionsKt.l(), "");
                return;
            }
            return;
        }
        if (b4.c()) {
            b4.b().d("AdDbHelper", "loadAdByCodeSeatId " + str + " adCount " + i10);
        }
        HSScopeHelper.f22503a.e(new Runnable() {
            @Override
            public final void run() {
                d.p(str, cVar, z10, i10, list, concurrentHashMap);
            }
        });
    }

    public final void r(final String str, final boolean z10) {
        b4.b().d("AdDbHelper", "getAdByCodeSeatId " + str);
        if (str == null || StringsKt.q0(str)) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                d.x(str, z10);
            }
        });
    }

    public final void y(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (b4.c()) {
            b4.b().d("AdDbHelper", "insertAdsList size " + list.size());
        }
        final String codeSeatId = ((AdsDTO) list.get(0)).getCodeSeatId();
        final ArrayList arrayList = new ArrayList(list);
        try {
            CollectionsKt.I(arrayList, b.f21733a);
            if (arrayList.isEmpty()) {
                return;
            }
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    d.q(codeSeatId, arrayList);
                }
            });
        } catch (SQLException e10) {
            b4.b().e("AdDbHelper", "insert SQL exception occurred: " + e10.getMessage());
        } catch (JSONException e11) {
            b4.b().e("AdDbHelper", "insert JSON exception occurred: " + e11.getMessage());
        } catch (Exception e12) {
            b4.b().e("AdDbHelper", "insert Unexpected exception occurred: " + e12.getMessage());
        }
    }

    public final void z(final AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getAdRequestVer() <= 0) {
            return;
        }
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                d.C(adsDTO);
            }
        });
    }
}
