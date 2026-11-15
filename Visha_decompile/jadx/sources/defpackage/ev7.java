package defpackage;

public abstract class ev7 extends au1 implements dv7 {
    public final o54 f;
    public final String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ev7(qq6 qq6Var, o54 o54Var) {
        super(qq6Var, md.u1.b(), o54Var.h(), yt9.a);
        y45.j(qq6Var, "module");
        y45.j(o54Var, "fqName");
        this.f = o54Var;
        this.g = "package " + o54Var + " of " + qq6Var;
    }

    @Override
    public final o54 d() {
        return this.f;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = yt9.a;
        y45.i(yt9Var, "NO_SOURCE");
        return yt9Var;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        y45.j(bu1Var, "visitor");
        return bu1Var.c(this, obj);
    }

    @Override
    public String toString() {
        return this.g;
    }

    @Override
    public qq6 b() {
        xt1 xt1VarB = super.b();
        y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor");
        return (qq6) xt1VarB;
    }
}
