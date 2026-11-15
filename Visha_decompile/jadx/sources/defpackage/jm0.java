package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;
import java.util.regex.Matcher;

public class jm0 extends ll0 {

    public class a implements yfa {
        public String b;

        public a(String str) {
            this.b = str;
        }

        @Override
        public Object exec(List list) throws TemplateModelException {
            int iEnd;
            int size = list.size();
            jm0.this.Y(size, 1, 2);
            String strD0 = jm0.this.d0(list, 0);
            long jF = size > 1 ? kr8.f(jm0.this.d0(list, 1)) : 0L;
            if ((4294967296L & jF) == 0) {
                kr8.b(jm0.this.i, jF, true);
                iEnd = (kr8.f & jF) == 0 ? this.b.indexOf(strD0) : this.b.toLowerCase().indexOf(strD0.toLowerCase());
                if (iEnd >= 0) {
                    iEnd += strD0.length();
                }
            } else {
                Matcher matcher = kr8.c(strD0, (int) jF).matcher(this.b);
                iEnd = matcher.find() ? matcher.end() : -1;
            }
            return iEnd == -1 ? mga.Y4 : new SimpleScalar(this.b.substring(iEnd));
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
