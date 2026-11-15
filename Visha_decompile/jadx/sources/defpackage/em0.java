package defpackage;

import freemarker.core.Environment;
import freemarker.core.j;
import freemarker.template.TemplateModelException;
import java.util.List;

public class em0 extends j {

    public class a implements yfa {
        public final String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            em0.this.Z(list, 1);
            return this.b.indexOf(em0.this.d0(list, 0)) != -1 ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }

        public a(String str) {
            this.b = str;
        }
    }

    @Override
    public zfa F(Environment environment) {
        return new a(this.h.M(environment, "For sequences/collections (lists and such) use \"?seq_contains\" instead."));
    }
}
