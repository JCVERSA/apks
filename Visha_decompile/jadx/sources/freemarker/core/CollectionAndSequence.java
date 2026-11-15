package freemarker.core;

import defpackage.bfa;
import defpackage.bga;
import defpackage.nga;
import defpackage.zfa;
import freemarker.template.TemplateModelException;
import java.io.Serializable;
import java.util.ArrayList;

public final class CollectionAndSequence implements bfa, nga, Serializable {
    private bfa collection;
    private ArrayList data;
    private nga sequence;

    public static class a implements bga {
        public final nga b;
        public final int c;
        public int d = 0;

        public a(nga ngaVar) {
            this.b = ngaVar;
            this.c = ngaVar.size();
        }

        @Override
        public boolean hasNext() {
            return this.d < this.c;
        }

        @Override
        public zfa next() {
            nga ngaVar = this.b;
            int i = this.d;
            this.d = i + 1;
            return ngaVar.get(i);
        }
    }

    public CollectionAndSequence(bfa bfaVar) {
        this.collection = bfaVar;
    }

    private void initSequence() throws TemplateModelException {
        if (this.data == null) {
            this.data = new ArrayList();
            bga it = this.collection.iterator();
            while (it.hasNext()) {
                this.data.add(it.next());
            }
        }
    }

    @Override
    public zfa get(int i) throws TemplateModelException {
        nga ngaVar = this.sequence;
        if (ngaVar != null) {
            return ngaVar.get(i);
        }
        initSequence();
        return (zfa) this.data.get(i);
    }

    @Override
    public bga iterator() throws TemplateModelException {
        bfa bfaVar = this.collection;
        return bfaVar != null ? bfaVar.iterator() : new a(this.sequence);
    }

    @Override
    public int size() throws TemplateModelException {
        nga ngaVar = this.sequence;
        if (ngaVar != null) {
            return ngaVar.size();
        }
        initSequence();
        return this.data.size();
    }

    public CollectionAndSequence(nga ngaVar) {
        this.sequence = ngaVar;
    }
}
