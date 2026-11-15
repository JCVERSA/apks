package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;
import java.util.regex.Matcher;

public class km0 extends ll0 {

    public class a implements yfa {
        public String b;

        public a(String str) {
            this.b = str;
        }

        @Override
        public Object exec(List list) throws TemplateModelException {
            int length;
            int size = list.size();
            km0.this.Y(size, 1, 2);
            String strD0 = km0.this.d0(list, 0);
            long jF = size > 1 ? kr8.f(km0.this.d0(list, 1)) : 0L;
            if ((4294967296L & jF) == 0) {
                kr8.b(km0.this.i, jF, true);
                length = (kr8.f & jF) == 0 ? this.b.lastIndexOf(strD0) : this.b.toLowerCase().lastIndexOf(strD0.toLowerCase());
                if (length >= 0) {
                    length += strD0.length();
                }
            } else if (strD0.length() == 0) {
                length = this.b.length();
            } else {
                Matcher matcher = kr8.c(strD0, (int) jF).matcher(this.b);
                if (matcher.find()) {
                    int iEnd = matcher.end();
                    while (matcher.find(matcher.start() + 1)) {
                        iEnd = matcher.end();
                    }
                    length = iEnd;
                } else {
                    length = -1;
                }
            }
            return length == -1 ? mga.Y4 : new SimpleScalar(this.b.substring(length));
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
