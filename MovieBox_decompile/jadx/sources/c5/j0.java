package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicInteger;

public class j0 implements z0, b2 {

    public static j0 f16583a = new j0();

    @Override
    public int b() {
        return 2;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        Number number = (Number) obj;
        if (number == null) {
            j1Var.l0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        if (obj instanceof Long) {
            j1Var.g0(number.longValue());
        } else {
            j1Var.e0(number.intValue());
        }
        if (j1Var.o(SerializerFeature.WriteClassName)) {
            Class<?> cls = number.getClass();
            if (cls == Byte.class) {
                j1Var.write(66);
            } else if (cls == Short.class) {
                j1Var.write(83);
            }
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Integer numT;
        a5.b bVar = aVar.f141f;
        int iT0 = bVar.t0();
        if (iT0 == 8) {
            bVar.f0(16);
            return null;
        }
        try {
            if (iT0 == 2) {
                int iP = bVar.p();
                bVar.f0(16);
                numT = Integer.valueOf(iP);
            } else if (iT0 == 3) {
                numT = Integer.valueOf(TypeUtils.l0(bVar.g0()));
                bVar.f0(16);
            } else if (iT0 == 12) {
                JSONObject jSONObject = new JSONObject(true);
                aVar.p0(jSONObject);
                numT = TypeUtils.t(jSONObject);
            } else {
                numT = TypeUtils.t(aVar.x());
            }
            obj = AtomicInteger.class;
            return type == obj ? new AtomicInteger(numT.intValue()) : numT;
        } catch (Exception e10) {
            String str = "parseInt error";
            if (obj != null) {
                str = "parseInt error, field : " + obj;
            }
            throw new JSONException(str, e10);
        }
    }
}
