package com.yandex.div.evaluable;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.bx7;
import defpackage.gpa;
import defpackage.i81;
import defpackage.ppa;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class a {
    public static final b d = new b(null);
    public final String a;
    public boolean b;
    public boolean c;

    public static final class C0296a extends a {
        public final gpa.c.a e;
        public final a f;
        public final a g;
        public final String h;
        public final List i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0296a(gpa.c.a aVar, a aVar2, a aVar3, String str) {
            super(str);
            y45.j(aVar, "token");
            y45.j(aVar2, TtmlNode.LEFT);
            y45.j(aVar3, TtmlNode.RIGHT);
            y45.j(str, "rawExpression");
            this.e = aVar;
            this.f = aVar2;
            this.g = aVar3;
            this.h = str;
            this.i = i81.J0(aVar2.f(), aVar3.f());
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.e(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0296a)) {
                return false;
            }
            C0296a c0296a = (C0296a) obj;
            return y45.e(this.e, c0296a.e) && y45.e(this.f, c0296a.f) && y45.e(this.g, c0296a.g) && y45.e(this.h, c0296a.h);
        }

        @Override
        public List f() {
            return this.i;
        }

        public final a h() {
            return this.f;
        }

        public int hashCode() {
            return (((((this.e.hashCode() * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode();
        }

        public final a i() {
            return this.g;
        }

        public final gpa.c.a j() {
            return this.e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            sb.append(this.f);
            sb.append(' ');
            sb.append(this.e);
            sb.append(' ');
            sb.append(this.g);
            sb.append(')');
            return sb.toString();
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(String str) {
            y45.j(str, "expr");
            return new d(str);
        }

        public b() {
        }
    }

    public static final class c extends a {
        public final gpa.a e;
        public final List f;
        public final String g;
        public final List h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(gpa.a aVar, List list, String str) {
            Object obj;
            super(str);
            y45.j(aVar, "token");
            y45.j(list, "arguments");
            y45.j(str, "rawExpression");
            this.e = aVar;
            this.f = list;
            this.g = str;
            List list2 = list;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).f());
            }
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                Object next = it2.next();
                while (it2.hasNext()) {
                    next = i81.J0((List) next, (List) it2.next());
                }
                obj = next;
            } else {
                obj = null;
            }
            List list3 = (List) obj;
            this.h = list3 == null ? y71.k() : list3;
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.i(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return y45.e(this.e, cVar.e) && y45.e(this.f, cVar.f) && y45.e(this.g, cVar.g);
        }

        @Override
        public List f() {
            return this.h;
        }

        public final List h() {
            return this.f;
        }

        public int hashCode() {
            return (((this.e.hashCode() * 31) + this.f.hashCode()) * 31) + this.g.hashCode();
        }

        public final gpa.a i() {
            return this.e;
        }

        public String toString() {
            return this.e.a() + '(' + i81.y0(this.f, gpa.a.C0349a.a.toString(), null, null, 0, null, null, 62, null) + ')';
        }
    }

    public static final class d extends a {
        public final String e;
        public final List f;
        public a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str) {
            super(str);
            y45.j(str, "expr");
            this.e = str;
            this.f = ppa.a.v(str);
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            if (this.g == null) {
                this.g = bx7.a.k(this.f, e());
            }
            a aVar = this.g;
            a aVar2 = null;
            if (aVar == null) {
                y45.B("expression");
                aVar = null;
            }
            Object objC = aVar.c(evaluator);
            a aVar3 = this.g;
            if (aVar3 == null) {
                y45.B("expression");
            } else {
                aVar2 = aVar3;
            }
            g(aVar2.b);
            return objC;
        }

        @Override
        public List f() {
            a aVar = this.g;
            if (aVar != null) {
                if (aVar == null) {
                    y45.B("expression");
                    aVar = null;
                }
                return aVar.f();
            }
            List list = this.f;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof gpa.b.C0352b) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((gpa.b.C0352b) it.next()).g());
            }
            return arrayList2;
        }

        public String toString() {
            return this.e;
        }
    }

    public static final class e extends a {
        public final gpa.a e;
        public final List f;
        public final String g;
        public final List h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(gpa.a aVar, List list, String str) {
            Object obj;
            super(str);
            y45.j(aVar, "token");
            y45.j(list, "arguments");
            y45.j(str, "rawExpression");
            this.e = aVar;
            this.f = list;
            this.g = str;
            List list2 = list;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).f());
            }
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                Object next = it2.next();
                while (it2.hasNext()) {
                    next = i81.J0((List) next, (List) it2.next());
                }
                obj = next;
            } else {
                obj = null;
            }
            List list3 = (List) obj;
            this.h = list3 == null ? y71.k() : list3;
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.k(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return y45.e(this.e, eVar.e) && y45.e(this.f, eVar.f) && y45.e(this.g, eVar.g);
        }

        @Override
        public List f() {
            return this.h;
        }

        public final List h() {
            return this.f;
        }

        public int hashCode() {
            return (((this.e.hashCode() * 31) + this.f.hashCode()) * 31) + this.g.hashCode();
        }

        public final gpa.a i() {
            return this.e;
        }

        public String toString() {
            String strY0;
            if (this.f.size() > 1) {
                List list = this.f;
                strY0 = i81.y0(list.subList(1, list.size()), gpa.a.C0349a.a.toString(), null, null, 0, null, null, 62, null);
            } else {
                strY0 = "";
            }
            return i81.o0(this.f) + '.' + this.e.a() + '(' + strY0 + ')';
        }
    }

    public static final class f extends a {
        public final List e;
        public final String f;
        public final List g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(List list, String str) {
            super(str);
            y45.j(list, "arguments");
            y45.j(str, "rawExpression");
            this.e = list;
            this.f = str;
            List list2 = list;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).f());
            }
            Iterator it2 = arrayList.iterator();
            if (!it2.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it2.next();
            while (it2.hasNext()) {
                next = i81.J0((List) next, (List) it2.next());
            }
            this.g = (List) next;
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.l(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return y45.e(this.e, fVar.e) && y45.e(this.f, fVar.f);
        }

        @Override
        public List f() {
            return this.g;
        }

        public final List h() {
            return this.e;
        }

        public int hashCode() {
            return (this.e.hashCode() * 31) + this.f.hashCode();
        }

        public String toString() {
            return i81.y0(this.e, "", null, null, 0, null, null, 62, null);
        }
    }

    public static final class g extends a {
        public final gpa.c e;
        public final a f;
        public final a g;
        public final a h;
        public final String i;
        public final List j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(gpa.c cVar, a aVar, a aVar2, a aVar3, String str) {
            super(str);
            y45.j(cVar, "token");
            y45.j(aVar, "firstExpression");
            y45.j(aVar2, "secondExpression");
            y45.j(aVar3, "thirdExpression");
            y45.j(str, "rawExpression");
            this.e = cVar;
            this.f = aVar;
            this.g = aVar2;
            this.h = aVar3;
            this.i = str;
            this.j = i81.J0(i81.J0(aVar.f(), aVar2.f()), aVar3.f());
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.m(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return y45.e(this.e, gVar.e) && y45.e(this.f, gVar.f) && y45.e(this.g, gVar.g) && y45.e(this.h, gVar.h) && y45.e(this.i, gVar.i);
        }

        @Override
        public List f() {
            return this.j;
        }

        public final a h() {
            return this.f;
        }

        public int hashCode() {
            return (((((((this.e.hashCode() * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode();
        }

        public final a i() {
            return this.g;
        }

        public final a j() {
            return this.h;
        }

        public final gpa.c k() {
            return this.e;
        }

        public String toString() {
            gpa.c.d dVar = gpa.c.d.a;
            gpa.c.C0363c c0363c = gpa.c.C0363c.a;
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            sb.append(this.f);
            sb.append(' ');
            sb.append(dVar);
            sb.append(' ');
            sb.append(this.g);
            sb.append(' ');
            sb.append(c0363c);
            sb.append(' ');
            sb.append(this.h);
            sb.append(')');
            return sb.toString();
        }
    }

    public static final class h extends a {
        public final gpa.c.f e;
        public final a f;
        public final a g;
        public final String h;
        public final List i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(gpa.c.f fVar, a aVar, a aVar2, String str) {
            super(str);
            y45.j(fVar, "token");
            y45.j(aVar, "tryExpression");
            y45.j(aVar2, "fallbackExpression");
            y45.j(str, "rawExpression");
            this.e = fVar;
            this.f = aVar;
            this.g = aVar2;
            this.h = str;
            this.i = i81.J0(aVar.f(), aVar2.f());
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.n(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return y45.e(this.e, hVar.e) && y45.e(this.f, hVar.f) && y45.e(this.g, hVar.g) && y45.e(this.h, hVar.h);
        }

        @Override
        public List f() {
            return this.i;
        }

        public final a h() {
            return this.g;
        }

        public int hashCode() {
            return (((((this.e.hashCode() * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode();
        }

        public final a i() {
            return this.f;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            sb.append(this.f);
            sb.append(' ');
            sb.append(this.e);
            sb.append(' ');
            sb.append(this.g);
            sb.append(')');
            return sb.toString();
        }
    }

    public static final class i extends a {
        public final gpa.c e;
        public final a f;
        public final String g;
        public final List h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(gpa.c cVar, a aVar, String str) {
            super(str);
            y45.j(cVar, "token");
            y45.j(aVar, "expression");
            y45.j(str, "rawExpression");
            this.e = cVar;
            this.f = aVar;
            this.g = str;
            this.h = aVar.f();
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.o(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return y45.e(this.e, iVar.e) && y45.e(this.f, iVar.f) && y45.e(this.g, iVar.g);
        }

        @Override
        public List f() {
            return this.h;
        }

        public final a h() {
            return this.f;
        }

        public int hashCode() {
            return (((this.e.hashCode() * 31) + this.f.hashCode()) * 31) + this.g.hashCode();
        }

        public final gpa.c i() {
            return this.e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.e);
            sb.append(this.f);
            return sb.toString();
        }
    }

    public static final class j extends a {
        public final gpa.b.a e;
        public final String f;
        public final List g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(gpa.b.a aVar, String str) {
            super(str);
            y45.j(aVar, "token");
            y45.j(str, "rawExpression");
            this.e = aVar;
            this.f = str;
            this.g = y71.k();
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.p(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return y45.e(this.e, jVar.e) && y45.e(this.f, jVar.f);
        }

        @Override
        public List f() {
            return this.g;
        }

        public final gpa.b.a h() {
            return this.e;
        }

        public int hashCode() {
            return (this.e.hashCode() * 31) + this.f.hashCode();
        }

        public String toString() {
            gpa.b.a aVar = this.e;
            if (aVar instanceof gpa.b.a.c) {
                return '\'' + ((gpa.b.a.c) this.e).f() + '\'';
            }
            if (aVar instanceof gpa.b.a.C0351b) {
                return ((gpa.b.a.C0351b) aVar).f().toString();
            }
            if (aVar instanceof gpa.b.a.C0350a) {
                return String.valueOf(((gpa.b.a.C0350a) aVar).f());
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final class k extends a {
        public final String e;
        public final String f;
        public final List g;

        public k(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2);
        }

        @Override
        public Object d(Evaluator evaluator) {
            y45.j(evaluator, "evaluator");
            return evaluator.q(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return gpa.b.C0352b.d(this.e, kVar.e) && y45.e(this.f, kVar.f);
        }

        @Override
        public List f() {
            return this.g;
        }

        public final String h() {
            return this.e;
        }

        public int hashCode() {
            return (gpa.b.C0352b.e(this.e) * 31) + this.f.hashCode();
        }

        public String toString() {
            return this.e;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, String str2) {
            super(str2);
            y45.j(str, "token");
            y45.j(str2, "rawExpression");
            this.e = str;
            this.f = str2;
            this.g = x71.e(str);
        }
    }

    public a(String str) {
        y45.j(str, "rawExpr");
        this.a = str;
        this.b = true;
    }

    public final boolean b() {
        return this.b;
    }

    public final Object c(Evaluator evaluator) {
        y45.j(evaluator, "evaluator");
        Object objD = d(evaluator);
        this.c = true;
        return objD;
    }

    public abstract Object d(Evaluator evaluator);

    public final String e() {
        return this.a;
    }

    public abstract List f();

    public final void g(boolean z) {
        this.b = this.b && z;
    }
}
