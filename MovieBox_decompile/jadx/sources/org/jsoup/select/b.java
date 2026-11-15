package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.nodes.Element;

abstract class b extends c {

    final ArrayList f68730a;

    int f68731b;

    static final class a extends b {
        a(Collection collection) {
            super(collection);
        }

        @Override
        public boolean a(Element element, Element element2) {
            for (int i10 = 0; i10 < this.f68731b; i10++) {
                if (!((c) this.f68730a.get(i10)).a(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return org.jsoup.helper.c.i(this.f68730a, " ");
        }

        a(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }
    }

    b() {
        this.f68731b = 0;
        this.f68730a = new ArrayList();
    }

    void b(c cVar) {
        this.f68730a.set(this.f68731b - 1, cVar);
    }

    c c() {
        int i10 = this.f68731b;
        if (i10 > 0) {
            return (c) this.f68730a.get(i10 - 1);
        }
        return null;
    }

    void d() {
        this.f68731b = this.f68730a.size();
    }

    b(Collection collection) {
        this();
        this.f68730a.addAll(collection);
        d();
    }

    static final class C0841b extends b {
        C0841b(Collection collection) {
            if (this.f68731b > 1) {
                this.f68730a.add(new a(collection));
            } else {
                this.f68730a.addAll(collection);
            }
            d();
        }

        @Override
        public boolean a(Element element, Element element2) {
            for (int i10 = 0; i10 < this.f68731b; i10++) {
                if (((c) this.f68730a.get(i10)).a(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public void e(c cVar) {
            this.f68730a.add(cVar);
            d();
        }

        public String toString() {
            return org.jsoup.helper.c.i(this.f68730a, ", ");
        }

        C0841b(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }

        C0841b() {
        }
    }
}
