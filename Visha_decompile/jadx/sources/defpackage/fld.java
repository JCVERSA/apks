package defpackage;

import com.transsion.json.n;
import java.lang.reflect.Type;

public class fld implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        n nVar = (n) obj;
        return nVar.a() ? Long.valueOf(nVar.longValue()) : Double.valueOf(nVar.doubleValue());
    }
}
