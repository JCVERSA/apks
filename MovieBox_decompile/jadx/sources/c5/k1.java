package c5;

import b5.b2;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;

public class k1 implements z0, b2 {

    public static k1 f16610a = new k1();

    public static Object e(a5.a aVar) {
        a5.b bVarR = aVar.r();
        if (bVarR.t0() == 4) {
            String strO0 = bVarR.o0();
            bVarR.f0(16);
            return strO0;
        }
        if (bVarR.t0() == 2) {
            String strE0 = bVarR.E0();
            bVarR.f0(16);
            return strE0;
        }
        Object objX = aVar.x();
        if (objX == null) {
            return null;
        }
        return objX.toString();
    }

    @Override
    public int b() {
        return 4;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        f(o0Var, (String) obj);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        if (type == StringBuffer.class) {
            a5.b bVar = aVar.f141f;
            if (bVar.t0() == 4) {
                String strO0 = bVar.o0();
                bVar.f0(16);
                return new StringBuffer(strO0);
            }
            Object objX = aVar.x();
            if (objX == null) {
                return null;
            }
            return new StringBuffer(objX.toString());
        }
        if (type != StringBuilder.class) {
            return e(aVar);
        }
        a5.b bVar2 = aVar.f141f;
        if (bVar2.t0() == 4) {
            String strO1 = bVar2.o0();
            bVar2.f0(16);
            return new StringBuilder(strO1);
        }
        Object objX2 = aVar.x();
        if (objX2 == null) {
            return null;
        }
        return new StringBuilder(objX2.toString());
    }

    public void f(o0 o0Var, String str) {
        j1 j1Var = o0Var.f16619k;
        if (str == null) {
            j1Var.l0(SerializerFeature.WriteNullStringAsEmpty);
        } else {
            j1Var.o0(str);
        }
    }
}
