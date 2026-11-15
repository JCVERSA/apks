package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.select.Elements;

public abstract class j implements Cloneable {

    j f68601a;

    int f68602b;

    class a implements tz.a {

        final String f68603a;

        a(String str) {
            this.f68603a = str;
        }

        @Override
        public void a(j jVar, int i10) {
        }

        @Override
        public void b(j jVar, int i10) {
            jVar.s(this.f68603a);
        }
    }

    private static class b implements tz.a {

        private Appendable f68605a;

        private Document.OutputSettings f68606b;

        b(Appendable appendable, Document.OutputSettings outputSettings) {
            this.f68605a = appendable;
            this.f68606b = outputSettings;
            outputSettings.l();
        }

        @Override
        public void a(j jVar, int i10) {
            if (jVar.B().equals("#text")) {
                return;
            }
            try {
                jVar.G(this.f68605a, i10, this.f68606b);
            } catch (IOException e10) {
                throw new SerializationException(e10);
            }
        }

        @Override
        public void b(j jVar, int i10) {
            try {
                jVar.F(this.f68605a, i10, this.f68606b);
            } catch (IOException e10) {
                throw new SerializationException(e10);
            }
        }
    }

    protected j() {
    }

    private void K(int i10) {
        List listT = t();
        while (i10 < listT.size()) {
            ((j) listT.get(i10)).U(i10);
            i10++;
        }
    }

    private void d(int i10, String str) {
        org.jsoup.helper.d.j(str);
        org.jsoup.helper.d.j(this.f68601a);
        List listD = org.jsoup.parser.e.d(str, I() instanceof Element ? (Element) I() : null, j());
        this.f68601a.b(i10, (j[]) listD.toArray(new j[listD.size()]));
    }

    private Element u(Element element) {
        Elements elementsO0 = element.o0();
        return elementsO0.size() > 0 ? u(elementsO0.get(0)) : element;
    }

    public j A() {
        j jVar = this.f68601a;
        if (jVar == null) {
            return null;
        }
        List listT = jVar.t();
        int i10 = this.f68602b + 1;
        if (listT.size() > i10) {
            return (j) listT.get(i10);
        }
        return null;
    }

    public abstract String B();

    void C() {
    }

    public String D() {
        StringBuilder sb2 = new StringBuilder(128);
        E(sb2);
        return sb2.toString();
    }

    protected void E(Appendable appendable) {
        org.jsoup.select.d.c(new b(appendable, v()), this);
    }

    abstract void F(Appendable appendable, int i10, Document.OutputSettings outputSettings);

    abstract void G(Appendable appendable, int i10, Document.OutputSettings outputSettings);

    public Document H() {
        j jVarR = R();
        if (jVarR instanceof Document) {
            return (Document) jVarR;
        }
        return null;
    }

    public j I() {
        return this.f68601a;
    }

    public final j J() {
        return this.f68601a;
    }

    public void L() {
        org.jsoup.helper.d.j(this.f68601a);
        this.f68601a.N(this);
    }

    public j M(String str) {
        org.jsoup.helper.d.j(str);
        i().B(str);
        return this;
    }

    protected void N(j jVar) {
        org.jsoup.helper.d.d(jVar.f68601a == this);
        int i10 = jVar.f68602b;
        t().remove(i10);
        K(i10);
        jVar.f68601a = null;
    }

    protected void O(j jVar) {
        jVar.T(this);
    }

    protected void P(j jVar, j jVar2) {
        org.jsoup.helper.d.d(jVar.f68601a == this);
        org.jsoup.helper.d.j(jVar2);
        j jVar3 = jVar2.f68601a;
        if (jVar3 != null) {
            jVar3.N(jVar2);
        }
        int i10 = jVar.f68602b;
        t().set(i10, jVar2);
        jVar2.f68601a = this;
        jVar2.U(i10);
        jVar.f68601a = null;
    }

    public void Q(j jVar) {
        org.jsoup.helper.d.j(jVar);
        org.jsoup.helper.d.j(this.f68601a);
        this.f68601a.P(this, jVar);
    }

    public j R() {
        j jVar = this;
        while (true) {
            j jVar2 = jVar.f68601a;
            if (jVar2 == null) {
                return jVar;
            }
            jVar = jVar2;
        }
    }

    public void S(String str) {
        org.jsoup.helper.d.j(str);
        X(new a(str));
    }

    protected void T(j jVar) {
        org.jsoup.helper.d.j(jVar);
        j jVar2 = this.f68601a;
        if (jVar2 != null) {
            jVar2.N(this);
        }
        this.f68601a = jVar;
    }

    protected void U(int i10) {
        this.f68602b = i10;
    }

    public int V() {
        return this.f68602b;
    }

    public List W() {
        j jVar = this.f68601a;
        if (jVar == null) {
            return Collections.emptyList();
        }
        List<j> listT = jVar.t();
        ArrayList arrayList = new ArrayList(listT.size() - 1);
        for (j jVar2 : listT) {
            if (jVar2 != this) {
                arrayList.add(jVar2);
            }
        }
        return arrayList;
    }

    public j X(tz.a aVar) {
        org.jsoup.helper.d.j(aVar);
        org.jsoup.select.d.c(aVar, this);
        return this;
    }

    public j Y() {
        org.jsoup.helper.d.j(this.f68601a);
        List listT = t();
        j jVar = listT.size() > 0 ? (j) listT.get(0) : null;
        this.f68601a.b(this.f68602b, p());
        L();
        return jVar;
    }

    public j Z(String str) {
        org.jsoup.helper.d.h(str);
        List listD = org.jsoup.parser.e.d(str, I() instanceof Element ? (Element) I() : null, j());
        j jVar = (j) listD.get(0);
        if (jVar == null || !(jVar instanceof Element)) {
            return null;
        }
        Element element = (Element) jVar;
        Element elementU = u(element);
        this.f68601a.P(this, element);
        elementU.c(this);
        if (listD.size() > 0) {
            for (int i10 = 0; i10 < listD.size(); i10++) {
                j jVar2 = (j) listD.get(i10);
                jVar2.f68601a.N(jVar2);
                element.g0(jVar2);
            }
        }
        return this;
    }

    public String a(String str) {
        org.jsoup.helper.d.h(str);
        return !w(str) ? "" : org.jsoup.helper.c.m(j(), g(str));
    }

    protected void b(int i10, j... jVarArr) {
        org.jsoup.helper.d.f(jVarArr);
        List listT = t();
        for (j jVar : jVarArr) {
            O(jVar);
        }
        listT.addAll(i10, Arrays.asList(jVarArr));
        K(i10);
    }

    protected void c(j... jVarArr) {
        List listT = t();
        for (j jVar : jVarArr) {
            O(jVar);
            listT.add(jVar);
            jVar.U(listT.size() - 1);
        }
    }

    public j e(String str) {
        d(this.f68602b + 1, str);
        return this;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public String g(String str) {
        org.jsoup.helper.d.j(str);
        if (!x()) {
            return "";
        }
        String strO = i().o(str);
        if (strO.length() > 0) {
            return strO;
        }
        return str.startsWith("abs:") ? a(str.substring(4)) : "";
    }

    public j h(String str, String str2) {
        i().y(str, str2);
        return this;
    }

    public abstract org.jsoup.nodes.b i();

    public abstract String j();

    public j k(String str) {
        d(this.f68602b, str);
        return this;
    }

    public j l(j jVar) {
        org.jsoup.helper.d.j(jVar);
        org.jsoup.helper.d.j(this.f68601a);
        this.f68601a.b(this.f68602b, jVar);
        return this;
    }

    public j m(int i10) {
        return (j) t().get(i10);
    }

    public abstract int n();

    public List o() {
        return Collections.unmodifiableList(t());
    }

    protected j[] p() {
        return (j[]) t().toArray(new j[n()]);
    }

    @Override
    public j s0() {
        j jVarR = r(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(jVarR);
        while (!linkedList.isEmpty()) {
            j jVar = (j) linkedList.remove();
            int iN = jVar.n();
            for (int i10 = 0; i10 < iN; i10++) {
                List listT = jVar.t();
                j jVarR2 = ((j) listT.get(i10)).r(jVar);
                listT.set(i10, jVarR2);
                linkedList.add(jVarR2);
            }
        }
        return jVarR;
    }

    protected j r(j jVar) {
        try {
            j jVar2 = (j) super.clone();
            jVar2.f68601a = jVar;
            jVar2.f68602b = jVar == null ? 0 : this.f68602b;
            return jVar2;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    protected abstract void s(String str);

    protected abstract List t();

    public String toString() {
        return D();
    }

    Document.OutputSettings v() {
        Document documentH = H();
        if (documentH == null) {
            documentH = new Document("");
        }
        return documentH.g1();
    }

    public boolean w(String str) {
        org.jsoup.helper.d.j(str);
        if (str.startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (i().q(strSubstring) && !a(strSubstring).equals("")) {
                return true;
            }
        }
        return i().q(str);
    }

    protected abstract boolean x();

    public boolean y() {
        return this.f68601a != null;
    }

    protected void z(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
        appendable.append('\n').append(org.jsoup.helper.c.l(i10 * outputSettings.j()));
    }
}
