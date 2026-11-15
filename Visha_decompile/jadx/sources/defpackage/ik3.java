package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import java.util.Vector;

public class ik3 {
    public static final Set c;
    public Hashtable a = new Hashtable();
    public Vector b = new Vector();

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(bk3.i);
        hashSet.add(bk3.j);
        hashSet.add(bk3.e);
        hashSet.add(bk3.r);
        c = Collections.unmodifiableSet(hashSet);
    }

    public void a(bk3 bk3Var) {
        if (!this.a.containsKey(bk3Var.n())) {
            this.b.addElement(bk3Var.n());
            this.a.put(bk3Var.n(), bk3Var);
        } else {
            throw new IllegalArgumentException("extension " + bk3Var.n() + " already added");
        }
    }

    public gk3 b() {
        bk3[] bk3VarArr = new bk3[this.b.size()];
        for (int i = 0; i != this.b.size(); i++) {
            bk3VarArr[i] = (bk3) this.a.get(this.b.elementAt(i));
        }
        return new gk3(bk3VarArr);
    }

    public bk3 c(l1 l1Var) {
        return (bk3) this.a.get(l1Var);
    }

    public boolean d(l1 l1Var) {
        return this.a.containsKey(l1Var);
    }

    public boolean e() {
        return this.b.isEmpty();
    }

    public void f(l1 l1Var, boolean z, x0 x0Var) {
        g(l1Var, z, x0Var.j().l("DER"));
    }

    public void g(l1 l1Var, boolean z, byte[] bArr) {
        h(new bk3(l1Var, z, bArr));
    }

    public void h(bk3 bk3Var) {
        if (this.a.containsKey(bk3Var.n())) {
            this.a.put(bk3Var.n(), bk3Var);
            return;
        }
        throw new IllegalArgumentException("extension " + bk3Var.n() + " not present");
    }
}
