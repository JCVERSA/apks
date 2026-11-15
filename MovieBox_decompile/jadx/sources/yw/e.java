package yw;

public final class e {

    private boolean f76415a;

    private boolean f76416b;

    public e(boolean z10, boolean z11) {
        this.f76415a = z10;
        this.f76416b = z11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f76415a == eVar.f76415a && this.f76416b == eVar.f76416b;
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f76415a) * 31) + androidx.compose.foundation.e.a(this.f76416b);
    }

    public String toString() {
        return "PostEventPlayRecord(isRefresh=" + this.f76415a + ", isOutsideVideo=" + this.f76416b + ")";
    }
}
