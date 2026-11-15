package defpackage;

import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.Iterator;

public class l71 implements Iterator {
    public final bga b;
    public final m71 c;

    public l71(m71 m71Var) {
        this.c = m71Var;
        this.b = m71Var.c.iterator();
    }

    @Override
    public boolean hasNext() {
        try {
            return this.b.hasNext();
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public Object next() {
        try {
            return this.c.b.b(this.b.next());
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
