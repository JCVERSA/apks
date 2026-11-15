package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicLong;

public class u0 implements z0, b2 {

    public static u0 f16673a = new u0();

    @Override
    public int b() {
        return 2;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        long jLongValue = ((Long) obj).longValue();
        j1Var.g0(jLongValue);
        if (!j1Var.o(SerializerFeature.WriteClassName) || jLongValue > 2147483647L || jLongValue < -2147483648L || type == Long.class || type == Long.TYPE) {
            return;
        }
        j1Var.write(76);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Long lW;
        a5.b bVar = aVar.f141f;
        try {
            int iT0 = bVar.t0();
            if (iT0 == 2) {
                long jL = bVar.l();
                bVar.f0(16);
                lW = Long.valueOf(jL);
            } else if (iT0 == 3) {
                lW = Long.valueOf(TypeUtils.E0(bVar.g0()));
                bVar.f0(16);
            } else {
                if (iT0 == 12) {
                    JSONObject jSONObject = new JSONObject(true);
                    aVar.p0(jSONObject);
                    lW = TypeUtils.w(jSONObject);
                } else {
                    lW = TypeUtils.w(aVar.x());
                }
                if (lW == null) {
                    return null;
                }
            }
            return type == AtomicLong.class ? new AtomicLong(lW.longValue()) : lW;
        } catch (Exception e10) {
            throw new JSONException("parseLong error, field : " + obj, e10);
        }
    }
}
