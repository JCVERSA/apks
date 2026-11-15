package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class o {

    private final com.google.common.base.b f29420a;

    private final boolean f29421b;

    private final d f29422c;

    private final int f29423d;

    class a implements d {

        final com.google.common.base.b f29424a;

        class C0379a extends c {
            C0379a(o oVar, CharSequence charSequence) {
                super(oVar, charSequence);
            }

            @Override
            int e(int i10) {
                return i10 + 1;
            }

            @Override
            int f(int i10) {
                return a.this.f29424a.e(this.f29428c, i10);
            }
        }

        a(com.google.common.base.b bVar) {
            this.f29424a = bVar;
        }

        @Override
        public c a(o oVar, CharSequence charSequence) {
            return new C0379a(oVar, charSequence);
        }
    }

    class b implements Iterable {

        final CharSequence f29426a;

        final o f29427b;

        b(o oVar, CharSequence charSequence) {
            this.f29426a = charSequence;
            this.f29427b = oVar;
        }

        @Override
        public Iterator iterator() {
            return this.f29427b.j(this.f29426a);
        }

        public String toString() {
            g gVarH = g.h(", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            StringBuilder sbB = gVarH.b(sb2, this);
            sbB.append(']');
            return sbB.toString();
        }
    }

    private static abstract class c extends AbstractIterator {

        final CharSequence f29428c;

        final com.google.common.base.b f29429d;

        final boolean f29430e;

        int f29431f = 0;

        int f29432g;

        protected c(o oVar, CharSequence charSequence) {
            this.f29429d = oVar.f29420a;
            this.f29430e = oVar.f29421b;
            this.f29432g = oVar.f29423d;
            this.f29428c = charSequence;
        }

        @Override
        public String a() {
            int i10 = this.f29431f;
            while (true) {
                int i11 = this.f29431f;
                if (i11 == -1) {
                    return (String) b();
                }
                int iF = f(i11);
                if (iF == -1) {
                    iF = this.f29428c.length();
                    this.f29431f = -1;
                } else {
                    this.f29431f = e(iF);
                }
                int i12 = this.f29431f;
                if (i12 == i10) {
                    int i13 = i12 + 1;
                    this.f29431f = i13;
                    if (i13 > this.f29428c.length()) {
                        this.f29431f = -1;
                    }
                } else {
                    while (i10 < iF && this.f29429d.g(this.f29428c.charAt(i10))) {
                        i10++;
                    }
                    while (iF > i10 && this.f29429d.g(this.f29428c.charAt(iF - 1))) {
                        iF--;
                    }
                    if (!this.f29430e || i10 != iF) {
                        int i14 = this.f29432g;
                        if (i14 == 1) {
                            iF = this.f29428c.length();
                            this.f29431f = -1;
                            while (iF > i10 && this.f29429d.g(this.f29428c.charAt(iF - 1))) {
                                iF--;
                            }
                        } else {
                            this.f29432g = i14 - 1;
                        }
                        return this.f29428c.subSequence(i10, iF).toString();
                    }
                    i10 = this.f29431f;
                }
            }
        }

        abstract int e(int i10);

        abstract int f(int i10);
    }

    private interface d {
        Iterator a(o oVar, CharSequence charSequence);
    }

    private o(d dVar) {
        this(dVar, false, com.google.common.base.b.i(), Integer.MAX_VALUE);
    }

    public static o f(char c10) {
        return g(com.google.common.base.b.f(c10));
    }

    public static o g(com.google.common.base.b bVar) {
        m.o(bVar);
        return new o(new a(bVar));
    }

    public Iterator j(CharSequence charSequence) {
        return this.f29422c.a(this, charSequence);
    }

    public o e() {
        return new o(this.f29422c, true, this.f29420a, this.f29423d);
    }

    public Iterable h(CharSequence charSequence) {
        m.o(charSequence);
        return new b(this, charSequence);
    }

    public List i(CharSequence charSequence) {
        m.o(charSequence);
        Iterator itJ = j(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itJ.hasNext()) {
            arrayList.add((String) itJ.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public o k() {
        return l(com.google.common.base.b.k());
    }

    public o l(com.google.common.base.b bVar) {
        m.o(bVar);
        return new o(this.f29422c, this.f29421b, bVar, this.f29423d);
    }

    private o(d dVar, boolean z10, com.google.common.base.b bVar, int i10) {
        this.f29422c = dVar;
        this.f29421b = z10;
        this.f29420a = bVar;
        this.f29423d = i10;
    }
}
