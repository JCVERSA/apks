package defpackage;

import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.Iterator;

public class ao4 implements Iterator {
    public final bga b;
    public final bo4 c;

    public ao4(bo4 bo4Var, bga bgaVar) {
        this.c = bo4Var;
        this.b = bgaVar;
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
            return new zn4(this, this.c.b.b.b(this.b.next()));
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
