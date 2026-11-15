package defpackage;

import com.google.common.base.AbstractIterator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class hv9 {
    public final ev0 a;
    public final boolean b;
    public final d c;
    public final int d;

    public class a implements d {
        public final ev0 a;

        public class C0365a extends c {
            public C0365a(hv9 hv9Var, CharSequence charSequence) {
                super(hv9Var, charSequence);
            }

            @Override
            public int e(int i) {
                return i + 1;
            }

            @Override
            public int f(int i) {
                return a.this.a.e(this.d, i);
            }
        }

        public a(ev0 ev0Var) {
            this.a = ev0Var;
        }

        @Override
        public c a(hv9 hv9Var, CharSequence charSequence) {
            return new C0365a(hv9Var, charSequence);
        }
    }

    public class b implements Iterable {
        public final CharSequence b;
        public final hv9 c;

        public b(hv9 hv9Var, CharSequence charSequence) {
            this.b = charSequence;
            this.c = hv9Var;
        }

        @Override
        public Iterator iterator() {
            return this.c.j(this.b);
        }

        public String toString() {
            r95 r95VarH = r95.h(", ");
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            StringBuilder sbB = r95VarH.b(sb, this);
            sbB.append(']');
            return sbB.toString();
        }
    }

    public static abstract class c extends AbstractIterator {
        public final CharSequence d;
        public final ev0 e;
        public final boolean f;
        public int g = 0;
        public int h;

        public c(hv9 hv9Var, CharSequence charSequence) {
            this.e = hv9Var.a;
            this.f = hv9Var.b;
            this.h = hv9Var.d;
            this.d = charSequence;
        }

        @Override
        public String a() {
            int i = this.g;
            while (true) {
                int i2 = this.g;
                if (i2 == -1) {
                    return (String) b();
                }
                int iF = f(i2);
                if (iF == -1) {
                    iF = this.d.length();
                    this.g = -1;
                } else {
                    this.g = e(iF);
                }
                int i3 = this.g;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.g = i4;
                    if (i4 > this.d.length()) {
                        this.g = -1;
                    }
                } else {
                    while (i < iF && this.e.g(this.d.charAt(i))) {
                        i++;
                    }
                    while (iF > i && this.e.g(this.d.charAt(iF - 1))) {
                        iF--;
                    }
                    if (!this.f || i != iF) {
                        int i5 = this.h;
                        if (i5 == 1) {
                            iF = this.d.length();
                            this.g = -1;
                            while (iF > i && this.e.g(this.d.charAt(iF - 1))) {
                                iF--;
                            }
                        } else {
                            this.h = i5 - 1;
                        }
                        return this.d.subSequence(i, iF).toString();
                    }
                    i = this.g;
                }
            }
        }

        public abstract int e(int i);

        public abstract int f(int i);
    }

    public interface d {
        Iterator a(hv9 hv9Var, CharSequence charSequence);
    }

    public hv9(d dVar) {
        this(dVar, false, ev0.i(), Integer.MAX_VALUE);
    }

    public static hv9 f(char c2) {
        return g(ev0.f(c2));
    }

    public static hv9 g(ev0 ev0Var) {
        xd8.o(ev0Var);
        return new hv9(new a(ev0Var));
    }

    public hv9 e() {
        return new hv9(this.c, true, this.a, this.d);
    }

    public Iterable h(CharSequence charSequence) {
        xd8.o(charSequence);
        return new b(this, charSequence);
    }

    public List i(CharSequence charSequence) {
        xd8.o(charSequence);
        Iterator itJ = j(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itJ.hasNext()) {
            arrayList.add((String) itJ.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final Iterator j(CharSequence charSequence) {
        return this.c.a(this, charSequence);
    }

    public hv9 k() {
        return l(ev0.k());
    }

    public hv9 l(ev0 ev0Var) {
        xd8.o(ev0Var);
        return new hv9(this.c, this.b, ev0Var, this.d);
    }

    public hv9(d dVar, boolean z, ev0 ev0Var, int i) {
        this.c = dVar;
        this.b = z;
        this.a = ev0Var;
        this.d = i;
    }
}
