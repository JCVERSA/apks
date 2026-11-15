package b5;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class z1 extends e implements b2 {

    public static z1 f15590a = new z1();

    public static Object i(a5.a aVar, Map map, Type type, Type type2, Object obj) {
        Object objD;
        a5.b bVar = aVar.f141f;
        if (bVar.t0() != 12 && bVar.t0() != 16) {
            throw new JSONException("syntax error, expect {, actual " + bVar.x());
        }
        b2 b2VarP = aVar.l().p(type);
        b2 b2VarP2 = aVar.l().p(type2);
        bVar.f0(b2VarP.b());
        a5.g gVarM = aVar.m();
        while (bVar.t0() != 13) {
            try {
                Object obj2 = null;
                if (bVar.t0() == 4 && bVar.y() && !bVar.o(Feature.DisableSpecialKeyDetect)) {
                    bVar.r(4);
                    if (bVar.t0() != 4) {
                        throw new JSONException("illegal ref, " + a5.f.a(bVar.t0()));
                    }
                    String strO0 = bVar.o0();
                    if ("..".equals(strO0)) {
                        obj2 = gVarM.f177b.f176a;
                    } else if ("$".equals(strO0)) {
                        a5.g gVar = gVarM;
                        while (true) {
                            a5.g gVar2 = gVar.f177b;
                            if (gVar2 == null) {
                                break;
                            }
                            gVar = gVar2;
                        }
                        obj2 = gVar.f176a;
                    } else {
                        aVar.h(new a5.a.C0001a(gVarM, strO0));
                        aVar.D0(1);
                    }
                    bVar.f0(13);
                    if (bVar.t0() != 13) {
                        throw new JSONException("illegal ref");
                    }
                    bVar.f0(16);
                    aVar.A0(gVarM);
                    return obj2;
                }
                if (map.size() == 0 && bVar.t0() == 4 && com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(bVar.o0()) && !bVar.o(Feature.DisableSpecialKeyDetect)) {
                    bVar.r(4);
                    bVar.f0(16);
                    if (bVar.t0() == 13) {
                        bVar.d0();
                        aVar.A0(gVarM);
                        return map;
                    }
                    bVar.f0(b2VarP.b());
                }
                if (bVar.t0() == 4 && (b2VarP instanceof o)) {
                    String strO1 = bVar.o0();
                    bVar.d0();
                    a5.a aVar2 = new a5.a(strO1, aVar.l(), aVar.r().s());
                    aVar2.B0(aVar.n());
                    objD = b2VarP.d(aVar2, type, null);
                } else {
                    objD = b2VarP.d(aVar, type, null);
                }
                if (bVar.t0() != 17) {
                    throw new JSONException("syntax error, expect :, actual " + bVar.t0());
                }
                bVar.f0(b2VarP2.b());
                Object objD2 = b2VarP2.d(aVar, type2, objD);
                aVar.k(map, objD);
                map.put(objD, objD2);
                if (bVar.t0() == 16) {
                    bVar.f0(b2VarP.b());
                }
            } catch (Throwable th2) {
                aVar.A0(gVarM);
                throw th2;
            }
        }
        bVar.f0(16);
        aVar.A0(gVarM);
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x01ec A[Catch: all -> 0x00c3, TRY_ENTER, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01f1 A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01fc A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0201 A[Catch: all -> 0x00c3, TryCatch #0 {all -> 0x00c3, blocks: (B:25:0x00a5, B:29:0x00b8, B:35:0x00d0, B:60:0x0165, B:62:0x0177, B:64:0x017f, B:66:0x0185, B:70:0x019c, B:73:0x01a7, B:76:0x01ae, B:77:0x01b6, B:79:0x01be, B:81:0x01c7, B:84:0x01ce, B:86:0x01db, B:88:0x01df, B:89:0x01e2, B:92:0x01ec, B:94:0x01f1, B:95:0x01f4, B:97:0x01fc, B:99:0x0205, B:105:0x0220, B:98:0x0201, B:38:0x00e3, B:39:0x00fb, B:42:0x0100, B:47:0x0113, B:49:0x011b, B:52:0x012d, B:53:0x0145, B:54:0x0146, B:55:0x014b, B:56:0x014c, B:58:0x0154, B:111:0x022f, B:112:0x024f, B:113:0x0250, B:114:0x0255), top: B:118:0x00a5 }] */
    public static Map j(a5.a aVar, Map map, Type type, Object obj, int i10) {
        String strT;
        Object objO0;
        int iT0;
        a5.b bVar = aVar.f141f;
        int iT1 = bVar.t0();
        int i11 = 0;
        if (iT1 != 12) {
            if (iT1 == 4) {
                String strO0 = bVar.o0();
                if (strO0.length() == 0 || strO0.equals("null")) {
                    return null;
                }
            }
            String str = "syntax error, expect {, actual " + bVar.x();
            if (obj instanceof String) {
                str = (str + ", fieldName ") + obj;
            }
            String str2 = (str + ", ") + bVar.k();
            if (iT1 != 4) {
                JSONArray jSONArray = new JSONArray();
                aVar.e0(jSONArray, obj);
                if (jSONArray.size() == 1) {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        return (JSONObject) obj2;
                    }
                }
            }
            throw new JSONException(str2);
        }
        a5.g gVarM = aVar.m();
        while (true) {
            try {
                bVar.x0();
                char cD = bVar.d();
                if (bVar.o(Feature.AllowArbitraryCommas)) {
                    while (cD == ',') {
                        bVar.next();
                        bVar.x0();
                        cD = bVar.d();
                    }
                }
                if (cD == '\"') {
                    strT = bVar.w(aVar.u(), '\"');
                    bVar.x0();
                    if (bVar.d() != ':') {
                        throw new JSONException("expect ':' at " + bVar.h());
                    }
                } else {
                    if (cD == '}') {
                        bVar.next();
                        bVar.y0();
                        bVar.f0(16);
                        aVar.A0(gVarM);
                        return map;
                    }
                    if (cD == '\'') {
                        if (!bVar.o(Feature.AllowSingleQuotes)) {
                            throw new JSONException("syntax error");
                        }
                        strT = bVar.w(aVar.u(), '\'');
                        bVar.x0();
                        if (bVar.d() != ':') {
                            throw new JSONException("expect ':' at " + bVar.h());
                        }
                    } else {
                        if (!bVar.o(Feature.AllowUnQuotedFieldNames)) {
                            throw new JSONException("syntax error");
                        }
                        strT = bVar.T(aVar.u());
                        bVar.x0();
                        char cD2 = bVar.d();
                        if (cD2 != ':') {
                            throw new JSONException("expect ':' at " + bVar.h() + ", actual " + cD2);
                        }
                    }
                }
                bVar.next();
                bVar.x0();
                bVar.d();
                bVar.y0();
                if (strT != com.alibaba.fastjson.a.DEFAULT_TYPE_KEY) {
                    bVar.d0();
                    if (i11 != 0) {
                        aVar.A0(gVarM);
                    }
                    if (bVar.t0() == 8) {
                        bVar.d0();
                        objO0 = null;
                    } else {
                        objO0 = aVar.o0(type, strT);
                    }
                    map.put(strT, objO0);
                    aVar.k(map, strT);
                    aVar.x0(gVarM, objO0, strT);
                    aVar.A0(gVarM);
                    iT0 = bVar.t0();
                    if (iT0 != 20) {
                        if (iT0 == 13) {
                            bVar.d0();
                            aVar.A0(gVarM);
                            return map;
                        }
                    }
                    aVar.A0(gVarM);
                    return map;
                }
                Feature feature = Feature.DisableSpecialKeyDetect;
                if (bVar.o(feature) || Feature.isEnabled(i10, feature)) {
                    bVar.d0();
                    if (i11 != 0) {
                        aVar.A0(gVarM);
                    }
                    if (bVar.t0() == 8) {
                        bVar.d0();
                        objO0 = null;
                    } else {
                        objO0 = aVar.o0(type, strT);
                    }
                    map.put(strT, objO0);
                    aVar.k(map, strT);
                    aVar.x0(gVarM, objO0, strT);
                    aVar.A0(gVarM);
                    iT0 = bVar.t0();
                    if (iT0 != 20 && iT0 != 15) {
                        if (iT0 == 13) {
                            bVar.d0();
                            aVar.A0(gVarM);
                            return map;
                        }
                    }
                    aVar.A0(gVarM);
                    return map;
                }
                String strW = bVar.w(aVar.u(), '\"');
                a5.h hVarL = aVar.l();
                Class clsJ = HashMap.class;
                if (!strW.equals("java.util.HashMap")) {
                    if (strW.equals("java.util.LinkedHashMap")) {
                        clsJ = LinkedHashMap.class;
                    } else if (!hVarL.x()) {
                        try {
                            clsJ = hVarL.j(strW, null, bVar.s());
                        } catch (JSONException unused) {
                        }
                    }
                }
                if (!Map.class.isAssignableFrom(clsJ)) {
                    b2 b2VarP = hVarL.p(clsJ);
                    bVar.f0(16);
                    aVar.D0(2);
                    if (gVarM != null && !(obj instanceof Integer)) {
                        aVar.t0();
                    }
                    Map map2 = (Map) b2VarP.d(aVar, clsJ, obj);
                    aVar.A0(gVarM);
                    return map2;
                }
                bVar.f0(16);
                if (bVar.t0() == 13) {
                    bVar.f0(16);
                    aVar.A0(gVarM);
                    return map;
                }
                i11++;
            } catch (Throwable th2) {
                aVar.A0(gVarM);
                throw th2;
            }
        }
    }

    @Override
    public int b() {
        return 12;
    }

    @Override
    public Object e(a5.a aVar, Type type, Object obj, String str, int i10) {
        if (type == JSONObject.class) {
            aVar.p();
            return aVar.h0();
        }
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 8) {
            bVar.f0(16);
            return null;
        }
        boolean z10 = (type instanceof Class) && "java.util.Collections$UnmodifiableMap".equals(((Class) type).getName());
        Map mapG = (bVar.s() & Feature.OrderedField.mask) != 0 ? g(type, bVar.s()) : f(type);
        a5.g gVarM = aVar.m();
        try {
            aVar.x0(gVarM, mapG, obj);
            Object objH = h(aVar, type, obj, mapG, i10);
            if (z10) {
                objH = Collections.unmodifiableMap((Map) objH);
            }
            return objH;
        } finally {
            aVar.A0(gVarM);
        }
    }

    public Map f(Type type) {
        return g(type, com.alibaba.fastjson.a.DEFAULT_GENERATE_FEATURE);
    }

    public Map g(Type type, int i10) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type == SortedMap.class || type == TreeMap.class) {
            return new TreeMap();
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return new ConcurrentHashMap();
        }
        if (type == Map.class) {
            return (Feature.OrderedField.mask & i10) != 0 ? new LinkedHashMap() : new HashMap();
        }
        if (type == HashMap.class) {
            return new HashMap();
        }
        if (type == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            return EnumMap.class.equals(rawType) ? new EnumMap((Class) parameterizedType.getActualTypeArguments()[0]) : g(rawType, i10);
        }
        Class cls = (Class) type;
        if (cls.isInterface()) {
            throw new JSONException("unsupport type " + type);
        }
        if ("java.util.Collections$UnmodifiableMap".equals(cls.getName())) {
            return new HashMap();
        }
        try {
            return (Map) cls.newInstance();
        } catch (Exception e10) {
            throw new JSONException("unsupport type " + type, e10);
        }
    }

    protected Object h(a5.a aVar, Type type, Object obj, Map map, int i10) {
        if (!(type instanceof ParameterizedType)) {
            return aVar.r0(map, obj);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type type2 = parameterizedType.getActualTypeArguments()[0];
        Type type3 = map.getClass().getName().equals("org.springframework.util.LinkedMultiValueMap") ? List.class : parameterizedType.getActualTypeArguments()[1];
        return String.class == type2 ? j(aVar, map, type3, obj, i10) : i(aVar, map, type2, type3, obj);
    }
}
