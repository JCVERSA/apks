package pr;

import ur.c;

public final class a {

    public static final a f69252a = new a();

    private static c f69253b;

    private a() {
    }

    private final c a() {
        c cVarK = f69253b;
        if (cVarK == null) {
            vr.a aVarC = pq.c.f69249a.c();
            cVarK = aVarC != null ? aVarC.k() : null;
            f69253b = cVarK;
        }
        return cVarK;
    }

    public final String b() {
        return d() ? "/ugc_shorts/detail" : "/shorts/detail";
    }

    public final String c() {
        return d() ? "/ugc_shorts/favorite" : "/shorts/favorite";
    }

    public final boolean d() {
        c cVarA = a();
        if (cVarA != null) {
            return cVarA.a();
        }
        return false;
    }
}
