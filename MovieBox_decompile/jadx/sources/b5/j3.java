package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;

public class j3 implements b2 {

    public static final j3 f15554a = new j3();

    @Override
    public int b() {
        return 12;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 8) {
            bVar.d0();
            return null;
        }
        if (bVar.t0() != 12 && bVar.t0() != 16) {
            throw new JSONException("syntax error: " + a5.f.a(bVar.t0()));
        }
        int iP = 0;
        String strO0 = null;
        String strO1 = null;
        String strO2 = null;
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
            if ("className".equals(strH0)) {
                if (bVar.t0() == 8) {
                    strO0 = null;
                } else {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strO0 = bVar.o0();
                }
            } else if ("methodName".equals(strH0)) {
                if (bVar.t0() == 8) {
                    strO1 = null;
                } else {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strO1 = bVar.o0();
                }
            } else if ("fileName".equals(strH0)) {
                if (bVar.t0() == 8) {
                    strO2 = null;
                } else {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strO2 = bVar.o0();
                }
            } else if ("lineNumber".equals(strH0)) {
                if (bVar.t0() == 8) {
                    iP = 0;
                } else {
                    if (bVar.t0() != 2) {
                        throw new JSONException("syntax error");
                    }
                    iP = bVar.p();
                }
            } else if ("nativeMethod".equals(strH0)) {
                if (bVar.t0() != 8 && bVar.t0() != 6 && bVar.t0() != 7) {
                    throw new JSONException("syntax error");
                }
                bVar.f0(16);
            } else if (strH0 == com.alibaba.fastjson.a.DEFAULT_TYPE_KEY) {
                if (bVar.t0() == 4) {
                    String strO3 = bVar.o0();
                    if (!strO3.equals("java.lang.StackTraceElement")) {
                        throw new JSONException("syntax error : " + strO3);
                    }
                } else if (bVar.t0() != 8) {
                    throw new JSONException("syntax error");
                }
            } else if ("moduleName".equals(strH0)) {
                if (bVar.t0() != 8) {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    bVar.o0();
                }
            } else if ("moduleVersion".equals(strH0)) {
                if (bVar.t0() != 8) {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    bVar.o0();
                }
            } else {
                if (!"classLoaderName".equals(strH0)) {
                    throw new JSONException("syntax error : " + strH0);
                }
                if (bVar.t0() != 8) {
                    if (bVar.t0() != 4) {
                        throw new JSONException("syntax error");
                    }
                    bVar.o0();
                }
            }
            if (bVar.t0() == 13) {
                bVar.f0(16);
                break;
            }
        }
        return new StackTraceElement(strO0, strO1, strO2, iP);
    }
}
