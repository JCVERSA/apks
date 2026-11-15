package freemarker.core;

import freemarker.template.SimpleScalar;
import java.io.StringWriter;

public class f extends StringWriter {
    public final g.a b;

    public f(g.a aVar) {
        this.b = aVar;
    }

    @Override
    public void close() {
        SimpleScalar simpleScalar = new SimpleScalar(toString());
        int i = g.this.n;
        if (i == 1) {
            if (this.b.c != null) {
                this.b.c.put(g.this.l, simpleScalar);
                return;
            } else {
                this.b.b.T1(g.this.l, simpleScalar);
                return;
            }
        }
        if (i == 2) {
            this.b.b.Q1(g.this.l, simpleScalar);
        } else {
            if (i != 3) {
                return;
            }
            this.b.b.O1(g.this.l, simpleScalar);
        }
    }
}
