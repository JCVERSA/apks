package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.data.bean.inapp.CachedAdInfos;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

public final class d0 {

    public static final d0 f21734a = new d0();

    private static final ConcurrentHashMap f21735b = new ConcurrentHashMap();

    private static AtomicBoolean f21736c = new AtomicBoolean(false);

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Ljava/lang/String;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function1<String, Boolean> {

        final List<String> f21737a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List<String> list) {
            super(1);
            this.f21737a = list;
        }

        @Override
        public final Boolean invoke(String it) {
            Intrinsics.h(it, "it");
            return Boolean.valueOf(!this.f21737a.contains(it));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class b extends Lambda implements Function1<DefaultAdDTO, Boolean> {

        final String f21738a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.f21738a = str;
        }

        @Override
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(Intrinsics.c(defaultAdDTO.getAdCreativeId(), this.f21738a));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class c extends Lambda implements Function1<DefaultAdDTO, Boolean> {

        final int f21739a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i10) {
            super(1);
            this.f21739a = i10;
        }

        @Override
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(defaultAdDTO.getAdRequestVersion() >= this.f21739a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class d extends Lambda implements Function1<DefaultAdDTO, Boolean> {

        final String f21740a;

        final int f21741b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, int i10) {
            super(1);
            this.f21740a = str;
            this.f21741b = i10;
        }

        @Override
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(Intrinsics.c(defaultAdDTO.getCodeSeatId(), this.f21740a) && defaultAdDTO.getAdRequestVersion() < this.f21741b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final int compare(T t10, T t11) {
            return ComparisonsKt.d(((DefaultAdDTO) ((Pair) t11).getFirst()).getFirstPrice(), ((DefaultAdDTO) ((Pair) t10).getFirst()).getFirstPrice());
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1"}, k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class f<T> implements Comparator {

        final Comparator f21742a;

        public f(Comparator comparator) {
            this.f21742a = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final int compare(T t10, T t11) {
            int iCompare = this.f21742a.compare(t10, t11);
            return iCompare != 0 ? iCompare : ComparisonsKt.d((Comparable) ((Pair) t11).getSecond(), (Comparable) ((Pair) t10).getSecond());
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    static final class g extends Lambda implements Function1<DefaultAdDTO, CharSequence> {

        public static final g f21743a = new g();

        g() {
            super(1);
        }

        @Override
        public final CharSequence invoke(DefaultAdDTO defaultAdDTO) {
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            return codeSeatId;
        }
    }

    private d0() {
    }

    private final void c(int i10) {
        Iterator it = f21735b.entrySet().iterator();
        while (it.hasNext()) {
            CollectionsKt.P((List) ((Map.Entry) it.next()).getValue(), new c(i10));
        }
        u2.f22352a.c(i10);
    }

    private final void d(DefaultAdDTO defaultAdDTO) {
        Object objPutIfAbsent;
        ConcurrentHashMap concurrentHashMap = f21735b;
        String codeSeatId = defaultAdDTO.getCodeSeatId();
        Object copyOnWriteArrayList = concurrentHashMap.get(codeSeatId);
        if (copyOnWriteArrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(codeSeatId, (copyOnWriteArrayList = new CopyOnWriteArrayList()))) != null) {
            copyOnWriteArrayList = objPutIfAbsent;
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) copyOnWriteArrayList;
        Intrinsics.e(copyOnWriteArrayList2);
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyOnWriteArrayList2) {
            DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) obj;
            if (Intrinsics.c(defaultAdDTO2.getCodeSeatId(), defaultAdDTO.getCodeSeatId()) && Intrinsics.c(defaultAdDTO2.getAdCreativeId(), defaultAdDTO.getAdCreativeId())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            copyOnWriteArrayList2.add(defaultAdDTO);
            return;
        }
        copyOnWriteArrayList2.removeAll(CollectionsKt.W0(arrayList));
        DefaultAdDTO defaultAdDTO3 = (DefaultAdDTO) CollectionsKt.i0(arrayList);
        defaultAdDTO.setDisplayedDate(defaultAdDTO3.getDisplayedDate());
        defaultAdDTO.setDisplayedTimes(defaultAdDTO3.getDisplayedTimes());
        copyOnWriteArrayList2.add(defaultAdDTO);
    }

    private final void f(String str, String str2) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(str2);
        if (copyOnWriteArrayList != null) {
            CollectionsKt.I(copyOnWriteArrayList, new b(str));
        }
        u2.f22352a.f(str, str2);
    }

    private final void j(ConcurrentHashMap concurrentHashMap, androidx.collection.b bVar) {
        if (concurrentHashMap != null) {
            try {
                com.cloud.hisavana.sdk.common.util.f0.h(concurrentHashMap, "s_default_return_filter", GsonUtil.d(bVar));
            } catch (Throwable unused) {
            }
        }
    }

    public final CachedAdInfos a(int i10, String codeSeatId, int i11, boolean z10, int i12, ConcurrentHashMap concurrentHashMap) {
        ArrayList arrayList;
        Object objA;
        String str;
        char c10;
        Intrinsics.h(codeSeatId, "codeSeatId");
        String str2 = "DefaultMemoryCacheHelper";
        b4.b().d("DefaultMemoryCacheHelper", "take local default ad, code seat id is " + codeSeatId);
        b();
        u4 u4Var = new u4();
        androidx.collection.b bVar = new androidx.collection.b();
        ArrayList arrayList2 = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(codeSeatId);
        List listU0 = copyOnWriteArrayList != null ? CollectionsKt.U0(copyOnWriteArrayList) : null;
        if (listU0 == null || listU0.isEmpty()) {
            bVar.add(101);
            j(concurrentHashMap, bVar);
            return new CachedAdInfos(arrayList2, u4Var.toString());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = listU0.iterator();
        while (true) {
            String str3 = "Success";
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) next;
            if (defaultAdDTO.getAdType() != i10) {
                bVar.add(102);
                str3 = "adType";
            } else if (Intrinsics.c(defaultAdDTO.getCodeSeatId(), codeSeatId)) {
                String filePath = defaultAdDTO.getFilePath();
                if (filePath == null || filePath.length() == 0) {
                    bVar.add(104);
                    str3 = NativeRequestBridge.KEY_FILE_PATH;
                }
            } else {
                bVar.add(103);
                str3 = "codeSeatId";
            }
            Object arrayList3 = linkedHashMap.get(str3);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(str3, arrayList3);
            }
            ((List) arrayList3).add(next);
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            String str4 = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (!Intrinsics.c(str4, "Success")) {
                String strS0 = CollectionsKt.s0(list, ", ", null, null, 0, null, g.f21743a, 30, null);
                b4.b().w("DefaultDBManager", "有 " + list.size() + " 个广告过滤失败, " + str4 + ". 广告位ID: [" + strS0 + ']');
                it2 = it2;
            }
        }
        List listL = (List) linkedHashMap.get("Success");
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        try {
            ArrayList arrayList4 = new ArrayList(CollectionsKt.v(listL, 10));
            Iterator it3 = listL.iterator();
            while (it3.hasNext()) {
                arrayList4.add(TuplesKt.a((DefaultAdDTO) it3.next(), Double.valueOf(Random.INSTANCE.nextDouble())));
            }
            List listI0 = CollectionsKt.I0(arrayList4, new f(new e()));
            arrayList = new ArrayList(CollectionsKt.v(listI0, 10));
            Iterator it4 = listI0.iterator();
            while (it4.hasNext()) {
                arrayList.add((DefaultAdDTO) ((Pair) it4.next()).getFirst());
            }
        } catch (Exception e10) {
            b4.b().w("DefaultDBManager", "filter default ad error: " + e10.getMessage());
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            j(concurrentHashMap, bVar);
            return new CachedAdInfos(arrayList2, u4Var.toString());
        }
        ArrayList<Pair> arrayList5 = new ArrayList();
        String strK = l7.a.e().k("ad_internal_black_brands", "itel,tecno,oraimo,infinix");
        String strD = a0.f20947a.d();
        Iterator it5 = arrayList.iterator();
        int i13 = 0;
        while (it5.hasNext()) {
            DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) it5.next();
            try {
                objA = GsonUtil.a(defaultAdDTO2.getAdBeanJson(), AdsDTO.class);
            } catch (Exception e11) {
                b4.b().w(str2, "parse ad error: " + e11.getMessage());
                objA = null;
            }
            if (objA == null) {
                str = str2;
                c10 = '\n';
            } else if (i12 != 1 || ((AdsDTO) objA).getDefaultAdSupportNetType() == 0) {
                a0 a0Var = a0.f20947a;
                AdsDTO adsDTO = (AdsDTO) objA;
                str = str2;
                int iB = a0Var.b(strD, defaultAdDTO2, adsDTO.getPackageName(), null);
                if (iB > 0) {
                    bVar.add(Integer.valueOf(iB));
                    u4Var.put(defaultAdDTO2.getAdCreativeId(), Integer.valueOf(iB));
                    if (iB != 2 && iB != 3) {
                        if (iB != 10) {
                            arrayList5.add(new Pair(defaultAdDTO2.getAdCreativeId(), codeSeatId));
                        } else {
                            c10 = '\n';
                        }
                    }
                    c10 = '\n';
                } else if (new File(defaultAdDTO2.getFilePath()).exists()) {
                    boolean zG = a0Var.g(adsDTO.getCampaignname(), strK);
                    if (z10 && zG) {
                        bVar.add(107);
                        c10 = '\n';
                        u4Var.put(defaultAdDTO2.getAdCreativeId(), 10);
                    } else {
                        c10 = '\n';
                        if (i13 >= i11) {
                            bVar.add(Integer.valueOf(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY));
                        } else {
                            adsDTO.setMatchVulgarBrand(zG);
                            adsDTO.setSource(4);
                            adsDTO.setUuid(com.cloud.hisavana.sdk.common.util.b.f21563a.e(adsDTO, i12));
                            PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                            if (pslinkInfo != null) {
                                Intrinsics.e(pslinkInfo);
                                pslinkInfo.setShowId(adsDTO.getUuid());
                            }
                            arrayList2.add(objA);
                            i13++;
                        }
                    }
                } else {
                    bVar.add(106);
                    u4Var.put(defaultAdDTO2.getAdCreativeId(), 4);
                    if (adsDTO.isFromLocal()) {
                        arrayList5.add(new Pair(defaultAdDTO2.getAdCreativeId(), codeSeatId));
                    }
                    c10 = '\n';
                }
            } else {
                bVar.add(105);
                u4Var.put(defaultAdDTO2.getAdCreativeId(), 13);
                str = str2;
                c10 = '\n';
            }
            it5 = it5;
            str2 = str;
        }
        if (!arrayList5.isEmpty()) {
            for (Pair pair : arrayList5) {
                f21734a.f((String) pair.getFirst(), (String) pair.getSecond());
            }
        }
        j(concurrentHashMap, bVar);
        return new CachedAdInfos(arrayList2, u4Var.toString());
    }

    public final void b() {
        Object objPutIfAbsent;
        if (f21736c.get()) {
            return;
        }
        List<c2> listB = u2.f22352a.b();
        f21735b.clear();
        if (listB == null || listB.isEmpty()) {
            f21736c.set(false);
            return;
        }
        for (c2 c2Var : listB) {
            DefaultAdDTO defaultAdDTO = new DefaultAdDTO();
            defaultAdDTO.setAdCreativeId(c2Var.b());
            defaultAdDTO.setCodeSeatId(c2Var.e());
            defaultAdDTO.setAdType(Integer.valueOf(c2Var.d()));
            defaultAdDTO.setFirstPrice(c2Var.o());
            defaultAdDTO.setAdRequestVersion(c2Var.c());
            defaultAdDTO.setDisplayedTimes(c2Var.l());
            defaultAdDTO.setDisplayedDate(c2Var.k());
            defaultAdDTO.setStartDate(c2Var.p());
            defaultAdDTO.setEndDate(c2Var.m());
            defaultAdDTO.setShowMaxOfDay(c2Var.j());
            defaultAdDTO.setFilePath(c2Var.n());
            defaultAdDTO.setCountryWhite(c2Var.i());
            defaultAdDTO.setCountryBlack(c2Var.h());
            defaultAdDTO.setBrandWhite(c2Var.g());
            defaultAdDTO.setBrandBlack(c2Var.f());
            defaultAdDTO.setAdBeanJson(c2Var.a());
            ConcurrentHashMap concurrentHashMap = f21735b;
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            Object copyOnWriteArrayList = concurrentHashMap.get(codeSeatId);
            if (copyOnWriteArrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(codeSeatId, (copyOnWriteArrayList = new CopyOnWriteArrayList()))) != null) {
                copyOnWriteArrayList = objPutIfAbsent;
            }
            ((CopyOnWriteArrayList) copyOnWriteArrayList).add(defaultAdDTO);
        }
        f21736c.set(true);
    }

    public final void e(String codeSeatId) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(codeSeatId);
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException();
            }
            int adRequestVersion = ((DefaultAdDTO) it.next()).getAdRequestVersion();
            while (it.hasNext()) {
                int adRequestVersion2 = ((DefaultAdDTO) it.next()).getAdRequestVersion();
                if (adRequestVersion < adRequestVersion2) {
                    adRequestVersion = adRequestVersion2;
                }
            }
            CollectionsKt.I(copyOnWriteArrayList, new d(codeSeatId, adRequestVersion));
        }
        u2.f22352a.e(codeSeatId);
    }

    public final void g(String adCreativeId, String codeSeatId, String filepath) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(filepath, "filepath");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(codeSeatId);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (Intrinsics.c(((DefaultAdDTO) obj).getAdCreativeId(), adCreativeId)) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                ((DefaultAdDTO) CollectionsKt.i0(arrayList)).setFilePath(filepath);
            }
        }
        u2.f22352a.h(adCreativeId, codeSeatId, filepath);
    }

    public final void h(List codeSeatIds) {
        Intrinsics.h(codeSeatIds, "codeSeatIds");
        Set setKeySet = f21735b.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        CollectionsKt.G(setKeySet, new a(codeSeatIds));
        u2.f22352a.i(codeSeatIds);
    }

    public final void i(List defaultAdList, List psAppInfoList, boolean z10, long j10) {
        Object next;
        String appInfo;
        String packageName;
        Intrinsics.h(defaultAdList, "defaultAdList");
        Intrinsics.h(psAppInfoList, "psAppInfoList");
        if (defaultAdList.isEmpty()) {
            return;
        }
        b();
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : psAppInfoList) {
                PsAppInfo psAppInfo = (PsAppInfo) obj;
                if (psAppInfo != null && (packageName = psAppInfo.getPackageName()) != null && packageName.length() != 0) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.e(MapsKt.e(CollectionsKt.v(arrayList, 10)), 16));
            Iterator it = arrayList.iterator();
            while (true) {
                String str = "";
                if (!it.hasNext()) {
                    break;
                }
                Object next2 = it.next();
                PsAppInfo psAppInfo2 = (PsAppInfo) next2;
                String packageName2 = psAppInfo2 != null ? psAppInfo2.getPackageName() : null;
                if (packageName2 != null) {
                    Intrinsics.e(packageName2);
                    str = packageName2;
                }
                linkedHashMap.put(str, next2);
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            String strD = a0.f20947a.d();
            Collection collectionValues = f21735b.values();
            Intrinsics.g(collectionValues, "<get-values>(...)");
            Iterator it2 = CollectionsKt.x(collectionValues).iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int adRequestVersion = ((DefaultAdDTO) next).getAdRequestVersion();
                    do {
                        Object next3 = it2.next();
                        int adRequestVersion2 = ((DefaultAdDTO) next3).getAdRequestVersion();
                        if (adRequestVersion < adRequestVersion2) {
                            next = next3;
                            adRequestVersion = adRequestVersion2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) next;
            int adRequestVersion3 = (defaultAdDTO != null ? defaultAdDTO.getAdRequestVersion() : 0) + 1;
            Iterator it3 = defaultAdList.iterator();
            while (it3.hasNext()) {
                DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) it3.next();
                String packageName3 = defaultAdDTO2.getPackageName();
                PsAppInfo psAppInfo3 = (packageName3 == null || packageName3.length() == 0) ? null : (PsAppInfo) linkedHashMap.get(defaultAdDTO2.getPackageName());
                a0 a0Var = a0.f20947a;
                int iB = a0Var.b(strD, defaultAdDTO2, defaultAdDTO2.getPackageName(), psAppInfo3);
                if (iB <= 0 || iB == 2 || iB == 3) {
                    if (psAppInfo3 != null && (appInfo = psAppInfo3.getAppInfo()) != null) {
                        Intrinsics.e(appInfo);
                        defaultAdDTO2.setAppInfo(appInfo);
                    }
                    AdsDTO adsDTOC = a0Var.c(defaultAdDTO2, z10);
                    adsDTOC.setFromLocal(z10);
                    defaultAdDTO2.setAdBeanJson(GsonUtil.d(adsDTOC));
                    defaultAdDTO2.setFilePath(z10 ? a0Var.j(adsDTOC) : "");
                    defaultAdDTO2.setAdRequestVersion(adRequestVersion3);
                    f21734a.d(defaultAdDTO2);
                    String codeSeatId = defaultAdDTO2.getCodeSeatId();
                    Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                    linkedHashSet.add(codeSeatId);
                    u2.f22352a.d(defaultAdDTO2);
                } else {
                    arrayList2.add(Integer.valueOf(iB));
                    arrayList3.add(defaultAdDTO2.getAdCreativeId());
                    d0 d0Var = f21734a;
                    String adCreativeId = defaultAdDTO2.getAdCreativeId();
                    Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                    String codeSeatId2 = defaultAdDTO2.getCodeSeatId();
                    Intrinsics.g(codeSeatId2, "getCodeSeatId(...)");
                    d0Var.f(adCreativeId, codeSeatId2);
                }
            }
            l7.a.e().q("default_local_version", j10);
            if (!arrayList2.isEmpty() && !arrayList3.isEmpty()) {
                AthenaTracker.x("", "", "", arrayList3, arrayList2, false, 3);
            }
            if (z10) {
                c(adRequestVersion3);
            } else {
                h(CollectionsKt.R0(linkedHashSet));
            }
        } catch (Exception e10) {
            b4.b().w("DefaultMemoryCacheHelper", "save default ad error: " + e10.getMessage());
        }
    }

    public final DefaultAdDTO k(String str, String str2) {
        Object next;
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return null;
        }
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (Intrinsics.c(((DefaultAdDTO) next).getAdCreativeId(), str2)) {
                    return (DefaultAdDTO) next;
                }
            }
            next = null;
            return (DefaultAdDTO) next;
        } catch (Exception unused) {
            return null;
        }
    }

    public final String l(String codeSeatId) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        CopyOnWriteArrayList<DefaultAdDTO> copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(codeSeatId);
        if (copyOnWriteArrayList != null) {
            for (DefaultAdDTO defaultAdDTO : copyOnWriteArrayList) {
                String adBeanJson = defaultAdDTO.getAdBeanJson();
                Intrinsics.g(adBeanJson, "getAdBeanJson(...)");
                if (adBeanJson.length() > 0) {
                    sb2.append(defaultAdDTO.getAdBeanJson() + ',');
                }
            }
        }
        if (sb2.length() > 1) {
            sb2.deleteCharAt(StringsKt.i0(sb2));
            sb2.append("]");
        } else {
            StringsKt.q(sb2);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final List m() {
        Enumeration enumerationKeys = f21735b.keys();
        Intrinsics.g(enumerationKeys, "keys(...)");
        ArrayList list = Collections.list(enumerationKeys);
        Intrinsics.g(list, "list(...)");
        return CollectionsKt.U0(list);
    }

    public final void n(String filePath) {
        Intrinsics.h(filePath, "filePath");
        Iterator it = f21735b.entrySet().iterator();
        while (it.hasNext()) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) ((Map.Entry) it.next()).getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                String filePath2 = ((DefaultAdDTO) obj).getFilePath();
                Intrinsics.g(filePath2, "getFilePath(...)");
                if (StringsKt.G(filePath2, filePath + ".0", false, 2, null)) {
                    arrayList.add(obj);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((DefaultAdDTO) it2.next()).setFilePath("");
            }
        }
        u2.f22352a.j(filePath);
    }

    public final void o(String adCreativeId, String codeSeatId) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f21735b.get(codeSeatId);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (Intrinsics.c(((DefaultAdDTO) obj).getAdCreativeId(), adCreativeId)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) CollectionsKt.i0(arrayList);
            String strD = a0.f20947a.d();
            String displayedDate = defaultAdDTO.getDisplayedDate();
            if (displayedDate == null || displayedDate.length() == 0 || Intrinsics.c(defaultAdDTO.getDisplayedDate(), strD)) {
                defaultAdDTO.setDisplayedTimes(defaultAdDTO.getDisplayedTimes() + 1);
            } else {
                defaultAdDTO.setDisplayedTimes(1);
            }
            defaultAdDTO.setDisplayedDate(strD);
            u2 u2Var = u2.f22352a;
            int displayedTimes = defaultAdDTO.getDisplayedTimes();
            String displayedDate2 = defaultAdDTO.getDisplayedDate();
            Intrinsics.g(displayedDate2, "getDisplayedDate(...)");
            u2Var.g(adCreativeId, codeSeatId, displayedTimes, displayedDate2);
        }
    }
}
