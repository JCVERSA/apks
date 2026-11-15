package com.transsion.json;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public class h {

    private static final ThreadLocal f44703n = new a();

    private String f44704a;

    private p f44705b;

    private com.transsion.json.b.p f44709f;

    private Map f44710g;

    private List f44711h;

    private boolean f44716m;

    private boolean f44706c = false;

    private final Stack f44707d = new Stack();

    private int f44708e = 0;

    private t f44712i = t.SHALLOW;

    private f f44713j = new f(Collections.EMPTY_SET);

    private final LinkedList f44714k = new LinkedList();

    private final q f44715l = new q();

    static class a extends ThreadLocal {
        a() {
        }

        @Override
        public h initialValue() {
            return new h();
        }
    }

    private void I() {
        if (this.f44716m) {
            this.f44705b.a(",");
            if (this.f44706c) {
                this.f44705b.a("\n");
            }
            this.f44716m = false;
        }
    }

    private void J() {
        this.f44716m = false;
    }

    private com.transsion.json.b.n K() {
        return (com.transsion.json.b.n) this.f44710g.get(this.f44715l);
    }

    public static void c() {
        f44703n.remove();
    }

    private void d(char c10) {
        this.f44705b.a("\\u");
        int i10 = 0;
        int i11 = c10;
        while (i10 < 4) {
            this.f44705b.a(String.valueOf(j.f44719f[(61440 & i11) >> 12]));
            i10++;
            i11 <<= 4;
        }
    }

    private com.transsion.json.b.n p(Object obj) {
        return this.f44709f.a(obj);
    }

    public static h q() {
        return (h) f44703n.get();
    }

    public u A() {
        if (this.f44707d.isEmpty()) {
            return null;
        }
        return (u) this.f44707d.peek();
    }

    public void B() {
        this.f44707d.pop();
    }

    public void C() {
        J();
        if (this.f44706c) {
            this.f44705b.a("\n");
            this.f44708e -= 4;
            F();
        }
        this.f44705b.a("]");
        B();
    }

    public void D() {
        J();
        if (this.f44706c) {
            this.f44705b.a("\n");
            this.f44708e -= 4;
            F();
        }
        this.f44705b.a("}");
        B();
    }

    public void E() {
        this.f44716m = true;
    }

    public void F() {
        for (int i10 = 0; i10 < this.f44708e; i10++) {
            this.f44705b.a(" ");
        }
    }

    public u G() {
        u uVarA;
        I();
        if (this.f44706c && (uVarA = A()) != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        u uVar = new u(com.transsion.json.a.ARRAY);
        i(uVar);
        this.f44705b.a("[");
        if (this.f44706c) {
            this.f44708e += 4;
            this.f44705b.a("\n");
        }
        return uVar;
    }

    public u H() {
        u uVarA;
        I();
        if (this.f44706c && (uVarA = A()) != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        u uVar = new u(com.transsion.json.a.OBJECT);
        i(uVar);
        this.f44705b.a("{");
        if (this.f44706c) {
            this.f44708e += 4;
            this.f44705b.a("\n");
        }
        return uVar;
    }

    public com.transsion.json.b.n a(d dVar, Object obj) {
        com.transsion.json.b.n nVarK = K();
        if (nVarK != null) {
            return nVarK;
        }
        if (dVar != null) {
            nVarK = dVar.j();
        }
        return nVarK == null ? p(obj) : nVarK;
    }

    protected r b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            if (rVar.b(this.f44715l)) {
                return rVar;
            }
        }
        return null;
    }

    public void e(com.transsion.json.b.p pVar) {
        this.f44709f = pVar;
    }

    public void f(f fVar) {
        this.f44713j = fVar;
    }

    public void g(p pVar) {
        this.f44705b = pVar;
    }

    public void h(t tVar) {
        this.f44712i = tVar;
    }

    public void i(u uVar) {
        this.f44707d.push(uVar);
    }

    public void j(Object obj) {
        com.transsion.json.b.n nVarK = K();
        if (nVarK == null) {
            nVarK = p(obj);
        }
        nVarK.a(obj);
    }

    public void k(String str) {
        this.f44704a = str;
    }

    public void l(Map map) {
        this.f44710g = map;
    }

    public void m(boolean z10) {
        this.f44706c = z10;
    }

    public boolean n(d dVar) {
        r rVarB = b(this.f44711h);
        if (rVarB != null) {
            return rVarB.a();
        }
        Boolean boolL = dVar.l();
        if (boolL != null) {
            return boolL.booleanValue();
        }
        if (dVar.o().booleanValue()) {
            return false;
        }
        if (this.f44712i != t.SHALLOW) {
            return true;
        }
        Class clsH = dVar.h();
        return (clsH.isArray() || Iterable.class.isAssignableFrom(clsH) || Map.class.isAssignableFrom(clsH)) ? false : true;
    }

    public boolean o(String str, Object obj) {
        r rVarB = b(this.f44711h);
        if (rVarB != null) {
            return rVarB.a();
        }
        String strY = ((h) f44703n.get()).y();
        if (obj == null) {
            return true;
        }
        t tVar = this.f44712i;
        t tVar2 = t.SHALLOW;
        if ((tVar != tVar2 || strY == null || this.f44715l.c() <= 1) && !(this.f44712i == tVar2 && strY == null)) {
            return true;
        }
        Class<?> cls = obj.getClass();
        return (cls.isArray() || Iterable.class.isAssignableFrom(cls)) ? false : true;
    }

    public void r(String str) {
        I();
        u uVarA = A();
        if (uVarA != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        this.f44705b.a(str);
    }

    public void s(List list) {
        this.f44711h = list;
    }

    public LinkedList t() {
        return this.f44714k;
    }

    public void u(String str) {
        I();
        if (this.f44706c) {
            F();
        }
        if (str != null) {
            w(str);
        } else {
            r("null");
        }
        this.f44705b.a(":");
        if (this.f44706c) {
            this.f44705b.a(" ");
        }
    }

    public p v() {
        return this.f44705b;
    }

    public void w(String str) {
        u uVarA;
        I();
        if (this.f44706c && (uVarA = A()) != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        this.f44705b.a("\"");
        int length = str.length();
        int iA = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\"') {
                iA = this.f44705b.b(str, iA, i10, "\\u0022");
            } else if (cCharAt == '&') {
                iA = this.f44705b.b(str, iA, i10, "\\u0026");
            } else if (cCharAt == '\'') {
                iA = this.f44705b.b(str, iA, i10, "\\u0027");
            } else if (cCharAt == '<') {
                iA = this.f44705b.b(str, iA, i10, "\\u003c");
            } else if (cCharAt == '>') {
                iA = this.f44705b.b(str, iA, i10, "\\u003e");
            } else if (cCharAt == '\\') {
                iA = this.f44705b.b(str, iA, i10, "\\\\");
            } else if (cCharAt == '\b') {
                iA = this.f44705b.b(str, iA, i10, "\\b");
            } else if (cCharAt == '\f') {
                iA = this.f44705b.b(str, iA, i10, "\\f");
            } else if (cCharAt == '\n') {
                iA = this.f44705b.b(str, iA, i10, "\\n");
            } else if (cCharAt == '\r') {
                iA = this.f44705b.b(str, iA, i10, "\\r");
            } else if (cCharAt == '\t') {
                iA = this.f44705b.b(str, iA, i10, "\\t");
            } else if (Character.isISOControl(cCharAt)) {
                iA = this.f44705b.a(str, iA, i10) + 1;
                d(cCharAt);
            }
        }
        if (iA < str.length()) {
            this.f44705b.a(str, iA, str.length());
        }
        this.f44705b.a("\"");
    }

    public q x() {
        return this.f44715l;
    }

    public String y() {
        return this.f44704a;
    }

    public f z() {
        return this.f44713j;
    }
}
