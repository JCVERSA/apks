package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

public final class h0 extends f0 {

    private final String f5870a;

    public h0(String str) {
        super(null);
        this.f5870a = str;
    }

    public final String a() {
        return this.f5870a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h0) && Intrinsics.c(this.f5870a, ((h0) obj).f5870a);
    }

    public int hashCode() {
        return this.f5870a.hashCode();
    }

    public String toString() {
        return "VerbatimTtsAnnotation(verbatim=" + this.f5870a + ')';
    }
}
