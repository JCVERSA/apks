package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigInteger;

public class s implements z0, b2 {

    private static final BigInteger f16664a = BigInteger.valueOf(-9007199254740991L);

    private static final BigInteger f16665b = BigInteger.valueOf(9007199254740991L);

    public static final s f16666c = new s();

    public static Object e(a5.a aVar) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() != 2) {
            Object objX = aVar.x();
            if (objX == null) {
                return null;
            }
            return TypeUtils.j(objX);
        }
        String strE0 = bVar.E0();
        bVar.f0(16);
        if (strE0.length() <= 65535) {
            return new BigInteger(strE0);
        }
        throw new JSONException("decimal overflow");
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
        BigInteger bigInteger = (BigInteger) obj;
        String string = bigInteger.toString();
        if (string.length() < 16 || !SerializerFeature.isEnabled(i10, j1Var.f16592c, SerializerFeature.BrowserCompatible) || (bigInteger.compareTo(f16664a) >= 0 && bigInteger.compareTo(f16665b) <= 0)) {
            j1Var.write(string);
        } else {
            j1Var.o0(string);
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        return e(aVar);
    }
}
