package androidx.compose.ui.text.input;

public final class a0 implements m {

    private final int f5912a;

    private final int f5913b;

    public a0(int i10, int i11) {
        this.f5912a = i10;
        this.f5913b = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f5912a == a0Var.f5912a && this.f5913b == a0Var.f5913b;
    }

    public int hashCode() {
        return (this.f5912a * 31) + this.f5913b;
    }

    public String toString() {
        return "SetComposingRegionCommand(start=" + this.f5912a + ", end=" + this.f5913b + ')';
    }
}
