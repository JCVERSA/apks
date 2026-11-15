package dr;

import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Subject;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f59061a;

    private static final String f59062b;

    static {
        b bVar = new b();
        f59061a = bVar;
        f59062b = bVar.getClass().getSimpleName();
    }

    private b() {
    }

    private final boolean a(Subject subject, ShortTVItem shortTVItem) {
        return (subject == null || subject.getNeedPaid() == 0 || subject.getIsPaid() == 1 || shortTVItem == null || shortTVItem.getNeedPaid() == 0 || subject.getAdUnlockedEps().contains(Integer.valueOf(shortTVItem.getEp()))) ? false : true;
    }

    public final String b(Subject subject, int i10) {
        Set<Integer> adUnlockedEps;
        if (subject == null || (adUnlockedEps = subject.getAdUnlockedEps()) == null || !adUnlockedEps.contains(Integer.valueOf(i10))) {
            return (subject == null || subject.getIsPaid() != 1) ? "" : "buy";
        }
        return CommonLogUtil.TAG_AD;
    }

    public final boolean c(Subject subject, ShortTVItem shortTVItem) {
        return a(subject, shortTVItem);
    }

    public final void d(ShortTVItem item) {
        Intrinsics.h(item, "item");
    }

    public final void e(Subject subject) {
    }

    public final void f(Subject subject) {
        Intrinsics.h(subject, "subject");
        int i10 = 1;
        int iMax = Math.max(subject.getTotalEpisode(), 1);
        if (1 > iMax) {
            return;
        }
        while (true) {
            subject.getAdUnlockedEps().add(Integer.valueOf(i10));
            if (i10 == iMax) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void g(Subject subject, ShortTVItem epInfo, int i10) {
        Intrinsics.h(subject, "subject");
        Intrinsics.h(epInfo, "epInfo");
        for (int i11 = 0; i11 < i10; i11++) {
            int ep2 = epInfo.getEp() + i11;
            if (ep2 <= subject.getTotalEpisode()) {
                subject.getAdUnlockedEps().add(Integer.valueOf(ep2));
            }
        }
    }
}
