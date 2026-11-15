package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;
import java.util.regex.Matcher;

public class mm0 extends ll0 {

    public class a implements yfa {
        public String b;

        public a(String str) {
            this.b = str;
        }

        @Override
        public Object exec(List list) throws TemplateModelException {
            int length;
            int size = list.size();
            mm0.this.Y(size, 1, 2);
            String strD0 = mm0.this.d0(list, 0);
            long jF = size > 1 ? kr8.f(mm0.this.d0(list, 1)) : 0L;
            if ((4294967296L & jF) == 0) {
                kr8.b(mm0.this.i, jF, true);
                length = (jF & kr8.f) == 0 ? this.b.lastIndexOf(strD0) : this.b.toLowerCase().lastIndexOf(strD0.toLowerCase());
            } else if (strD0.length() == 0) {
                length = this.b.length();
            } else {
                Matcher matcher = kr8.c(strD0, (int) jF).matcher(this.b);
                if (matcher.find()) {
                    int iStart = matcher.start();
                    while (matcher.find(iStart + 1)) {
                        iStart = matcher.start();
                    }
                    length = iStart;
                } else {
                    length = -1;
                }
            }
            return length == -1 ? new SimpleScalar(this.b) : new SimpleScalar(this.b.substring(0, length));
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
