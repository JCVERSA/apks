package j4;

import kotlin.jvm.internal.Intrinsics;

public final class i {

    public final String f62958a;

    private final int f62959b;

    public final int f62960c;

    public i(String workSpecId, int i10, int i11) {
        Intrinsics.h(workSpecId, "workSpecId");
        this.f62958a = workSpecId;
        this.f62959b = i10;
        this.f62960c = i11;
    }

    public final int a() {
        return this.f62959b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Intrinsics.c(this.f62958a, iVar.f62958a) && this.f62959b == iVar.f62959b && this.f62960c == iVar.f62960c;
    }

    public int hashCode() {
        return (((this.f62958a.hashCode() * 31) + this.f62959b) * 31) + this.f62960c;
    }

    public String toString() {
        return "SystemIdInfo(workSpecId=" + this.f62958a + ", generation=" + this.f62959b + ", systemId=" + this.f62960c + ')';
    }
}
