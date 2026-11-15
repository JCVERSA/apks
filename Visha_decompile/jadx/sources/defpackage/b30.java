package defpackage;

import android.content.Context;
import org.apache.commons.text.StringSubstitutor;

public final class b30 extends gl1 {
    public final Context a;
    public final hy0 b;
    public final hy0 c;
    public final String d;

    public b30(Context context, hy0 hy0Var, hy0 hy0Var2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.a = context;
        if (hy0Var == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.b = hy0Var;
        if (hy0Var2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.c = hy0Var2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.d = str;
    }

    @Override
    public Context b() {
        return this.a;
    }

    @Override
    public String c() {
        return this.d;
    }

    @Override
    public hy0 d() {
        return this.c;
    }

    @Override
    public hy0 e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gl1)) {
            return false;
        }
        gl1 gl1Var = (gl1) obj;
        return this.a.equals(gl1Var.b()) && this.b.equals(gl1Var.e()) && this.c.equals(gl1Var.d()) && this.d.equals(gl1Var.c());
    }

    public int hashCode() {
        return this.d.hashCode() ^ ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003);
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.a + ", wallClock=" + this.b + ", monotonicClock=" + this.c + ", backendName=" + this.d + StringSubstitutor.DEFAULT_VAR_END;
    }
}
