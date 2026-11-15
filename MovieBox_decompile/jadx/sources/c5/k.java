package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;

public class k implements z0 {

    public static final k f16608a = new k();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        if (obj == null) {
            o0Var.f16619k.l0(SerializerFeature.WriteNullStringAsEmpty);
        } else {
            o0Var.B(obj.toString());
        }
    }
}
