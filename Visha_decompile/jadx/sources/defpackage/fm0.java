package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateModelException;
import java.util.List;

public class fm0 extends ll0 {

    public class a implements yfa {
        public String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            fm0.this.Z(list, 1);
            return this.b.endsWith(fm0.this.d0(list, 0)) ? freemarker.template.a.z6 : freemarker.template.a.y6;
        }

        public a(String str) {
            this.b = str;
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
