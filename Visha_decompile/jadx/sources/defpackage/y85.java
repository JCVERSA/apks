package defpackage;

public final class y85 extends tfc {
    public static final y85 c = new y85();

    public y85() {
        super("package", false);
    }

    @Override
    public Integer a(tfc tfcVar) {
        y45.j(tfcVar, "visibility");
        if (this == tfcVar) {
            return 0;
        }
        return sfc.a.b(tfcVar) ? 1 : -1;
    }

    @Override
    public String b() {
        return "public/*package*/";
    }

    @Override
    public tfc d() {
        return sfc.g.c;
    }
}
