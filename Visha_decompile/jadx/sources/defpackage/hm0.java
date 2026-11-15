package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;

public class hm0 extends ll0 {

    public class a implements yfa {
        public String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            boolean zStartsWith;
            String string;
            hm0.this.a0(list, 1, 3);
            String strD0 = hm0.this.d0(list, 0);
            if (list.size() > 1) {
                String strD1 = hm0.this.d0(list, 1);
                long jF = list.size() > 2 ? kr8.f(hm0.this.d0(list, 2)) : 4294967296L;
                if ((jF & 4294967296L) == 0) {
                    kr8.b(hm0.this.i, jF, true);
                    zStartsWith = (kr8.f & jF) == 0 ? this.b.startsWith(strD0) : this.b.toLowerCase().startsWith(strD0.toLowerCase());
                } else {
                    zStartsWith = kr8.c(strD0, (int) jF).matcher(this.b).lookingAt();
                }
                strD0 = strD1;
            } else {
                zStartsWith = this.b.startsWith(strD0);
            }
            if (zStartsWith) {
                string = this.b;
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(strD0);
                stringBuffer.append(this.b);
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
