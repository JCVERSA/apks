package hx;

public final class d {

    private final boolean f61512a;

    public d(boolean z10) {
        this.f61512a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && this.f61512a == ((d) obj).f61512a;
    }

    public int hashCode() {
        return androidx.compose.foundation.e.a(this.f61512a);
    }

    public String toString() {
        return "MainTabEvent(white=" + this.f61512a + ")";
    }
}
