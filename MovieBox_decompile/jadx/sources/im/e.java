package im;

import com.transsion.memberapi.MemberTaskRewardInfo;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private final int f62180a;

    private final String f62181b;

    private final int f62182c;

    private final int f62183d;

    private final MemberTaskRewardInfo f62184e;

    public e(int i10, String rewardId, int i11, int i12, MemberTaskRewardInfo memberTaskRewardInfo) {
        Intrinsics.h(rewardId, "rewardId");
        this.f62180a = i10;
        this.f62181b = rewardId;
        this.f62182c = i11;
        this.f62183d = i12;
        this.f62184e = memberTaskRewardInfo;
    }

    public final int a() {
        return this.f62180a;
    }

    public final MemberTaskRewardInfo b() {
        return this.f62184e;
    }

    public final int c() {
        return this.f62182c;
    }

    public final String d() {
        return this.f62181b;
    }

    public final int e() {
        return this.f62183d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f62180a == eVar.f62180a && Intrinsics.c(this.f62181b, eVar.f62181b) && this.f62182c == eVar.f62182c && this.f62183d == eVar.f62183d && Intrinsics.c(this.f62184e, eVar.f62184e);
    }

    public int hashCode() {
        int iHashCode = ((((((this.f62180a * 31) + this.f62181b.hashCode()) * 31) + this.f62182c) * 31) + this.f62183d) * 31;
        MemberTaskRewardInfo memberTaskRewardInfo = this.f62184e;
        return iHashCode + (memberTaskRewardInfo == null ? 0 : memberTaskRewardInfo.hashCode());
    }

    public String toString() {
        return "MemberTaskRewardData(index=" + this.f62180a + ", rewardId=" + this.f62181b + ", rewardAmount=" + this.f62182c + ", rewardType=" + this.f62183d + ", info=" + this.f62184e + ")";
    }
}
