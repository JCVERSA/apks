package freemarker.template;

import defpackage.bfa;
import defpackage.bga;
import defpackage.c8;
import defpackage.dga;
import defpackage.gc7;
import defpackage.gv8;
import defpackage.ic7;
import defpackage.lpc;
import defpackage.nga;
import defpackage.npc;
import defpackage.zfa;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class DefaultListAdapter extends npc implements nga, c8, lpc, dga, Serializable {
    protected final List list;

    public static class DefaultListAdapterWithCollectionSupport extends DefaultListAdapter implements bfa {
        @Override
        public bga iterator() throws TemplateModelException {
            return new a(this.list.iterator(), getObjectWrapper());
        }

        public DefaultListAdapterWithCollectionSupport(List list, gv8 gv8Var) {
            super(list, gv8Var);
        }
    }

    public static class a implements bga {
        public final Iterator b;
        public final gc7 c;

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public zfa next() throws TemplateModelException {
            try {
                return this.c.c(this.b.next());
            } catch (NoSuchElementException e) {
                throw new TemplateModelException("The collection has no more items.", (Exception) e);
            }
        }

        public a(Iterator it, gc7 gc7Var) {
            this.b = it;
            this.c = gc7Var;
        }
    }

    public static DefaultListAdapter adapt(List list, gv8 gv8Var) {
        return list instanceof AbstractSequentialList ? new DefaultListAdapterWithCollectionSupport(list, gv8Var) : new DefaultListAdapter(list, gv8Var);
    }

    @Override
    public zfa get(int i) throws TemplateModelException {
        if (i < 0 || i >= this.list.size()) {
            return null;
        }
        return wrap(this.list.get(i));
    }

    @Override
    public zfa getAPI() throws TemplateModelException {
        return ((ic7) getObjectWrapper()).a(this.list);
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override
    public Object getWrappedObject() {
        return this.list;
    }

    @Override
    public int size() throws TemplateModelException {
        return this.list.size();
    }

    private DefaultListAdapter(List list, gv8 gv8Var) {
        super(gv8Var);
        this.list = list;
    }
}
