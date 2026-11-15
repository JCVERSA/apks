package i2;

import androidx.media3.common.i0;
import androidx.media3.exoplayer.z3;
import java.util.Objects;

public final class f0 {

    public final int f61644a;

    public final z3[] f61645b;

    public final z[] f61646c;

    public final i0 f61647d;

    public final Object f61648e;

    public f0(z3[] z3VarArr, z[] zVarArr, i0 i0Var, Object obj) {
        androidx.media3.common.util.a.a(z3VarArr.length == zVarArr.length);
        this.f61645b = z3VarArr;
        this.f61646c = (z[]) zVarArr.clone();
        this.f61647d = i0Var;
        this.f61648e = obj;
        this.f61644a = z3VarArr.length;
    }

    public boolean a(f0 f0Var) {
        if (f0Var == null || f0Var.f61646c.length != this.f61646c.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.f61646c.length; i10++) {
            if (!b(f0Var, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(f0 f0Var, int i10) {
        return f0Var != null && Objects.equals(this.f61645b[i10], f0Var.f61645b[i10]) && Objects.equals(this.f61646c[i10], f0Var.f61646c[i10]);
    }

    public boolean c(int i10) {
        return this.f61645b[i10] != null;
    }
}
