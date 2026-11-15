package defpackage;

import java.util.List;

public final class hc6 extends em5 {
    public static final hc6 a = new hc6();

    public static hc6 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return "conferences";
    }

    @Override
    public boolean i(String str) {
        return str.equals("https://media.ccc.de/b/conferences") || str.equals("https://media.ccc.de/public/conferences") || str.equals("https://api.media.ccc.de/public/conferences");
    }

    @Override
    public String p(String str, List list, String str2) {
        return "https://media.ccc.de/public/conferences";
    }
}
