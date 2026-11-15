package defpackage;

import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.AbstractSet;
import java.util.Iterator;

public class bo4 extends AbstractSet {
    public final co4 b;

    public bo4(co4 co4Var) {
        this.b = co4Var;
    }

    @Override
    public Iterator iterator() {
        try {
            return new ao4(this, this.b.d().keys().iterator());
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public int size() {
        try {
            return this.b.d().size();
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }
}
