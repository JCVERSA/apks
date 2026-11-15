package defpackage;

import org.jsoup.nodes.b;

public class tw7 {
    public static final tw7 c = new tw7(false, false);
    public static final tw7 d = new tw7(true, true);
    public final boolean a;
    public final boolean b;

    public tw7(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public String a(String str) {
        String strTrim = str.trim();
        return !this.b ? v17.a(strTrim) : strTrim;
    }

    public b b(b bVar) {
        if (bVar != null && !this.b) {
            bVar.A();
        }
        return bVar;
    }

    public String c(String str) {
        String strTrim = str.trim();
        return !this.a ? v17.a(strTrim) : strTrim;
    }

    public boolean d() {
        return this.b;
    }

    public boolean e() {
        return this.a;
    }
}
