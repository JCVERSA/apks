package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class w55 extends rd0 implements bga, bfa {
    public boolean h;

    public w55(Iterator it, b bVar) {
        super(it, bVar);
        this.h = false;
    }

    @Override
    public boolean hasNext() {
        return ((Iterator) this.b).hasNext();
    }

    @Override
    public bga iterator() {
        synchronized (this) {
            try {
                if (this.h) {
                    throw new TemplateModelException("This collection is stateful and can not be iterated over the second time.");
                }
                this.h = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    @Override
    public zfa next() throws TemplateModelException {
        try {
            return o(((Iterator) this.b).next());
        } catch (NoSuchElementException e) {
            throw new TemplateModelException("No more elements in the iterator.", (Exception) e);
        }
    }
}
