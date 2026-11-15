package c5;

import java.lang.reflect.Type;

public class k0 implements z0 {

    public static k0 f16609a = new k0();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.h0();
        } else {
            j1Var.write(((com.alibaba.fastjson.b) obj).toJSONString());
        }
    }
}
