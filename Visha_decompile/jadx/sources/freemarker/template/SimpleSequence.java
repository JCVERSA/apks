package freemarker.template;

import defpackage.bfa;
import defpackage.bga;
import defpackage.gc7;
import defpackage.nga;
import defpackage.npc;
import defpackage.zfa;
import freemarker.ext.beans.b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class SimpleSequence extends npc implements nga, Serializable {
    protected final List list;
    private List unwrappedList;

    public class SynchronizedSequence extends SimpleSequence {
        public SynchronizedSequence() {
        }

        @Override
        public void add(Object obj) {
            synchronized (SimpleSequence.this) {
                SimpleSequence.this.add(obj);
            }
        }

        @Override
        public zfa get(int i) throws TemplateModelException {
            zfa zfaVar;
            synchronized (SimpleSequence.this) {
                zfaVar = SimpleSequence.this.get(i);
            }
            return zfaVar;
        }

        @Override
        public int size() {
            int size;
            synchronized (SimpleSequence.this) {
                size = SimpleSequence.this.size();
            }
            return size;
        }

        @Override
        public List toList() throws TemplateModelException {
            List list;
            synchronized (SimpleSequence.this) {
                list = SimpleSequence.this.toList();
            }
            return list;
        }
    }

    public SimpleSequence() {
        this((gc7) null);
    }

    public void add(Object obj) {
        this.list.add(obj);
        this.unwrappedList = null;
    }

    @Override
    public zfa get(int i) throws TemplateModelException {
        try {
            Object obj = this.list.get(i);
            if (obj instanceof zfa) {
                return (zfa) obj;
            }
            zfa zfaVarWrap = wrap(obj);
            this.list.set(i, zfaVarWrap);
            return zfaVarWrap;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Override
    public int size() {
        return this.list.size();
    }

    public SimpleSequence synchronizedWrapper() {
        return new SynchronizedSequence();
    }

    public List toList() throws Throwable {
        if (this.unwrappedList == null) {
            Class<?> cls = this.list.getClass();
            try {
                List list = (List) cls.newInstance();
                b bVarS = b.s();
                for (int i = 0; i < this.list.size(); i++) {
                    Object objB = this.list.get(i);
                    if (objB instanceof zfa) {
                        objB = bVarS.b((zfa) objB);
                    }
                    list.add(objB);
                }
                this.unwrappedList = list;
            } catch (Exception e) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Error instantiating an object of type ");
                stringBuffer.append(cls.getName());
                throw new TemplateModelException(stringBuffer.toString(), e);
            }
        }
        return this.unwrappedList;
    }

    public String toString() {
        return this.list.toString();
    }

    public SimpleSequence(int i) {
        this.list = new ArrayList(i);
    }

    public void add(boolean z) {
        add(z ? a.z6 : a.y6);
    }

    public SimpleSequence(Collection collection) {
        this(collection, (gc7) null);
    }

    public SimpleSequence(bfa bfaVar) throws TemplateModelException {
        ArrayList arrayList = new ArrayList();
        bga it = bfaVar.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        arrayList.trimToSize();
        this.list = arrayList;
    }

    public SimpleSequence(gc7 gc7Var) {
        super(gc7Var);
        this.list = new ArrayList();
    }

    public SimpleSequence(int i, gc7 gc7Var) {
        super(gc7Var);
        this.list = new ArrayList(i);
    }

    public SimpleSequence(Collection collection, gc7 gc7Var) {
        super(gc7Var);
        this.list = new ArrayList(collection);
    }
}
