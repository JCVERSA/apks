package na;

import com.google.android.exoplayer2.b3;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.util.p0;

public final class c0 {

    public final int f67015a;

    public final b3[] f67016b;

    public final s[] f67017c;

    public final q3 f67018d;

    public final Object f67019e;

    public c0(b3[] b3VarArr, s[] sVarArr, q3 q3Var, Object obj) {
        this.f67016b = b3VarArr;
        this.f67017c = (s[]) sVarArr.clone();
        this.f67018d = q3Var;
        this.f67019e = obj;
        this.f67015a = b3VarArr.length;
    }

    public boolean a(c0 c0Var) {
        if (c0Var == null || c0Var.f67017c.length != this.f67017c.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.f67017c.length; i10++) {
            if (!b(c0Var, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(c0 c0Var, int i10) {
        return c0Var != null && p0.c(this.f67016b[i10], c0Var.f67016b[i10]) && p0.c(this.f67017c[i10], c0Var.f67017c[i10]);
    }

    public boolean c(int i10) {
        return this.f67016b[i10] != null;
    }
}
