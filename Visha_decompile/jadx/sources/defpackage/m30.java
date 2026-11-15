package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class m30 extends hh8 {
    public final Integer a;

    public m30(Integer num) {
        this.a = num;
    }

    @Override
    public Integer a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hh8)) {
            return false;
        }
        hh8 hh8Var = (hh8) obj;
        Integer num = this.a;
        if (num == null) {
            return hh8Var.a() == null;
        }
        return num.equals(hh8Var.a());
    }

    public int hashCode() {
        Integer num = this.a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ProductData{productId=" + this.a + StringSubstitutor.DEFAULT_VAR_END;
    }
}
