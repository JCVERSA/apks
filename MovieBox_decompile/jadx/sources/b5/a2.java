package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;

public class a2 implements b2 {

    public static final a2 f15531a = new a2();

    @Override
    public int b() {
        return 2;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 2) {
            if (type == Double.TYPE || type == Double.class) {
                String strE0 = bVar.E0();
                bVar.f0(16);
                return Double.valueOf(Double.parseDouble(strE0));
            }
            long jL = bVar.l();
            bVar.f0(16);
            if (type == Short.TYPE || type == Short.class) {
                if (jL <= 32767 && jL >= -32768) {
                    return Short.valueOf((short) jL);
                }
                throw new JSONException("short overflow : " + jL);
            }
            if (type != Byte.TYPE && type != Byte.class) {
                return (jL < -2147483648L || jL > 2147483647L) ? Long.valueOf(jL) : Integer.valueOf((int) jL);
            }
            if (jL <= 127 && jL >= -128) {
                return Byte.valueOf((byte) jL);
            }
            throw new JSONException("short overflow : " + jL);
        }
        if (bVar.t0() == 3) {
            if (type == Double.TYPE || type == Double.class) {
                String strE1 = bVar.E0();
                bVar.f0(16);
                return Double.valueOf(Double.parseDouble(strE1));
            }
            if (type == Short.TYPE || type == Short.class) {
                BigDecimal bigDecimalG0 = bVar.g0();
                bVar.f0(16);
                return Short.valueOf(TypeUtils.N0(bigDecimalG0));
            }
            if (type == Byte.TYPE || type == Byte.class) {
                BigDecimal bigDecimalG1 = bVar.g0();
                bVar.f0(16);
                return Byte.valueOf(TypeUtils.e(bigDecimalG1));
            }
            BigDecimal bigDecimalG2 = bVar.g0();
            bVar.f0(16);
            return bVar.o(Feature.UseBigDecimal) ? bigDecimalG2 : Double.valueOf(bigDecimalG2.doubleValue());
        }
        if (bVar.t0() == 18 && "NaN".equals(bVar.o0())) {
            bVar.d0();
            if (type == Double.class) {
                return Double.valueOf(Double.NaN);
            }
            if (type == Float.class) {
                return Float.valueOf(Float.NaN);
            }
            return null;
        }
        Object objX = aVar.x();
        if (objX == null) {
            return null;
        }
        if (type == Double.TYPE || type == Double.class) {
            try {
                return TypeUtils.q(objX);
            } catch (Exception e10) {
                throw new JSONException("parseDouble error, field : " + obj, e10);
            }
        }
        if (type == Short.TYPE || type == Short.class) {
            try {
                return TypeUtils.x(objX);
            } catch (Exception e11) {
                throw new JSONException("parseShort error, field : " + obj, e11);
            }
        }
        if (type != Byte.TYPE && type != Byte.class) {
            return TypeUtils.i(objX);
        }
        try {
            return TypeUtils.l(objX);
        } catch (Exception e12) {
            throw new JSONException("parseByte error, field : " + obj, e12);
        }
    }
}
