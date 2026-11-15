package defpackage;

import freemarker.ext.beans.b;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class bu7 extends hu7 {
    public bu7(boolean z) {
        super(z);
    }

    @Override
    public void b(Class[] clsArr, int[] iArr) {
    }

    @Override
    public f96 f(List list, b bVar) throws Throwable {
        Class[] clsArr;
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        int size = list.size();
        Class[][] clsArrJ = j();
        if (clsArrJ.length > size && (clsArr = clsArrJ[size]) != null) {
            Object[] objArr = new Object[size];
            int[] iArrI = i(size);
            if (iArrI == hu7.g) {
                iArrI = null;
            }
            Iterator it = list.iterator();
            for (int i = 0; i < size; i++) {
                Object objM = bVar.M((zfa) it.next(), clsArr[i], iArrI != null ? iArrI[i] : 0);
                if (objM == hc7.d) {
                    return s93.f(i + 1);
                }
                objArr[i] = objM;
            }
            e96 e96VarG = g(objArr, false);
            if (!(e96VarG instanceof qq0)) {
                return s93.b((o93) e96VarG, objArr);
            }
            qq0 qq0Var = (qq0) e96VarG;
            if (!this.f) {
                b.k(qq0Var.b(), objArr);
            } else if (iArrI != null) {
                d(objArr, qq0Var.b(), iArrI);
            }
            return new an6(qq0Var, objArr);
        }
        return s93.d;
    }

    @Override
    public Class[] l(qq0 qq0Var) {
        return qq0Var.b();
    }
}
