package freemarker.core;

import defpackage.yfa;
import defpackage.zfa;
import freemarker.template.TemplateModelException;
import java.util.List;

public class w extends l {

    public class a implements yfa {
        public final z0.a b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            w.this.a0(list, 1, Integer.MAX_VALUE);
            return list.get(this.b.f() % list.size());
        }

        public a(z0.a aVar) {
            this.b = aVar;
        }
    }

    @Override
    public zfa i0(z0.a aVar, Environment environment) {
        return new a(aVar);
    }
}
