package org.jsoup.nodes;

import defpackage.dnb;
import defpackage.i17;
import defpackage.m0a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.select.Elements;

public abstract class g implements Cloneable {
    public static final List d = Collections.emptyList();
    public g b;
    public int c;

    public static class a implements i17 {
        public final Appendable a;
        public final Document.OutputSettings b;

        public a(Appendable appendable, Document.OutputSettings outputSettings) {
            this.a = appendable;
            this.b = outputSettings;
            outputSettings.i();
        }

        @Override
        public void a(g gVar, int i) {
            if (gVar.E().equals("#text")) {
                return;
            }
            try {
                gVar.J(this.a, i, this.b);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override
        public void b(g gVar, int i) {
            try {
                gVar.I(this.a, i, this.b);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }
    }

    public boolean A() {
        return this.b != null;
    }

    public void B(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        appendable.append('\n').append(m0a.l(i * outputSettings.g()));
    }

    public g C() {
        g gVar = this.b;
        if (gVar == null) {
            return null;
        }
        List listW = gVar.w();
        int i = this.c + 1;
        if (listW.size() > i) {
            return (g) listW.get(i);
        }
        return null;
    }

    public abstract String E();

    public void F() {
    }

    public String G() {
        StringBuilder sbB = m0a.b();
        H(sbB);
        return m0a.m(sbB);
    }

    public void H(Appendable appendable) {
        org.jsoup.select.d.c(new a(appendable, h.a(this)), this);
    }

    public abstract void I(Appendable appendable, int i, Document.OutputSettings outputSettings);

    public abstract void J(Appendable appendable, int i, Document.OutputSettings outputSettings);

    public Document K() {
        g gVarV = V();
        if (gVarV instanceof Document) {
            return (Document) gVarV;
        }
        return null;
    }

    public g L() {
        return this.b;
    }

    public final g M() {
        return this.b;
    }

    public g N() {
        g gVar = this.b;
        if (gVar != null && this.c > 0) {
            return (g) gVar.w().get(this.c - 1);
        }
        return null;
    }

    public final void O(int i) {
        List listW = w();
        while (i < listW.size()) {
            ((g) listW.get(i)).Y(i);
            i++;
        }
    }

    public void P() {
        dnb.i(this.b);
        this.b.R(this);
    }

    public g Q(String str) {
        dnb.i(str);
        if (z()) {
            j().H(str);
        }
        return this;
    }

    public void R(g gVar) {
        dnb.c(gVar.b == this);
        int i = gVar.c;
        w().remove(i);
        O(i);
        gVar.b = null;
    }

    public void S(g gVar) {
        gVar.X(this);
    }

    public void T(g gVar, g gVar2) {
        dnb.c(gVar.b == this);
        dnb.i(gVar2);
        g gVar3 = gVar2.b;
        if (gVar3 != null) {
            gVar3.R(gVar2);
        }
        int i = gVar.c;
        w().set(i, gVar2);
        gVar2.b = this;
        gVar2.Y(i);
        gVar.b = null;
    }

    public void U(g gVar) {
        dnb.i(gVar);
        dnb.i(this.b);
        this.b.T(this, gVar);
    }

    public g V() {
        while (true) {
            g gVar = this.b;
            if (gVar == null) {
                return this;
            }
            this = gVar;
        }
    }

    public void W(String str) {
        dnb.i(str);
        u(str);
    }

    public void X(g gVar) {
        dnb.i(gVar);
        g gVar2 = this.b;
        if (gVar2 != null) {
            gVar2.R(this);
        }
        this.b = gVar;
    }

    public void Y(int i) {
        this.c = i;
    }

    public int Z() {
        return this.c;
    }

    public String a(String str) {
        dnb.g(str);
        return (z() && j().t(str)) ? m0a.n(l(), j().r(str)) : "";
    }

    public List a0() {
        g gVar = this.b;
        if (gVar == null) {
            return Collections.emptyList();
        }
        List<g> listW = gVar.w();
        ArrayList arrayList = new ArrayList(listW.size() - 1);
        for (g gVar2 : listW) {
            if (gVar2 != this) {
                arrayList.add(gVar2);
            }
        }
        return arrayList;
    }

    public g b0() {
        dnb.i(this.b);
        List listW = w();
        g gVar = listW.size() > 0 ? (g) listW.get(0) : null;
        this.b.c(this.c, r());
        P();
        return gVar;
    }

    public void c(int i, g... gVarArr) {
        dnb.i(gVarArr);
        if (gVarArr.length == 0) {
            return;
        }
        List listW = w();
        g gVarL = gVarArr[0].L();
        if (gVarL != null && gVarL.p() == gVarArr.length) {
            List listW2 = gVarL.w();
            int length = gVarArr.length;
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    gVarL.v();
                    listW.addAll(i, Arrays.asList(gVarArr));
                    int length2 = gVarArr.length;
                    while (true) {
                        int i3 = length2 - 1;
                        if (length2 <= 0) {
                            O(i);
                            return;
                        } else {
                            gVarArr[i3].b = this;
                            length2 = i3;
                        }
                    }
                } else if (gVarArr[i2] != listW2.get(i2)) {
                    break;
                } else {
                    length = i2;
                }
            }
        }
        dnb.e(gVarArr);
        for (g gVar : gVarArr) {
            S(gVar);
        }
        listW.addAll(i, Arrays.asList(gVarArr));
        O(i);
    }

    public g c0(String str) {
        dnb.g(str);
        g gVar = this.b;
        List listF = h.b(this).f(str, (gVar == null || !(gVar instanceof Element)) ? this instanceof Element ? (Element) this : null : (Element) gVar, l());
        g gVar2 = (g) listF.get(0);
        if (!(gVar2 instanceof Element)) {
            return this;
        }
        Element element = (Element) gVar2;
        Element elementX = x(element);
        g gVar3 = this.b;
        if (gVar3 != null) {
            gVar3.T(this, element);
        }
        elementX.d(this);
        if (listF.size() > 0) {
            for (int i = 0; i < listF.size(); i++) {
                g gVar4 = (g) listF.get(i);
                if (element != gVar4) {
                    g gVar5 = gVar4.b;
                    if (gVar5 != null) {
                        gVar5.R(gVar4);
                    }
                    element.i0(gVar4);
                }
            }
        }
        return this;
    }

    public void d(g... gVarArr) {
        List listW = w();
        for (g gVar : gVarArr) {
            S(gVar);
            listW.add(gVar);
            gVar.Y(listW.size() - 1);
        }
    }

    public final void e(int i, String str) {
        dnb.i(str);
        dnb.i(this.b);
        this.b.c(i, (g[]) h.b(this).f(str, L() instanceof Element ? (Element) L() : null, l()).toArray(new g[0]));
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public g f(String str) {
        e(this.c + 1, str);
        return this;
    }

    public g g(g gVar) {
        dnb.i(gVar);
        dnb.i(this.b);
        this.b.c(this.c + 1, gVar);
        return this;
    }

    public String h(String str) {
        dnb.i(str);
        if (!z()) {
            return "";
        }
        String strR = j().r(str);
        if (strR.length() > 0) {
            return strR;
        }
        return str.startsWith("abs:") ? a(str.substring(4)) : "";
    }

    public g i(String str, String str2) {
        j().E(h.b(this).g().a(str), str2);
        return this;
    }

    public abstract b j();

    public int k() {
        if (z()) {
            return j().size();
        }
        return 0;
    }

    public abstract String l();

    public g m(String str) {
        e(this.c, str);
        return this;
    }

    public g n(g gVar) {
        dnb.i(gVar);
        dnb.i(this.b);
        this.b.c(this.c, gVar);
        return this;
    }

    public g o(int i) {
        return (g) w().get(i);
    }

    public abstract int p();

    public List q() {
        if (p() == 0) {
            return d;
        }
        List listW = w();
        ArrayList arrayList = new ArrayList(listW.size());
        arrayList.addAll(listW);
        return Collections.unmodifiableList(arrayList);
    }

    public g[] r() {
        return (g[]) w().toArray(new g[0]);
    }

    @Override
    public g x0() {
        g gVarT = t(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(gVarT);
        while (!linkedList.isEmpty()) {
            g gVar = (g) linkedList.remove();
            int iP = gVar.p();
            for (int i = 0; i < iP; i++) {
                List listW = gVar.w();
                g gVarT2 = ((g) listW.get(i)).t(gVar);
                listW.set(i, gVarT2);
                linkedList.add(gVarT2);
            }
        }
        return gVarT;
    }

    public g t(g gVar) {
        try {
            g gVar2 = (g) super.clone();
            gVar2.b = gVar;
            gVar2.c = gVar == null ? 0 : this.c;
            return gVar2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public String toString() {
        return G();
    }

    public abstract void u(String str);

    public abstract g v();

    public abstract List w();

    public final Element x(Element element) {
        Elements elementsT0 = element.t0();
        return elementsT0.size() > 0 ? x(elementsT0.get(0)) : element;
    }

    public boolean y(String str) {
        dnb.i(str);
        if (!z()) {
            return false;
        }
        if (str.startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (j().t(strSubstring) && !a(strSubstring).isEmpty()) {
                return true;
            }
        }
        return j().t(str);
    }

    public abstract boolean z();
}
