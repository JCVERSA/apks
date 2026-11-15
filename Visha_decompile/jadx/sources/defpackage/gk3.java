package defpackage;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class gk3 extends j1 {
    public Hashtable b = new Hashtable();
    public Vector c = new Vector();

    public gk3(s1 s1Var) {
        if (s1Var.size() == 0) {
            throw new IllegalArgumentException("empty extension sequence found");
        }
        Enumeration enumerationB = s1Var.B();
        while (enumerationB.hasMoreElements()) {
            bk3 bk3VarP = bk3.p(enumerationB.nextElement());
            if (this.b.containsKey(bk3VarP.n()) && !qi8.c("org.bouncycastle.x509.ignore_repeated_extensions")) {
                throw new IllegalArgumentException("repeated extension found: " + bk3VarP.n());
            }
            this.b.put(bk3VarP.n(), bk3VarP);
            this.c.addElement(bk3VarP.n());
        }
    }

    public static x0 r(gk3 gk3Var, l1 l1Var) {
        if (gk3Var == null) {
            return null;
        }
        return gk3Var.q(l1Var);
    }

    public static gk3 s(y1 y1Var, boolean z) {
        return t(s1.y(y1Var, z));
    }

    public static gk3 t(Object obj) {
        if (obj instanceof gk3) {
            return (gk3) obj;
        }
        if (obj != null) {
            return new gk3(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(this.c.size());
        Enumeration enumerationElements = this.c.elements();
        while (enumerationElements.hasMoreElements()) {
            y0Var.a((bk3) this.b.get((l1) enumerationElements.nextElement()));
        }
        return new aq1(y0Var);
    }

    public l1[] m() {
        return p(true);
    }

    public bk3 n(l1 l1Var) {
        return (bk3) this.b.get(l1Var);
    }

    public l1[] o() {
        return w(this.c);
    }

    public final l1[] p(boolean z) {
        Vector vector = new Vector();
        for (int i = 0; i != this.c.size(); i++) {
            Object objElementAt = this.c.elementAt(i);
            if (((bk3) this.b.get(objElementAt)).r() == z) {
                vector.addElement(objElementAt);
            }
        }
        return w(vector);
    }

    public x0 q(l1 l1Var) {
        bk3 bk3VarN = n(l1Var);
        if (bk3VarN != null) {
            return bk3VarN.q();
        }
        return null;
    }

    public l1[] u() {
        return p(false);
    }

    public Enumeration v() {
        return this.c.elements();
    }

    public final l1[] w(Vector vector) {
        int size = vector.size();
        l1[] l1VarArr = new l1[size];
        for (int i = 0; i != size; i++) {
            l1VarArr[i] = (l1) vector.elementAt(i);
        }
        return l1VarArr;
    }

    public gk3(bk3[] bk3VarArr) {
        if (bk3VarArr == null || bk3VarArr.length == 0) {
            throw new IllegalArgumentException("extension array cannot be null or empty");
        }
        for (int i = 0; i != bk3VarArr.length; i++) {
            bk3 bk3Var = bk3VarArr[i];
            this.c.addElement(bk3Var.n());
            this.b.put(bk3Var.n(), bk3Var);
        }
    }
}
