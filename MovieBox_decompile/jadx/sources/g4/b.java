package g4;

public final class b {

    private final boolean f60656a;

    private final boolean f60657b;

    private final boolean f60658c;

    private final boolean f60659d;

    public b(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f60656a = z10;
        this.f60657b = z11;
        this.f60658c = z12;
        this.f60659d = z13;
    }

    public final boolean a() {
        return this.f60656a;
    }

    public final boolean b() {
        return this.f60658c;
    }

    public final boolean c() {
        return this.f60659d;
    }

    public final boolean d() {
        return this.f60657b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f60656a == bVar.f60656a && this.f60657b == bVar.f60657b && this.f60658c == bVar.f60658c && this.f60659d == bVar.f60659d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public int hashCode() {
        boolean z10 = this.f60656a;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        boolean z11 = this.f60657b;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i11 = (i10 + r11) * 31;
        boolean z12 = this.f60658c;
        ?? r12 = z12;
        if (z12) {
            r12 = 1;
        }
        int i12 = (i11 + r12) * 31;
        boolean z13 = this.f60659d;
        return i12 + (z13 ? 1 : z13);
    }

    public String toString() {
        return "NetworkState(isConnected=" + this.f60656a + ", isValidated=" + this.f60657b + ", isMetered=" + this.f60658c + ", isNotRoaming=" + this.f60659d + ')';
    }
}
