package com.yandex.div.core.util.mask;

import defpackage.c74;
import defpackage.i81;
import defpackage.l1a;
import defpackage.wn8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.PatternSyntaxException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.Regex;

public abstract class BaseInputMask {
    public b a;
    public final Map b;
    public List c;
    public int d;

    public static abstract class a {

        public static final class C0282a extends a {
            public Character a;
            public final Regex b;
            public final char c;

            public C0282a(Character ch, Regex regex, char c) {
                super(null);
                this.a = ch;
                this.b = regex;
                this.c = c;
            }

            public final Character a() {
                return this.a;
            }

            public final Regex b() {
                return this.b;
            }

            public final char c() {
                return this.c;
            }

            public final void d(Character ch) {
                this.a = ch;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0282a)) {
                    return false;
                }
                C0282a c0282a = (C0282a) obj;
                return y45.e(this.a, c0282a.a) && y45.e(this.b, c0282a.b) && this.c == c0282a.c;
            }

            public int hashCode() {
                Character ch = this.a;
                int iHashCode = (ch == null ? 0 : ch.hashCode()) * 31;
                Regex regex = this.b;
                return ((iHashCode + (regex != null ? regex.hashCode() : 0)) * 31) + Character.hashCode(this.c);
            }

            public String toString() {
                return "Dynamic(char=" + this.a + ", filter=" + this.b + ", placeholder=" + this.c + ')';
            }
        }

        public static final class b extends a {
            public final char a;

            public b(char c) {
                super(null);
                this.a = c;
            }

            public final char a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && this.a == ((b) obj).a;
            }

            public int hashCode() {
                return Character.hashCode(this.a);
            }

            public String toString() {
                return "Static(char=" + this.a + ')';
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b {
        public final String a;
        public final List b;
        public final boolean c;

        public b(String str, List list, boolean z) {
            y45.j(str, "pattern");
            y45.j(list, "decoding");
            this.a = str;
            this.b = list;
            this.c = z;
        }

        public final boolean a() {
            return this.c;
        }

        public final List b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b) && this.c == bVar.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2, types: [int] */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        public int hashCode() {
            int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
            boolean z = this.c;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            return iHashCode + r2;
        }

        public String toString() {
            return "MaskData(pattern=" + this.a + ", decoding=" + this.b + ", alwaysVisible=" + this.c + ')';
        }
    }

    public static final class c {
        public final char a;
        public final String b;
        public final char c;

        public c(char c, String str, char c2) {
            this.a = c;
            this.b = str;
            this.c = c2;
        }

        public final String a() {
            return this.b;
        }

        public final char b() {
            return this.a;
        }

        public final char c() {
            return this.c;
        }
    }

    public BaseInputMask(b bVar) {
        y45.j(bVar, "initialMaskData");
        this.a = bVar;
        this.b = new LinkedHashMap();
        z(this, bVar, false, 2, null);
    }

    public static void b(BaseInputMask baseInputMask, String str, Integer num, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: applyChangeFrom");
        }
        if ((i & 2) != 0) {
            num = null;
        }
        baseInputMask.a(str, num);
    }

    public static void v(BaseInputMask baseInputMask, String str, int i, Integer num, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: replaceChars");
        }
        if ((i2 & 4) != 0) {
            num = null;
        }
        baseInputMask.u(str, i, num);
    }

    public static void z(BaseInputMask baseInputMask, b bVar, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateMaskData");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        baseInputMask.y(bVar, z);
    }

    public void a(String str, Integer num) {
        y45.j(str, "newValue");
        e eVarA = e.d.a(q(), str);
        if (num != null) {
            eVarA = new e(wn8.d(num.intValue() - eVarA.a(), 0), eVarA.a(), eVarA.b());
        }
        e(eVarA, t(eVarA, str));
    }

    public final String c(e eVar, String str) {
        String strSubstring = str.substring(eVar.c(), eVar.c() + eVar.a());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String d(e eVar) {
        return j(eVar.c() + eVar.b(), m().size() - 1);
    }

    public final void e(e eVar, int i) {
        y45.j(eVar, "textDiff");
        int iN = n();
        if (eVar.c() < iN) {
            iN = Math.min(k(i), q().length());
        }
        this.d = iN;
    }

    public final String f(String str, int i) {
        y45.j(str, "substring");
        StringBuilder sb = new StringBuilder();
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = i;
        c74 c74Var = new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Regex invoke() {
                while (ref$IntRef.element < this.m().size() && !(this.m().get(ref$IntRef.element) instanceof BaseInputMask.a.C0282a)) {
                    ref$IntRef.element++;
                }
                Object objR0 = i81.r0(this.m(), ref$IntRef.element);
                BaseInputMask.a.C0282a c0282a = objR0 instanceof BaseInputMask.a.C0282a ? (BaseInputMask.a.C0282a) objR0 : null;
                if (c0282a != null) {
                    return c0282a.b();
                }
                return null;
            }
        };
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            Regex regex = (Regex) c74Var.invoke();
            if (regex != null && regex.matches(String.valueOf(cCharAt))) {
                sb.append(cCharAt);
                ref$IntRef.element++;
            }
        }
        String string = sb.toString();
        y45.i(string, "charsCanBeInsertedStringBuilder.toString()");
        return string;
    }

    public final int g(String str, int i) {
        int length;
        if (this.b.size() <= 1) {
            int i2 = 0;
            while (i < m().size()) {
                if (m().get(i) instanceof a.C0282a) {
                    i2++;
                }
                i++;
            }
            length = i2 - str.length();
        } else {
            String strF = f(str, i);
            int i3 = 0;
            while (i3 < m().size() && y45.e(strF, f(str, i + i3))) {
                i3++;
            }
            length = i3 - 1;
        }
        return wn8.d(length, 0);
    }

    public final void h(e eVar) {
        y45.j(eVar, "textDiff");
        if (eVar.a() == 0 && eVar.b() == 1) {
            for (int iC = eVar.c(); iC >= 0; iC--) {
                a aVar = (a) m().get(iC);
                if (aVar instanceof a.C0282a) {
                    a.C0282a c0282a = (a.C0282a) aVar;
                    if (c0282a.a() != null) {
                        c0282a.d(null);
                        break;
                    }
                }
            }
        }
        i(eVar.c(), m().size());
    }

    public final void i(int i, int i2) {
        while (i < i2 && i < m().size()) {
            a aVar = (a) m().get(i);
            if (aVar instanceof a.C0282a) {
                ((a.C0282a) aVar).d(null);
            }
            i++;
        }
    }

    public final String j(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        while (i <= i2) {
            a aVar = (a) m().get(i);
            if (aVar instanceof a.C0282a) {
                a.C0282a c0282a = (a.C0282a) aVar;
                if (c0282a.a() != null) {
                    sb.append(c0282a.a());
                }
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "tailStringBuilder.toString()");
        return string;
    }

    public final int k(int i) {
        while (i < m().size() && !(((a) m().get(i)) instanceof a.C0282a)) {
            i++;
        }
        return i;
    }

    public final int l() {
        return this.d;
    }

    public final List m() {
        List list = this.c;
        if (list != null) {
            return list;
        }
        y45.B("destructedValue");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public final int n() {
        int i = 0;
        for (a aVar : m()) {
            if ((aVar instanceof a.C0282a) && ((a.C0282a) aVar).a() == null) {
                if (i != -1) {
                    return i;
                }
                return m().size();
            }
            i++;
        }
        i = -1;
        if (i != -1) {
            return i;
        }
        return m().size();
    }

    public final b o() {
        return this.a;
    }

    public final String p() {
        return j(0, m().size() - 1);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0044  */
    /* JADX WARN: Code duplicated, block: B:15:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x005e A[EDGE_INSN: B:20:0x005e->B:17:0x005e BREAK  A[LOOP:0: B:3:0x0014->B:16:0x005a], SYNTHETIC] */
    public final String q() {
        StringBuilder sb = new StringBuilder();
        List listM = m();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listM) {
            a aVar = (a) obj;
            if (aVar instanceof a.b) {
                sb.append(((a.b) aVar).a());
            } else if (!(aVar instanceof a.C0282a)) {
                if (this.a.a()) {
                    break;
                    break;
                }
                y45.h(aVar, "null cannot be cast to non-null type com.yandex.div.core.util.mask.BaseInputMask.MaskChar.Dynamic");
                sb.append(((a.C0282a) aVar).c());
            } else {
                a.C0282a c0282a = (a.C0282a) aVar;
                if (c0282a.a() == null) {
                    if (this.a.a()) {
                        break;
                    }
                    y45.h(aVar, "null cannot be cast to non-null type com.yandex.div.core.util.mask.BaseInputMask.MaskChar.Dynamic");
                    sb.append(((a.C0282a) aVar).c());
                } else {
                    sb.append(c0282a.a());
                }
            }
            arrayList.add(obj);
        }
        String string = sb.toString();
        y45.i(string, "stringBuilder.toString()");
        return string;
    }

    public abstract void r(Exception exc);

    public void s(String str) {
        y45.j(str, "newRawValue");
        i(0, m().size());
        v(this, str, 0, null, 4, null);
        this.d = Math.min(this.d, q().length());
    }

    public final int t(e eVar, String str) {
        y45.j(eVar, "textDiff");
        y45.j(str, "newValue");
        String strC = c(eVar, str);
        String strD = d(eVar);
        h(eVar);
        int iN = n();
        u(strC, iN, strD.length() == 0 ? null : Integer.valueOf(g(strD, iN)));
        int iN2 = n();
        v(this, strD, iN2, null, 4, null);
        return iN2;
    }

    public final void u(String str, int i, Integer num) {
        y45.j(str, "substring");
        String strF = f(str, i);
        if (num != null) {
            strF = l1a.u1(strF, num.intValue());
        }
        int i2 = 0;
        while (i < m().size() && i2 < strF.length()) {
            a aVar = (a) m().get(i);
            char cCharAt = strF.charAt(i2);
            if (aVar instanceof a.C0282a) {
                ((a.C0282a) aVar).d(Character.valueOf(cCharAt));
                i2++;
            }
            i++;
        }
    }

    public final void w(int i) {
        this.d = i;
    }

    public final void x(List list) {
        y45.j(list, "<set-?>");
        this.c = list;
    }

    public void y(b bVar, boolean z) {
        Object next;
        y45.j(bVar, "newMaskData");
        String strP = (y45.e(this.a, bVar) || !z) ? null : p();
        this.a = bVar;
        this.b.clear();
        for (c cVar : this.a.b()) {
            try {
                String strA = cVar.a();
                if (strA != null) {
                    this.b.put(Character.valueOf(cVar.b()), new Regex(strA));
                }
            } catch (PatternSyntaxException e) {
                r(e);
            }
        }
        String strC = this.a.c();
        ArrayList arrayList = new ArrayList(strC.length());
        for (int i = 0; i < strC.length(); i++) {
            char cCharAt = strC.charAt(i);
            Iterator it = this.a.b().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((c) next).b() != cCharAt);
            c cVar2 = (c) next;
            arrayList.add(cVar2 != null ? new a.C0282a(null, (Regex) this.b.get(Character.valueOf(cVar2.b())), cVar2.c()) : new a.b(cCharAt));
        }
        x(arrayList);
        if (strP != null) {
            s(strP);
        }
    }
}
