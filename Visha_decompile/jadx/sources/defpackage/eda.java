package defpackage;

import android.os.Looper;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.mediationads.beans.AdMediaItem;
import com.transsion.mediationads.beans.TabStrategy;
import com.transsion.mediationads.manager.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;

public abstract class eda {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void b(Ref$IntRef ref$IntRef, Ref$IntRef ref$IntRef2, Ref$IntRef ref$IntRef3, int i, int i2, ArrayList arrayList, String str, int i3) {
            int i4 = ref$IntRef.element;
            if ((i4 == -1 || ref$IntRef2.element < i4) && ref$IntRef3.element != i3 && eda.a.j(i3, i, i2)) {
                ref$IntRef3.element = i3;
                arrayList.add(AdMediaItem.INSTANCE.create(str, 2));
                ref$IntRef2.element++;
                Log.v("MediationApi_TabStrategyUtils", "Inserted ad at row: " + i3);
            }
        }

        public final ArrayList a(List list, TabStrategy tabStrategy, int i) {
            y45.j(list, "dataList");
            y45.j(tabStrategy, "tabStrategy");
            int startPosition = tabStrategy.getStartPosition();
            int videoIntervals = tabStrategy.getVideoIntervals();
            String advertisingId = tabStrategy.getAdvertisingId();
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            ref$IntRef.element = -1;
            b bVarA = b.a.a();
            String str = "MediationApi_TabStrategyUtils";
            if (bVarA.h(tabStrategy.getTabType())) {
                int iB = bVarA.b(tabStrategy.getTabType());
                int maxAdvertisingCount = tabStrategy.getMaxAdvertisingCount();
                if (iB >= maxAdvertisingCount) {
                    Log.i("MediationApi_TabStrategyUtils", "isNeedApplyAds,Daily ad limit reached for tabType " + tabStrategy.getTabType() + ", not requesting more ads");
                    return null;
                }
                ref$IntRef.element = maxAdvertisingCount - iB;
            }
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            ref$IntRef2.element = -1;
            Ref$IntRef ref$IntRef3 = new Ref$IntRef();
            ArrayList arrayList = new ArrayList(list.size() + (list.size() / 10));
            Iterator it = list.iterator();
            int i2 = 0;
            int i3 = 0;
            while (it.hasNext()) {
                MediaItem mediaItem = (MediaItem) it.next();
                if (i2 == 0) {
                    b(ref$IntRef, ref$IntRef3, ref$IntRef2, startPosition, videoIntervals, arrayList, advertisingId, i3);
                }
                if (mediaItem.isTimeItem) {
                    if (i2 > 0) {
                        i3++;
                    }
                    b(ref$IntRef, ref$IntRef3, ref$IntRef2, startPosition, videoIntervals, arrayList, advertisingId, i3);
                } else {
                    int i4 = i2 + 1;
                    if (i4 >= i) {
                        i3++;
                    } else {
                        i2 = i4;
                    }
                    arrayList.add(mediaItem);
                    str = str;
                }
                i2 = 0;
                arrayList.add(mediaItem);
                str = str;
            }
            String str2 = str;
            if (i2 > 0) {
                i3++;
                b(ref$IntRef, ref$IntRef3, ref$IntRef2, startPosition, videoIntervals, arrayList, advertisingId, i3);
            }
            Log.d(str2, "applyAdsInGridMode completed: total rows=" + i3 + ", inserted ads=" + ref$IntRef3.element + ", total items=" + arrayList.size());
            return arrayList;
        }

        public final ArrayList c(List list, List list2, TabStrategy tabStrategy) {
            y45.j(list, "dataList");
            y45.j(list2, "adList");
            y45.j(tabStrategy, "tabStrategy");
            int startPosition = tabStrategy.getStartPosition();
            int videoIntervals = tabStrategy.getVideoIntervals();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                MediaItem mediaItem = (MediaItem) it.next();
                if (!mediaItem.isTimeItem && !mediaItem.mIsMediaTionAd) {
                    i2++;
                    if (i < list2.size() && (i2 == startPosition || (i2 > startPosition && (videoIntervals == 1 || (i2 - startPosition) % videoIntervals == 0)))) {
                        arrayList.add(list2.get(i));
                        LogUtils.j("MediationApi_TabStrategyUtils", "applyAdsInListMode: Inserted ad before video " + i2 + " at position " + (arrayList.size() - 1) + ", adIndex=" + i);
                        i++;
                    }
                }
                arrayList.add(mediaItem);
            }
            Log.d("MediationApi_TabStrategyUtils", "applyAdsInListMode completed: inserted " + i + " ads, total items: " + arrayList.size());
            return arrayList;
        }

        public final int d(int i, TabStrategy tabStrategy) {
            int i2;
            y45.j(tabStrategy, "strategy");
            int startPosition = tabStrategy.getStartPosition();
            int videoIntervals = tabStrategy.getVideoIntervals();
            int i3 = 0;
            if (i < startPosition) {
                return 0;
            }
            b bVarA = b.a.a();
            if (bVarA.h(tabStrategy.getTabType())) {
                int iB = bVarA.b(tabStrategy.getTabType());
                int maxAdvertisingCount = tabStrategy.getMaxAdvertisingCount();
                if (iB >= maxAdvertisingCount) {
                    return 0;
                }
                i2 = maxAdvertisingCount - iB;
            } else {
                i2 = Integer.MAX_VALUE;
            }
            if (i2 <= 0) {
                return 0;
            }
            for (int i4 = startPosition - 1; i4 < i && i3 < i2; i4 += videoIntervals) {
                i3++;
            }
            Log.d("MediationApi_TabStrategyUtils", "calculateNeededAdCount List mode ad calculation: effectiveVideos=" + i + ", startPosition=" + startPosition + ", videoIntervals=" + videoIntervals + ", adCount=" + i3 + ", dailyAdRemaining=" + i2);
            return Math.min(i2, i3);
        }

        public final int e(int i, int i2, List list) {
            y45.j(list, "dataList");
            int iF = SortUtil.o() ? f(list, i2) : (int) Math.ceil(((double) (list.size() - i)) / ((double) i2));
            Log.d("MediationApi_TabStrategyUtils", "countVideoRomInGridMode timeItemNum=" + i + ", videoRows=" + iF + ", isSortByDate=" + SortUtil.o());
            return iF;
        }

        public final int f(List list, int i) {
            Iterator it = list.iterator();
            int i2 = 0;
            int i3 = 0;
            while (it.hasNext()) {
                if (((MediaItem) it.next()).isTimeItem) {
                    if (i2 > 0) {
                    }
                    i2 = 0;
                } else {
                    i2++;
                    if (i2 >= i) {
                    }
                }
                i3++;
                i2 = 0;
            }
            if (i2 > 0) {
                i3++;
            }
            Log.d("MediationApi_TabStrategyUtils", "countVideoRomSortByDate: videoTotalRows=" + i3 + ", spanCount=" + i);
            return i3;
        }

        public final boolean g(ArrayList arrayList, TabStrategy tabStrategy, int i, int i2) {
            int iE;
            y45.j(arrayList, "dataList");
            if (!i(tabStrategy)) {
                return false;
            }
            if (tabStrategy == null || (iE = eda.a.e(i, i2, arrayList)) >= tabStrategy.getProtectVideoCount()) {
                return true;
            }
            Log.i("MediationApi_TabStrategyUtils", "isGridModeNeedApplyAds,videosRom (" + iE + ") is less than protection count (" + tabStrategy.getProtectVideoCount() + "), not request ads");
            return false;
        }

        public final boolean h(ArrayList arrayList, TabStrategy tabStrategy, int i) {
            y45.j(arrayList, "dataList");
            if (!i(tabStrategy)) {
                return false;
            }
            if (tabStrategy == null) {
                return true;
            }
            int size = arrayList.size() - i;
            Log.i("MediationApi_TabStrategyUtils", "isNeedApplyAds,Total items: " + arrayList.size() + ", effective videos: " + size);
            if (size >= tabStrategy.getProtectVideoCount()) {
                return true;
            }
            Log.i("MediationApi_TabStrategyUtils", "isNeedApplyAds,Effective videos (" + size + ") is less than protection count (" + tabStrategy.getProtectVideoCount() + "), not request ads");
            return false;
        }

        public final boolean i(TabStrategy tabStrategy) {
            if (y45.e(Looper.myLooper(), Looper.getMainLooper())) {
                throw new IllegalStateException("loadAds method must not be called on the main thread");
            }
            if (tabStrategy == null) {
                Log.i("MediationApi_TabStrategyUtils", "isNeedApplyAds,Tab strategy is null, not request ads");
                return false;
            }
            b bVarA = b.a.a();
            if (bVarA.g(tabStrategy.getProtectDays())) {
                Log.i("MediationApi_TabStrategyUtils", "isNeedApplyAds,Tab strategy is in protectionPeriod, not request ads");
                return false;
            }
            if (!bVarA.h(tabStrategy.getTabType()) || bVarA.b(tabStrategy.getTabType()) < tabStrategy.getMaxAdvertisingCount()) {
                return true;
            }
            Log.i("MediationApi_TabStrategyUtils", "isNeedApplyAds,Daily ad limit reached for tabType " + tabStrategy.getTabType() + ", not requesting more ads");
            return false;
        }

        public final boolean j(int i, int i2, int i3) {
            int i4 = i2 - 1;
            boolean z = true;
            if (i != i4 && (i <= i4 || (i - i4) % i3 != 0)) {
                z = false;
            }
            LogUtils.j("MediationApi_TabStrategyUtils", "shouldInsertAdToGridMode videoTotalRows:" + i + ",startPosition:" + i2 + ",videoIntervals:" + i3 + ",shouldInsertAd:" + z);
            return z;
        }

        public a() {
        }
    }

    public static final ArrayList a(List list, TabStrategy tabStrategy, int i) {
        return a.a(list, tabStrategy, i);
    }

    public static final ArrayList b(List list, List list2, TabStrategy tabStrategy) {
        return a.c(list, list2, tabStrategy);
    }

    public static final int c(int i, TabStrategy tabStrategy) {
        return a.d(i, tabStrategy);
    }

    public static final boolean d(ArrayList arrayList, TabStrategy tabStrategy, int i, int i2) {
        return a.g(arrayList, tabStrategy, i, i2);
    }

    public static final boolean e(ArrayList arrayList, TabStrategy tabStrategy, int i) {
        return a.h(arrayList, tabStrategy, i);
    }
}
