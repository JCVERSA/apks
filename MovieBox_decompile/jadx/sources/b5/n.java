package b5;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;

public class n implements b2 {

    public static final n f15558a = new n();

    @Override
    public int b() {
        return 0;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        int iT0;
        a5.c cVar = (a5.c) aVar.r();
        String strT = cVar.T(aVar.u());
        cVar.d0();
        int iT1 = cVar.t0();
        if (iT1 == 25) {
            String str = strT + ".";
            strT = str + cVar.T(aVar.u());
            cVar.d0();
            iT1 = cVar.t0();
        }
        com.alibaba.fastjson.c cVar2 = new com.alibaba.fastjson.c(strT);
        if (iT1 != 10) {
            throw new JSONException("illegal jsonp : " + cVar.k());
        }
        cVar.d0();
        while (true) {
            cVar2.b(aVar.x());
            iT0 = cVar.t0();
            if (iT0 != 16) {
                break;
            }
            cVar.d0();
        }
        if (iT0 == 11) {
            cVar.d0();
            if (cVar.t0() == 24) {
                cVar.d0();
            }
            return cVar2;
        }
        throw new JSONException("illegal jsonp : " + cVar.k());
    }
}
