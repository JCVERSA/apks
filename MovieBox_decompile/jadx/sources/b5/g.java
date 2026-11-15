package b5;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class g implements b2 {

    private final Method f15538a;

    private final Class f15539b;

    public g(Method method) {
        this.f15538a = method;
        this.f15539b = method.getParameterTypes()[0];
    }

    @Override
    public int b() {
        return 0;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        try {
            return this.f15538a.invoke(null, aVar.j0(this.f15539b));
        } catch (IllegalAccessException e10) {
            throw new JSONException("parse enum error", e10);
        } catch (InvocationTargetException e11) {
            throw new JSONException("parse enum error", e11);
        }
    }
}
