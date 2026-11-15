package freemarker.template;

import defpackage.bfa;
import defpackage.bga;
import defpackage.c8;
import defpackage.gc7;
import defpackage.lpc;
import defpackage.npc;
import defpackage.zfa;
import java.io.Serializable;
import java.util.Iterator;

public class DefaultIteratorAdapter extends npc implements bfa, c8, lpc, Serializable {
    private final Iterator iterator;
    private boolean iteratorOwned;

    public class a implements bga {
        public boolean b;

        public a() {
        }

        public final void a() throws TemplateModelException {
            if (DefaultIteratorAdapter.this.iteratorOwned) {
                throw new TemplateModelException("This collection value wraps a java.util.Iterator, thus it can be listed only once.");
            }
            DefaultIteratorAdapter.this.iteratorOwned = true;
            this.b = true;
        }

        @Override
        public boolean hasNext() throws TemplateModelException {
            if (!this.b) {
                a();
            }
            return DefaultIteratorAdapter.this.iterator.hasNext();
        }

        @Override
        public zfa next() throws TemplateModelException {
            if (!this.b) {
                a();
            }
            if (!DefaultIteratorAdapter.this.iterator.hasNext()) {
                throw new TemplateModelException("The collection has no more items.");
            }
            Object next = DefaultIteratorAdapter.this.iterator.next();
            return next instanceof zfa ? (zfa) next : DefaultIteratorAdapter.this.wrap(next);
        }
    }

    private DefaultIteratorAdapter(Iterator it, gc7 gc7Var) {
        super(gc7Var);
        this.iterator = it;
    }

    public static DefaultIteratorAdapter adapt(Iterator it, gc7 gc7Var) {
        return new DefaultIteratorAdapter(it, gc7Var);
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override
    public Object getWrappedObject() {
        return this.iterator;
    }

    @Override
    public bga iterator() throws TemplateModelException {
        return new a();
    }
}
