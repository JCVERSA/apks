package defpackage;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;

public final class gqj extends u8f {
    public final SparseArray A;
    public final SparseBooleanArray B;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    public gqj() {
        this.A = new SparseArray();
        this.B = new SparseBooleanArray();
        this.t = true;
        this.u = true;
        this.v = true;
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
    }

    public final gqj C(z8f z8fVar) {
        super.j(z8fVar);
        return this;
    }

    public final gqj D(int i, boolean z) {
        SparseBooleanArray sparseBooleanArray = this.B;
        if (sparseBooleanArray.get(i) != z) {
            if (z) {
                sparseBooleanArray.put(i, true);
            } else {
                sparseBooleanArray.delete(i);
            }
        }
        return this;
    }

    public gqj(hqj hqjVar, qqj qqjVar) {
        super(hqjVar);
        this.t = hqjVar.F;
        this.u = hqjVar.H;
        this.v = hqjVar.J;
        this.w = hqjVar.O;
        this.x = hqjVar.P;
        this.y = hqjVar.Q;
        this.z = hqjVar.S;
        SparseArray sparseArray = hqjVar.U;
        SparseArray sparseArray2 = new SparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.A = sparseArray2;
        this.B = hqjVar.V.clone();
    }
}
