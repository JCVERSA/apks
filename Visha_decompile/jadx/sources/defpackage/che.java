package defpackage;

import android.util.SparseArray;

public final class che implements f9e {
    public final f9e b;
    public final vge c;
    public final SparseArray d = new SparseArray();
    public boolean e;

    public che(f9e f9eVar, vge vgeVar) {
        this.b = f9eVar;
        this.c = vgeVar;
    }

    @Override
    public final void i(kae kaeVar) {
        this.b.i(kaeVar);
    }

    @Override
    public final rae j(int i, int i2) {
        if (i2 != 3) {
            this.e = true;
            return this.b.j(i, i2);
        }
        SparseArray sparseArray = this.d;
        ehe eheVar = (ehe) sparseArray.get(i);
        if (eheVar != null) {
            return eheVar;
        }
        ehe eheVar2 = new ehe(this.b.j(i, 3), this.c);
        sparseArray.put(i, eheVar2);
        return eheVar2;
    }

    @Override
    public final void zzG() {
        this.b.zzG();
        if (!this.e) {
            return;
        }
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.d;
            if (i >= sparseArray.size()) {
                return;
            }
            ((ehe) sparseArray.valueAt(i)).i(true);
            i++;
        }
    }
}
