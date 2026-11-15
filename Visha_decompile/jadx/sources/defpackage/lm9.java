package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateModelException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

public final class lm9 extends km9 implements yfa, nga, e1d {
    public static Class f;
    public final Object d;
    public final b e;

    public lm9(Object obj, Method method, Class[] clsArr, b bVar) {
        super(method, clsArr);
        this.d = obj;
        this.e = bVar;
    }

    public static Class n(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        try {
            return this.e.y(this.d, (Method) e(), l(list, this.e));
        } catch (TemplateModelException e) {
            throw e;
        } catch (Exception e2) {
            throw u0d.o(this.d, e(), e2);
        }
    }

    @Override
    public Object[] explainTypeError(Class[] clsArr) throws Throwable {
        Method method;
        Class<?> returnType;
        Member memberE = e();
        if ((memberE instanceof Method) && (returnType = (method = (Method) memberE).getReturnType()) != null && returnType != Void.TYPE) {
            Class<?> clsN = f;
            if (clsN == null) {
                clsN = n("java.lang.Void");
                f = clsN;
            }
            if (returnType != clsN) {
                String name = method.getName();
                if (name.startsWith("get") && name.length() > 3 && Character.isUpperCase(name.charAt(3)) && method.getParameterTypes().length == 0) {
                    return new Object[]{"Maybe using obj.something instead of obj.getSomething will yield the desired value."};
                }
                if (name.startsWith("is") && name.length() > 2 && Character.isUpperCase(name.charAt(2)) && method.getParameterTypes().length == 0) {
                    return new Object[]{"Maybe using obj.something instead of obj.isSomething will yield the desired value."};
                }
                return new Object[]{"Maybe using obj.something(", method.getParameterTypes().length != 0 ? "params" : "", ") instead of obj.something will yield the desired value"};
            }
        }
        return null;
    }

    @Override
    public zfa get(int i) {
        return (zfa) exec(Collections.singletonList(new SimpleNumber(new Integer(i))));
    }

    @Override
    public int size() throws TemplateModelException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Getting the number of items or enumerating the items is not supported on this ");
        stringBuffer.append(hx0.e(this));
        stringBuffer.append(" value.\n");
        stringBuffer.append("(");
        stringBuffer.append("Hint 1: Maybe you wanted to call this method first and then do something with its return value. ");
        stringBuffer.append("Hint 2: Getting items by intex possibly works, hence it's a \"+sequence\".");
        stringBuffer.append(")");
        throw new TemplateModelException(stringBuffer.toString());
    }

    public String toString() {
        return e().toString();
    }
}
