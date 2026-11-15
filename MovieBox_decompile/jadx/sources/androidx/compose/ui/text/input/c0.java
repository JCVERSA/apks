package androidx.compose.ui.text.input;

public final class c0 implements m {

    private final int f5916a;

    private final int f5917b;

    public c0(int i10, int i11) {
        this.f5916a = i10;
        this.f5917b = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f5916a == c0Var.f5916a && this.f5917b == c0Var.f5917b;
    }

    public int hashCode() {
        return (this.f5916a * 31) + this.f5917b;
    }

    public String toString() {
        return "SetSelectionCommand(start=" + this.f5916a + ", end=" + this.f5917b + ')';
    }
}
