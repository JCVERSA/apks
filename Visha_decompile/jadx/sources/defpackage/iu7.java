package defpackage;

import freemarker.core.BugException;
import freemarker.ext.beans.b;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class iu7 extends hu7 {
    public iu7(boolean z) {
        super(z);
    }

    @Override
    public void b(Class[] clsArr, int[] iArr) {
        Class[] clsArr2;
        int length = clsArr.length;
        Class[][] clsArrJ = j();
        int i = length - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            Class[] clsArr3 = clsArrJ[i2];
            if (clsArr3 != null) {
                n(length, clsArr3, i(i2));
                break;
            }
        }
        int i3 = length + 1;
        if (i3 < clsArrJ.length && (clsArr2 = clsArrJ[i3]) != null) {
            n(length, clsArr2, i(i3));
        }
        while (i3 < clsArrJ.length) {
            n(i3, clsArr, iArr);
            i3++;
        }
        if (length > 0) {
            n(i, clsArr, iArr);
        }
    }

    @Override
    public f96 f(List list, b bVar) throws Throwable {
        List list2 = list == null ? Collections.EMPTY_LIST : list;
        int size = list2.size();
        Class[][] clsArrJ = j();
        Object[] objArr = new Object[size];
        int iMin = Math.min(size + 1, clsArrJ.length - 1);
        int[] iArrI = null;
        loop0: while (iMin >= 0) {
            Class[] clsArr = clsArrJ[iMin];
            if (clsArr != null) {
                iArrI = i(iMin);
                if (iArrI == hu7.g) {
                    iArrI = null;
                }
                Iterator it = list2.iterator();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break loop0;
                    }
                    int i2 = i < iMin ? i : iMin - 1;
                    Object objM = bVar.M((zfa) it.next(), clsArr[i2], iArrI != null ? iArrI[i2] : 0);
                    if (objM == hc7.d) {
                        break;
                    }
                    objArr[i] = objM;
                    i++;
                }
            } else if (iMin == 0) {
                return s93.d;
            }
            iMin--;
        }
        e96 e96VarG = g(objArr, true);
        if (!(e96VarG instanceof qq0)) {
            return s93.b((o93) e96VarG, objArr);
        }
        qq0 qq0Var = (qq0) e96VarG;
        Object objM2 = m(objArr, list2, qq0Var, bVar);
        if (!(objM2 instanceof Object[])) {
            return s93.f(((Integer) objM2).intValue());
        }
        Object[] objArr2 = (Object[]) objM2;
        if (!this.f) {
            b.k(qq0Var.b(), objArr2);
        } else if (iArrI != null) {
            d(objArr2, qq0Var.b(), iArrI);
        }
        return new an6(qq0Var, objArr2);
    }

    @Override
    public Class[] l(qq0 qq0Var) {
        Class[] clsArr = (Class[]) qq0Var.b().clone();
        int length = clsArr.length - 1;
        Class<?> componentType = clsArr[length].getComponentType();
        if (componentType == null) {
            throw new BugException("Only varargs methods should be handled here");
        }
        clsArr[length] = componentType;
        return clsArr;
    }

    public final Object m(Object[] objArr, List list, qq0 qq0Var, b bVar) {
        Class[] clsArrB = qq0Var.b();
        int length = clsArrB.length;
        int i = length - 1;
        Class<?> componentType = clsArrB[i].getComponentType();
        int length2 = objArr.length;
        if (objArr.length == length) {
            Object objL = bVar.L((zfa) list.get(i), componentType);
            if (objL == hc7.d) {
                return new Integer(length);
            }
            Object objNewInstance = Array.newInstance(componentType, 1);
            Array.set(objNewInstance, 0, objL);
            objArr[i] = objNewInstance;
            return objArr;
        }
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        Object objNewInstance2 = Array.newInstance(componentType, length2 - i);
        for (int i2 = i; i2 < length2; i2++) {
            Object objL2 = bVar.L((zfa) list.get(i2), componentType);
            if (objL2 == hc7.d) {
                return new Integer(i2 + 1);
            }
            Array.set(objNewInstance2, i2 - i, objL2);
        }
        objArr2[i] = objNewInstance2;
        return objArr2;
    }

    public final void n(int i, Class[] clsArr, int[] iArr) {
        Class[] clsArr2 = j()[i];
        if (clsArr2 == null) {
            return;
        }
        int length = clsArr2.length;
        int length2 = clsArr.length;
        int iMin = Math.min(length2, length);
        for (int i2 = 0; i2 < iMin; i2++) {
            clsArr2[i2] = e(clsArr2[i2], clsArr[i2]);
        }
        if (length > length2) {
            Class cls = clsArr[length2 - 1];
            while (length2 < length) {
                clsArr2[length2] = e(clsArr2[length2], cls);
                length2++;
            }
        }
        if (this.f) {
            k(i, iArr);
        }
    }
}
