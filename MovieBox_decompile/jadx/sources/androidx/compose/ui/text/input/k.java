package androidx.compose.ui.text.input;

public final class k implements m {

    private final int f5927a;

    private final int f5928b;

    public k(int i10, int i11) {
        this.f5927a = i10;
        this.f5928b = i11;
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i10 + " and " + i11 + " respectively.").toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f5927a == kVar.f5927a && this.f5928b == kVar.f5928b;
    }

    public int hashCode() {
        return (this.f5927a * 31) + this.f5928b;
    }

    public String toString() {
        return "DeleteSurroundingTextCommand(lengthBeforeCursor=" + this.f5927a + ", lengthAfterCursor=" + this.f5928b + ')';
    }
}
