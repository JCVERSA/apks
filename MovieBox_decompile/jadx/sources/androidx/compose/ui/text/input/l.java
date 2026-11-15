package androidx.compose.ui.text.input;

public final class l implements m {

    private final int f5929a;

    private final int f5930b;

    public l(int i10, int i11) {
        this.f5929a = i10;
        this.f5930b = i11;
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i10 + " and " + i11 + " respectively.").toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f5929a == lVar.f5929a && this.f5930b == lVar.f5930b;
    }

    public int hashCode() {
        return (this.f5929a * 31) + this.f5930b;
    }

    public String toString() {
        return "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=" + this.f5929a + ", lengthAfterCursor=" + this.f5930b + ')';
    }
}
