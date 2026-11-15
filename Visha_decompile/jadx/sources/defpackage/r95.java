package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

public class r95 {
    public final String a;

    public class a extends r95 {
        public final String b;
        public final r95 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(r95 r95Var, r95 r95Var2, String str) {
            super(r95Var2, null);
            this.b = str;
            this.c = r95Var;
        }

        @Override
        public CharSequence i(Object obj) {
            return obj == null ? this.b : this.c.i(obj);
        }

        @Override
        public r95 j(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    public r95(r95 r95Var, a aVar) {
        this(r95Var);
    }

    public static r95 g(char c) {
        return new r95(String.valueOf(c));
    }

    public static r95 h(String str) {
        return new r95(str);
    }

    public Appendable a(Appendable appendable, Iterator it) throws IOException {
        xd8.o(appendable);
        if (it.hasNext()) {
            appendable.append(i(it.next()));
            while (it.hasNext()) {
                appendable.append(this.a);
                appendable.append(i(it.next()));
            }
        }
        return appendable;
    }

    public final StringBuilder b(StringBuilder sb, Iterable iterable) {
        return c(sb, iterable.iterator());
    }

    public final StringBuilder c(StringBuilder sb, Iterator it) {
        try {
            a(sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final String d(Iterable iterable) {
        return e(iterable.iterator());
    }

    public final String e(Iterator it) {
        return c(new StringBuilder(), it).toString();
    }

    public final String f(Object[] objArr) {
        return d(Arrays.asList(objArr));
    }

    public CharSequence i(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public r95 j(String str) {
        xd8.o(str);
        return new a(this, this, str);
    }

    public r95(String str) {
        this.a = (String) xd8.o(str);
    }

    public r95(r95 r95Var) {
        this.a = r95Var.a;
    }
}
