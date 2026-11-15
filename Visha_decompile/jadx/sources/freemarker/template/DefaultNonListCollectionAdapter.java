package freemarker.template;

import defpackage.bga;
import defpackage.c8;
import defpackage.cfa;
import defpackage.dga;
import defpackage.hc7;
import defpackage.ic7;
import defpackage.lpc;
import defpackage.m0d;
import defpackage.npc;
import defpackage.zfa;
import freemarker.core._TemplateModelException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

public class DefaultNonListCollectionAdapter extends npc implements cfa, c8, lpc, dga, Serializable {
    private final Collection collection;

    public class a implements bga {
        public final Iterator b;

        public a(Iterator it) {
            this.b = it;
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public zfa next() throws TemplateModelException {
            if (!this.b.hasNext()) {
                throw new TemplateModelException("The collection has no more items.");
            }
            Object next = this.b.next();
            return next instanceof zfa ? (zfa) next : DefaultNonListCollectionAdapter.this.wrap(next);
        }
    }

    private DefaultNonListCollectionAdapter(Collection collection, ic7 ic7Var) {
        super(ic7Var);
        this.collection = collection;
    }

    public static DefaultNonListCollectionAdapter adapt(Collection collection, ic7 ic7Var) {
        return new DefaultNonListCollectionAdapter(collection, ic7Var);
    }

    public boolean contains(zfa zfaVar) throws TemplateModelException {
        Object objB = ((hc7) getObjectWrapper()).b(zfaVar);
        try {
            return this.collection.contains(objB);
        } catch (ClassCastException e) {
            throw new _TemplateModelException(e, new Object[]{"Failed to check if the collection contains the item. Probably the item's Java type, ", objB != null ? new m0d(objB.getClass()) : "Null", ", doesn't match the type of (some of) the collection items; see cause exception."});
        }
    }

    @Override
    public zfa getAPI() throws TemplateModelException {
        return ((ic7) getObjectWrapper()).a(this.collection);
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override
    public Object getWrappedObject() {
        return this.collection;
    }

    public boolean isEmpty() {
        return this.collection.isEmpty();
    }

    @Override
    public bga iterator() throws TemplateModelException {
        return new a(this.collection.iterator());
    }

    @Override
    public int size() {
        return this.collection.size();
    }
}
