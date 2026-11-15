package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

public class ey3 implements InvocationHandler {
    public Method b;
    public Scriptable c;

    public ey3(Class cls, Scriptable scriptable) {
        this.c = scriptable;
        this.b = cls.getMethod("complete", String.class, Integer.TYPE, List.class);
    }

    public int a(String str, int i, List list) {
        int i2 = i - 1;
        while (i2 >= 0) {
            char cCharAt = str.charAt(i2);
            if (!Character.isJavaIdentifierPart(cCharAt) && cCharAt != '.') {
                break;
            }
            i2--;
        }
        String[] strArrSplit = str.substring(i2 + 1, i).split("\\.", -1);
        Scriptable scriptable = this.c;
        for (int i3 = 0; i3 < strArrSplit.length - 1; i3++) {
            Object obj = scriptable.get(strArrSplit[i3], this.c);
            if (!(obj instanceof Scriptable)) {
                return str.length();
            }
            scriptable = (Scriptable) obj;
        }
        Object[] allIds = scriptable instanceof ScriptableObject ? ((ScriptableObject) scriptable).getAllIds() : scriptable.getIds();
        String str2 = strArrSplit[strArrSplit.length - 1];
        for (Object obj2 : allIds) {
            if (obj2 instanceof String) {
                String str3 = (String) obj2;
                if (str3.startsWith(str2)) {
                    if (scriptable.get(str3, scriptable) instanceof Function) {
                        str3 = str3 + "(";
                    }
                    list.add(str3);
                }
            }
        }
        return str.length() - str2.length();
    }

    @Override
    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (method.equals(this.b)) {
            return Integer.valueOf(a((String) objArr[0], ((Integer) objArr[1]).intValue(), (List) objArr[2]));
        }
        throw new NoSuchMethodError(method.toString());
    }
}
