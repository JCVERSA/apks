package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.core._TemplateModelException;
import freemarker.ext.beans.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;

public final class fu7 {
    public final hu7 a;
    public hu7 b;
    public final boolean c;

    public abstract class a extends f0d {
        public a(Object[] objArr) {
            super(objArr);
        }

        @Override
        public String a(Object obj) {
            Object[] objArr = (Object[]) obj;
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < objArr.length; i++) {
                if (i != 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(b(objArr[i]));
            }
            return stringBuffer.toString();
        }

        public abstract String b(Object obj);
    }

    public fu7(boolean z) {
        this.c = z;
        this.a = new bu7(z);
    }

    public final void c(ar8 ar8Var) throws Throwable {
        this.a.a(ar8Var);
        if (ar8Var.g()) {
            if (this.b == null) {
                this.b = new iu7(this.c);
            }
            this.b.a(ar8Var);
        }
    }

    public void d(Constructor constructor) {
        c(new ar8(constructor, constructor.getParameterTypes()));
    }

    public void e(Method method) {
        c(new ar8(method, method.getParameterTypes()));
    }

    public an6 f(List list, b bVar) {
        f96 f96VarF;
        f96 f96VarF2 = this.a.f(list, bVar);
        if (f96VarF2 instanceof an6) {
            return (an6) f96VarF2;
        }
        hu7 hu7Var = this.b;
        if (hu7Var != null) {
            f96VarF = hu7Var.f(list, bVar);
            if (f96VarF instanceof an6) {
                return (an6) f96VarF;
            }
        } else {
            f96VarF = null;
        }
        q0d q0dVar = new q0d(new Object[]{j((s93) f96VarF2, (s93) f96VarF, list), "\nThe matching overload was searched among these members:\n", i()});
        if (!this.c) {
            q0dVar.h("You seem to use BeansWrapper with incompatibleImprovements set below 2.3.21. If you think this error is unfounded, enabling 2.3.21 fixes may helps. See version history for more.");
        }
        throw new _TemplateModelException(q0dVar);
    }

    public final f0d g(List list) {
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = hx0.e((zfa) list.get(i));
        }
        return new du7(this, strArr);
    }

    public final Object h(Object[] objArr) {
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            clsArr[i] = obj != null ? obj.getClass() : null;
        }
        return new eu7(this, clsArr);
    }

    public final f0d i() {
        return new cu7(this, null);
    }

    public final Object[] j(s93 s93Var, s93 s93Var2, List list) {
        if (s93Var2 != null) {
            return (s93Var == null || s93Var.e()) ? k(s93Var2, list) : new Object[]{"When trying to call the non-varargs overloads:\n", k(s93Var, list), "\nWhen trying to call the varargs overloads:\n", k(s93Var2, null)};
        }
        return k(s93Var, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object[]] */
    public final Object[] k(s93 s93Var, List list) {
        Object obj;
        Object[] objArr;
        Object[] objArrD = s93Var.d();
        Object objC = s93Var.c();
        Object obj2 = "";
        if (list != null) {
            objArr = new Object[]{"\nThe FTL type of the argument values were: ", g(list), Consts.DOT};
        } else {
            obj = "";
        }
        if (objArrD != null) {
            obj = objArr;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(h(objArrD));
            stringBuffer.append(Consts.DOT);
            obj2 = new Object[]{"\nThe Java type of the argument values were: ", stringBuffer.toString()};
        }
        obj = objArr;
        return new Object[]{objC, obj, obj2};
    }
}
