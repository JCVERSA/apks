package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class d26 implements c26 {
    public final Matcher a;
    public final CharSequence b;
    public final b26 c;
    public List d;

    public static final class a extends g3 {
        public a() {
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof String) {
                return contains((String) obj);
            }
            return false;
        }

        @Override
        public String get(int i) {
            String strGroup = d26.this.e().group(i);
            return strGroup == null ? "" : strGroup;
        }

        @Override
        public int getSize() {
            return d26.this.e().groupCount() + 1;
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof String) {
                return k((String) obj);
            }
            return -1;
        }

        public int k(String str) {
            return super.indexOf(str);
        }

        public int l(String str) {
            return super.lastIndexOf(str);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return l((String) obj);
            }
            return -1;
        }

        public boolean contains(String str) {
            return super.contains((Object) str);
        }
    }

    public static final class b extends r2 implements b26 {
        public b() {
        }

        public static final a26 m(b bVar, int i) {
            return bVar.l(i);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof a26) {
                return k((a26) obj);
            }
            return false;
        }

        @Override
        public int getSize() {
            return d26.this.e().groupCount() + 1;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Iterator iterator() {
            return SequencesKt___SequencesKt.R(i81.b0(y71.l(this)), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return d26.b.m(this.b, ((Integer) obj).intValue());
                }
            }).iterator();
        }

        public boolean k(a26 a26Var) {
            return super.contains(a26Var);
        }

        public a26 l(int i) {
            u15 u15VarI = hr8.i(d26.this.e(), i);
            if (u15VarI.getStart().intValue() < 0) {
                return null;
            }
            String strGroup = d26.this.e().group(i);
            y45.i(strGroup, "group(...)");
            return new a26(strGroup, u15VarI);
        }
    }

    public d26(Matcher matcher, CharSequence charSequence) {
        y45.j(matcher, "matcher");
        y45.j(charSequence, "input");
        this.a = matcher;
        this.b = charSequence;
        this.c = new b();
    }

    @Override
    public c26.b a() {
        return c26.a.a(this);
    }

    @Override
    public List b() {
        if (this.d == null) {
            this.d = new a();
        }
        List list = this.d;
        y45.g(list);
        return list;
    }

    @Override
    public u15 c() {
        return hr8.h(e());
    }

    public final MatchResult e() {
        return this.a;
    }

    @Override
    public String getValue() {
        String strGroup = e().group();
        y45.i(strGroup, "group(...)");
        return strGroup;
    }

    @Override
    public c26 next() {
        int iEnd = e().end() + (e().end() == e().start() ? 1 : 0);
        if (iEnd > this.b.length()) {
            return null;
        }
        Matcher matcher = this.a.pattern().matcher(this.b);
        y45.i(matcher, "matcher(...)");
        return hr8.f(matcher, iEnd, this.b);
    }
}
