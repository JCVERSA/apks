package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

public class t implements z0, b2 {

    public static final t f16667a = new t();

    @Override
    public int b() {
        return 6;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            j1Var.l0(SerializerFeature.WriteNullBooleanAsFalse);
        } else if (bool.booleanValue()) {
            j1Var.write("true");
        } else {
            j1Var.write("false");
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Boolean boolK;
        a5.b bVar = aVar.f141f;
        try {
            if (bVar.t0() == 6) {
                bVar.f0(16);
                boolK = Boolean.TRUE;
            } else if (bVar.t0() == 7) {
                bVar.f0(16);
                boolK = Boolean.FALSE;
            } else if (bVar.t0() == 2) {
                int iP = bVar.p();
                bVar.f0(16);
                boolK = iP == 1 ? Boolean.TRUE : Boolean.FALSE;
            } else {
                Object objX = aVar.x();
                if (objX == null) {
                    return null;
                }
                boolK = TypeUtils.k(objX);
            }
            return type == AtomicBoolean.class ? new AtomicBoolean(boolK.booleanValue()) : boolK;
        } catch (Exception e10) {
            throw new JSONException("parseBoolean error, field : " + obj, e10);
        }
    }
}
