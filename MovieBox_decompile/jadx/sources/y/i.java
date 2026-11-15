package y;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class i {

    public static final a f76004e = new a(null);

    private static final i f76005f = new i(0.0f, 0.0f, 0.0f, 0.0f);

    private final float f76006a;

    private final float f76007b;

    private final float f76008c;

    private final float f76009d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a() {
            return i.f76005f;
        }

        private a() {
        }
    }

    public i(float f10, float f11, float f12, float f13) {
        this.f76006a = f10;
        this.f76007b = f11;
        this.f76008c = f12;
        this.f76009d = f13;
    }

    public final boolean b(long j10) {
        return g.m(j10) >= this.f76006a && g.m(j10) < this.f76008c && g.n(j10) >= this.f76007b && g.n(j10) < this.f76009d;
    }

    public final float c() {
        return this.f76009d;
    }

    public final long d() {
        return h.a(this.f76006a + (k() / 2.0f), this.f76007b + (e() / 2.0f));
    }

    public final float e() {
        return this.f76009d - this.f76007b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Float.compare(this.f76006a, iVar.f76006a) == 0 && Float.compare(this.f76007b, iVar.f76007b) == 0 && Float.compare(this.f76008c, iVar.f76008c) == 0 && Float.compare(this.f76009d, iVar.f76009d) == 0;
    }

    public final float f() {
        return this.f76006a;
    }

    public final float g() {
        return this.f76008c;
    }

    public final long h() {
        return n.a(k(), e());
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f76006a) * 31) + Float.floatToIntBits(this.f76007b)) * 31) + Float.floatToIntBits(this.f76008c)) * 31) + Float.floatToIntBits(this.f76009d);
    }

    public final float i() {
        return this.f76007b;
    }

    public final long j() {
        return h.a(this.f76006a, this.f76007b);
    }

    public final float k() {
        return this.f76008c - this.f76006a;
    }

    public final i l(float f10, float f11, float f12, float f13) {
        return new i(Math.max(this.f76006a, f10), Math.max(this.f76007b, f11), Math.min(this.f76008c, f12), Math.min(this.f76009d, f13));
    }

    public final i m(i iVar) {
        return new i(Math.max(this.f76006a, iVar.f76006a), Math.max(this.f76007b, iVar.f76007b), Math.min(this.f76008c, iVar.f76008c), Math.min(this.f76009d, iVar.f76009d));
    }

    public final boolean n() {
        return this.f76006a >= this.f76008c || this.f76007b >= this.f76009d;
    }

    public final boolean o(i iVar) {
        return this.f76008c > iVar.f76006a && iVar.f76008c > this.f76006a && this.f76009d > iVar.f76007b && iVar.f76009d > this.f76007b;
    }

    public final i p(float f10, float f11) {
        return new i(this.f76006a + f10, this.f76007b + f11, this.f76008c + f10, this.f76009d + f11);
    }

    public final i q(long j10) {
        return new i(this.f76006a + g.m(j10), this.f76007b + g.n(j10), this.f76008c + g.m(j10), this.f76009d + g.n(j10));
    }

    public String toString() {
        return "Rect.fromLTRB(" + c.a(this.f76006a, 1) + ", " + c.a(this.f76007b, 1) + ", " + c.a(this.f76008c, 1) + ", " + c.a(this.f76009d, 1) + ')';
    }
}
