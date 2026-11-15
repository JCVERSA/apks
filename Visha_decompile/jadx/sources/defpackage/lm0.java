package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;
import java.util.regex.Matcher;

public class lm0 extends ll0 {

    public class a implements yfa {
        public String b;

        public a(String str) {
            this.b = str;
        }

        @Override
        public Object exec(List list) throws TemplateModelException {
            int iStart;
            int size = list.size();
            lm0.this.Y(size, 1, 2);
            String strD0 = lm0.this.d0(list, 0);
            long jF = size > 1 ? kr8.f(lm0.this.d0(list, 1)) : 0L;
            if ((4294967296L & jF) == 0) {
                kr8.b(lm0.this.i, jF, true);
                iStart = (jF & kr8.f) == 0 ? this.b.indexOf(strD0) : this.b.toLowerCase().indexOf(strD0.toLowerCase());
            } else {
                Matcher matcher = kr8.c(strD0, (int) jF).matcher(this.b);
                iStart = matcher.find() ? matcher.start() : -1;
            }
            return iStart == -1 ? new SimpleScalar(this.b) : new SimpleScalar(this.b.substring(0, iStart));
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
