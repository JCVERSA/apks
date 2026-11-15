package c5;

import b5.b2;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;

public class x implements z0, b2 {

    public static final x f16682a = new x();

    @Override
    public int b() {
        return 4;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        Character ch2 = (Character) obj;
        if (ch2 == null) {
            j1Var.o0("");
        } else if (ch2.charValue() == 0) {
            j1Var.o0("\u0000");
        } else {
            j1Var.o0(ch2.toString());
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Object objX = aVar.x();
        if (objX == null) {
            return null;
        }
        return TypeUtils.n(objX);
    }
}
