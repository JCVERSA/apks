package nr;

import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c extends k {

    private BiddingNativeManager f67330a;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final BiddingNativeManager a() {
        return this.f67330a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.c(this.f67330a, ((c) obj).f67330a);
    }

    public int hashCode() {
        BiddingNativeManager biddingNativeManager = this.f67330a;
        if (biddingNativeManager == null) {
            return 0;
        }
        return biddingNativeManager.hashCode();
    }

    public String toString() {
        return "ShortTvAdItem(nonAdDelegate=" + this.f67330a + ")";
    }

    public c(BiddingNativeManager biddingNativeManager) {
        super(null);
        this.f67330a = biddingNativeManager;
    }

    public c(BiddingNativeManager biddingNativeManager, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : biddingNativeManager);
    }
}
