package hx;

import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final String f61508a;

    public b(String postId) {
        Intrinsics.h(postId, "postId");
        this.f61508a = postId;
    }

    public final String a() {
        return this.f61508a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && Intrinsics.c(this.f61508a, ((b) obj).f61508a);
    }

    public int hashCode() {
        return this.f61508a.hashCode();
    }

    public String toString() {
        return "DeletePostEvent(postId=" + this.f61508a + ")";
    }
}
