package com.google.common.base;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

public class g {

    private final String f29408a;

    class a extends g {

        final String f29409b;

        final g f29410c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g gVar, g gVar2, String str) {
            super(gVar2, null);
            this.f29409b = str;
            this.f29410c = gVar;
        }

        @Override
        CharSequence i(Object obj) {
            return obj == null ? this.f29409b : this.f29410c.i(obj);
        }

        @Override
        public g j(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    g(g gVar, a aVar) {
        this(gVar);
    }

    public static g g(char c10) {
        return new g(String.valueOf(c10));
    }

    public static g h(String str) {
        return new g(str);
    }

    public Appendable a(Appendable appendable, Iterator it) throws IOException {
        m.o(appendable);
        if (it.hasNext()) {
            appendable.append(i(it.next()));
            while (it.hasNext()) {
                appendable.append(this.f29408a);
                appendable.append(i(it.next()));
            }
        }
        return appendable;
    }

    public final StringBuilder b(StringBuilder sb2, Iterable iterable) {
        return c(sb2, iterable.iterator());
    }

    public final StringBuilder c(StringBuilder sb2, Iterator it) {
        try {
            a(sb2, it);
            return sb2;
        } catch (IOException e10) {
            throw new AssertionError(e10);
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

    CharSequence i(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public g j(String str) {
        m.o(str);
        return new a(this, this, str);
    }

    private g(String str) {
        this.f29408a = (String) m.o(str);
    }

    private g(g gVar) {
        this.f29408a = gVar.f29408a;
    }
}
