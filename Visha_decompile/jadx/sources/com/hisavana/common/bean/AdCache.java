package com.hisavana.common.bean;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.ja1;
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
    private final ConcurrentHashMap<String, Integer> lastExpireReasonMap = new ConcurrentHashMap<>();
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

    private int getCodeSeatLimit(T t) {
        return (t != null && t.isIconAd()) ? 30 : 5;
    }

    private double getMaxPrice(String str, T t, boolean z) {
        if (str == null) {
            return 0.0d;
        }
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0.0d;
            }
            for (T t2 : copyOnWriteArrayList) {
                if (t2.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t2);
                    }
                    t2.destroyAd();
                    copyOnWriteArrayList.remove(t2);
                } else if (z && t2.isMatchVulgarBrand()) {
                    t2.destroyAd();
                    copyOnWriteArrayList.remove(t2);
                } else {
                    if (t == null || t != t2) {
                        AdLogUtil.Log().d(TAG, "*----> max ad in pool is :" + t2.getPlacementId() + ",EcpmPrice is :" + t2.getEcpmPrice() + ",AdSource is :" + t2.getAdSource() + ",ValidTimeLimit :" + t2.getValidTimeLimit());
                        return t2.getEcpmPrice();
                    }
                    AdLogUtil.Log().d(ja1.SECOND_PRICE_TAG, "*----> getMaxPrice updateSecondPrice()，excludeAd == iteratorAd");
                }
            }
            return 0.0d;
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
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

    private T getSupportAd(String str, int i, boolean z) {
        AdLogUtil.Log().d(TAG, "getSupportAd " + str + " hisavanaAdSupportFlag " + i);
        ArrayList<T> caches = getCaches(str, Integer.MAX_VALUE, false, z);
        if (caches == null) {
            return null;
        }
        for (T t : caches) {
            if (t != null && isAdConformSupportFlag(t, i)) {
                return t;
            }
        }
        return null;
    }

    private boolean isAdConformSupportFlag(T t, int i) {
        if (t.isOfflineAd()) {
            return false;
        }
        if (i == 1) {
            return t.isAdxAd();
        }
        if (i == 2) {
            return t.isEwAd();
        }
        if (i != 3) {
            return false;
        }
        return t.isAdxAd() || t.isEwAd();
    }

    private static <T extends ICacheAd> boolean isLowPrice(T t) {
        return t.getNetwork() != null && t.getNetwork().getBiddingType().intValue() == 1 && t.getNetwork().getPrice().doubleValue() < ((double) t.getNetwork().getMinPrice().intValue());
    }

    private boolean removeAd(CopyOnWriteArrayList<T> copyOnWriteArrayList, T t, boolean z) {
        if (z) {
            AdLogUtil.Log().d(TAG, "---> Remove ad:" + t.getPlacementId() + " from cache");
            copyOnWriteArrayList.remove(t);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t), RecordTestInfo.LOG_CODE10);
            }
        }
        if (!t.isExpired()) {
            return false;
        }
        if (!z) {
            copyOnWriteArrayList.remove(t);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t), RecordTestInfo.LOG_CODE10);
            }
        }
        AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
        if (adCacheExpiredWatcher != null) {
            adCacheExpiredWatcher.onExpired(t);
        }
        t.destroyAd();
        return true;
    }

    public void addCache(String str, @NonNull T t) {
        String str2;
        if (t != null) {
            if (LogSwitch.isDebug) {
                str2 = "add Cache list,AdSource is :" + t.getAdSource();
            } else {
                str2 = null;
            }
            RecordTestInfo.record(str2);
            t.detachContext();
        }
        CopyOnWriteArrayList<T> orCreateList = getOrCreateList(str);
        if (orCreateList.size() > getCodeSeatLimit(t)) {
            orCreateList.remove(orCreateList.size() - 1);
        }
        try {
            ArrayList arrayList = new ArrayList(orCreateList);
            int iBinarySearch = Collections.binarySearch(arrayList, t, mComparator);
            if (iBinarySearch < 0) {
                iBinarySearch = -(iBinarySearch + 1);
            }
            arrayList.add(iBinarySearch, t);
            orCreateList.clear();
            orCreateList.addAll(arrayList);
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("add cache:" + RecordTestInfo.getLogMsg(t), RecordTestInfo.LOG_CODE10);
                RecordTestInfo.record("add Cache list is :" + arrayList.size());
            }
            AdLogUtil.Log().d(TAG, "*----> add Caches list is :" + arrayList.size());
        } catch (Exception e) {
            AdLogUtil.Log().d(TAG, Log.getStackTraceString(e));
        }
    }

    public void addCaches(String str, List<T> list) {
        for (T t : list) {
            if (t != null) {
                if (LogSwitch.isDebug) {
                    RecordTestInfo.record("add Caches list,EcpmPrice is :" + t.getEcpmPrice());
                }
                t.detachContext();
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
            for (int i = 0; i < size; i++) {
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
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0108 A[Catch: Exception -> 0x006c, TryCatch #0 {Exception -> 0x006c, blocks: (B:3:0x0002, B:5:0x000d, B:8:0x0015, B:10:0x0019, B:11:0x0022, B:13:0x0028, B:16:0x006f, B:17:0x007a, B:18:0x007f, B:20:0x0085, B:23:0x008e, B:25:0x0095, B:27:0x0099, B:28:0x009c, B:39:0x0108, B:40:0x0110, B:31:0x00bd, B:33:0x00c3, B:34:0x00e1, B:36:0x00e7, B:43:0x012e), top: B:47:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0110 A[SYNTHETIC] */
    public int checkCacheStatus(String str, boolean z) {
        boolean z2;
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                if (LogSwitch.isDebug) {
                    StringBuilder sb = new StringBuilder();
                    for (T t : copyOnWriteArrayList) {
                        sb.append("------>> item source : ");
                        sb.append(t.getAdSource());
                        sb.append(", price: ");
                        sb.append(t.getEcpmPrice());
                        sb.append(", bidType: ");
                        sb.append(t.getNetwork().getBiddingType());
                        sb.append(", minPrice: ");
                        sb.append(t.getNetwork().getMinPrice());
                        sb.append("\n");
                    }
                    AdLogUtil.Log().d(TAG, sb.toString());
                }
                int i = 1;
                for (T t2 : copyOnWriteArrayList) {
                    if (t2 != null) {
                        if (t2.isExpired()) {
                            AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                            if (adCacheExpiredWatcher != null) {
                                adCacheExpiredWatcher.onExpired(t2);
                            }
                            AdLogUtil.Log().d(TAG, "------>> Cache expire -> " + t2.getAdSource());
                            i = 2;
                        } else if (z && t2.isMatchVulgarBrand()) {
                            AdLogUtil.Log().d(TAG, "------>> Cache sensitive -> " + t2.getAdSource());
                            i = 3;
                        } else {
                            if (isLowPrice(t2)) {
                                AdLogUtil.Log().d(TAG, "------>> Cache low price -> " + t2.getAdSource());
                                i = 4;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                AdLogUtil.Log().d(TAG, "------>> Cache default -> " + t2.getAdSource());
                                return 0;
                            }
                            copyOnWriteArrayList.remove(t2);
                            t2.destroyAd();
                        }
                        z2 = true;
                        if (z2) {
                            AdLogUtil.Log().d(TAG, "------>> Cache default -> " + t2.getAdSource());
                            return 0;
                        }
                        copyOnWriteArrayList.remove(t2);
                        t2.destroyAd();
                    }
                }
                return i;
            }
            AdLogUtil.Log().d(TAG, "------>> Cache empty");
            return 1;
        } catch (Exception e) {
            AdLogUtil.Log().e(TAG, "check cache status failed: " + e.getMessage());
            return 5;
        }
    }

    public void clearLastExpireReason(String str) {
        try {
            this.lastExpireReasonMap.remove(str);
        } catch (Exception unused) {
        }
    }

    public ICacheAd getAdBySourceAndUnitID(String str, int i, boolean z) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            for (T t : copyOnWriteArrayList) {
                if (t.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t);
                    }
                    t.destroyAd();
                    copyOnWriteArrayList.remove(t);
                } else if (!z || !t.isMatchVulgarBrand()) {
                    if (t.getAdSource() == i && TextUtils.equals(t.getPlacementId(), str)) {
                        return t;
                    }
                }
            }
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
        }
        return null;
    }

    public int getAdNum(String str) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0;
            }
            int i = 0;
            for (T t : copyOnWriteArrayList) {
                if (t.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t);
                    }
                    t.destroyAd();
                    copyOnWriteArrayList.remove(t);
                } else {
                    i++;
                    AdLogUtil.Log().d(TAG, "*----> ad in pool is :" + t.getPlacementId() + ",EcpmPrice is :" + t.getEcpmPrice() + ",AdSource is :" + t.getAdSource() + ",ValidTimeLimit :" + t.getValidTimeLimit());
                }
            }
            return i;
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
            return 0;
        }
    }

    public T getCache(String str, boolean z, int i, boolean z2) {
        ArrayList<T> caches;
        T t = (T) getSupportAd(str, i, z2);
        return (t != null || (caches = getCaches(str, 1, z, z2)) == null || caches.isEmpty()) ? t : caches.get(0);
    }

    public ArrayList<T> getCaches(@NonNull String str, int i, boolean z, boolean z2) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return new ArrayList<>();
            }
            if (LogSwitch.isDebug) {
                AdLogUtil.Log().d(TAG, "*----> current ad pool size is :" + copyOnWriteArrayList.size());
                for (T t : copyOnWriteArrayList) {
                    AdLogUtil.Log().d(TAG, "---> ad: " + t.getPlacementId() + "，price：" + t.getEcpmPrice() + " source " + t.getAdSource());
                }
            }
            ArrayList<T> arrayList = null;
            for (T t2 : copyOnWriteArrayList) {
                if (t2 != null) {
                    if (z) {
                        copyOnWriteArrayList.remove(t2);
                        if (LogSwitch.isDebug) {
                            RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t2), RecordTestInfo.LOG_CODE10);
                        }
                    }
                    if (!t2.isExpired()) {
                        if (!z2 || !t2.isMatchVulgarBrand()) {
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                            }
                            arrayList.add(t2);
                            if (arrayList.size() >= i) {
                                break;
                            }
                        } else {
                            if (!z) {
                                copyOnWriteArrayList.remove(t2);
                                if (LogSwitch.isDebug) {
                                    RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t2), RecordTestInfo.LOG_CODE10);
                                }
                            }
                            t2.destroyAd();
                        }
                    } else {
                        if (!z) {
                            copyOnWriteArrayList.remove(t2);
                            if (LogSwitch.isDebug) {
                                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t2), RecordTestInfo.LOG_CODE10);
                            }
                        }
                        AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                        if (adCacheExpiredWatcher != null) {
                            adCacheExpiredWatcher.onExpired(t2);
                        }
                        t2.destroyAd();
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
            return null;
        }
    }

    public int getLastExpireReason(String str) {
        try {
            Integer num = this.lastExpireReasonMap.get(str);
            if (num == null) {
                return 0;
            }
            return num.intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public double getNetworkPrice(String str, int i, String str2) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0.0d;
            }
            for (T t : copyOnWriteArrayList) {
                if (t.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t);
                    }
                    t.destroyAd();
                    copyOnWriteArrayList.remove(t);
                } else if (t.getAdSource() == i && TextUtils.equals(t.getPlacementId(), str2)) {
                    return t.getEcpmPrice();
                }
            }
            return 0.0d;
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
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
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().isExpired()) {
                i2++;
            } else {
                i++;
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public boolean hasAd(String str, T t) {
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        return copyOnWriteArrayList.contains(t);
    }

    public boolean hasAds(String str, boolean z) {
        clearLastExpireReason(str);
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return false;
            }
            for (T t : copyOnWriteArrayList) {
                if (t != null) {
                    try {
                        if (t.isExpired()) {
                            try {
                                int expireReason = t.getExpireReason();
                                if (expireReason != 0 && getLastExpireReason(str) == 0) {
                                    this.lastExpireReasonMap.put(str, Integer.valueOf(expireReason));
                                }
                            } catch (Throwable unused) {
                            }
                            AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                            if (adCacheExpiredWatcher != null) {
                                adCacheExpiredWatcher.onExpired(t);
                            }
                            t.destroyAd();
                            copyOnWriteArrayList.remove(t);
                        } else if (!z || !t.isMatchVulgarBrand()) {
                            clearLastExpireReason(str);
                            return true;
                        }
                    } catch (Throwable th) {
                        AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
                        copyOnWriteArrayList.remove(t);
                    }
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

    public void removeCache(String str, T t) {
        CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        copyOnWriteArrayList.remove(t);
        AdLogUtil.Log().d(TAG, "---> Remove ad:" + t.getPlacementId() + " from cache");
        if (LogSwitch.isDebug) {
            RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t), RecordTestInfo.LOG_CODE10);
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

    public int getAdNum(String str, int i, String str2, boolean z) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return 0;
            }
            int i2 = 0;
            for (T t : copyOnWriteArrayList) {
                if (t.isExpired()) {
                    AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                    if (adCacheExpiredWatcher != null) {
                        adCacheExpiredWatcher.onExpired(t);
                    }
                    t.destroyAd();
                    copyOnWriteArrayList.remove(t);
                } else if (z && t.isMatchVulgarBrand()) {
                    t.destroyAd();
                    copyOnWriteArrayList.remove(t);
                } else if (t.getAdSource() == i && TextUtils.equals(t.getPlacementId(), str2)) {
                    i2++;
                }
            }
            return i2;
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
            return 0;
        }
    }

    public double getMaxPrice(String str, boolean z) {
        return getMaxPrice(str, null, z);
    }

    public ArrayList<T> getCaches(@NonNull String str, int i, boolean z, int i2, boolean z2) {
        try {
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            ArrayList<T> arrayList = new ArrayList<>();
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                if (LogSwitch.isDebug) {
                    AdLogUtil.Log().d(TAG, "current ad pool size is :" + copyOnWriteArrayList.size());
                    for (T t : copyOnWriteArrayList) {
                        AdLogUtil.Log().d(TAG, "ad: " + t.getPlacementId() + "，price：" + t.getEcpmPrice() + " isAdx " + t.isAdxAd() + " isEw " + t.isEwAd());
                    }
                }
                for (T t2 : copyOnWriteArrayList) {
                    if (t2 != null) {
                        if (z2 && t2.isMatchVulgarBrand()) {
                            copyOnWriteArrayList.remove(t2);
                            if (LogSwitch.isDebug) {
                                RecordTestInfo.LogMsg("remove cache:" + RecordTestInfo.getLogMsg(t2), RecordTestInfo.LOG_CODE10);
                            }
                            t2.destroyAd();
                        } else {
                            if (isAdConformSupportFlag(t2, i2) && !removeAd(copyOnWriteArrayList, t2, z)) {
                                arrayList.add(t2);
                            }
                            if (arrayList.size() >= i) {
                                return arrayList;
                            }
                        }
                    }
                }
                if (arrayList.size() < i) {
                    arrayList.addAll(getCaches(str, i - arrayList.size(), z, z2));
                }
            }
            return arrayList;
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
            return null;
        }
    }

    public ArrayList<T> getCaches(@NonNull String str, int i, boolean z, boolean z2, int i2, boolean z3) {
        try {
            if (!z2) {
                return getCaches(str, i, z, i2, z3);
            }
            CopyOnWriteArrayList<T> copyOnWriteArrayList = this.map.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            int adSource = i2 > 0 ? 0 : -1;
            if (LogSwitch.isDebug) {
                AdLogUtil.Log().d(TAG, "*----> current ad pool size is :" + copyOnWriteArrayList.size());
                for (T t : copyOnWriteArrayList) {
                    AdLogUtil.Log().d(TAG, "---> ad: " + t.getPlacementId() + "，price：" + t.getEcpmPrice());
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList<T> arrayList2 = null;
            for (T t2 : copyOnWriteArrayList) {
                if (t2 != null) {
                    if (t2.isExpired()) {
                        copyOnWriteArrayList.remove(t2);
                        AdCacheExpiredWatcher adCacheExpiredWatcher = this.watcher;
                        if (adCacheExpiredWatcher != null) {
                            adCacheExpiredWatcher.onExpired(t2);
                        }
                        t2.destroyAd();
                    } else if (z3 && t2.isMatchVulgarBrand()) {
                        copyOnWriteArrayList.remove(t2);
                        t2.destroyAd();
                        AdLogUtil.Log().d(TAG, "current ad filter by vulgar content");
                    } else if (adSource == -1 || adSource == t2.getAdSource()) {
                        if (adSource == -1) {
                            adSource = t2.getAdSource();
                        }
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList<>();
                        }
                        if (!TextUtils.isEmpty(t2.getFilterSource())) {
                            AdLogUtil.Log().d(TAG, "current filter ------->" + t2.getFilterSource());
                            if (!arrayList.contains(t2.getFilterSource())) {
                                arrayList.add(t2.getFilterSource());
                            }
                        }
                        if (z) {
                            AdLogUtil.Log().d(TAG, "---> Remove ad:" + t2.getPlacementId() + " from cache");
                            copyOnWriteArrayList.remove(t2);
                        }
                        arrayList2.add(t2);
                        if (arrayList2.size() >= i) {
                            break;
                        }
                    }
                }
            }
            return (i2 <= 0 || !(arrayList2 == null || arrayList2.isEmpty())) ? arrayList2 : getCaches(str, i, z, 0, z3);
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
            return null;
        }
    }
}
