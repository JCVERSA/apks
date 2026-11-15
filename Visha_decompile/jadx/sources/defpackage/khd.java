package defpackage;

import com.transsion.json.b.p;
import com.transsion.json.t;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.apache.commons.text.StringSubstitutor;

public class khd {
    public static final ThreadLocal n = new a();
    public String a;
    public xqd b;
    public p f;
    public Map g;
    public List h;
    public boolean m;
    public boolean c = false;
    public final Stack d = new Stack();
    public int e = 0;
    public t i = t.SHALLOW;
    public bbd j = new bbd(Collections.EMPTY_SET);
    public final LinkedList k = new LinkedList();
    public final prd l = new prd();

    public static class a extends ThreadLocal {
        @Override
        public khd initialValue() {
            return new khd();
        }
    }

    public static void c() {
        n.remove();
    }

    public static khd p() {
        return (khd) n.get();
    }

    public ixd A() {
        if (this.d.isEmpty()) {
            return null;
        }
        return (ixd) this.d.peek();
    }

    public void B() {
        this.d.pop();
    }

    public void C() {
        J();
        if (this.c) {
            this.b.a("\n");
            this.e -= 4;
            F();
        }
        this.b.a("]");
        B();
    }

    public void D() {
        J();
        if (this.c) {
            this.b.a("\n");
            this.e -= 4;
            F();
        }
        this.b.a(StringSubstitutor.DEFAULT_VAR_END);
        B();
    }

    public void E() {
        this.m = true;
    }

    public void F() {
        for (int i = 0; i < this.e; i++) {
            this.b.a(" ");
        }
    }

    public ixd G() {
        ixd ixdVarA;
        I();
        if (this.c && (ixdVarA = A()) != null && ixdVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        ixd ixdVar = new ixd(com.transsion.json.a.ARRAY);
        l(ixdVar);
        this.b.a("[");
        if (this.c) {
            this.e += 4;
            this.b.a("\n");
        }
        return ixdVar;
    }

    public ixd H() {
        ixd ixdVarA;
        I();
        if (this.c && (ixdVarA = A()) != null && ixdVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        ixd ixdVar = new ixd(com.transsion.json.a.OBJECT);
        l(ixdVar);
        this.b.a("{");
        if (this.c) {
            this.e += 4;
            this.b.a("\n");
        }
        return ixdVar;
    }

    public final void I() {
        if (this.m) {
            this.b.a(StringUtils.COMMA);
            if (this.c) {
                this.b.a("\n");
            }
            this.m = false;
        }
    }

    public final void J() {
        this.m = false;
    }

    public final mod K() {
        return (mod) this.g.get(this.l);
    }

    public mod a(a8d a8dVar, Object obj) {
        mod modVarK = K();
        if (modVarK != null) {
            return modVarK;
        }
        if (a8dVar != null) {
            modVarK = a8dVar.j();
        }
        return modVarK == null ? q(obj) : modVarK;
    }

    public ctd b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ctd ctdVar = (ctd) it.next();
            if (ctdVar.b(this.l)) {
                return ctdVar;
            }
        }
        return null;
    }

    public final void d(char c) {
        this.b.a("\\u");
        int i = 0;
        int i2 = c;
        while (i < 4) {
            this.b.a(String.valueOf(dmd.f[(61440 & i2) >> 12]));
            i++;
            i2 <<= 4;
        }
    }

    public void e(p pVar) {
        this.f = pVar;
    }

    public void f(t tVar) {
        this.i = tVar;
    }

    public void g(bbd bbdVar) {
        this.j = bbdVar;
    }

    public void h(Object obj) {
        mod modVarK = K();
        if (modVarK == null) {
            modVarK = q(obj);
        }
        modVarK.a(obj);
    }

    public void i(String str) {
        this.a = str;
    }

    public void j(Map map) {
        this.g = map;
    }

    public void k(xqd xqdVar) {
        this.b = xqdVar;
    }

    public void l(ixd ixdVar) {
        this.d.push(ixdVar);
    }

    public void m(boolean z) {
        this.c = z;
    }

    public boolean n(a8d a8dVar) {
        ctd ctdVarB = b(this.h);
        if (ctdVarB != null) {
            return ctdVarB.a();
        }
        Boolean boolL = a8dVar.l();
        if (boolL != null) {
            return boolL.booleanValue();
        }
        if (a8dVar.o().booleanValue()) {
            return false;
        }
        if (this.i != t.SHALLOW) {
            return true;
        }
        Class clsH = a8dVar.h();
        return (clsH.isArray() || Iterable.class.isAssignableFrom(clsH) || Map.class.isAssignableFrom(clsH)) ? false : true;
    }

    public boolean o(String str, Object obj) {
        ctd ctdVarB = b(this.h);
        if (ctdVarB != null) {
            return ctdVarB.a();
        }
        String strY = ((khd) n.get()).y();
        if (obj == null) {
            return true;
        }
        t tVar = this.i;
        t tVar2 = t.SHALLOW;
        if ((tVar != tVar2 || strY == null || this.l.c() <= 1) && !(this.i == tVar2 && strY == null)) {
            return true;
        }
        Class<?> cls = obj.getClass();
        return (cls.isArray() || Iterable.class.isAssignableFrom(cls)) ? false : true;
    }

    public final mod q(Object obj) {
        return this.f.a(obj);
    }

    public void r(String str) {
        I();
        ixd ixdVarA = A();
        if (ixdVarA != null && ixdVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        this.b.a(str);
    }

    public void s(List list) {
        this.h = list;
    }

    public LinkedList t() {
        return this.k;
    }

    public void u(String str) {
        I();
        if (this.c) {
            F();
        }
        if (str != null) {
            w(str);
        } else {
            r("null");
        }
        this.b.a(StringUtils.PROCESS_POSTFIX_DELIMITER);
        if (this.c) {
            this.b.a(" ");
        }
    }

    public xqd v() {
        return this.b;
    }

    public void w(String str) {
        ixd ixdVarA;
        I();
        if (this.c && (ixdVarA = A()) != null && ixdVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        this.b.a("\"");
        int length = str.length();
        int iA = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                iA = this.b.b(str, iA, i, "\\u0022");
            } else if (cCharAt == '&') {
                iA = this.b.b(str, iA, i, "\\u0026");
            } else if (cCharAt == '\'') {
                iA = this.b.b(str, iA, i, "\\u0027");
            } else if (cCharAt == '<') {
                iA = this.b.b(str, iA, i, "\\u003c");
            } else if (cCharAt == '>') {
                iA = this.b.b(str, iA, i, "\\u003e");
            } else if (cCharAt == '\\') {
                iA = this.b.b(str, iA, i, "\\\\");
            } else if (cCharAt == '\b') {
                iA = this.b.b(str, iA, i, "\\b");
            } else if (cCharAt == '\f') {
                iA = this.b.b(str, iA, i, "\\f");
            } else if (cCharAt == '\n') {
                iA = this.b.b(str, iA, i, "\\n");
            } else if (cCharAt == '\r') {
                iA = this.b.b(str, iA, i, "\\r");
            } else if (cCharAt == '\t') {
                iA = this.b.b(str, iA, i, "\\t");
            } else if (Character.isISOControl(cCharAt)) {
                iA = this.b.a(str, iA, i) + 1;
                d(cCharAt);
            }
        }
        if (iA < str.length()) {
            this.b.a(str, iA, str.length());
        }
        this.b.a("\"");
    }

    public prd x() {
        return this.l;
    }

    public String y() {
        return this.a;
    }

    public bbd z() {
        return this.j;
    }
}
