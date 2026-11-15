package c9;

final class b extends k {

    private final long f16719a;

    private final com.google.android.datatransport.runtime.o f16720b;

    private final com.google.android.datatransport.runtime.i f16721c;

    b(long j10, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f16719a = j10;
        if (oVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f16720b = oVar;
        if (iVar == null) {
            throw new NullPointerException("Null event");
        }
        this.f16721c = iVar;
    }

    @Override
    public com.google.android.datatransport.runtime.i b() {
        return this.f16721c;
    }

    @Override
    public long c() {
        return this.f16719a;
    }

    @Override
    public com.google.android.datatransport.runtime.o d() {
        return this.f16720b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f16719a == kVar.c() && this.f16720b.equals(kVar.d()) && this.f16721c.equals(kVar.b());
    }

    public int hashCode() {
        long j10 = this.f16719a;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f16720b.hashCode()) * 1000003) ^ this.f16721c.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f16719a + ", transportContext=" + this.f16720b + ", event=" + this.f16721c + "}";
    }
}
