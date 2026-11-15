package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;

public class gm0 extends ll0 {

    public class a implements yfa {
        public String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            String string;
            gm0.this.Z(list, 1);
            String strD0 = gm0.this.d0(list, 0);
            if (this.b.endsWith(strD0)) {
                string = this.b;
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(this.b);
                stringBuffer.append(strD0);
                string = stringBuffer.toString();
            }
            return new SimpleScalar(string);
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
