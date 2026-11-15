package freemarker.core;

import defpackage.bga;
import defpackage.zfa;
import java.util.ArrayList;

public class f0 implements bga {
    public int b = 0;
    public final ArrayList c;
    public final g0.a d;

    public f0(g0.a aVar, ArrayList arrayList) {
        this.d = aVar;
        this.c = arrayList;
    }

    @Override
    public boolean hasNext() {
        return this.b < this.c.size();
    }

    @Override
    public zfa next() throws _TemplateModelException {
        try {
            ArrayList arrayList = this.c;
            int i = this.b;
            this.b = i + 1;
            return (zfa) arrayList.get(i);
        } catch (IndexOutOfBoundsException e) {
            throw new _TemplateModelException(e, "There were no more matches");
        }
    }
}
