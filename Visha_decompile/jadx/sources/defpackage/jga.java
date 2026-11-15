package defpackage;

public final class jga implements lx7 {
    public final lx7 c;
    public final String d;

    public jga(lx7 lx7Var, String str) {
        y45.j(lx7Var, "logger");
        y45.j(str, "templateId");
        this.c = lx7Var;
        this.d = str;
    }

    @Override
    public void c(Exception exc) {
        y45.j(exc, "e");
        this.c.e(exc, this.d);
    }
}
