package defpackage;

import java.util.List;
import org.apache.commons.text.StringSubstitutor;

public final class f30 extends fp4 {
    public final String a;
    public final List b;

    public f30(String str, List list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.a = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.b = list;
    }

    @Override
    public List b() {
        return this.b;
    }

    @Override
    public String c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof fp4)) {
            return false;
        }
        fp4 fp4Var = (fp4) obj;
        return this.a.equals(fp4Var.c()) && this.b.equals(fp4Var.b());
    }

    public int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.a + ", usedDates=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
