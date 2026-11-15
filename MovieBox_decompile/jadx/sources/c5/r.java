package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;

public class r implements z0, b2 {

    static final BigDecimal f16661a = BigDecimal.valueOf(-9007199254740991L);

    static final BigDecimal f16662b = BigDecimal.valueOf(9007199254740991L);

    public static final r f16663c = new r();

    public static Object e(a5.a aVar) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 2) {
            BigDecimal bigDecimalG0 = bVar.g0();
            bVar.f0(16);
            return bigDecimalG0;
        }
        if (bVar.t0() == 3) {
            BigDecimal bigDecimalG1 = bVar.g0();
            bVar.f0(16);
            return bigDecimalG1;
        }
        Object objX = aVar.x();
        if (objX == null) {
            return null;
        }
        return TypeUtils.i(objX);
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
        BigDecimal bigDecimal = (BigDecimal) obj;
        int iScale = bigDecimal.scale();
        String string = (!SerializerFeature.isEnabled(i10, j1Var.f16592c, SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString();
        if (iScale == 0 && string.length() >= 16 && SerializerFeature.isEnabled(i10, j1Var.f16592c, SerializerFeature.BrowserCompatible) && (bigDecimal.compareTo(f16661a) < 0 || bigDecimal.compareTo(f16662b) > 0)) {
            j1Var.o0(string);
            return;
        }
        j1Var.write(string);
        if (j1Var.o(SerializerFeature.WriteClassName) && type != BigDecimal.class && bigDecimal.scale() == 0) {
            j1Var.write(46);
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        try {
            return e(aVar);
        } catch (Exception e10) {
            throw new JSONException("parseDecimal error, field : " + obj, e10);
        }
    }
}
