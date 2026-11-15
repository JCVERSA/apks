package qn;

import com.google.common.collect.ImmutableList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final ImmutableList f69913a;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final ImmutableList a() {
        return this.f69913a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.c(this.f69913a, ((c) obj).f69913a);
    }

    public int hashCode() {
        return this.f69913a.hashCode();
    }

    public String toString() {
        return "TnTracks(groups=" + this.f69913a + ")";
    }

    public c(ImmutableList groups) {
        Intrinsics.h(groups, "groups");
        this.f69913a = groups;
    }

    public c(ImmutableList immutableList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? ImmutableList.of() : immutableList);
    }
}
