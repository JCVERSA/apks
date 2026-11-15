package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Time;

public class l3 implements b2 {

    public static final l3 f15557a = new l3();

    @Override
    public int b() {
        return 2;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        long timeInMillis;
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 16) {
            bVar.f0(4);
            if (bVar.t0() != 4) {
                throw new JSONException("syntax error");
            }
            bVar.r(2);
            if (bVar.t0() != 2) {
                throw new JSONException("syntax error");
            }
            long jL = bVar.l();
            bVar.f0(13);
            if (bVar.t0() != 13) {
                throw new JSONException("syntax error");
            }
            bVar.f0(16);
            return new Time(jL);
        }
        Object objX = aVar.x();
        if (objX == null) {
            return null;
        }
        if (objX instanceof Time) {
            return objX;
        }
        if (objX instanceof BigDecimal) {
            return new Time(TypeUtils.E0((BigDecimal) objX));
        }
        if (objX instanceof Number) {
            return new Time(((Number) objX).longValue());
        }
        if (!(objX instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) objX;
        if (str.length() == 0) {
            return null;
        }
        a5.e eVar = new a5.e(str);
        if (eVar.w1()) {
            timeInMillis = eVar.J0().getTimeInMillis();
        } else {
            for (int i10 = 0; i10 < str.length(); i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt < '0' || cCharAt > '9') {
                    eVar.close();
                    return Time.valueOf(str);
                }
            }
            timeInMillis = Long.parseLong(str);
        }
        eVar.close();
        return new Time(timeInMillis);
    }
}
