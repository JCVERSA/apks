package defpackage;

import freemarker.core.Environment;
import freemarker.core._TemplateModelException;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;

public class pm0 extends ll0 {
    public final boolean k;

    public class a implements yfa {
        public final String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            int size = list.size();
            pm0.this.Y(size, 1, 2);
            int iIntValue = pm0.this.b0(list, 0).intValue();
            if (size <= 1) {
                boolean z = pm0.this.k;
                String str = this.b;
                return new SimpleScalar(z ? n0a.K(str, iIntValue) : n0a.Q(str, iIntValue));
            }
            String strD0 = pm0.this.d0(list, 1);
            try {
                return new SimpleScalar(pm0.this.k ? n0a.M(this.b, iIntValue, strD0) : n0a.S(this.b, iIntValue, strD0));
            } catch (IllegalArgumentException e) {
                if (strD0.length() == 0) {
                    throw new _TemplateModelException(new Object[]{"?", pm0.this.i, "(...) argument #2 can't be a 0-length string."});
                }
                throw new _TemplateModelException(e, new Object[]{"?", pm0.this.i, "(...) failed: ", e});
            }
        }

        public a(String str) {
            this.b = str;
        }
    }

    public pm0(boolean z) {
        this.k = z;
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(str);
    }
}
