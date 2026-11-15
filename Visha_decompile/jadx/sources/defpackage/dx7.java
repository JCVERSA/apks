package defpackage;

import java.io.StringReader;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.ParseErrorList;
import org.jsoup.parser.a;
import org.jsoup.parser.c;

public class dx7 {
    public c a;
    public ParseErrorList b = ParseErrorList.noTracking();
    public tw7 c;

    public dx7(c cVar) {
        this.a = cVar;
        this.c = cVar.c();
    }

    public static dx7 c() {
        return new dx7(new a());
    }

    public static Document e(String str, String str2) {
        a aVar = new a();
        return aVar.g(new StringReader(str), str2, new dx7(aVar));
    }

    public ParseErrorList a() {
        return this.b;
    }

    public c b() {
        return this.a;
    }

    public boolean d(String str) {
        return b().f(str);
    }

    public List f(String str, Element element, String str2) {
        return this.a.h(str, element, str2, this);
    }

    public tw7 g() {
        return this.c;
    }
}
