package q;

import kotlin.jvm.internal.DefaultConstructorMarker;
import o0.i;

final class d implements b {

    private final float f69319a;

    public d(float f10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10);
    }

    @Override
    public float a(long j10, o0.e eVar) {
        return eVar.D0(this.f69319a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && i.i(this.f69319a, ((d) obj).f69319a);
    }

    public int hashCode() {
        return i.j(this.f69319a);
    }

    public String toString() {
        return "CornerSize(size = " + this.f69319a + ".dp)";
    }

    private d(float f10) {
        this.f69319a = f10;
    }
}
