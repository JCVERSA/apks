package defpackage;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

public class yq8 {

    public static final class a extends yq8 {
        @Override
        public Object b(Method method, Class cls, Object obj, Object[] objArr) {
            return t22.a(method, cls, obj, objArr);
        }

        @Override
        public boolean c(Method method) {
            return method.isDefault();
        }
    }

    public static class b extends yq8 {
        @Override
        public String a(Method method, int i) {
            Parameter parameter = method.getParameters()[i];
            if (!parameter.isNamePresent()) {
                return super.a(method, i);
            }
            return "parameter '" + parameter.getName() + '\'';
        }

        @Override
        public Object b(Method method, Class cls, Object obj, Object[] objArr) {
            return t22.a(method, cls, obj, objArr);
        }

        @Override
        public boolean c(Method method) {
            return method.isDefault();
        }
    }

    public String a(Method method, int i) {
        return "parameter #" + (i + 1);
    }

    public Object b(Method method, Class cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    public boolean c(Method method) {
        return false;
    }
}
