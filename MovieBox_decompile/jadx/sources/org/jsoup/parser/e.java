package org.jsoup.parser;

import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class e {

    private i f68674a;

    private int f68675b = 0;

    private ParseErrorList f68676c;

    private d f68677d;

    public e(i iVar) {
        this.f68674a = iVar;
        this.f68677d = iVar.b();
    }

    public static e a() {
        return new e(new b());
    }

    public static Document c(String str, String str2) {
        b bVar = new b();
        return bVar.d(new StringReader(str), str2, ParseErrorList.noTracking(), bVar.b());
    }

    public static List d(String str, Element element, String str2) {
        b bVar = new b();
        return bVar.i0(str, element, str2, ParseErrorList.noTracking(), bVar.b());
    }

    public static e g() {
        return new e(new j());
    }

    public boolean b() {
        return this.f68675b > 0;
    }

    public Document e(Reader reader, String str) {
        ParseErrorList parseErrorListTracking = b() ? ParseErrorList.tracking(this.f68675b) : ParseErrorList.noTracking();
        this.f68676c = parseErrorListTracking;
        return this.f68674a.d(reader, str, parseErrorListTracking, this.f68677d);
    }

    public Document f(String str, String str2) {
        this.f68676c = b() ? ParseErrorList.tracking(this.f68675b) : ParseErrorList.noTracking();
        return this.f68674a.d(new StringReader(str), str2, this.f68676c, this.f68677d);
    }
}
