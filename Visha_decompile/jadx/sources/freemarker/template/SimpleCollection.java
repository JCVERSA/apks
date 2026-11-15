package freemarker.template;

import defpackage.bfa;
import defpackage.bga;
import defpackage.gc7;
import defpackage.npc;
import defpackage.zfa;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

public class SimpleCollection extends npc implements bfa, Serializable {
    private final Collection collection;
    private final Iterator iterator;
    private boolean iteratorOwned;

    public class a implements bga {
        public final Iterator b;
        public boolean c;

        public a(Iterator it, boolean z) {
            this.b = it;
            this.c = z;
        }

        private void a() {
            synchronized (SimpleCollection.this) {
                try {
                    if (SimpleCollection.this.iteratorOwned) {
                        throw new TemplateModelException("This collection value wraps a java.util.Iterator, thus it can be listed only once.");
                    }
                    SimpleCollection.this.iteratorOwned = true;
                    this.c = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public boolean hasNext() {
            if (!this.c) {
                a();
            }
            return this.b.hasNext();
        }

        @Override
        public zfa next() throws TemplateModelException {
            if (!this.c) {
                a();
            }
            if (!this.b.hasNext()) {
                throw new TemplateModelException("The collection has no more items.");
            }
            Object next = this.b.next();
            return next instanceof zfa ? (zfa) next : SimpleCollection.this.wrap(next);
        }
    }

    public SimpleCollection(Iterator it) {
        this.iterator = it;
        this.collection = null;
    }

    @Override
    public bga iterator() {
        a aVar;
        Iterator it = this.iterator;
        if (it != null) {
            return new a(it, false);
        }
        synchronized (this.collection) {
            aVar = new a(this.collection.iterator(), true);
        }
        return aVar;
    }

    public SimpleCollection(Collection collection) {
        this.collection = collection;
        this.iterator = null;
    }

    public SimpleCollection(Iterator it, gc7 gc7Var) {
        super(gc7Var);
        this.iterator = it;
        this.collection = null;
    }

    public SimpleCollection(Collection collection, gc7 gc7Var) {
        super(gc7Var);
        this.collection = collection;
        this.iterator = null;
    }
}
