package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.text.DecimalFormat;
import java.text.NumberFormat;

public class h0 implements z0, b2 {

    public static h0 f16563b = new h0();

    private NumberFormat f16564a;

    public h0() {
    }

    public static Object e(a5.a aVar) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 2) {
            String strE0 = bVar.E0();
            bVar.f0(16);
            return Float.valueOf(Float.parseFloat(strE0));
        }
        if (bVar.t0() == 3) {
            float fS0 = bVar.s0();
            bVar.f0(16);
            return Float.valueOf(fS0);
        }
        Object objX = aVar.x();
        if (objX == null) {
            return null;
        }
        return TypeUtils.s(objX);
    }

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
        float fFloatValue = ((Float) obj).floatValue();
        NumberFormat numberFormat = this.f16564a;
        if (numberFormat != null) {
            j1Var.write(numberFormat.format(fFloatValue));
        } else {
            j1Var.X(fFloatValue, true);
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        try {
            return e(aVar);
        } catch (Exception e10) {
            throw new JSONException("parseLong error, field : " + obj, e10);
        }
    }

    public h0(DecimalFormat decimalFormat) {
        this.f16564a = decimalFormat;
    }

    public h0(String str) {
        this(new DecimalFormat(str));
    }
}
