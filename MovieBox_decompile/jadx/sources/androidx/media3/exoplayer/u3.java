package androidx.media3.exoplayer;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class u3 extends androidx.media3.exoplayer.a {

    private final int f12626h;

    private final int f12627i;

    private final int[] f12628j;

    private final int[] f12629k;

    private final androidx.media3.common.e0[] f12630l;

    private final Object[] f12631m;

    private final HashMap f12632n;

    class a extends androidx.media3.exoplayer.source.m {

        private final androidx.media3.common.e0.c f12633f;

        a(androidx.media3.common.e0 e0Var) {
            super(e0Var);
            this.f12633f = new androidx.media3.common.e0.c();
        }

        @Override
        public androidx.media3.common.e0.b g(int i10, androidx.media3.common.e0.b bVar, boolean z10) {
            androidx.media3.common.e0.b bVarG = super.g(i10, bVar, z10);
            if (super.n(bVarG.f9624c, this.f12633f).f()) {
                bVarG.u(bVar.f9622a, bVar.f9623b, bVar.f9624c, bVar.f9625d, bVar.f9626e, androidx.media3.common.b.f9561g, true);
            } else {
                bVarG.f9627f = true;
            }
            return bVarG;
        }
    }

    public u3(Collection collection, f2.v vVar) {
        this(G(collection), H(collection), vVar);
    }

    private static androidx.media3.common.e0[] G(Collection collection) {
        androidx.media3.common.e0[] e0VarArr = new androidx.media3.common.e0[collection.size()];
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            e0VarArr[i10] = ((c3) it.next()).b();
            i10++;
        }
        return e0VarArr;
    }

    private static Object[] H(Collection collection) {
        Object[] objArr = new Object[collection.size()];
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            objArr[i10] = ((c3) it.next()).a();
            i10++;
        }
        return objArr;
    }

    @Override
    protected int A(int i10) {
        return this.f12629k[i10];
    }

    @Override
    protected androidx.media3.common.e0 D(int i10) {
        return this.f12630l[i10];
    }

    public u3 E(f2.v vVar) {
        androidx.media3.common.e0[] e0VarArr = new androidx.media3.common.e0[this.f12630l.length];
        int i10 = 0;
        while (true) {
            androidx.media3.common.e0[] e0VarArr2 = this.f12630l;
            if (i10 >= e0VarArr2.length) {
                return new u3(e0VarArr, this.f12631m, vVar);
            }
            e0VarArr[i10] = new a(e0VarArr2[i10]);
            i10++;
        }
    }

    List F() {
        return Arrays.asList(this.f12630l);
    }

    @Override
    public int i() {
        return this.f12627i;
    }

    @Override
    public int p() {
        return this.f12626h;
    }

    @Override
    protected int s(Object obj) {
        Integer num = (Integer) this.f12632n.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override
    protected int t(int i10) {
        return androidx.media3.common.util.a1.g(this.f12628j, i10 + 1, false, false);
    }

    @Override
    protected int u(int i10) {
        return androidx.media3.common.util.a1.g(this.f12629k, i10 + 1, false, false);
    }

    @Override
    protected Object x(int i10) {
        return this.f12631m[i10];
    }

    @Override
    protected int z(int i10) {
        return this.f12628j[i10];
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private u3(androidx.media3.common.e0[] e0VarArr, Object[] objArr, f2.v vVar) {
        super(false, vVar);
        int i10 = 0;
        int length = e0VarArr.length;
        this.f12630l = e0VarArr;
        this.f12628j = new int[length];
        this.f12629k = new int[length];
        this.f12631m = objArr;
        this.f12632n = new HashMap();
        int length2 = e0VarArr.length;
        int iP = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length2) {
            androidx.media3.common.e0 e0Var = e0VarArr[i10];
            this.f12630l[i12] = e0Var;
            this.f12629k[i12] = iP;
            this.f12628j[i12] = i11;
            iP += e0Var.p();
            i11 += this.f12630l[i12].i();
            this.f12632n.put(objArr[i12], Integer.valueOf(i12));
            i10++;
            i12++;
        }
        this.f12626h = iP;
        this.f12627i = i11;
    }
}
