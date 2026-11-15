package defpackage;

import com.transsion.onlinevideo.tiktok.ad.AdSlotRemoveReason;
import kotlin.NoWhenBranchMatchedException;

public abstract class w7 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[AdSlotRemoveReason.values().length];
            try {
                iArr[AdSlotRemoveReason.LOAD_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdSlotRemoveReason.AD_EXPIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdSlotRemoveReason.USER_CLOSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdSlotRemoveReason.MILESTONE_PASSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AdSlotRemoveReason.PREFETCH_INVALID.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AdSlotRemoveReason.FRAGMENT_DESTROYED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AdSlotRemoveReason.DAILY_CAP_REACHED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    public static final boolean a(AdSlotRemoveReason adSlotRemoveReason) {
        y45.j(adSlotRemoveReason, "<this>");
        switch (a.a[adSlotRemoveReason.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            case 5:
            case 6:
            case 7:
                return false;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
