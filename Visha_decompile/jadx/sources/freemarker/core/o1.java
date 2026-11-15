package freemarker.core;

import defpackage.d1d;
import defpackage.jw7;
import defpackage.zfa;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class o1 extends t0 {
    public final t0 h;
    public final t0 i;
    public final int j;

    public o1(t0 t0Var, t0 t0Var2, int i) {
        this.h = t0Var;
        this.i = t0Var2;
        this.j = i;
    }

    @Override
    public zfa F(Environment environment) {
        int iIntValue = this.h.R(environment).intValue();
        if (this.j == 2) {
            return d1d.e(this) >= d1d.d ? new ListableRightUnboundedRangeModel(iIntValue) : new NonListableRightUnboundedRangeModel(iIntValue);
        }
        int iIntValue2 = this.i.R(environment).intValue();
        int i = this.j;
        if (i == 3) {
            iIntValue2 += iIntValue;
        }
        return new BoundedRangeModel(iIntValue, iIntValue2, i == 0, i == 3);
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new o1(this.h.I(str, t0Var, aVar), this.i.I(str, t0Var, aVar), this.j);
    }

    @Override
    public boolean O(Environment environment) throws NonBooleanException {
        throw new NonBooleanException(this, new BoundedRangeModel(0, 0, false, false), environment);
    }

    @Override
    public boolean T() {
        t0 t0Var = this.i;
        boolean z = t0Var == null || t0Var.T();
        if (this.g == null) {
            return this.h.T() && z;
        }
        return true;
    }

    @Override
    public String o() {
        t0 t0Var = this.i;
        String strO = t0Var != null ? t0Var.o() : "";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.h.o());
        stringBuffer.append(r());
        stringBuffer.append(strO);
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        int i = this.j;
        if (i == 0) {
            return FileTree.PARENT_DIR;
        }
        if (i == 1) {
            return "..<";
        }
        if (i == 2) {
            return FileTree.PARENT_DIR;
        }
        if (i == 3) {
            return "..*";
        }
        throw new BugException(this.j);
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        return jw7.a(i);
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        throw new IndexOutOfBoundsException();
    }
}
