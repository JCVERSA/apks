package defpackage;

import com.yandex.div.storage.b;
import java.util.concurrent.ConcurrentHashMap;

public final class ma1 {
    public final b a;
    public final String b;
    public final pq4 c;
    public final oj8 d;
    public final ConcurrentHashMap e;
    public final wn2 f;

    public ma1(b bVar, lx7 lx7Var, String str, pq4 pq4Var, oj8 oj8Var) {
        y45.j(bVar, "divStorage");
        y45.j(lx7Var, "logger");
        y45.j(pq4Var, "histogramRecorder");
        y45.j(oj8Var, "parsingHistogramProxy");
        this.a = bVar;
        this.b = str;
        this.c = pq4Var;
        this.d = oj8Var;
        this.e = new ConcurrentHashMap();
        this.f = qga.b(lx7Var);
    }
}
