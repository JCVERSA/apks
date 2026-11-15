package defpackage;

import com.google.android.datatransport.Priority;
import org.apache.commons.text.StringSubstitutor;

public final class c30 extends rd3 {
    public final Integer a;
    public final Object b;
    public final Priority c;
    public final hh8 d;

    public c30(Integer num, Object obj, Priority priority, hh8 hh8Var) {
        this.a = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.b = obj;
        if (priority == null) {
            throw new NullPointerException("Null priority");
        }
        this.c = priority;
        this.d = hh8Var;
    }

    @Override
    public Integer a() {
        return this.a;
    }

    @Override
    public Object b() {
        return this.b;
    }

    @Override
    public Priority c() {
        return this.c;
    }

    @Override
    public hh8 d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof rd3)) {
            return false;
        }
        rd3 rd3Var = (rd3) obj;
        Integer num = this.a;
        if (num != null ? num.equals(rd3Var.a()) : rd3Var.a() == null) {
            if (this.b.equals(rd3Var.b()) && this.c.equals(rd3Var.c())) {
                hh8 hh8Var = this.d;
                if (hh8Var == null) {
                    if (rd3Var.d() == null) {
                        return true;
                    }
                } else if (hh8Var.equals(rd3Var.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.a;
        int iHashCode = ((((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003;
        hh8 hh8Var = this.d;
        return iHashCode ^ (hh8Var != null ? hh8Var.hashCode() : 0);
    }

    public String toString() {
        return "Event{code=" + this.a + ", payload=" + this.b + ", priority=" + this.c + ", productData=" + this.d + StringSubstitutor.DEFAULT_VAR_END;
    }
}
