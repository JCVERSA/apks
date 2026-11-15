package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class k3 extends o {
    public k3(a5.h hVar, Class cls) {
        super(hVar, cls, cls);
    }

    private Throwable s(String str, Throwable th2, Class cls) {
        Constructor<?> constructor = null;
        Constructor<?> constructor2 = null;
        Constructor<?> constructor3 = null;
        for (Constructor<?> constructor4 : cls.getConstructors()) {
            Class<?>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (Throwable) constructor.newInstance(str, th2);
        }
        if (constructor2 != null) {
            return (Throwable) constructor2.newInstance(str);
        }
        if (constructor3 != null) {
            return (Throwable) constructor3.newInstance(null);
        }
        return null;
    }

    @Override
    public int b() {
        return 12;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    @Override
    public Object d(a5.a aVar, Type type, Object obj) throws Throwable {
        Class clsJ;
        Throwable thS;
        a5.b bVar = aVar.f141f;
        o oVar = null;
        if (bVar.t0() == 8) {
            bVar.d0();
            return null;
        }
        if (aVar.t() == 2) {
            aVar.D0(0);
        } else if (bVar.t0() != 12) {
            throw new JSONException("syntax error");
        }
        if (type == null || !(type instanceof Class)) {
            clsJ = null;
        } else {
            clsJ = (Class) type;
            if (!Throwable.class.isAssignableFrom(clsJ)) {
                clsJ = null;
            }
        }
        HashMap map = null;
        Throwable th2 = null;
        String strO0 = null;
        StackTraceElement[] stackTraceElementArr = null;
        while (true) {
            String strH0 = bVar.h0(aVar.u());
            if (strH0 == null) {
                if (bVar.t0() == 13) {
                    bVar.f0(16);
                    break;
                }
                if (bVar.t0() != 16 || !bVar.o(Feature.AllowArbitraryCommas)) {
                }
            }
            bVar.r(4);
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(strH0)) {
                if (bVar.t0() != 4) {
                    throw new JSONException("syntax error");
                }
                clsJ = aVar.l().j(bVar.o0(), Throwable.class, bVar.s());
                bVar.f0(16);
            } else if ("message".equals(strH0)) {
                if (bVar.t0() == 8) {
                    strO0 = null;
                } else {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strO0 = bVar.o0();
                }
                bVar.d0();
            } else if ("cause".equals(strH0)) {
                th2 = (Throwable) d(aVar, null, "cause");
            } else if ("stackTrace".equals(strH0)) {
                stackTraceElementArr = (StackTraceElement[]) aVar.j0(StackTraceElement[].class);
            } else {
                if (map == null) {
                    map = new HashMap();
                }
                map.put(strH0, aVar.x());
            }
            if (bVar.t0() == 13) {
                bVar.f0(16);
                break;
            }
        }
        if (clsJ == null) {
            thS = new Exception(strO0, th2);
        } else {
            if (!Throwable.class.isAssignableFrom(clsJ)) {
                throw new JSONException("type not match, not Throwable. " + clsJ.getName());
            }
            try {
                thS = s(strO0, th2, clsJ);
                if (thS == null) {
                    thS = new Exception(strO0, th2);
                }
            } catch (Exception e10) {
                throw new JSONException("create instance error", e10);
            }
        }
        if (stackTraceElementArr != null) {
            thS.setStackTrace(stackTraceElementArr);
        }
        if (map != null) {
            if (clsJ != null) {
                if (clsJ == this.f15561c) {
                    oVar = this;
                } else {
                    b2 b2VarP = aVar.l().p(clsJ);
                    if (b2VarP instanceof o) {
                        oVar = (o) b2VarP;
                    }
                }
            }
            if (oVar != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    l lVarJ = oVar.j(str);
                    if (lVarJ != null) {
                        com.alibaba.fastjson.util.d dVar = lVarJ.f15555a;
                        if (!dVar.f17584e.isInstance(value)) {
                            value = TypeUtils.h(value, dVar.f17585f, aVar.l());
                        }
                        lVarJ.h(thS, value);
                    }
                }
            }
        }
        return thS;
    }
}
