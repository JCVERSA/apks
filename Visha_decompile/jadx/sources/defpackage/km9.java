package defpackage;

import freemarker.core._TemplateModelException;
import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import java.lang.reflect.Array;
import java.lang.reflect.Member;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class km9 {
    public final Member b;
    public final Class[] c;

    public km9(Member member, Class[] clsArr) {
        this.b = member;
        this.c = clsArr;
    }

    public final TemplateModelException b(int i, zfa zfaVar, Class cls) {
        return new _TemplateModelException(new Object[]{u0d.g(this.b), " couldn't be called: Can't convert the ", new l0d(new Integer(i + 1)), " argument's value to the target Java type, ", hx0.g(cls), ". The type of the actual value was: ", new g0d(zfaVar)});
    }

    public final TemplateModelException c(int i, Class cls) {
        return new _TemplateModelException(new Object[]{u0d.g(this.b), " couldn't be called: The value of the ", new l0d(new Integer(i + 1)), " argument was null, but the target Java parameter type (", hx0.g(cls), ") is primitive and so can't store null."});
    }

    public Member e() {
        return this.b;
    }

    public Object[] l(List list, b bVar) throws _TemplateModelException {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        boolean zI = u0d.i(this.b);
        int length = this.c.length;
        if (zI) {
            int i = length - 1;
            if (i > list.size()) {
                throw new _TemplateModelException(new Object[]{u0d.g(this.b), " takes at least ", new Integer(i), i == 1 ? " argument" : " arguments", ", but ", new Integer(list.size()), " was given."});
            }
        } else if (length != list.size()) {
            throw new _TemplateModelException(new Object[]{u0d.g(this.b), " takes ", new Integer(length), length == 1 ? " argument" : " arguments", ", but ", new Integer(list.size()), " was given."});
        }
        return m(list, this.c, zI, bVar);
    }

    public final Object[] m(List list, Class[] clsArr, boolean z, b bVar) throws TemplateModelException {
        Object objL;
        if (list == null) {
            return null;
        }
        int length = clsArr.length;
        int size = list.size();
        Object[] objArr = new Object[length];
        Iterator it = list.iterator();
        int i = z ? length - 1 : length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < i) {
            Class cls = clsArr[i3];
            zfa zfaVar = (zfa) it.next();
            Object objL2 = bVar.L(zfaVar, cls);
            if (objL2 == hc7.d) {
                throw b(i3, zfaVar, cls);
            }
            if (objL2 == null && cls.isPrimitive()) {
                throw c(i3, cls);
            }
            objArr[i3] = objL2;
            i3++;
        }
        if (z) {
            Class cls2 = clsArr[length - 1];
            Class<?> componentType = cls2.getComponentType();
            if (it.hasNext()) {
                zfa zfaVar2 = (zfa) it.next();
                int i4 = size - i3;
                if (i4 != 1 || (objL = bVar.L(zfaVar2, cls2)) == hc7.d) {
                    Object objNewInstance = Array.newInstance(componentType, i4);
                    while (i2 < i4) {
                        zfa zfaVar3 = (zfa) (i2 == 0 ? zfaVar2 : it.next());
                        Object objL3 = bVar.L(zfaVar3, componentType);
                        if (objL3 == hc7.d) {
                            throw b(i3 + i2, zfaVar3, componentType);
                        }
                        if (objL3 == null && componentType.isPrimitive()) {
                            throw c(i3 + i2, componentType);
                        }
                        Array.set(objNewInstance, i2, objL3);
                        i2++;
                    }
                    objArr[i3] = objNewInstance;
                } else {
                    objArr[i3] = objL;
                }
            } else {
                objArr[i3] = Array.newInstance(componentType, 0);
            }
        }
        return objArr;
    }
}
