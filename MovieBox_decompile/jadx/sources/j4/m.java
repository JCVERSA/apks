package j4;

import kotlin.jvm.internal.Intrinsics;

public final class m {

    private final String f62968a;

    private final int f62969b;

    public m(String workSpecId, int i10) {
        Intrinsics.h(workSpecId, "workSpecId");
        this.f62968a = workSpecId;
        this.f62969b = i10;
    }

    public final int a() {
        return this.f62969b;
    }

    public final String b() {
        return this.f62968a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return Intrinsics.c(this.f62968a, mVar.f62968a) && this.f62969b == mVar.f62969b;
    }

    public int hashCode() {
        return (this.f62968a.hashCode() * 31) + this.f62969b;
    }

    public String toString() {
        return "WorkGenerationalId(workSpecId=" + this.f62968a + ", generation=" + this.f62969b + ')';
    }
}
