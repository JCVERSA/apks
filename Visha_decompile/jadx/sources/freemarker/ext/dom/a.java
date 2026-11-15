package freemarker.ext.dom;

import defpackage.n0a;
import defpackage.ofa;
import defpackage.zfa;
import freemarker.core.Environment;
import org.w3c.dom.Document;

public class a extends d implements ofa {
    public b m;

    public a(Document document) {
        super(document);
    }

    @Override
    public String d() {
        return "@document";
    }

    @Override
    public zfa get(String str) {
        if (str.equals("*")) {
            return r();
        }
        if (str.equals("**")) {
            return new NodeListModel(((Document) this.b).getElementsByTagName("*"), this);
        }
        if (!n0a.B(str)) {
            return super.get(str);
        }
        b bVar = (b) d.q(((Document) this.b).getDocumentElement());
        return bVar.s(str, Environment.y0()) ? bVar : new NodeListModel(this);
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    public b r() {
        if (this.m == null) {
            this.m = (b) d.q(((Document) this.b).getDocumentElement());
        }
        return this.m;
    }
}
