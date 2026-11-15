package c5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;

public class j implements z0 {

    private static volatile Class f16578a = null;

    private static volatile boolean f16579b = false;

    private static volatile Method f16580c;

    private static volatile Method f16581d;

    public static j f16582e = new j();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        Class<?>[] interfaces = obj.getClass().getInterfaces();
        if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
            Class<?> cls = interfaces[0];
            if (f16578a == null && !f16579b) {
                try {
                    f16578a = Class.forName("sun.reflect.annotation.AnnotationType");
                } catch (Throwable th2) {
                    f16579b = true;
                    throw new JSONException("not support Type Annotation.", th2);
                }
            }
            if (f16578a == null) {
                throw new JSONException("not support Type Annotation.");
            }
            if (f16580c == null && !f16579b) {
                try {
                    f16580c = f16578a.getMethod("getInstance", Class.class);
                } catch (Throwable th3) {
                    f16579b = true;
                    throw new JSONException("not support Type Annotation.", th3);
                }
            }
            if (f16581d == null && !f16579b) {
                try {
                    f16581d = f16578a.getMethod("members", null);
                } catch (Throwable th4) {
                    f16579b = true;
                    throw new JSONException("not support Type Annotation.", th4);
                }
            }
            if (f16580c == null || f16579b) {
                throw new JSONException("not support Type Annotation.");
            }
            try {
                try {
                    Map map = (Map) f16581d.invoke(f16580c.invoke(null, cls), null);
                    JSONObject jSONObject = new JSONObject(map.size());
                    Object objInvoke = null;
                    for (Map.Entry entry : map.entrySet()) {
                        try {
                            objInvoke = ((Method) entry.getValue()).invoke(obj, null);
                        } catch (IllegalAccessException | InvocationTargetException unused) {
                        }
                        jSONObject.put((String) entry.getKey(), com.alibaba.fastjson.a.toJSON(objInvoke));
                    }
                    o0Var.A(jSONObject);
                } catch (Throwable th5) {
                    f16579b = true;
                    throw new JSONException("not support Type Annotation.", th5);
                }
            } catch (Throwable th6) {
                f16579b = true;
                throw new JSONException("not support Type Annotation.", th6);
            }
        }
    }
}
