package defpackage;

import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.TokenizingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public final class ppa {
    public static final ppa a = new ppa();

    public static final class a {
        public final char[] a;
        public int b;
        public final List c;

        public a(char[] cArr) {
            y45.j(cArr, "source");
            this.a = cArr;
            this.c = new ArrayList();
        }

        public static int e(a aVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 1;
            }
            return aVar.d(i);
        }

        public static char i(a aVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 1;
            }
            return aVar.h(i);
        }

        public static char l(a aVar, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 1;
            }
            return aVar.k(i);
        }

        public final char a(int i) {
            if (i >= 0) {
                char[] cArr = this.a;
                if (i < cArr.length) {
                    return cArr[i];
                }
            }
            return (char) 0;
        }

        public final char b() {
            int i = this.b;
            char[] cArr = this.a;
            if (i >= cArr.length) {
                return (char) 0;
            }
            return cArr[i];
        }

        public final boolean c() {
            int i = this.b;
            if (i >= this.a.length) {
                return false;
            }
            int i2 = 0;
            for (int i3 = i - 1; i3 > 0 && this.a[i3] == '\\'; i3--) {
                i2++;
            }
            return i2 % 2 == 1;
        }

        public final int d(int i) {
            int i2 = this.b;
            this.b = i + i2;
            return i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!y45.e(a.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            y45.h(obj, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Tokenizer.TokenizationState");
            return Arrays.equals(this.a, ((a) obj).a);
        }

        public final int f() {
            return this.b;
        }

        public final List g() {
            return this.c;
        }

        public final char h(int i) {
            int i2 = this.b;
            int i3 = i2 + i;
            char[] cArr = this.a;
            if (i3 >= cArr.length) {
                return (char) 0;
            }
            return cArr[i2 + i];
        }

        public int hashCode() {
            return Arrays.hashCode(this.a);
        }

        public final String j(int i, int i2) {
            return g1a.y(this.a, i, i2);
        }

        public final char k(int i) {
            int i2 = this.b;
            if (i2 - i >= 0) {
                return this.a[i2 - i];
            }
            return (char) 0;
        }

        public String toString() {
            return "TokenizationState(source=" + Arrays.toString(this.a) + ')';
        }
    }

    public static void u(ppa ppaVar, a aVar, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        ppaVar.t(aVar, list, z);
    }

    public final EvaluableException a(a aVar) {
        return new EvaluableException("Invalid token '" + aVar.b() + "' at position " + aVar.f(), null, 2, null);
    }

    public final boolean b(char c) {
        return ('a' <= c && c < '{') || ('A' <= c && c < '[') || c == '_';
    }

    public final boolean c(char c) {
        return c == 0;
    }

    public final boolean d(char c) {
        return c == '}';
    }

    public final boolean e(a aVar, boolean z) {
        return c(aVar.b()) || k(aVar.b(), aVar) || (z && f(aVar.b(), aVar));
    }

    public final boolean f(char c, a aVar) {
        return c == '\'' && !aVar.c();
    }

    public final boolean g(char c, char c2, char c3) {
        boolean zIsDigit;
        if (Character.isDigit(c)) {
            return true;
        }
        if (c == '.') {
            zIsDigit = Character.isDigit(c3);
        } else {
            zIsDigit = !(c == 'e' || c == 'E') ? !((c == '+' || c == '-') && ((c2 == 'e' || c2 == 'E') && Character.isDigit(c3))) : !(Character.isDigit(c2) && (Character.isDigit(c3) || c3 == '+' || c3 == '-'));
        }
        return zIsDigit;
    }

    public final boolean h(char c) {
        return c == '.';
    }

    public final boolean i(char c) {
        return '0' <= c && c < ':';
    }

    public final boolean j(List list) {
        if (list.isEmpty() || (i81.A0(list) instanceof gpa.c.g)) {
            return false;
        }
        return (i81.A0(list) instanceof gpa.b) || (i81.A0(list) instanceof apa);
    }

    public final boolean k(char c, a aVar) {
        return c == '@' && a.l(aVar, 0, 1, null) != '\\' && a.i(aVar, 0, 1, null) == '{';
    }

    public final boolean l(List list) {
        return (j(list) || (i81.C0(list) instanceof gpa.c.g)) ? false : true;
    }

    public final boolean m(char c) {
        return b(c) || i(c);
    }

    public final boolean n(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }

    public final boolean o(a aVar, List list) {
        gpa.c cVar;
        gpa.c cVar2;
        if (!k(aVar.b(), aVar)) {
            return false;
        }
        aVar.d(2);
        while (!c(aVar.b()) && aVar.b() != '}') {
            char cB = aVar.b();
            if (cB == '?') {
                list.add(gpa.c.d.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == ':') {
                list.add(gpa.c.C0363c.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == '+') {
                if (l(list)) {
                    cVar = gpa.c.g.C0364c.a;
                } else {
                    if (!j(list)) {
                        throw a(aVar);
                    }
                    cVar = gpa.c.a.f.b.a;
                }
                list.add(cVar);
                a.e(aVar, 0, 1, null);
            } else if (cB == '-') {
                if (l(list)) {
                    cVar2 = gpa.c.g.a.a;
                } else {
                    if (!j(list)) {
                        throw a(aVar);
                    }
                    cVar2 = gpa.c.a.f.C0362a.a;
                }
                list.add(cVar2);
                a.e(aVar, 0, 1, null);
            } else if (cB == '*') {
                list.add(gpa.c.a.InterfaceC0358c.C0360c.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == '/') {
                list.add(gpa.c.a.InterfaceC0358c.C0359a.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == '%') {
                list.add(gpa.c.a.InterfaceC0358c.b.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == '!') {
                if (a.i(aVar, 0, 1, null) == '=') {
                    list.add(gpa.c.a.b.C0357b.a);
                    aVar.d(2);
                } else if (a.i(aVar, 0, 1, null) == ':') {
                    list.add(gpa.c.f.a);
                    aVar.d(2);
                } else {
                    if (!l(list)) {
                        throw a(aVar);
                    }
                    list.add(gpa.c.g.b.a);
                    a.e(aVar, 0, 1, null);
                }
            } else if (cB == '&') {
                if (a.i(aVar, 0, 1, null) != '&') {
                    throw a(aVar);
                }
                list.add(gpa.c.a.d.C0361a.a);
                aVar.d(2);
            } else if (cB == '|') {
                if (a.i(aVar, 0, 1, null) != '|') {
                    throw a(aVar);
                }
                list.add(gpa.c.a.d.b.a);
                aVar.d(2);
            } else if (cB == '<') {
                if (a.i(aVar, 0, 1, null) == '=') {
                    list.add(gpa.c.a.InterfaceC0353a.d.a);
                    aVar.d(2);
                } else {
                    list.add(gpa.c.a.InterfaceC0353a.C0355c.a);
                    a.e(aVar, 0, 1, null);
                }
            } else if (cB == '>') {
                if (a.i(aVar, 0, 1, null) == '=') {
                    list.add(gpa.c.a.InterfaceC0353a.b.a);
                    aVar.d(2);
                } else {
                    list.add(gpa.c.a.InterfaceC0353a.C0354a.a);
                    a.e(aVar, 0, 1, null);
                }
            } else if (cB == '=') {
                if (a.i(aVar, 0, 1, null) != '=') {
                    throw a(aVar);
                }
                list.add(gpa.c.a.b.C0356a.a);
                aVar.d(2);
            } else if (cB == '(') {
                list.add(zoa.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == ')') {
                list.add(apa.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == ',') {
                list.add(gpa.a.C0349a.a);
                a.e(aVar, 0, 1, null);
            } else if (cB == '\'') {
                u(this, aVar, list, false, 4, null);
            } else if (n(aVar.b())) {
                a.e(aVar, 0, 1, null);
            } else if (g(aVar.b(), a.l(aVar, 0, 1, null), a.i(aVar, 0, 1, null))) {
                r(aVar, list);
            } else if (b(aVar.b())) {
                p(aVar, list);
            } else {
                if (!h(aVar.b())) {
                    throw a(aVar);
                }
                a.e(aVar, 0, 1, null);
                list.add(gpa.c.b.a);
            }
        }
        if (d(aVar.b())) {
            a.e(aVar, 0, 1, null);
            return true;
        }
        throw new TokenizingException("'}' expected at end of expression at " + aVar.f(), null, 2, null);
    }

    public final void p(a aVar, List list) {
        gpa.a aVar2;
        int iF = aVar.f();
        Integer num = null;
        while (true) {
            int iF2 = aVar.f();
            while (m(aVar.b())) {
                a.e(aVar, 0, 1, null);
            }
            if (h(aVar.b())) {
                int iF3 = aVar.f() + 1;
                Integer numValueOf = Integer.valueOf(iF3);
                a.e(aVar, 0, 1, null);
                if (iF3 - iF2 <= 1) {
                    throw new EvaluableException("Unexpected token: .", null, 2, null);
                }
                num = numValueOf;
            }
            if (!m(aVar.b()) && !h(aVar.b())) {
                int iF4 = aVar.f();
                while (n(aVar.b())) {
                    a.e(aVar, 0, 1, null);
                }
                if (aVar.b() == '(') {
                    aVar2 = new gpa.a(aVar.j(num != null ? num.intValue() : iF, iF4));
                    if (num == null) {
                        list.add(aVar2);
                        return;
                    }
                    iF4 = num.intValue() - 1;
                } else {
                    aVar2 = null;
                }
                String strJ = aVar.j(iF, iF4);
                ppa ppaVar = a;
                if (!ppaVar.q(strJ, list)) {
                    if (ppaVar.h(aVar.a(iF4 - 1))) {
                        throw new EvaluableException("Unexpected token: .", null, 2, null);
                    }
                    list.add(gpa.b.C0352b.a(gpa.b.C0352b.b(strJ)));
                }
                if (aVar2 != null) {
                    list.add(gpa.c.b.a);
                    list.add(aVar2);
                    return;
                }
                return;
            }
        }
    }

    public final boolean q(String str, List list) {
        gpa.b.a.C0350a c0350aA;
        if (y45.e(str, BooleanUtils.TRUE)) {
            c0350aA = gpa.b.a.C0350a.a(gpa.b.a.C0350a.b(true));
        } else {
            c0350aA = y45.e(str, BooleanUtils.FALSE) ? gpa.b.a.C0350a.a(gpa.b.a.C0350a.b(false)) : null;
        }
        if (c0350aA == null) {
            return false;
        }
        list.add(c0350aA);
        return true;
    }

    public final void r(a aVar, List list) {
        String strJ;
        String strJ2;
        int iF = aVar.f();
        boolean z = i81.C0(list) instanceof gpa.c.g.a;
        if (z) {
            d81.K(list);
        }
        do {
            a.e(aVar, 0, 1, null);
        } while (Character.isDigit(aVar.b()));
        if (aVar.a(iF) != '.' && !g(aVar.b(), a.l(aVar, 0, 1, null), a.i(aVar, 0, 1, null))) {
            if (z) {
                strJ2 = '-' + aVar.j(iF, aVar.f());
            } else {
                strJ2 = aVar.j(iF, aVar.f());
            }
            try {
                list.add(gpa.b.a.C0351b.a(gpa.b.a.C0351b.b(Long.valueOf(Long.parseLong(strJ2)))));
                return;
            } catch (Exception unused) {
                throw new EvaluableException("Value " + strJ2 + " can't be converted to Integer type.", null, 2, null);
            }
        }
        while (g(aVar.b(), a.l(aVar, 0, 1, null), a.i(aVar, 0, 1, null))) {
            a.e(aVar, 0, 1, null);
        }
        if (z) {
            strJ = '-' + aVar.j(iF, aVar.f());
        } else {
            strJ = aVar.j(iF, aVar.f());
        }
        try {
            list.add(gpa.b.a.C0351b.a(gpa.b.a.C0351b.b(Double.valueOf(Double.parseDouble(strJ)))));
        } catch (Exception unused2) {
            throw new EvaluableException("Value " + strJ + " can't be converted to Number type.", null, 2, null);
        }
    }

    public final String s(a aVar, boolean z) {
        int iF = aVar.f();
        while (!e(aVar, z)) {
            a.e(aVar, 0, 1, null);
        }
        String strE = rm5.e(rm5.a, aVar.j(iF, aVar.f()), null, 2, null);
        if (strE.length() > 0) {
            return gpa.b.a.c.b(strE);
        }
        return null;
    }

    public final void t(a aVar, List list, boolean z) {
        if (z) {
            a.e(aVar, 0, 1, null);
        }
        ArrayList arrayList = new ArrayList();
        String strS = s(aVar, z);
        if (c(aVar.b())) {
            if (z) {
                throw new TokenizingException("''' expected at end of string literal at " + aVar.f(), null, 2, null);
            }
            if (strS != null) {
                list.add(gpa.b.a.c.a(strS));
                return;
            }
            return;
        }
        if (f(aVar.b(), aVar)) {
            if (strS == null) {
                strS = gpa.b.a.c.b("");
            }
            list.add(gpa.b.a.c.a(strS));
            a.e(aVar, 0, 1, null);
            return;
        }
        if (strS != null && k(aVar.b(), aVar)) {
            arrayList.add(dpa.a);
            arrayList.add(gpa.b.a.c.a(strS));
        }
        while (k(aVar.b(), aVar)) {
            ArrayList arrayList2 = new ArrayList();
            o(aVar, arrayList2);
            String strS2 = s(aVar, z);
            if (!z && arrayList.isEmpty() && strS2 == null && !k(aVar.b(), aVar)) {
                list.addAll(arrayList2);
                return;
            }
            if (arrayList.isEmpty()) {
                arrayList.add(dpa.a);
            }
            arrayList.add(epa.a);
            arrayList.addAll(arrayList2);
            arrayList.add(cpa.a);
            if (strS2 != null) {
                arrayList.add(gpa.b.a.c.a(strS2));
            }
        }
        if (z && !f(aVar.b(), aVar)) {
            throw new TokenizingException("''' expected at end of string literal at " + aVar.f(), null, 2, null);
        }
        if (!arrayList.isEmpty()) {
            list.addAll(arrayList);
            list.add(bpa.a);
        }
        if (z) {
            a.e(aVar, 0, 1, null);
        }
    }

    public final List v(String str) {
        y45.j(str, "input");
        char[] charArray = str.toCharArray();
        y45.i(charArray, "this as java.lang.String).toCharArray()");
        return w(charArray);
    }

    public final List w(char[] cArr) {
        a aVar = new a(cArr);
        try {
            t(aVar, aVar.g(), false);
            return aVar.g();
        } catch (EvaluableException e) {
            if (!(e instanceof TokenizingException)) {
                throw e;
            }
            throw new EvaluableException("Error tokenizing '" + g1a.x(cArr) + "'.", e);
        }
    }
}
