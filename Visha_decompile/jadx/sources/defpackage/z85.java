package defpackage;

public final class z85 extends tfc {
    public static final z85 c = new z85();

    public z85() {
        super("protected_and_package", true);
    }

    @Override
    public Integer a(tfc tfcVar) {
        y45.j(tfcVar, "visibility");
        if (y45.e(this, tfcVar)) {
            return 0;
        }
        if (tfcVar == sfc.b.c) {
            return null;
        }
        return Integer.valueOf(sfc.a.b(tfcVar) ? 1 : -1);
    }

    @Override
    public String b() {
        return "protected/*protected and package*/";
    }

    @Override
    public tfc d() {
        return sfc.g.c;
    }
}
