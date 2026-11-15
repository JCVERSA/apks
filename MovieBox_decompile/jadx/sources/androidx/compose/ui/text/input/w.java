package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w implements j0 {

    private final char f5971b;

    public w() {
        this((char) 0, 1, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w) && this.f5971b == ((w) obj).f5971b;
    }

    public int hashCode() {
        return this.f5971b;
    }

    public w(char c10) {
        this.f5971b = c10;
    }

    public w(char c10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? (char) 8226 : c10);
    }
}
