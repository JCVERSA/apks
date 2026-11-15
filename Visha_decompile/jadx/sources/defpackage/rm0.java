package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;

public class rm0 extends ll0 {

    public class a implements yfa {
        public String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            rm0.this.Z(list, 1);
            String strD0 = rm0.this.d0(list, 0);
            boolean zEndsWith = this.b.endsWith(strD0);
            String strSubstring = this.b;
            if (zEndsWith) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - strD0.length());
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
