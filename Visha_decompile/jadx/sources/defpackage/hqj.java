package defpackage;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
import java.util.Objects;

public final class hqj extends z8f {
    public static final hqj W = new hqj(new gqj());
    public final boolean F;
    public final boolean G;
    public final boolean H;
    public final boolean I;
    public final boolean J;
    public final boolean K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    public final boolean P;
    public final boolean Q;
    public final boolean R;
    public final boolean S;
    public final boolean T;
    public final SparseArray U;
    public final SparseBooleanArray V;

    static {
        int i = kfh.a;
        Integer.toString(1000, 36);
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(1005, 36);
        Integer.toString(1006, 36);
        Integer.toString(1007, 36);
        Integer.toString(1008, 36);
        Integer.toString(1009, 36);
        Integer.toString(1010, 36);
        Integer.toString(1011, 36);
        Integer.toString(1012, 36);
        Integer.toString(1013, 36);
        Integer.toString(1014, 36);
        Integer.toString(1015, 36);
        Integer.toString(1016, 36);
        Integer.toString(1017, 36);
        Integer.toString(1018, 36);
    }

    public final gqj c() {
        return new gqj(this, null);
    }

    public final iqj d(int i, npj npjVar) {
        Map map = (Map) this.U.get(i);
        if (map != null) {
            ubc.a(map.get(npjVar));
        }
        return null;
    }

    public final boolean e(int i) {
        return this.V.get(i);
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && hqj.class == obj.getClass()) {
            hqj hqjVar = (hqj) obj;
            if (super.equals(hqjVar) && this.F == hqjVar.F && this.H == hqjVar.H && this.J == hqjVar.J && this.O == hqjVar.O && this.P == hqjVar.P && this.Q == hqjVar.Q && this.S == hqjVar.S) {
                SparseBooleanArray sparseBooleanArray = this.V;
                SparseBooleanArray sparseBooleanArray2 = hqjVar.V;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    for (int i = 0; i < size; i++) {
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) >= 0) {
                        }
                    }
                    SparseArray sparseArray = this.U;
                    SparseArray sparseArray2 = hqjVar.U;
                    int size2 = sparseArray.size();
                    if (sparseArray2.size() == size2) {
                        for (int i2 = 0; i2 < size2; i2++) {
                            int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                            if (iIndexOfKey >= 0) {
                                Map map = (Map) sparseArray.valueAt(i2);
                                Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                if (map2.size() == map.size()) {
                                    for (Map.Entry entry : map.entrySet()) {
                                        npj npjVar = (npj) entry.getKey();
                                        if (!map2.containsKey(npjVar) || !Objects.equals(entry.getValue(), map2.get(npjVar))) {
                                        }
                                    }
                                }
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean f(int i, npj npjVar) {
        Map map = (Map) this.U.get(i);
        return map != null && map.containsKey(npjVar);
    }

    @Override
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.F ? 1 : 0)) * 961) + (this.H ? 1 : 0)) * 961) + (this.J ? 1 : 0)) * 28629151) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0)) * 31) + (this.Q ? 1 : 0)) * 961) + (this.S ? 1 : 0)) * 31;
    }

    public hqj(gqj gqjVar) {
        super(gqjVar);
        this.F = gqjVar.t;
        this.G = false;
        this.H = gqjVar.u;
        this.I = false;
        this.J = gqjVar.v;
        this.K = false;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = gqjVar.w;
        this.P = gqjVar.x;
        this.Q = gqjVar.y;
        this.R = false;
        this.S = gqjVar.z;
        this.T = false;
        this.U = gqjVar.A;
        this.V = gqjVar.B;
    }
}
