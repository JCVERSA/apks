package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateModelException;
import java.util.Collections;
import java.util.List;

public class gu7 implements yfa, nga {
    public final Object b;
    public final fu7 c;
    public final b d;

    public gu7(Object obj, fu7 fu7Var, b bVar) {
        this.b = obj;
        this.c = fu7Var;
        this.d = bVar;
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        an6 an6VarF = this.c.f(list, this.d);
        try {
            return an6VarF.c(this.d, this.b);
        } catch (Exception e) {
            if (e instanceof TemplateModelException) {
                throw ((TemplateModelException) e);
            }
            throw u0d.m(this.b, an6VarF.a(), e);
        }
    }

    @Override
    public zfa get(int i) {
        return (zfa) exec(Collections.singletonList(new SimpleNumber(new Integer(i))));
    }

    @Override
    public int size() throws TemplateModelException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?size is unsupported for ");
        stringBuffer.append(getClass().getName());
        throw new TemplateModelException(stringBuffer.toString());
    }
}
