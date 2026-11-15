package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateModelException;
import java.util.List;

public class sm0 extends ll0 {

    public class a implements xfa {
        public String b;

        public a(String str) {
            this.b = str;
        }

        @Override
        public Object exec(List list) throws TemplateModelException {
            String[] strArrSplit;
            int size = list.size();
            sm0.this.Y(size, 1, 2);
            String str = (String) list.get(0);
            long jF = size > 1 ? kr8.f((String) list.get(1)) : 0L;
            if ((4294967296L & jF) == 0) {
                kr8.a("split", jF);
                strArrSplit = n0a.V(this.b, str, (jF & kr8.f) != 0);
            } else {
                strArrSplit = kr8.c(str, (int) jF).split(this.b);
            }
            return gc7.b.c(strArrSplit);
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
