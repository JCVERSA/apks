package c5;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

public class l0 implements z0 {

    public static final l0 f16613a = new l0();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        v0 v0Var = v0.f16676j;
        try {
            Field declaredField = obj.getClass().getDeclaredField("map");
            if (Modifier.isPrivate(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
            }
            v0Var.c(o0Var, declaredField.get(obj), obj2, type, i10);
        } catch (Exception unused) {
            j1Var.h0();
        }
    }
}
