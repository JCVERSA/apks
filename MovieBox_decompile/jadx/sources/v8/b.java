package v8;

import android.content.Context;

final class b extends f {

    private final Context f73465a;

    private final e9.a f73466b;

    private final e9.a f73467c;

    private final String f73468d;

    b(Context context, e9.a aVar, e9.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f73465a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f73466b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f73467c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f73468d = str;
    }

    @Override
    public Context b() {
        return this.f73465a;
    }

    @Override
    public String c() {
        return this.f73468d;
    }

    @Override
    public e9.a d() {
        return this.f73467c;
    }

    @Override
    public e9.a e() {
        return this.f73466b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f73465a.equals(fVar.b()) && this.f73466b.equals(fVar.e()) && this.f73467c.equals(fVar.d()) && this.f73468d.equals(fVar.c());
    }

    public int hashCode() {
        return ((((((this.f73465a.hashCode() ^ 1000003) * 1000003) ^ this.f73466b.hashCode()) * 1000003) ^ this.f73467c.hashCode()) * 1000003) ^ this.f73468d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f73465a + ", wallClock=" + this.f73466b + ", monotonicClock=" + this.f73467c + ", backendName=" + this.f73468d + "}";
    }
}
