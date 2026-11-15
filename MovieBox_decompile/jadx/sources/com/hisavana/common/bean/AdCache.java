package com.hisavana.common.bean;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.utils.AdLogUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class AdCache<T extends ICacheAd> {
    private static final int CODE_SEAT_LIMIT_30 = 30;
    private static final int CODE_SEAT_LIMIT_FIVE = 5;
    private static final int CODE_SEAT_LIMIT_TEN = 10;
    private static final String TAG = "AdCache";
    private static final AdCacheComp mComparator = new AdCacheComp();
    final ConcurrentHashMap<String, CopyOnWriteArrayList<T>> map = new ConcurrentHashMap<>();
    private AdCacheExpiredWatcher watcher;

    public static class AdCacheComp implements Comparator<ICacheAd> {
        @Override
        public int compare(ICacheAd iCacheAd, ICacheAd iCacheAd2) {
            try {
                if (iCacheAd.isExpired() && !iCacheAd2.isExpired()) {
                    return 1;
                }
                if (!iCacheAd.isExpired() && iCacheAd2.isExpired()) {
                    return -1;
                }
                if (iCacheAd.getEcpmPrice() != iCacheAd2.getEcpmPrice()) {
                    return iCacheAd.getEcpmPrice() > iCacheAd2.getEcpmPrice() ? -1 : 1;
                }
                if (iCacheAd.getValidTimeLimit() - iCacheAd2.getValidTimeLimit() < 0) {
                    return -1;
                }
                return iCacheAd.getValidTimeLimit() - iCacheAd2.getValidTimeLimit() > 0 ? 1 : 0;
            } catch (Throwable unused) {
                return 0;
            }
        }
    }

    public interface AdCacheExpiredWatcher {
        void onExpired(ICacheAd iCacheAd);
    }

    private int getCodeSeatLimit(T t10) {
        return (t10 != null && t10.isIconAd()) ? 30 : 5;
    }

    private double getMaxPrice(String str, T t10, boolean z10) {
        if (str == null) {
            return 0.0d;
        }
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0.0d;
            }
            for (T t11 : copyOnWriteArrayList) {
                if (t11.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t11);
                    }
                    t11.destroyAd();
                    copyOnWriteArrayList.remove(t11);
                } else if (z10 && t11.isMatchVulgarBrand()) {
                    t11.destroyAd();
                    copyOnWriteArrayList.remove(t11);
                } else {
                    if (t10 == null || t10 != t11) {
                        AdLogUtil.Log().d(TAG, "*----> max ad in pool is :" + t11.getPlacementId() + ",EcpmPrice is :" + t11.getEcpmPrice() + ",AdSource is :" + t11.getAdSource() + ",ValidTimeLimit :" + t11.getValidTimeLimit());
                        return t11.getEcpmPrice();
                    }
                    AdLogUtil.Log().d("ssp_second_price", "*----> getMaxPrice updateSecondPrice()，excludeAd == iteratorAd");
                }
            }
            return 0.0d;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return 0.0d;
        }
    }

    private CopyOnWriteArrayList<T> getOrCreateList(String str) {
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList != null) {
            return copyOnWriteArrayList;
        }
        CopyOnWriteArrayList<T> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
        this.map.put(str, copyOnWriteArrayList2);
        return copyOnWriteArrayList2;
    }

    private T getSupportAd(String str, int i10, boolean z10) {
        AdLogUtil.Log().d(TAG, "getSupportAd " + str + " hisavanaAdSupportFlag " + i10);
        ArrayList<T> caches = getCaches(str, Integer.MAX_VALUE, false, z10);
        if (caches == null) {
            return null;
        }
        for (T t10 : caches) {
            if (t10 != null && isAdConformSupportFlag(t10, i10)) {
                return t10;
            }
        }
        return null;
    }

    private boolean isAdConformSupportFlag(T t10, int i10) {
        if (t10.isOfflineAd()) {
            return false;
        }
        if (i10 == 1) {
            return t10.isAdxAd();
        }
        if (i10 == 2) {
            return t10.isEwAd();
        }
        if (i10 != 3) {
            return false;
        }
        return t10.isAdxAd() || t10.isEwAd();
    }

    private static <T extends ICacheAd> boolean isLowPrice(T t10) {
        return t10.getNetwork() != null && t10.getNetwork().getBiddingType().intValue() == 1 && t10.getNetwork().getPrice().doubleValue() < ((double) t10.getNetwork().getMinPrice().intValue());
    }

    private boolean removeAd(CopyOnWriteArrayList<T> copyOnWriteArrayList, T t10, boolean z10) {
        if (z10) {
            AdLogUtil.Log().d(TAG, "---> Remove ad:" + t10.getPlacementId() + " from cache");
            copyOnWriteArrayList.remove(t10);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t10), RecordTestInfo.LOG_CODE10);
            }
        }
        if (!t10.isExpired()) {
            return false;
        }
        if (!z10) {
            copyOnWriteArrayList.remove(t10);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t10), RecordTestInfo.LOG_CODE10);
            }
        }
        AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
        if (adCacheExpiredWatcher != null) {
            adCacheExpiredWatcher.onExpired(t10);
        }
        t10.destroyAd();
        return true;
    }

    public void addCache(String str, @NonNull T t10) {
        String str2;
        if (t10 != null) {
            if (LogSwitch.isDebug) {
                str2 = "add Cache list,AdSource is :" + t10.getAdSource();
            } else {
                str2 = null;
            }
            RecordTestInfo.record(str2);
            t10.detachContext();
        }
        CopyOnWriteArrayList<T> orCreateList = getOrCreateList(str);
        if (orCreateList.size() > getCodeSeatLimit(t10)) {
            orCreateList.remove(orCreateList.size() - 1);
        }
        try {
            ArrayList arrayList = new ArrayList(orCreateList);
            int iBinarySearch = Collections.binarySearch(arrayList, t10, mComparator);
            if (iBinarySearch < 0) {
                iBinarySearch = -(iBinarySearch + 1);
            }
            arrayList.add(iBinarySearch, t10);
            orCreateList.clear();
            orCreateList.addAll(arrayList);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("add cache:" + RecordTestInfo.getLogMsg(t10), RecordTestInfo.LOG_CODE10);
                RecordTestInfo.record("add Cache list is :" + arrayList.size());
            }
            AdLogUtil.Log().d(TAG, "*----> add Caches list is :" + arrayList.size());
        } catch (Exception e10) {
            AdLogUtil.Log().d(TAG, Log.getStackTraceString(e10));
        }
    }

    public void addCaches(String str, List<T> list) {
        for (T t10 : list) {
            if (t10 != null) {
                if (LogSwitch.isDebug) {
                    RecordTestInfo.record("add Caches list,EcpmPrice is :" + t10.getEcpmPrice());
                }
                t10.detachContext();
            }
        }
        CopyOnWriteArrayList<T> orCreateList = getOrCreateList(str);
        if (list.size() == 0 || orCreateList == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(orCreateList);
        int size = (list.size() + arrayList.size()) - getCodeSeatLimit(list.get(0));
        arrayList.addAll(list);
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                int size2 = arrayList.size();
                if (size2 > 0) {
                    arrayList.remove(size2 - 1);
                } else {
                    AdLogUtil.Log().e(TAG, "addCaches,index out of bounds");
                }
            }
        }
        try {
            Collections.sort(arrayList, mComparator);
            orCreateList.clear();
            orCreateList.addAll(arrayList);
            AdLogUtil.Log().d(TAG, "*----> add Caches list is :" + arrayList.size());
            if (LogSwitch.isDebug) {
                RecordTestInfo.record("add Caches list is :" + arrayList.size());
                RecordTestInfo.LogMsg("add caches:" + RecordTestInfo.getLogMsg(list), RecordTestInfo.LOG_CODE10);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0108 A[Catch: Exception -> 0x006c, TryCatch #0 {Exception -> 0x006c, blocks: (B:3:0x0002, B:5:0x000d, B:8:0x0015, B:10:0x0019, B:11:0x0022, B:13:0x0028, B:16:0x006f, B:17:0x007a, B:18:0x007f, B:20:0x0085, B:23:0x008e, B:25:0x0095, B:27:0x0099, B:28:0x009c, B:39:0x0108, B:40:0x0110, B:31:0x00bd, B:33:0x00c3, B:34:0x00e1, B:36:0x00e7, B:43:0x012e), top: B:47:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0110 A[SYNTHETIC] */
    public int checkCacheStatus(String str, boolean z10) {
        boolean z11;
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                if (LogSwitch.isDebug) {
                    StringBuilder sb2 = new StringBuilder();
                    for (T t10 : copyOnWriteArrayList) {
                        sb2.append("------>> item source : ");
                        sb2.append(t10.getAdSource());
                        sb2.append(", price: ");
                        sb2.append(t10.getEcpmPrice());
                        sb2.append(", bidType: ");
                        sb2.append(t10.getNetwork().getBiddingType());
                        sb2.append(", minPrice: ");
                        sb2.append(t10.getNetwork().getMinPrice());
                        sb2.append("\n");
                    }
                    AdLogUtil.Log().d(TAG, sb2.toString());
                }
                int i10 = 1;
                for (T t11 : copyOnWriteArrayList) {
                    if (t11 != null) {
                        if (t11.isExpired()) {
                            AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                            if (adCacheExpiredWatcher != null) {
                                adCacheExpiredWatcher.onExpired(t11);
                            }
                            AdLogUtil.Log().d(TAG, "------>> Cache expire -> " + t11.getAdSource());
                            i10 = 2;
                        } else if (z10 && t11.isMatchVulgarBrand()) {
                            AdLogUtil.Log().d(TAG, "------>> Cache sensitive -> " + t11.getAdSource());
                            i10 = 3;
                        } else {
                            if (isLowPrice(t11)) {
                                AdLogUtil.Log().d(TAG, "------>> Cache low price -> " + t11.getAdSource());
                                i10 = 4;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                AdLogUtil.Log().d(TAG, "------>> Cache default -> " + t11.getAdSource());
                                return 0;
                            }
                            copyOnWriteArrayList.remove(t11);
                            t11.destroyAd();
                        }
                        z11 = true;
                        if (z11) {
                            AdLogUtil.Log().d(TAG, "------>> Cache default -> " + t11.getAdSource());
                            return 0;
                        }
                        copyOnWriteArrayList.remove(t11);
                        t11.destroyAd();
                    }
                }
                return i10;
            }
            AdLogUtil.Log().d(TAG, "------>> Cache empty");
            return 1;
        } catch (Exception e10) {
            AdLogUtil.Log().e(TAG, "check cache status failed: " + e10.getMessage());
            return 5;
        }
    }

    public ICacheAd getAdBySourceAndUnitID(String str, int i10, boolean z10) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            for (T t10 : copyOnWriteArrayList) {
                if (t10.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t10);
                    }
                    t10.destroyAd();
                    copyOnWriteArrayList.remove(t10);
                } else if (!z10 || !t10.isMatchVulgarBrand()) {
                    if (t10.getAdSource() == i10 && TextUtils.equals(t10.getPlacementId(), str)) {
                        return t10;
                    }
                }
            }
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
        }
        return null;
    }

    public int getAdNum(String str) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0;
            }
            int i10 = 0;
            for (T t10 : copyOnWriteArrayList) {
                if (t10.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t10);
                    }
                    t10.destroyAd();
                    copyOnWriteArrayList.remove(t10);
                } else {
                    i10++;
                    AdLogUtil.Log().d(TAG, "*----> ad in pool is :" + t10.getPlacementId() + ",EcpmPrice is :" + t10.getEcpmPrice() + ",AdSource is :" + t10.getAdSource() + ",ValidTimeLimit :" + t10.getValidTimeLimit());
                }
            }
            return i10;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return 0;
        }
    }

    public T getCache(String str, boolean z10, int i10, boolean z11) {
        ArrayList<T> caches;
        T t10 = (T) getSupportAd(str, i10, z11);
        return (t10 != null || (caches = getCaches(str, 1, z10, z11)) == null || caches.isEmpty()) ? t10 : caches.get(0);
    }

    public ArrayList<T> getCaches(@NonNull String str, int i10, boolean z10, boolean z11) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return new ArrayList<>();
            }
            if (LogSwitch.isDebug) {
                AdLogUtil.Log().d(TAG, "*----> current ad pool size is :" + copyOnWriteArrayList.size());
                for (T t10 : copyOnWriteArrayList) {
                    AdLogUtil.Log().d(TAG, "---> ad: " + t10.getPlacementId() + "，price：" + t10.getEcpmPrice() + " source " + t10.getAdSource());
                }
            }
            ArrayList<T> arrayList = null;
            for (T t11 : copyOnWriteArrayList) {
                if (t11 != null) {
                    if (z10) {
                        copyOnWriteArrayList.remove(t11);
                        if (LogSwitch.isDebug) {
                            RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t11), RecordTestInfo.LOG_CODE10);
                        }
                    }
                    if (!t11.isExpired()) {
                        if (!z11 || !t11.isMatchVulgarBrand()) {
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                            }
                            arrayList.add(t11);
                            if (arrayList.size() >= i10) {
                                break;
                            }
                        } else {
                            if (!z10) {
                                copyOnWriteArrayList.remove(t11);
                                if (LogSwitch.isDebug) {
                                    RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t11), RecordTestInfo.LOG_CODE10);
                                }
                            }
                            t11.destroyAd();
                        }
                    } else {
                        if (!z10) {
                            copyOnWriteArrayList.remove(t11);
                            if (LogSwitch.isDebug) {
                                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t11), RecordTestInfo.LOG_CODE10);
                            }
                        }
                        AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                        if (adCacheExpiredWatcher != null) {
                            adCacheExpiredWatcher.onExpired(t11);
                        }
                        t11.destroyAd();
                    }
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return null;
        }
    }

    public double getNetworkPrice(String str, int i10, String str2) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0.0d;
            }
            for (T t10 : copyOnWriteArrayList) {
                if (t10.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t10);
                    }
                    t10.destroyAd();
                    copyOnWriteArrayList.remove(t10);
                } else if (t10.getAdSource() == i10 && TextUtils.equals(t10.getPlacementId(), str2)) {
                    return t10.getEcpmPrice();
                }
            }
            return 0.0d;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return 0.0d;
        }
    }

    public int[] getValidAndInvalidAdNum(String str) {
        int[] iArr = {0, 0};
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList == null) {
            return iArr;
        }
        Iterator<T> it = copyOnWriteArrayList.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            if (it.next().isExpired()) {
                i11++;
            } else {
                i10++;
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
        return iArr;
    }

    public boolean hasAd(String str, T t10) {
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        return copyOnWriteArrayList.contains(t10);
    }

    public boolean hasAds(String str, boolean z10) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return false;
            }
            for (T t10 : copyOnWriteArrayList) {
                if (t10.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t10);
                    }
                    t10.destroyAd();
                    copyOnWriteArrayList.remove(t10);
                } else if (!z10 || !t10.isMatchVulgarBrand()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return false;
        }
    }

    public void registerWatcher(AdCacheExpiredWatcher adCacheExpiredWatcher) {
        this.watcher = adCacheExpiredWatcher;
    }

    public void removeAll() {
        this.map.clear();
    }

    public void removeCache(String str, T t10) {
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        copyOnWriteArrayList.remove(t10);
        AdLogUtil.Log().d(TAG, "---> Remove ad:" + t10.getPlacementId() + " from cache");
        if (LogSwitch.isDebug) {
            RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t10), RecordTestInfo.LOG_CODE10);
        }
    }

    public void removeCodeSeatCache(String str) {
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
            AdLogUtil.Log().d(TAG, "---> clear codeSeat cache : " + str);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("clear codeSeat cache:" + RecordTestInfo.getLogMsg(copyOnWriteArrayList), RecordTestInfo.LOG_CODE10);
            }
        }
    }

    public void unRegisterWatcher() {
        this.watcher = null;
    }

    public int getAdNum(String str, int i10, String str2, boolean z10) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0;
            }
            int i11 = 0;
            for (T t10 : copyOnWriteArrayList) {
                if (t10.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t10);
                    }
                    t10.destroyAd();
                    copyOnWriteArrayList.remove(t10);
                } else if (z10 && t10.isMatchVulgarBrand()) {
                    t10.destroyAd();
                    copyOnWriteArrayList.remove(t10);
                } else if (t10.getAdSource() == i10 && TextUtils.equals(t10.getPlacementId(), str2)) {
                    i11++;
                }
            }
            return i11;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return 0;
        }
    }

    public double getMaxPrice(String str, boolean z10) {
        return getMaxPrice(str, null, z10);
    }

    public ArrayList<T> getCaches(@NonNull String str, int i10, boolean z10, int i11, boolean z11) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            ArrayList<T> arrayList = new ArrayList<>();
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                if (LogSwitch.isDebug) {
                    AdLogUtil.Log().d(TAG, "current ad pool size is :" + copyOnWriteArrayList.size());
                    for (T t10 : copyOnWriteArrayList) {
                        AdLogUtil.Log().d(TAG, "ad: " + t10.getPlacementId() + "，price：" + t10.getEcpmPrice() + " isAdx " + t10.isAdxAd() + " isEw " + t10.isEwAd());
                    }
                }
                for (T t11 : copyOnWriteArrayList) {
                    if (t11 != null) {
                        if (z11 && t11.isMatchVulgarBrand()) {
                            copyOnWriteArrayList.remove(t11);
                            if (LogSwitch.isDebug) {
                                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t11), RecordTestInfo.LOG_CODE10);
                            }
                            t11.destroyAd();
                        } else {
                            if (isAdConformSupportFlag(t11, i11) && !removeAd(copyOnWriteArrayList, t11, z10)) {
                                arrayList.add(t11);
                            }
                            if (arrayList.size() >= i10) {
                                return arrayList;
                            }
                        }
                    }
                }
                if (arrayList.size() < i10) {
                    arrayList.addAll(getCaches(str, i10 - arrayList.size(), z10, z11));
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return null;
        }
    }

    public ArrayList<T> getCaches(@NonNull String str, int i10, boolean z10, boolean z11, int i11, boolean z12) {
        try {
            if (!z11) {
                return getCaches(str, i10, z10, i11, z12);
            }
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            int adSource = i11 > 0 ? 0 : -1;
            if (LogSwitch.isDebug) {
                AdLogUtil.Log().d(TAG, "*----> current ad pool size is :" + copyOnWriteArrayList.size());
                for (T t10 : copyOnWriteArrayList) {
                    AdLogUtil.Log().d(TAG, "---> ad: " + t10.getPlacementId() + "，price：" + t10.getEcpmPrice());
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList<T> arrayList2 = null;
            for (T t11 : copyOnWriteArrayList) {
                if (t11 != null) {
                    if (t11.isExpired()) {
                        copyOnWriteArrayList.remove(t11);
                        AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                        if (adCacheExpiredWatcher != null) {
                            adCacheExpiredWatcher.onExpired(t11);
                        }
                        t11.destroyAd();
                    } else if (z12 && t11.isMatchVulgarBrand()) {
                        copyOnWriteArrayList.remove(t11);
                        t11.destroyAd();
                        AdLogUtil.Log().d(TAG, "current ad filter by vulgar content");
                    } else if (adSource == -1 || adSource == t11.getAdSource()) {
                        if (adSource == -1) {
                            adSource = t11.getAdSource();
                        }
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                        }
                        if (!TextUtils.isEmpty(t11.getFilterSource())) {
                            AdLogUtil.Log().d(TAG, "current filter ------->" + t11.getFilterSource());
                            if (!arrayList.contains(t11.getFilterSource())) {
                                arrayList.add(t11.getFilterSource());
                            }
                        }
                        if (z10) {
                            AdLogUtil.Log().d(TAG, "---> Remove ad:" + t11.getPlacementId() + " from cache");
                            copyOnWriteArrayList.remove(t11);
                        }
                        arrayList2.add(t11);
                        if (arrayList2.size() >= i10) {
                            break;
                        }
                    }
                }
            }
            return (i11 <= 0 || !(arrayList2 == null || arrayList2.isEmpty())) ? arrayList2 : getCaches(str, i10, z10, 0, z12);
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return null;
        }
    }
}
