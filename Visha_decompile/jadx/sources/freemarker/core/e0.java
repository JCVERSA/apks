package freemarker.core;

import defpackage.bga;
import defpackage.zfa;
import java.util.ArrayList;
import java.util.regex.Matcher;

public class e0 implements bga {
    public int b = 0;
    public boolean c;
    public final Matcher d;
    public final g0.a e;

    public e0(g0.a aVar, Matcher matcher) {
        this.e = aVar;
        this.d = matcher;
        this.c = matcher.find();
    }

    @Override
    public boolean hasNext() {
        ArrayList arrayList = this.e.g;
        if (arrayList == null) {
            return this.c;
        }
        return this.b < arrayList.size();
    }

    @Override
    public zfa next() throws _TemplateModelException {
        ArrayList arrayList = this.e.g;
        if (arrayList != null) {
            try {
                int i = this.b;
                this.b = i + 1;
                return (zfa) arrayList.get(i);
            } catch (IndexOutOfBoundsException e) {
                throw new _TemplateModelException(e, "There were no more matches");
            }
        }
        if (!this.c) {
            throw new _TemplateModelException("There were no more matches");
        }
        g0.a.C0346a c0346a = new g0.a.C0346a(this.e.c, this.d);
        this.b++;
        this.c = this.d.find();
        return c0346a;
    }
}
