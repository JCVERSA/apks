package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.AbstractList;

public class qc9 extends AbstractList implements aga {
    public final b b;
    public final nga c;

    public qc9(nga ngaVar, b bVar) {
        this.c = ngaVar;
        this.b = bVar;
    }

    @Override
    public zfa b() {
        return this.c;
    }

    public nga c() {
        return this.c;
    }

    @Override
    public Object get(int i) {
        try {
            return this.b.b(this.c.get(i));
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public int size() {
        try {
            return this.c.size();
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }
}
