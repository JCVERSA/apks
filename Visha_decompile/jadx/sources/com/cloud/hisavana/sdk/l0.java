package com.cloud.hisavana.sdk;

import androidx.collection.ArraySet;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.inapp.CachedAdInfos;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.lzy.okgo.model.Progress;
import defpackage.abb;
import defpackage.c1a;
import defpackage.d81;
import defpackage.dw5;
import defpackage.e74;
import defpackage.f09;
import defpackage.g1a;
import defpackage.hed;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.ky5;
import defpackage.o9;
import defpackage.qjd;
import defpackage.rtd;
import defpackage.spc;
import defpackage.t6;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
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
import kotlin.jvm.internal.Lambda;
import kotlin.random.Random;

public final class l0 {
    public static final l0 a = new l0();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static AtomicBoolean c = new AtomicBoolean(false);

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    public static final class a extends Lambda implements e74 {
        final List<String> a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(List<String> list) {
            super(1);
            this.a = list;
        }

        @Override
        public final Boolean invoke(String str) {
            y45.j(str, "it");
            return Boolean.valueOf(!this.a.contains(str));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    public static final class b extends Lambda implements e74 {
        final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(1);
            this.a = str;
        }

        @Override
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(y45.e(defaultAdDTO.getAdCreativeId(), this.a));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    public static final class c extends Lambda implements e74 {
        final int a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i) {
            super(1);
            this.a = i;
        }

        @Override
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(defaultAdDTO.getAdRequestVersion() >= this.a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    public static final class d extends Lambda implements e74 {
        final String a;
        final int b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, int i) {
            super(1);
            this.a = str;
            this.b = i;
        }

        @Override
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(y45.e(defaultAdDTO.getCodeSeatId(), this.a) && defaultAdDTO.getAdRequestVersion() < this.b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final int compare(T t, T t2) {
            return kotlin.comparisons.a.d(((DefaultAdDTO) ((Pair) t2).getFirst()).getFirstPrice(), ((DefaultAdDTO) ((Pair) t).getFirst()).getFirstPrice());
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class f<T> implements Comparator {
        final Comparator a;

        public f(Comparator comparator) {
            this.a = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final int compare(T t, T t2) {
            int iCompare = this.a.compare(t, t2);
            return iCompare != 0 ? iCompare : kotlin.comparisons.a.d((Comparable) ((Pair) t2).getSecond(), (Comparable) ((Pair) t).getSecond());
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    public static final class g extends Lambda implements e74 {
        public static final g a = new g();

        public g() {
            super(1);
        }

        @Override
        public final CharSequence invoke(DefaultAdDTO defaultAdDTO) {
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            y45.i(codeSeatId, "getCodeSeatId(...)");
            return codeSeatId;
        }
    }

    public final CachedAdInfos a(int i, String str, int i2, boolean z, int i3, ConcurrentHashMap concurrentHashMap) {
        ArrayList arrayList;
        Object objA;
        String str2;
        y45.j(str, "codeSeatId");
        String str3 = "DefaultMemoryCacheHelper";
        ikd.b().d("DefaultMemoryCacheHelper", "take local default ad, code seat id is " + str);
        b();
        rtd rtdVar = new rtd();
        ArraySet arraySet = new ArraySet();
        ArrayList arrayList2 = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str);
        List listE1 = copyOnWriteArrayList != null ? i81.e1(copyOnWriteArrayList) : null;
        if (listE1 == null || listE1.isEmpty()) {
            arraySet.add(101);
            j(concurrentHashMap, arraySet);
            return new CachedAdInfos(arrayList2, rtdVar.toString());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = listE1.iterator();
        while (true) {
            String str4 = "Success";
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) next;
            if (defaultAdDTO.getAdType() != i) {
                arraySet.add(102);
                str4 = "adType";
            } else if (y45.e(defaultAdDTO.getCodeSeatId(), str)) {
                String filePath = defaultAdDTO.getFilePath();
                if (filePath == null || filePath.length() == 0) {
                    arraySet.add(104);
                    str4 = Progress.FILE_PATH;
                }
            } else {
                arraySet.add(103);
                str4 = "codeSeatId";
            }
            Object arrayList3 = linkedHashMap.get(str4);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(str4, arrayList3);
            }
            ((List) arrayList3).add(next);
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            String str5 = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (!y45.e(str5, "Success")) {
                String strY0 = i81.y0(list, ", ", null, null, 0, null, g.a, 30, null);
                ikd.b().w("DefaultDBManager", "有 " + list.size() + " 个广告过滤失败, " + str5 + ". 广告位ID: [" + strY0 + ']');
                it2 = it2;
            }
        }
        List listK = (List) linkedHashMap.get("Success");
        if (listK == null) {
            listK = y71.k();
        }
        try {
            ArrayList arrayList4 = new ArrayList(z71.v(listK, 10));
            Iterator it3 = listK.iterator();
            while (it3.hasNext()) {
                arrayList4.add(abb.a((DefaultAdDTO) it3.next(), Double.valueOf(Random.Default.nextDouble())));
            }
            List listT0 = i81.T0(arrayList4, new f(new e()));
            arrayList = new ArrayList(z71.v(listT0, 10));
            Iterator it4 = listT0.iterator();
            while (it4.hasNext()) {
                arrayList.add((DefaultAdDTO) ((Pair) it4.next()).getFirst());
            }
        } catch (Exception e2) {
            ikd.b().w("DefaultDBManager", "filter default ad error: " + e2.getMessage());
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            j(concurrentHashMap, arraySet);
            return new CachedAdInfos(arrayList2, rtdVar.toString());
        }
        ArrayList<Pair> arrayList5 = new ArrayList();
        String strK = o9.e().k("ad_internal_black_brands", "itel,tecno,oraimo,infinix");
        String strK2 = HSCommonUtils.a.k();
        Iterator it5 = arrayList.iterator();
        int i4 = 0;
        while (it5.hasNext()) {
            DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) it5.next();
            try {
                objA = GsonUtil.a(defaultAdDTO2.getAdBeanJson(), AdsDTO.class);
            } catch (Exception e3) {
                ikd.b().w(str3, "parse ad error: " + e3.getMessage());
                objA = null;
            }
            if (objA != null) {
                if (i3 != 1 || ((AdsDTO) objA).getDefaultAdSupportNetType() == 0) {
                    AdsDTO adsDTO = (AdsDTO) objA;
                    if (dw5.a.f(adsDTO, spc.f().g(str))) {
                        arraySet.add(1117);
                        rtdVar.put(defaultAdDTO2.getAdCreativeId(), 1117);
                    } else {
                        i0 i0Var = i0.a;
                        str2 = str3;
                        int iB = i0Var.b(strK2, defaultAdDTO2, adsDTO.getPackageName(), null);
                        if (iB > 0) {
                            arraySet.add(Integer.valueOf(iB));
                            rtdVar.put(defaultAdDTO2.getAdCreativeId(), Integer.valueOf(iB));
                            if (iB != 1102 && iB != 1103 && iB != 1110) {
                                arrayList5.add(new Pair(defaultAdDTO2.getAdCreativeId(), str));
                            }
                        } else if (new File(defaultAdDTO2.getFilePath()).exists()) {
                            boolean zF = i0Var.f(adsDTO.getCampaignname(), strK);
                            if (z && zF) {
                                arraySet.add(107);
                                rtdVar.put(defaultAdDTO2.getAdCreativeId(), 1110);
                            } else if (i4 < i2) {
                                adsDTO.setMatchVulgarBrand(zF);
                                adsDTO.setSource(4);
                                adsDTO.setUuid(t6.a.e(adsDTO, i3));
                                PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                                if (pslinkInfo != null) {
                                    y45.g(pslinkInfo);
                                    pslinkInfo.setShowId(adsDTO.getUuid());
                                }
                                arrayList2.add(objA);
                                i4++;
                            }
                        } else {
                            arraySet.add(106);
                            rtdVar.put(defaultAdDTO2.getAdCreativeId(), 1104);
                            if (adsDTO.isFromLocal()) {
                                arrayList5.add(new Pair(defaultAdDTO2.getAdCreativeId(), str));
                            }
                        }
                    }
                } else {
                    arraySet.add(105);
                    rtdVar.put(defaultAdDTO2.getAdCreativeId(), 1113);
                }
                str2 = str3;
            } else {
                str2 = str3;
            }
            it5 = it5;
            str3 = str2;
        }
        if (!arrayList5.isEmpty()) {
            for (Pair pair : arrayList5) {
                a.f((String) pair.getFirst(), (String) pair.getSecond());
            }
        }
        j(concurrentHashMap, arraySet);
        return new CachedAdInfos(arrayList2, rtdVar.toString());
    }

    public final void b() {
        Object objPutIfAbsent;
        if (c.get()) {
            return;
        }
        List<hed> listA = qjd.a.a();
        b.clear();
        if (listA == null || listA.isEmpty()) {
            c.set(false);
            return;
        }
        for (hed hedVar : listA) {
            DefaultAdDTO defaultAdDTO = new DefaultAdDTO();
            defaultAdDTO.setAdCreativeId(hedVar.b());
            defaultAdDTO.setCodeSeatId(hedVar.e());
            defaultAdDTO.setAdType(Integer.valueOf(hedVar.d()));
            defaultAdDTO.setFirstPrice(hedVar.o());
            defaultAdDTO.setAdRequestVersion(hedVar.c());
            defaultAdDTO.setDisplayedTimes(hedVar.l());
            defaultAdDTO.setDisplayedDate(hedVar.k());
            defaultAdDTO.setStartDate(hedVar.p());
            defaultAdDTO.setEndDate(hedVar.m());
            defaultAdDTO.setShowMaxOfDay(hedVar.j());
            defaultAdDTO.setFilePath(hedVar.n());
            defaultAdDTO.setCountryWhite(hedVar.i());
            defaultAdDTO.setCountryBlack(hedVar.h());
            defaultAdDTO.setBrandWhite(hedVar.g());
            defaultAdDTO.setBrandBlack(hedVar.f());
            defaultAdDTO.setAdBeanJson(hedVar.a());
            ConcurrentHashMap concurrentHashMap = b;
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            Object copyOnWriteArrayList = concurrentHashMap.get(codeSeatId);
            if (copyOnWriteArrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(codeSeatId, (copyOnWriteArrayList = new CopyOnWriteArrayList()))) != null) {
                copyOnWriteArrayList = objPutIfAbsent;
            }
            ((CopyOnWriteArrayList) copyOnWriteArrayList).add(defaultAdDTO);
        }
        c.set(true);
    }

    public final void c(int i) {
        Iterator it = b.entrySet().iterator();
        while (it.hasNext()) {
            d81.N((List) ((Map.Entry) it.next()).getValue(), new c(i));
        }
        qjd.a.b(i);
    }

    public final void d(DefaultAdDTO defaultAdDTO) {
        Object objPutIfAbsent;
        ConcurrentHashMap concurrentHashMap = b;
        String codeSeatId = defaultAdDTO.getCodeSeatId();
        Object copyOnWriteArrayList = concurrentHashMap.get(codeSeatId);
        if (copyOnWriteArrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(codeSeatId, (copyOnWriteArrayList = new CopyOnWriteArrayList()))) != null) {
            copyOnWriteArrayList = objPutIfAbsent;
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) copyOnWriteArrayList;
        y45.g(copyOnWriteArrayList2);
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyOnWriteArrayList2) {
            DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) obj;
            if (y45.e(defaultAdDTO2.getCodeSeatId(), defaultAdDTO.getCodeSeatId()) && y45.e(defaultAdDTO2.getAdCreativeId(), defaultAdDTO.getAdCreativeId())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            copyOnWriteArrayList2.add(defaultAdDTO);
            return;
        }
        copyOnWriteArrayList2.removeAll(i81.g1(arrayList));
        DefaultAdDTO defaultAdDTO3 = (DefaultAdDTO) i81.o0(arrayList);
        defaultAdDTO.setDisplayedDate(defaultAdDTO3.getDisplayedDate());
        defaultAdDTO.setDisplayedTimes(defaultAdDTO3.getDisplayedTimes());
        copyOnWriteArrayList2.add(defaultAdDTO);
    }

    public final void e(String str) {
        y45.j(str, "codeSeatId");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str);
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
            d81.I(copyOnWriteArrayList, new d(str, adRequestVersion));
        }
        qjd.a.d(str);
    }

    public final void f(String str, String str2) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str2);
        if (copyOnWriteArrayList != null) {
            d81.I(copyOnWriteArrayList, new b(str));
        }
        qjd.a.e(str, str2);
    }

    public final void g(String str, String str2, String str3) {
        y45.j(str, "adCreativeId");
        y45.j(str2, "codeSeatId");
        y45.j(str3, "filepath");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str2);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (y45.e(((DefaultAdDTO) obj).getAdCreativeId(), str)) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                ((DefaultAdDTO) i81.o0(arrayList)).setFilePath(str3);
            }
        }
        qjd.a.g(str, str2, str3);
    }

    public final void h(List list) {
        y45.j(list, "codeSeatIds");
        Set setKeySet = b.keySet();
        y45.i(setKeySet, "<get-keys>(...)");
        d81.H(setKeySet, new a(list));
        qjd.a.h(list);
    }

    public final void i(List list, List list2, boolean z, long j) {
        Object next;
        String appInfo;
        String packageName;
        y45.j(list, "defaultAdList");
        y45.j(list2, "psAppInfoList");
        if (list.isEmpty()) {
            return;
        }
        b();
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list2) {
                PsAppInfo psAppInfo = (PsAppInfo) obj;
                if (psAppInfo != null && (packageName = psAppInfo.getPackageName()) != null && packageName.length() != 0) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(arrayList, 10)), 16));
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
                    y45.g(packageName2);
                    str = packageName2;
                }
                linkedHashMap.put(str, next2);
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            String strK = HSCommonUtils.a.k();
            Collection collectionValues = b.values();
            y45.i(collectionValues, "<get-values>(...)");
            Iterator it2 = z71.x(collectionValues).iterator();
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
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) it3.next();
                String packageName3 = defaultAdDTO2.getPackageName();
                PsAppInfo psAppInfo3 = (packageName3 == null || packageName3.length() == 0) ? null : (PsAppInfo) linkedHashMap.get(defaultAdDTO2.getPackageName());
                i0 i0Var = i0.a;
                int iB = i0Var.b(strK, defaultAdDTO2, defaultAdDTO2.getPackageName(), psAppInfo3);
                if (iB <= 0 || iB == 1102 || iB == 1103) {
                    if (psAppInfo3 != null && (appInfo = psAppInfo3.getAppInfo()) != null) {
                        y45.g(appInfo);
                        defaultAdDTO2.setAppInfo(appInfo);
                    }
                    AdsDTO adsDTOC = i0Var.c(defaultAdDTO2, z);
                    adsDTOC.setFromLocal(z);
                    defaultAdDTO2.setAdBeanJson(GsonUtil.d(adsDTOC));
                    defaultAdDTO2.setFilePath(z ? i0Var.i(adsDTOC) : "");
                    defaultAdDTO2.setAdRequestVersion(adRequestVersion3);
                    a.d(defaultAdDTO2);
                    String codeSeatId = defaultAdDTO2.getCodeSeatId();
                    y45.i(codeSeatId, "getCodeSeatId(...)");
                    linkedHashSet.add(codeSeatId);
                    qjd.a.c(defaultAdDTO2);
                } else {
                    arrayList2.add(Integer.valueOf(iB));
                    arrayList3.add(defaultAdDTO2.getAdCreativeId());
                    l0 l0Var = a;
                    String adCreativeId = defaultAdDTO2.getAdCreativeId();
                    y45.i(adCreativeId, "getAdCreativeId(...)");
                    String codeSeatId2 = defaultAdDTO2.getCodeSeatId();
                    y45.i(codeSeatId2, "getCodeSeatId(...)");
                    l0Var.f(adCreativeId, codeSeatId2);
                }
            }
            o9.e().q("default_local_version", j);
            if (!arrayList2.isEmpty() && !arrayList3.isEmpty()) {
                AthenaTracker.A("", "", "", arrayList3, arrayList2, false, 3);
            }
            if (z) {
                c(adRequestVersion3);
            } else {
                h(i81.b1(linkedHashSet));
            }
        } catch (Exception e2) {
            ikd.b().w("DefaultMemoryCacheHelper", "save default ad error: " + e2.getMessage());
        }
    }

    public final void j(ConcurrentHashMap concurrentHashMap, ArraySet arraySet) {
        if (concurrentHashMap != null) {
            try {
                f09.h(concurrentHashMap, "s_default_return_filter", GsonUtil.d(arraySet));
            } catch (Throwable unused) {
            }
        }
    }

    public final DefaultAdDTO k(String str, String str2) {
        Object next;
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return null;
        }
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (y45.e(((DefaultAdDTO) next).getAdCreativeId(), str2)) {
                    return (DefaultAdDTO) next;
                }
            }
            next = null;
            return (DefaultAdDTO) next;
        } catch (Exception unused) {
            return null;
        }
    }

    public final String l(String str) {
        y45.j(str, "codeSeatId");
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        CopyOnWriteArrayList<DefaultAdDTO> copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str);
        if (copyOnWriteArrayList != null) {
            for (DefaultAdDTO defaultAdDTO : copyOnWriteArrayList) {
                String adBeanJson = defaultAdDTO.getAdBeanJson();
                y45.i(adBeanJson, "getAdBeanJson(...)");
                if (adBeanJson.length() > 0) {
                    sb.append(defaultAdDTO.getAdBeanJson() + ',');
                }
            }
        }
        if (sb.length() > 1) {
            sb.deleteCharAt(j1a.g0(sb));
            sb.append("]");
        } else {
            c1a.m(sb);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final List m() {
        Enumeration enumerationKeys = b.keys();
        y45.i(enumerationKeys, "keys(...)");
        ArrayList list = Collections.list(enumerationKeys);
        y45.i(list, "list(...)");
        return i81.e1(list);
    }

    public final void n(String str) {
        y45.j(str, Progress.FILE_PATH);
        Iterator it = b.entrySet().iterator();
        while (it.hasNext()) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) ((Map.Entry) it.next()).getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                String filePath = ((DefaultAdDTO) obj).getFilePath();
                y45.i(filePath, "getFilePath(...)");
                if (g1a.D(filePath, str + ".0", false, 2, null)) {
                    arrayList.add(obj);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((DefaultAdDTO) it2.next()).setFilePath("");
            }
        }
        qjd.a.i(str);
    }

    public final void o(String str, String str2) {
        y45.j(str, "adCreativeId");
        y45.j(str2, "codeSeatId");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) b.get(str2);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (y45.e(((DefaultAdDTO) obj).getAdCreativeId(), str)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) i81.o0(arrayList);
            String strK = HSCommonUtils.a.k();
            String displayedDate = defaultAdDTO.getDisplayedDate();
            if (displayedDate == null || displayedDate.length() == 0 || y45.e(defaultAdDTO.getDisplayedDate(), strK)) {
                defaultAdDTO.setDisplayedTimes(defaultAdDTO.getDisplayedTimes() + 1);
            } else {
                defaultAdDTO.setDisplayedTimes(1);
            }
            defaultAdDTO.setDisplayedDate(strK);
            qjd qjdVar = qjd.a;
            int displayedTimes = defaultAdDTO.getDisplayedTimes();
            String displayedDate2 = defaultAdDTO.getDisplayedDate();
            y45.i(displayedDate2, "getDisplayedDate(...)");
            qjdVar.f(str, str2, displayedTimes, displayedDate2);
        }
    }
}
