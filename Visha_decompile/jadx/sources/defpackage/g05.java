package defpackage;

import java.util.List;

public final class g05 extends inb {
    public final by6 a;
    public final tm9 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g05(by6 by6Var, tm9 tm9Var) {
        super(null);
        y45.j(by6Var, "underlyingPropertyName");
        y45.j(tm9Var, "underlyingType");
        this.a = by6Var;
        this.b = tm9Var;
    }

    @Override
    public List a() {
        return x71.e(abb.a(this.a, this.b));
    }

    public final by6 c() {
        return this.a;
    }

    public final tm9 d() {
        return this.b;
    }

    public String toString() {
        return "InlineClassRepresentation(underlyingPropertyName=" + this.a + ", underlyingType=" + this.b + ')';
    }
}
