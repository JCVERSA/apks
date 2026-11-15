package defpackage;

import freemarker.core.Environment;
import freemarker.core.e1;
import freemarker.core.g;
import freemarker.core.t1;
import java.util.Collections;
import java.util.Enumeration;
import javax.swing.tree.TreeNode;

public abstract class ifa extends t1 implements TreeNode {
    public ifa g;
    public ifa h;
    public ifa[] i;
    public int j;
    public int k;

    public abstract void F(Environment environment);

    public final void G(int i, ifa ifaVar) {
        int i2 = this.j;
        ifa[] ifaVarArr = this.i;
        if (ifaVarArr == null) {
            ifaVarArr = new ifa[6];
            this.i = ifaVarArr;
        } else if (i2 == ifaVarArr.length) {
            k0(i2 != 0 ? i2 * 2 : 1);
            ifaVarArr = this.i;
        }
        for (int i3 = i2; i3 > i; i3--) {
            ifa ifaVar2 = ifaVarArr[i3 - 1];
            ifaVar2.k = i3;
            ifaVarArr[i3] = ifaVar2;
        }
        ifaVar.k = i;
        ifaVar.g = this;
        ifaVarArr[i] = ifaVar;
        this.j = i2 + 1;
    }

    public final void H(ifa ifaVar) {
        G(this.j, ifaVar);
    }

    public Enumeration I() {
        ifa ifaVar = this.h;
        if (ifaVar instanceof aq6) {
            return ifaVar.I();
        }
        if (ifaVar != null) {
            return Collections.enumeration(Collections.singletonList(ifaVar));
        }
        ifa[] ifaVarArr = this.i;
        return ifaVarArr != null ? new xzc(ifaVarArr, this.j) : Collections.enumeration(Collections.EMPTY_LIST);
    }

    public abstract String J(boolean z);

    public TreeNode K(int i) {
        ifa ifaVar = this.h;
        if (ifaVar instanceof aq6) {
            return ifaVar.K(i);
        }
        if (ifaVar != null) {
            if (i == 0) {
                return ifaVar;
            }
            throw new ArrayIndexOutOfBoundsException("invalid index");
        }
        if (this.j == 0) {
            throw new ArrayIndexOutOfBoundsException("Template element has no children");
        }
        try {
            return this.i[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Index: ");
            stringBuffer.append(i);
            stringBuffer.append(", Size: ");
            stringBuffer.append(this.j);
            throw new IndexOutOfBoundsException(stringBuffer.toString());
        }
    }

    public int L() {
        ifa ifaVar = this.h;
        if (ifaVar instanceof aq6) {
            return ifaVar.L();
        }
        if (ifaVar != null) {
            return 1;
        }
        return this.j;
    }

    public final String M() {
        return J(false);
    }

    public final ifa N() {
        ifa ifaVar = this.h;
        if (ifaVar != null) {
            return ifaVar;
        }
        if (this.j == 0) {
            return null;
        }
        return this.i[0];
    }

    public final ifa O() {
        while (!this.a0() && !(this instanceof e1) && !(this instanceof g)) {
            this = this.N();
        }
        return this;
    }

    public int P(TreeNode treeNode) {
        ifa ifaVar = this.h;
        if (ifaVar instanceof aq6) {
            return ifaVar.P(treeNode);
        }
        if (ifaVar != null) {
            return treeNode == ifaVar ? 0 : -1;
        }
        for (int i = 0; i < this.j; i++) {
            if (this.i[i].equals(treeNode)) {
                return i;
            }
        }
        return -1;
    }

    public final ifa Q() {
        ifa ifaVar = this.h;
        if (ifaVar != null) {
            return ifaVar;
        }
        int i = this.j;
        if (i == 0) {
            return null;
        }
        return this.i[i - 1];
    }

    public final ifa R() {
        while (!this.a0() && !(this instanceof e1) && !(this instanceof g)) {
            this = this.Q();
        }
        return this;
    }

    public final ifa S() {
        return this.h;
    }

    public TreeNode T() {
        return this.g;
    }

    public final ifa U() {
        return this.g;
    }

    public final ifa V(int i) {
        return this.i[i];
    }

    public final int W() {
        return this.j;
    }

    public boolean X() {
        return false;
    }

    public boolean Y() {
        return false;
    }

    public boolean Z() {
        return false;
    }

    public boolean a0() {
        return this.h == null && this.j == 0;
    }

    public boolean b0() {
        return true;
    }

    public ifa c0() {
        ifa ifaVar = this.g;
        if (ifaVar == null) {
            return null;
        }
        int i = this.k;
        if (i + 1 < ifaVar.j) {
            return ifaVar.i[i + 1];
        }
        return null;
    }

    public ifa d0() {
        ifa ifaVarC0 = c0();
        if (ifaVarC0 != null) {
            return ifaVarC0.O();
        }
        ifa ifaVar = this.g;
        if (ifaVar != null) {
            return ifaVar.d0();
        }
        return null;
    }

    public ifa e0(boolean z) {
        int i = this.j;
        if (i != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                ifa ifaVarE0 = this.i[i2].e0(z);
                this.i[i2] = ifaVarE0;
                ifaVarE0.g = this;
                ifaVarE0.k = i2;
            }
            if (z) {
                int i3 = 0;
                while (i3 < i) {
                    if (this.i[i3].Z()) {
                        i--;
                        int i4 = i3;
                        while (i4 < i) {
                            ifa[] ifaVarArr = this.i;
                            int i5 = i4 + 1;
                            ifa ifaVar = ifaVarArr[i5];
                            ifaVarArr[i4] = ifaVar;
                            ifaVar.k = i4;
                            i4 = i5;
                        }
                        this.i[i] = null;
                        this.j = i;
                        i3--;
                    }
                    i3++;
                }
            }
            ifa[] ifaVarArr2 = this.i;
            if (i < ifaVarArr2.length && i <= (ifaVarArr2.length * 3) / 4) {
                ifa[] ifaVarArr3 = new ifa[i];
                for (int i6 = 0; i6 < i; i6++) {
                    ifaVarArr3[i6] = this.i[i6];
                }
                this.i = ifaVarArr3;
            }
        } else {
            ifa ifaVar2 = this.h;
            if (ifaVar2 != null) {
                ifa ifaVarE1 = ifaVar2.e0(z);
                this.h = ifaVarE1;
                if (ifaVarE1.Z()) {
                    this.h = null;
                } else {
                    this.h.g = this;
                }
            }
        }
        return this;
    }

    public ifa f0() {
        ifa ifaVarG0 = g0();
        if (ifaVarG0 != null) {
            return ifaVarG0.R();
        }
        ifa ifaVar = this.g;
        if (ifaVar != null) {
            return ifaVar.f0();
        }
        return null;
    }

    public ifa g0() {
        int i;
        ifa ifaVar = this.g;
        if (ifaVar != null && (i = this.k) > 0) {
            return ifaVar.i[i - 1];
        }
        return null;
    }

    public void h0(int i, ifa ifaVar) {
        ifa ifaVar2 = this.h;
        if (ifaVar2 instanceof aq6) {
            ifaVar2.h0(i, ifaVar);
            return;
        }
        if (ifaVar2 != null) {
            if (i != 0) {
                throw new IndexOutOfBoundsException("invalid index");
            }
            this.h = ifaVar;
            ifaVar.k = 0;
            ifaVar.g = this;
            return;
        }
        ifa[] ifaVarArr = this.i;
        if (ifaVarArr == null) {
            throw new IndexOutOfBoundsException("element has no children");
        }
        ifaVarArr[i] = ifaVar;
        ifaVar.k = i;
        ifaVar.g = this;
    }

    public final void i0() {
        this.k = 0;
        this.g = null;
    }

    public final void j0(ifa ifaVar) {
        if (ifaVar != null) {
            ifaVar.g = this;
            ifaVar.k = 0;
        }
        this.h = ifaVar;
    }

    public final void k0(int i) {
        int i2 = this.j;
        ifa[] ifaVarArr = new ifa[i];
        for (int i3 = 0; i3 < i2; i3++) {
            ifaVarArr[i3] = this.i[i3];
        }
        this.i = ifaVarArr;
    }

    @Override
    public final String o() {
        return J(true);
    }
}
