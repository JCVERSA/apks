package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.AbstractCollection;
import java.util.Iterator;

public class m71 extends AbstractCollection implements aga {
    public final b b;
    public final bfa c;

    public m71(bfa bfaVar, b bVar) {
        this.c = bfaVar;
        this.b = bVar;
    }

    @Override
    public zfa b() {
        return this.c;
    }

    @Override
    public Iterator iterator() {
        try {
            return new l71(this);
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public int size() {
        throw new UnsupportedOperationException();
    }
}
