package defpackage;

import freemarker.core.Environment;
import freemarker.core.j;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateModelException;
import java.util.List;

public class im0 extends j {
    public final boolean k;

    public class a implements yfa {
        public final String b;

        @Override
        public Object exec(List list) throws TemplateModelException {
            int size = list.size();
            im0.this.Y(size, 1, 2);
            String strD0 = im0.this.d0(list, 0);
            if (size <= 1) {
                boolean z = im0.this.k;
                String str = this.b;
                return new SimpleNumber(z ? str.lastIndexOf(strD0) : str.indexOf(strD0));
            }
            int iIntValue = im0.this.b0(list, 1).intValue();
            boolean z2 = im0.this.k;
            String str2 = this.b;
            return new SimpleNumber(z2 ? str2.lastIndexOf(strD0, iIntValue) : str2.indexOf(strD0, iIntValue));
        }

        public a(String str) {
            this.b = str;
        }
    }

    public im0(boolean z) {
        this.k = z;
    }

    @Override
    public zfa F(Environment environment) {
        return new a(this.h.M(environment, "For sequences/collections (lists and such) use \"?seq_index_of\" instead."));
    }
}
