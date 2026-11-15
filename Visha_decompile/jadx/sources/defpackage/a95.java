package defpackage;

public final class a95 extends tfc {
    public static final a95 c = new a95();

    public a95() {
        super("protected_static", true);
    }

    @Override
    public String b() {
        return "protected/*protected static*/";
    }

    @Override
    public tfc d() {
        return sfc.g.c;
    }
}
