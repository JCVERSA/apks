package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import java.util.Collection;
import java.util.List;

public class p71 extends yz9 implements bfa, nga {
    public static final fq6 i = new o71();

    public p71(Collection collection, b bVar) {
        super(collection, bVar);
    }

    @Override
    public zfa get(int i2) throws TemplateModelException {
        Object obj = this.b;
        if (obj instanceof List) {
            try {
                return o(((List) obj).get(i2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Underlying collection is not a list, it's ");
        stringBuffer.append(this.b.getClass().getName());
        throw new TemplateModelException(stringBuffer.toString());
    }

    @Override
    public bga iterator() {
        return new w55(((Collection) this.b).iterator(), this.c);
    }

    public boolean p() {
        return this.b instanceof List;
    }

    @Override
    public int size() {
        return ((Collection) this.b).size();
    }
}
