package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArraySet;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import defpackage.d81;
import defpackage.dw5;
import defpackage.e74;
import defpackage.f09;
import defpackage.g1a;
import defpackage.hp0;
import defpackage.hz9;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.ly0;
import defpackage.o17;
import defpackage.ov7;
import defpackage.r6;
import defpackage.spc;
import defpackage.t6;
import defpackage.ul4;
import defpackage.una;
import defpackage.y45;
import defpackage.y71;
import defpackage.yu3;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import org.json.JSONException;

public final class d {
    public static final d a = new d();
    public static Uri b;
    public static final Map c;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "ad", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    public static final class a extends Lambda implements e74 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        @Override
        public final CharSequence invoke(AdsDTO adsDTO) {
            y45.j(adsDTO, "ad");
            int iC = hp0.c(adsDTO, true);
            hz9 hz9Var = hz9.a;
            String string = ul4.a().getString(com.cloud.sdk.commonutil.R.string.ssp_log_msg2);
            y45.i(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{adsDTO.getAdCreativeId().toString(), Boolean.valueOf(adsDTO.isOfflineAd()), Integer.valueOf(adsDTO.getAdRequestVer()), Integer.valueOf(iC), Integer.valueOf(adsDTO.getMaxShowCount()), adsDTO.getShowNum(), String.valueOf(adsDTO.getFirstPrice())}, 7));
            y45.i(str, "format(...)");
            return str;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    public static final class b extends Lambda implements e74 {
        public static final b a = new b();

        public b() {
            super(1);
        }

        @Override
        public final Boolean invoke(AdsDTO adsDTO) {
            y45.j(adsDTO, "it");
            return Boolean.valueOf(hp0.b(adsDTO));
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/d$c", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class c extends TypeToken<List<? extends AdsDTO>> {
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010'\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004J%\u0010\b\u001a\u00020\u00072\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"com/cloud/hisavana/sdk/d$d", "Ljava/util/LinkedHashMap;", "", "", "Lkotlin/collections/LinkedHashMap;", "", "eldest", "", "removeEldestEntry", "(Ljava/util/Map$Entry;)Z", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class C0046d extends LinkedHashMap<String, Integer> {
        public C0046d() {
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
        public boolean removeEldestEntry(Map.Entry<String, Integer> eldest) {
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
        Uri uri = Uri.parse("content://" + ul4.d() + ".HisavanaContentProvider/ad_data");
        y45.i(uri, "parse(this)");
        b = uri;
        Map mapSynchronizedMap = Collections.synchronizedMap(new C0046d());
        y45.i(mapSynchronizedMap, "synchronizedMap(...)");
        c = mapSynchronizedMap;
    }

    public final List a(String str, boolean z, List list, boolean z2) {
        List<String> listK;
        if (str == null || j1a.o0(str)) {
            ikd.b().d("AdDbHelper", "getAdByCodeSeatId code seat id is null");
            return new ArrayList();
        }
        List listQ = y71.q(str);
        StringBuilder sb = new StringBuilder("SELECT * FROM adList_room WHERE codeSeatId = ? ");
        if (list == null || (listK = i81.l0(list)) == null) {
            listK = y71.k();
        }
        if (z) {
            sb.append("AND is_offline_ad = ? ");
            listQ.add("1");
        }
        if (!listK.isEmpty()) {
            sb.append("AND ad_creative_id NOT IN (");
            for (String str2 : listK) {
                sb.append("?,");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(")");
            listQ.addAll(listK);
        }
        if (z2) {
            sb.append(" AND ad_request_ver = (SELECT MAX (ad_request_ver) FROM adList_room WHERE codeSeatId = ?)");
            listQ.add(str);
        }
        sb.append(" ORDER BY ");
        sb.append("price");
        sb.append(" DESC");
        List listB = b(sb, listQ);
        if (ikd.c()) {
            ikd.b().d("AdDbHelper", "getAdListByCodeSeatId = " + ((Object) sb) + ", " + str + " , result size: " + listB.size());
        }
        return listB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v5 */
    public final List b(StringBuilder sb, List list) {
        ?? r7;
        ?? B;
        Throwable th;
        ?? arrayList = new ArrayList();
        try {
            ContentResolver contentResolver = ul4.a().getContentResolver();
            Uri uri = b;
            String string = sb.toString();
            Cursor cursorQuery = contentResolver.query(uri, null, string, (String[]) list.toArray(new String[0]), null);
            r7 = arrayList;
            if (cursorQuery != null) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        int columnIndex = cursorQuery.getColumnIndex("ad_bean");
                        int columnIndex2 = cursorQuery.getColumnIndex("_id");
                        if (columnIndex >= 0 && columnIndex2 >= 0) {
                            String string2 = cursorQuery.getString(columnIndex);
                            y45.g(string2);
                            if (string2.length() > 0) {
                                arrayList3.add(string2);
                                arrayList2.add(Integer.valueOf(cursorQuery.getInt(columnIndex2)));
                            }
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        ly0.a(cursorQuery, null);
                        return arrayList;
                    }
                    String string3 = Arrays.toString(arrayList3.toArray(new String[0]));
                    y45.i(string3, "toString(...)");
                    B = GsonUtil.b(string3, new c().getType());
                    y45.i(B, "fromJson(...)");
                    try {
                        int iMin = Math.min(((List) B).size(), arrayList2.size());
                        for (int i = 0; i < iMin; i++) {
                            AdsDTO adsDTO = (AdsDTO) ((List) B).get(i);
                            if (adsDTO != null) {
                                adsDTO.setTableId(((Number) arrayList2.get(i)).intValue());
                                adsDTO.setSource(adsDTO.isOfflineAd() ? 3 : 2);
                            }
                        }
                        zfb zfbVar = zfb.a;
                        try {
                            ly0.a(cursorQuery, null);
                            r7 = B;
                        } catch (Exception e) {
                            e = e;
                            arrayList = B;
                            ikd.b().e("AdDbHelper", "query by code seat id error: " + e.getMessage());
                            ((List) arrayList).clear();
                            r7 = arrayList;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        B = B;
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            try {
                                ly0.a(cursorQuery, th);
                                throw th3;
                            } catch (Exception e2) {
                                e = e2;
                                arrayList = B;
                                ikd.b().e("AdDbHelper", "query by code seat id error: " + e.getMessage());
                                ((List) arrayList).clear();
                                r7 = arrayList;
                                return (List) r7;
                            }
                        }
                    }
                } catch (Throwable th4) {
                    B = arrayList;
                    th = th4;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return (List) r7;
    }

    public final Pair c(String str, boolean z, int i, List list, Map map, ConcurrentHashMap concurrentHashMap) {
        Iterator it;
        ArraySet arraySet = new ArraySet();
        int i2 = 0;
        List<AdsDTO> listA = a(str, z, list, false);
        if (listA.isEmpty()) {
            arraySet.add(100);
            d(arraySet, concurrentHashMap);
            return new Pair(new ArrayList(), new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = i81.l0(listA).iterator();
        while (it2.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it2.next();
            boolean zJ = j(adsDTO, arrayList2, map, arraySet);
            if (i2 >= i || zJ) {
                it = it2;
            } else if (dw5.a.f(adsDTO, spc.f().g(str))) {
                it = it2;
                arraySet.add(1117);
                String adCreativeId = adsDTO.getAdCreativeId();
                y45.i(adCreativeId, "getAdCreativeId(...)");
                map.put(adCreativeId, 1117);
            } else {
                it = it2;
                if (k(adsDTO, z)) {
                    arrayList3.add(adsDTO);
                }
                int iT = t(adsDTO);
                Integer showNum = adsDTO.getShowNum();
                y45.i(showNum, "getShowNum(...)");
                if (iT > showNum.intValue()) {
                    adsDTO.setShowNum(Integer.valueOf(iT));
                }
                int iC = hp0.c(adsDTO, z);
                if (iC == 0) {
                    arrayList.add(adsDTO);
                    i2++;
                } else {
                    String adCreativeId2 = adsDTO.getAdCreativeId();
                    y45.i(adCreativeId2, "getAdCreativeId(...)");
                    map.put(adCreativeId2, Integer.valueOf(iC));
                    arraySet.add(Integer.valueOf(iC));
                }
            }
            it2 = it;
        }
        s(arrayList3);
        d(arraySet, concurrentHashMap);
        if (r6.p()) {
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("get cached ads in db, codeSeatId: ");
            sb.append(str);
            sb.append(", all list is: ");
            ArrayList arrayList4 = new ArrayList(z71.v(listA, 10));
            for (AdsDTO adsDTO2 : listA) {
                arrayList4.add(adsDTO2 != null ? adsDTO2.getAdCreativeId() : null);
            }
            sb.append(arrayList4);
            sb.append(", \n filtered: ");
            sb.append(map);
            sb.append(", \n result: ");
            ArrayList arrayList5 = new ArrayList(z71.v(arrayList, 10));
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                arrayList5.add(((AdsDTO) it3.next()).getAdCreativeId());
            }
            sb.append(arrayList5);
            ikdVarB.d("AdDbHelper", sb.toString());
        }
        return new Pair(arrayList, arrayList2);
    }

    public final void d(ArraySet arraySet, ConcurrentHashMap concurrentHashMap) {
        try {
            if (arraySet.isEmpty()) {
                return;
            }
            String strD = GsonUtil.d(arraySet);
            if (concurrentHashMap != null) {
                f09.h(concurrentHashMap, "s_offline_return_filter", strD);
            }
        } catch (Throwable unused) {
        }
    }

    public final void e(AdsDTO adsDTO) {
        if (adsDTO.isOfflineAd()) {
            String strU = u(adsDTO);
            if (TextUtils.isEmpty(strU)) {
                return;
            }
            c.remove(strU);
        }
    }

    public final void f(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        String str2 = '_' + str;
        Map map = c;
        synchronized (map) {
            try {
                Set setKeySet = map.keySet();
                ArrayList arrayList = new ArrayList();
                for (Object obj : setKeySet) {
                    if (g1a.D((String) obj, str2, false, 2, null)) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    c.remove((String) it.next());
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(String str, int i, boolean z, List list, ConcurrentHashMap concurrentHashMap, i.c cVar) {
        if (str == null || str.length() == 0 || i <= 0) {
            if (cVar != null) {
                cVar.a(y71.k(), "");
                return;
            }
            return;
        }
        if (ikd.c()) {
            ikd.b().d("AdDbHelper", "loadAdByCodeSeatId " + str + " adCount " + i);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        try {
            ConfigCodeSeatDTO configCodeSeatDTOB = spc.f().b(str);
            if (configCodeSeatDTOB != null) {
                d dVar = a;
                Pair pairC = dVar.c(str, z, i, list, linkedHashMap, concurrentHashMap);
                arrayList.addAll((Collection) pairC.getFirst());
                dVar.i((List) pairC.getSecond());
                spc.f().h(configCodeSeatDTOB);
            }
            if (ikd.c()) {
                ikd.b().d("AdDbHelper", "getAdByCodeSeatId " + arrayList);
            }
            if (cVar != null) {
                cVar.a(arrayList, linkedHashMap.isEmpty() ? "" : linkedHashMap.toString());
            }
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", Log.getStackTraceString(e));
            if (cVar != null) {
                cVar.a(arrayList, linkedHashMap.isEmpty() ? "" : linkedHashMap.toString());
            }
        }
    }

    public final void h(String str, boolean z) {
        ikd.b().d("AdDbHelper", "getAdByCodeSeatId " + str);
        if (str == null || j1a.o0(str)) {
            return;
        }
        try {
            List listA = a(str, z, null, false);
            if (listA.isEmpty()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (AdsDTO adsDTO : i81.l0(listA)) {
                if (jCurrentTimeMillis - adsDTO.getShowDate() >= 86400000) {
                    adsDTO.setShowDate(una.c(jCurrentTimeMillis));
                    adsDTO.setShowNum(0);
                }
            }
            String strY0 = i81.y0(i81.l0(listA), "\n", null, null, 0, null, a.a, 30, null);
            ikd.b().d("AdDbHelper", "offline ad status is:\n" + strY0);
            if (r6.p()) {
                com.cloud.sdk.commonutil.util.b.b(strY0, 4);
            }
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "check for log error: " + e.getMessage());
        }
    }

    public final void i(List list) {
        if (ikd.c()) {
            ikd.b().d("AdDbHelper", "deleteExpireAds " + list);
        }
        if (list.isEmpty()) {
            return;
        }
        try {
            ul4.a().getContentResolver().delete(b, null, (String[]) list.toArray(new String[0]));
        } catch (Throwable th) {
            ikd.b().e("AdDbHelper", "deleteExpireAds Throwable exception occurred: " + th.getMessage());
        }
    }

    public final boolean j(AdsDTO adsDTO, List list, Map map, ArraySet arraySet) {
        int i;
        if (hp0.b(adsDTO)) {
            if (arraySet != null) {
                arraySet.add(1101);
            }
            list.add(String.valueOf(adsDTO.getTableId()));
            String adCreativeId = adsDTO.getAdCreativeId();
            y45.i(adCreativeId, "getAdCreativeId(...)");
            map.put(adCreativeId, 1101);
            e(adsDTO);
            return true;
        }
        Integer pullNewestLive = adsDTO.getPullNewestLive();
        y45.i(pullNewestLive, "getPullNewestLive(...)");
        int iA = ov7.a(pullNewestLive.intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
        if (iA != 1 && iA != 2) {
            return false;
        }
        list.add(String.valueOf(adsDTO.getTableId()));
        e(adsDTO);
        String adCreativeId2 = adsDTO.getAdCreativeId();
        y45.i(adCreativeId2, "getAdCreativeId(...)");
        if (iA == 1) {
            i = 1105;
            if (arraySet != null) {
                arraySet.add(1105);
            }
        } else {
            i = 1106;
            if (arraySet != null) {
                arraySet.add(1106);
            }
        }
        map.put(adCreativeId2, Integer.valueOf(i));
        return true;
    }

    public final boolean k(AdsDTO adsDTO, boolean z) {
        PslinkInfo pslinkInfo;
        adsDTO.setSource(adsDTO.isOfflineAd() ? 3 : 2);
        adsDTO.setUuid(t6.a.e(adsDTO, z ? 1 : 0));
        String appInfo = adsDTO.getAppInfo();
        if (appInfo != null && !j1a.o0(appInfo) && (pslinkInfo = adsDTO.getPslinkInfo()) != null) {
            pslinkInfo.setShowId(adsDTO.getUuid());
        }
        if (adsDTO.isInteractiveAd() || !TextUtils.isEmpty(adsDTO.getAdm()) || TextUtils.isEmpty(adsDTO.getTemplateHtmlUrl())) {
            adsDTO.setTemplateHtmlFilePath(null);
            adsDTO.setTemplateCode(null);
        } else {
            String templateHtmlFilePath = adsDTO.getTemplateHtmlFilePath();
            if (templateHtmlFilePath == null || templateHtmlFilePath.length() == 0) {
                templateHtmlFilePath = DiskLruCacheUtil.e(adsDTO.getTemplateHtmlUrl(), 1);
            }
            if (yu3.f(templateHtmlFilePath)) {
                adsDTO.setTemplateHtmlFilePath(templateHtmlFilePath);
            } else {
                adsDTO.setTemplateHtmlFilePath(null);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - adsDTO.getShowDate() < 86400000) {
            return false;
        }
        adsDTO.setShowDate(una.c(jCurrentTimeMillis));
        adsDTO.setShowNum(0);
        String strU = u(adsDTO);
        Map map = c;
        if (map.containsKey(strU)) {
            map.put(strU, 0);
        }
        return true;
    }

    public final void l(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        try {
            ul4.a().getContentResolver().delete(b, "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_creative_id = ?AND is_offline_ad = ?", new String[]{adsDTO.getCodeSeatId(), adsDTO.getAdCreativeId(), "0"});
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "delete ad error: " + e.getMessage());
        }
    }

    public final void m(String str) {
        ikd.b().d("AdDbHelper", "deleteOnLineAdByConfigId codeSeatId = " + str);
        if (str.length() == 0) {
            return;
        }
        try {
            ul4.a().getContentResolver().delete(b, "DELETE FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? ", new String[]{str, "0"});
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "delete online ad err : " + e.getMessage());
        }
    }

    public final void n(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (ikd.c()) {
            ikd.b().d("AdDbHelper", "insertAdsList size " + list.size());
        }
        String codeSeatId = ((AdsDTO) list.get(0)).getCodeSeatId();
        ArrayList arrayList = new ArrayList(list);
        try {
            d81.I(arrayList, b.a);
            if (arrayList.isEmpty()) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("AdsData", GsonUtil.d(arrayList));
            ul4.a().getContentResolver().insert(b, contentValues);
            ConfigCodeSeatDTO configCodeSeatDTOB = spc.f().b(codeSeatId);
            if (configCodeSeatDTOB != null) {
                spc.f().h(configCodeSeatDTOB);
            }
        } catch (SQLException e) {
            ikd.b().e("AdDbHelper", "insert SQL exception occurred: " + e.getMessage());
        } catch (JSONException e2) {
            ikd.b().e("AdDbHelper", "insert JSON exception occurred: " + e2.getMessage());
        } catch (Throwable th) {
            ikd.b().e("AdDbHelper", "insert Unexpected exception occurred: " + th.getMessage());
        }
    }

    public final void o(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getAdRequestVer() <= 0) {
            return;
        }
        try {
            ul4.a().getContentResolver().delete(b, "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_request_ver < ? AND is_offline_ad = ? ", new String[]{adsDTO.getCodeSeatId(), String.valueOf(adsDTO.getAdRequestVer()), "1"});
            f(adsDTO.getCodeSeatId());
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "delete ad error: " + e.getMessage());
        }
    }

    public final void p(List list) {
        if (list == null || list.isEmpty()) {
            ikd.b().e("AdDbHelper", "insertLoadedAd adsDTOList is null or size is 0");
            return;
        }
        List<AdsDTO> listE1 = i81.e1(i81.l0(list));
        if (listE1.isEmpty()) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (AdsDTO adsDTO : listE1) {
            if (!adsDTO.isOfflineAd()) {
                linkedHashSet.add(adsDTO);
            } else if (hp0.e(adsDTO, true)) {
                o(adsDTO);
            }
        }
        try {
            AdsDTO adsDTO2 = (AdsDTO) i81.o0(listE1);
            if (adsDTO2.getSource() != 1 || linkedHashSet.isEmpty()) {
                return;
            }
            String codeSeatId = adsDTO2.getCodeSeatId();
            y45.i(codeSeatId, "getCodeSeatId(...)");
            m(codeSeatId);
            n(listE1);
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "save to storage error: " + e.getMessage());
        }
    }

    public final boolean q(String str) {
        y45.j(str, "path");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Cursor cursorQuery = ul4.a().getContentResolver().query(b, null, "SELECT * FROM adList_room WHERE file_path = ?", new String[]{str}, null);
            if (cursorQuery != null) {
                try {
                    boolean z = cursorQuery.getCount() > 0;
                    ly0.a(cursorQuery, null);
                    return z;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(cursorQuery, th);
                        throw th2;
                    }
                }
            }
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "Is file useful err: " + e.getMessage());
        }
        return false;
    }

    public final void r(AdsDTO adsDTO) {
        if (adsDTO.isOfflineAd()) {
            try {
                String strU = u(adsDTO);
                if (TextUtils.isEmpty(strU)) {
                    return;
                }
                Map map = c;
                if (map.containsKey(strU)) {
                    int iIntValue = ((Number) o17.a(map.get(strU), 0)).intValue() + 1;
                    map.put(strU, Integer.valueOf(iIntValue));
                    adsDTO.setShowNum(Integer.valueOf(iIntValue));
                } else {
                    adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                    Integer showNum = adsDTO.getShowNum();
                    y45.i(showNum, "getShowNum(...)");
                    map.put(strU, showNum);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void s(List list) {
        ikd.b().d("AdDbHelper", "getAdListByCodeSeatId updateList " + list);
        if (list.isEmpty()) {
            return;
        }
        try {
            String strD = GsonUtil.d(list);
            ContentValues contentValues = new ContentValues();
            contentValues.put("AdsData", strD);
            ul4.a().getContentResolver().update(b, contentValues, null, null);
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "updateAdsShowTimes error: " + e.getMessage());
        }
    }

    public final int t(AdsDTO adsDTO) {
        Integer num;
        if (adsDTO != null) {
            try {
                if (adsDTO.isOfflineAd() && (num = (Integer) c.get(u(adsDTO))) != null) {
                    return num.intValue();
                }
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public final String u(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return "";
        }
        try {
            if (!adsDTO.isOfflineAd()) {
                return "";
            }
            String strE = w.a.e(adsDTO);
            String codeSeatId = adsDTO.getCodeSeatId();
            if (codeSeatId == null) {
                codeSeatId = "";
            }
            return strE + '_' + codeSeatId;
        } catch (Exception unused) {
            return "";
        }
    }

    public final void v(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getSource() == 1 || !adsDTO.isOfflineAd()) {
            return;
        }
        ikd.b().d("AdDbHelper", "updateShowTimes getTableId " + adsDTO.getTableId() + ", creativeid is " + adsDTO.getAdCreativeId() + ", showNum " + adsDTO.getShowNum());
        r(adsDTO);
        List listQ = y71.q(adsDTO);
        ContentValues contentValues = new ContentValues();
        contentValues.put("AdsData", GsonUtil.d(listQ));
        try {
            ul4.a().getContentResolver().update(b, contentValues, null, null);
        } catch (Exception e) {
            ikd.b().e("AdDbHelper", "updateShowTimes " + e.getMessage());
        }
    }
}
