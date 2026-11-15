package org.jsoup.select;

import defpackage.m0a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.nodes.Element;

public abstract class b extends c {
    public final ArrayList a;
    public int b;

    public static final class a extends b {
        public a(Collection collection) {
            super(collection);
        }

        @Override
        public boolean a(Element element, Element element2) {
            for (int i = this.b - 1; i >= 0; i--) {
                if (!((c) this.a.get(i)).a(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return m0a.j(this.a, "");
        }

        public a(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }
    }

    public b() {
        this.b = 0;
        this.a = new ArrayList();
    }

    public void b(c cVar) {
        this.a.set(this.b - 1, cVar);
    }

    public c c() {
        int i = this.b;
        if (i > 0) {
            return (c) this.a.get(i - 1);
        }
        return null;
    }

    public void d() {
        this.b = this.a.size();
    }

    public b(Collection collection) {
        this();
        this.a.addAll(collection);
        d();
    }

    public static final class C0437b extends b {
        public C0437b(Collection collection) {
            if (this.b > 1) {
                this.a.add(new a(collection));
            } else {
                this.a.addAll(collection);
            }
            d();
        }

        @Override
        public boolean a(Element element, Element element2) {
            for (int i = 0; i < this.b; i++) {
                if (((c) this.a.get(i)).a(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public void e(c cVar) {
            this.a.add(cVar);
            d();
        }

        public String toString() {
            return m0a.j(this.a, ", ");
        }

        public C0437b(c... cVarArr) {
            this(Arrays.asList(cVarArr));
        }

        public C0437b() {
        }
    }
}
