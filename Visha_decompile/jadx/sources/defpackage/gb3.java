package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import java.util.Enumeration;
import java.util.NoSuchElementException;

public class gb3 extends rd0 implements bga, bfa {
    public boolean h;

    public gb3(Enumeration enumeration, b bVar) {
        super(enumeration, bVar);
        this.h = false;
    }

    @Override
    public boolean hasNext() {
        return ((Enumeration) this.b).hasMoreElements();
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
            return o(((Enumeration) this.b).nextElement());
        } catch (NoSuchElementException unused) {
            throw new TemplateModelException("No more elements in the enumeration.");
        }
    }
}
