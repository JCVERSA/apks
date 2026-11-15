package defpackage;

import org.json.JSONObject;

public final class lo2 {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final JSONObject d;

    public lo2(boolean z, boolean z2, boolean z3, JSONObject jSONObject) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lo2)) {
            return false;
        }
        lo2 lo2Var = (lo2) obj;
        return this.a == lo2Var.a && this.b == lo2Var.b && this.c == lo2Var.c && y45.e(this.d, lo2Var.d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.b;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.c;
        int i3 = (i2 + (z3 ? 1 : z3)) * 31;
        JSONObject jSONObject = this.d;
        return i3 + (jSONObject == null ? 0 : jSONObject.hashCode());
    }

    public String toString() {
        return "DivPlayerPlaybackConfig(autoplay=" + this.a + ", isMuted=" + this.b + ", repeatable=" + this.c + ", payload=" + this.d + ')';
    }
}
