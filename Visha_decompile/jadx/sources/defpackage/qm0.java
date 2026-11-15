package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;

public class qm0 extends ll0 {

    public class a implements yfa {
        public String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            qm0.this.Z(list, 1);
            String strD0 = qm0.this.d0(list, 0);
            boolean zStartsWith = this.b.startsWith(strD0);
            String strSubstring = this.b;
            if (zStartsWith) {
                strSubstring = strSubstring.substring(strD0.length());
            }
            return new SimpleScalar(strSubstring);
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
