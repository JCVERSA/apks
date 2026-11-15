package com.alibaba.fastjson;

import a5.h;
import b5.e3;
import c5.g1;
import c5.h1;
import c5.j1;
import c5.m0;
import c5.o0;
import c5.p0;
import c5.z0;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.GZIPInputStream;

public abstract class a implements e, b {
    public static final String VERSION = "1.2.83";
    private static final ThreadLocal<byte[]> bytesLocal;
    private static final ThreadLocal<char[]> charsLocal;
    public static TimeZone defaultTimeZone = TimeZone.getDefault();
    public static Locale defaultLocale = Locale.getDefault();
    public static String DEFAULT_TYPE_KEY = "@type";
    static final h1[] emptyFilters = new h1[0];
    public static String DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final ConcurrentHashMap<Type, Type> mixInsMapper = new ConcurrentHashMap<>(16);
    public static int DEFAULT_PARSER_FEATURE = ((((((Feature.AutoCloseSource.getMask() | Feature.InternFieldNames.getMask()) | Feature.UseBigDecimal.getMask()) | Feature.AllowUnQuotedFieldNames.getMask()) | Feature.AllowSingleQuotes.getMask()) | Feature.AllowArbitraryCommas.getMask()) | Feature.SortFeidFastMatch.getMask()) | Feature.IgnoreNotMatch.getMask();
    public static int DEFAULT_GENERATE_FEATURE = ((SerializerFeature.QuoteFieldNames.getMask() | SerializerFeature.SkipTransientField.getMask()) | SerializerFeature.WriteEnumUsingName.getMask()) | SerializerFeature.SortField.getMask();

    static {
        e(com.alibaba.fastjson.util.f.f17602a);
        bytesLocal = new ThreadLocal<>();
        charsLocal = new ThreadLocal<>();
    }

    private static byte[] a(int i10) {
        ThreadLocal<byte[]> threadLocal = bytesLocal;
        byte[] bArr = threadLocal.get();
        if (bArr != null) {
            return bArr.length < i10 ? new byte[i10] : bArr;
        }
        if (i10 > 65536) {
            return new byte[i10];
        }
        byte[] bArr2 = new byte[65536];
        threadLocal.set(bArr2);
        return bArr2;
    }

    public static void addMixInAnnotations(Type type, Type type2) {
        if (type == null || type2 == null) {
            return;
        }
        mixInsMapper.put(type, type2);
    }

    private static char[] c(int i10) {
        ThreadLocal<char[]> threadLocal = charsLocal;
        char[] cArr = threadLocal.get();
        if (cArr != null) {
            return cArr.length < i10 ? new char[i10] : cArr;
        }
        if (i10 > 65536) {
            return new char[i10];
        }
        char[] cArr2 = new char[65536];
        threadLocal.set(cArr2);
        return cArr2;
    }

    public static void clearMixInAnnotations() {
        mixInsMapper.clear();
    }

    private static void e(Properties properties) {
        String property = properties.getProperty("fastjson.serializerFeatures.MapSortField");
        int mask = SerializerFeature.MapSortField.getMask();
        if ("true".equals(property)) {
            DEFAULT_GENERATE_FEATURE |= mask;
        } else if ("false".equals(property)) {
            DEFAULT_GENERATE_FEATURE &= ~mask;
        }
        if ("true".equals(properties.getProperty("parser.features.NonStringKeyAsString"))) {
            DEFAULT_PARSER_FEATURE |= Feature.NonStringKeyAsString.getMask();
        }
        if ("true".equals(properties.getProperty("parser.features.ErrorOnEnumNotMatch")) || "true".equals(properties.getProperty("fastjson.parser.features.ErrorOnEnumNotMatch"))) {
            DEFAULT_PARSER_FEATURE |= Feature.ErrorOnEnumNotMatch.getMask();
        }
        if ("false".equals(properties.getProperty("fastjson.asmEnable"))) {
            h.f188z.A(false);
            g1.f16546j.l(false);
        }
    }

    public static Type getMixInAnnotations(Type type) {
        if (type != null) {
            return mixInsMapper.get(type);
        }
        return null;
    }

    public static <T> void handleResovleTask(a5.a aVar, T t10) {
        aVar.v(t10);
    }

    public static boolean isValid(String str) {
        if (str != null && str.length() != 0) {
            a5.e eVar = new a5.e(str);
            try {
                eVar.d0();
                int iT0 = eVar.t0();
                if (iT0 != 12) {
                    if (iT0 != 14) {
                        switch (iT0) {
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                eVar.d0();
                                break;
                            default:
                                return false;
                        }
                    } else {
                        eVar.D1(true);
                    }
                } else {
                    if (eVar.d() == 26) {
                        return false;
                    }
                    eVar.E1(true);
                }
                return eVar.t0() == 20;
            } catch (Exception unused) {
            } finally {
                eVar.close();
            }
        }
        return false;
    }

    public static boolean isValidArray(String str) {
        if (str != null && str.length() != 0) {
            a5.e eVar = new a5.e(str);
            try {
                eVar.d0();
                if (eVar.t0() != 14) {
                    return false;
                }
                eVar.D1(true);
                return eVar.t0() == 20;
            } catch (Exception unused) {
            } finally {
                eVar.close();
            }
        }
        return false;
    }

    public static boolean isValidObject(String str) {
        if (str != null && str.length() != 0) {
            a5.e eVar = new a5.e(str);
            try {
                eVar.d0();
                if (eVar.t0() != 12) {
                    return false;
                }
                if (eVar.d() == 26) {
                    return false;
                }
                eVar.E1(true);
                return eVar.t0() == 20;
            } catch (Exception unused) {
            } finally {
                eVar.close();
            }
        }
        return false;
    }

    public static Object parse(String str) {
        return parse(str, DEFAULT_PARSER_FEATURE);
    }

    public static JSONArray parseArray(String str) {
        return parseArray(str, h.f188z);
    }

    public static JSONObject parseObject(String str, Feature... featureArr) {
        return (JSONObject) parse(str, featureArr);
    }

    public static void removeMixInAnnotations(Type type) {
        if (type != null) {
            mixInsMapper.remove(type);
        }
    }

    public static void setDefaultTypeKey(String str) {
        DEFAULT_TYPE_KEY = str;
        h.f188z.f193e.b(str, 0, str.length(), str.hashCode(), true);
    }

    public static Object toJSON(Object obj) {
        return toJSON(obj, g1.f16546j);
    }

    public static byte[] toJSONBytes(Object obj, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytesWithFastJsonConfig(Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i10, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i10, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.z(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.p(charset);
        } finally {
            j1Var.close();
        }
    }

    public static String toJSONString(Object obj) {
        return toJSONString(obj, emptyFilters, new SerializerFeature[0]);
    }

    public static String toJSONStringWithDateFormat(Object obj, String str, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1.f16546j, null, str, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONStringZ(Object obj, g1 g1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, emptyFilters, null, 0, serializerFeatureArr);
    }

    public static <T> T toJavaObject(a aVar, Class<T> cls) {
        return (T) TypeUtils.f(aVar, cls, h.t());
    }

    public static void writeJSONString(Writer writer, Object obj, SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONStringTo(Object obj, Writer writer, SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, serializerFeatureArr);
    }

    public static final int writeJSONStringWithFastJsonConfig(OutputStream outputStream, Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i10, SerializerFeature... serializerFeatureArr) throws IOException {
        j1 j1Var = new j1(null, i10, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.z(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.u0(outputStream, charset);
        } finally {
            j1Var.close();
        }
    }

    public String toString() {
        return toJSONString();
    }

    public static Object parse(String str, h hVar) {
        return parse(str, hVar, DEFAULT_PARSER_FEATURE);
    }

    public static JSONArray parseArray(String str, h hVar) {
        JSONArray jSONArray = null;
        if (str == null) {
            return null;
        }
        a5.a aVar = new a5.a(str, hVar);
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 8) {
            bVar.d0();
        } else if (bVar.t0() != 20 || !bVar.W()) {
            jSONArray = new JSONArray();
            aVar.d0(jSONArray);
            aVar.v(jSONArray);
        }
        aVar.close();
        return jSONArray;
    }

    public static JSONObject parseObject(String str) {
        Object obj = parse(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        try {
            return (JSONObject) toJSON(obj);
        } catch (RuntimeException e10) {
            throw new JSONException("can not cast to JSONObject.", e10);
        }
    }

    public static Object toJSON(Object obj, h hVar) {
        return toJSON(obj, g1.f16546j);
    }

    public static byte[] toJSONBytes(Object obj, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1.f16546j, new h1[]{h1Var}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONString(Writer writer, Object obj, int i10, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(writer, i10, serializerFeatureArr);
        try {
            new o0(j1Var).A(obj);
        } finally {
            j1Var.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(Class<T> cls) {
        return (cls == JSONArray.class || cls == a.class || cls == Collection.class || cls == List.class) ? this : (T) TypeUtils.f(this, cls, h.t());
    }

    public String toString(SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
        try {
            new o0(j1Var).A(this);
            return j1Var.toString();
        } finally {
            j1Var.close();
        }
    }

    public static Object parse(String str, h hVar, Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(str, hVar, iConfig);
    }

    public static Object toJSON(Object obj, g1 g1Var) {
        Map map;
        if (obj == null) {
            return null;
        }
        if (obj instanceof a) {
            return obj;
        }
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            int size = map2.size();
            if (map2 instanceof LinkedHashMap) {
                map = new LinkedHashMap(size);
            } else if (map2 instanceof TreeMap) {
                map = new TreeMap();
            } else {
                map = new HashMap(size);
            }
            JSONObject jSONObject = new JSONObject((Map<String, Object>) map);
            for (Map.Entry entry : map2.entrySet()) {
                jSONObject.put(TypeUtils.A(entry.getKey()), toJSON(entry.getValue(), g1Var));
            }
            return jSONObject;
        }
        if (obj instanceof Collection) {
            Collection collection = (Collection) obj;
            JSONArray jSONArray = new JSONArray(collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                jSONArray.add(toJSON(it.next(), g1Var));
            }
            return jSONArray;
        }
        if (obj instanceof m0) {
            return parse(toJSONString(obj));
        }
        Class<?> cls = obj.getClass();
        if (cls.isEnum()) {
            return ((Enum) obj).name();
        }
        boolean z10 = false;
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            JSONArray jSONArray2 = new JSONArray(length);
            for (int i10 = 0; i10 < length; i10++) {
                jSONArray2.add(toJSON(Array.get(obj, i10)));
            }
            return jSONArray2;
        }
        if (h.w(cls)) {
            return obj;
        }
        z0 z0VarH = g1Var.h(cls);
        if (z0VarH instanceof p0) {
            p0 p0Var = (p0) z0VarH;
            z4.d dVarQ = p0Var.q();
            if (dVarQ != null) {
                boolean z11 = false;
                for (SerializerFeature serializerFeature : dVarQ.serialzeFeatures()) {
                    if (serializerFeature == SerializerFeature.SortField || serializerFeature == SerializerFeature.MapSortField) {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            JSONObject jSONObject2 = new JSONObject(z10);
            try {
                for (Map.Entry entry2 : p0Var.p(obj).entrySet()) {
                    jSONObject2.put((String) entry2.getKey(), toJSON(entry2.getValue(), g1Var));
                }
                return jSONObject2;
            } catch (Exception e10) {
                throw new JSONException("toJSON error", e10);
            }
        }
        return parse(toJSONString(obj, g1Var, new SerializerFeature[0]));
    }

    public static byte[] toJSONBytes(Object obj, int i10, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1.f16546j, i10, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, int i10, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i10, serializerFeatureArr);
        try {
            new o0(j1Var).A(obj);
            String string = j1Var.toString();
            int length = string.length();
            if (length > 0) {
                int i11 = length - 1;
                if (string.charAt(i11) == '.' && (obj instanceof Number) && !j1Var.o(SerializerFeature.WriteClassName)) {
                    return string.substring(0, i11);
                }
            }
            return string;
        } finally {
            j1Var.close();
        }
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, emptyFilters, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public <T> T toJavaObject(Type type) {
        return (T) TypeUtils.h(this, type, h.t());
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, int i10, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, emptyFilters, i10, serializerFeatureArr);
    }

    public <T> T toJavaObject(g gVar) {
        return (T) TypeUtils.h(this, gVar != null ? gVar.a() : null, h.t());
    }

    public static byte[] toJSONBytes(Object obj, h1[] h1VarArr, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1.f16546j, h1VarArr, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static Object parse(String str, h hVar, int i10) {
        if (str == null) {
            return null;
        }
        a5.a aVar = new a5.a(str, hVar, i10);
        Object objX = aVar.x();
        aVar.v(objX);
        aVar.close();
        return objX;
    }

    public static <T> T parseObject(String str, g gVar, Feature... featureArr) {
        return (T) parseObject(str, gVar.f17530a, h.f188z, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, new h1[]{h1Var}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static final int writeJSONString(OutputStream outputStream, Object obj, SerializerFeature... serializerFeatureArr) throws IOException {
        return writeJSONString(outputStream, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static <T> T parseObject(String str, Class<T> cls, Feature... featureArr) {
        return (T) parseObject(str, cls, h.f188z, (e3) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, h1[] h1VarArr, int i10, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, h1VarArr, null, i10, serializerFeatureArr);
    }

    public static final int writeJSONString(OutputStream outputStream, Object obj, int i10, SerializerFeature... serializerFeatureArr) throws IOException {
        return writeJSONString(outputStream, com.alibaba.fastjson.util.f.f17603b, obj, g1.f16546j, null, null, i10, serializerFeatureArr);
    }

    public static <T> T parseObject(String str, Class<T> cls, e3 e3Var, Feature... featureArr) {
        return (T) parseObject(str, cls, h.f188z, e3Var, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, h1[] h1VarArr, String str, int i10, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(com.alibaba.fastjson.util.f.f17603b, obj, g1Var, h1VarArr, str, i10, serializerFeatureArr);
    }

    public static final int writeJSONString(OutputStream outputStream, Charset charset, Object obj, SerializerFeature... serializerFeatureArr) throws IOException {
        return writeJSONString(outputStream, charset, obj, g1.f16546j, null, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static <T> T parseObject(String str, Type type, Feature... featureArr) {
        return (T) parseObject(str, type, h.f188z, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static byte[] toJSONBytes(Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i10, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i10, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.y(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.p(charset);
        } finally {
            j1Var.close();
        }
    }

    public static final int writeJSONString(OutputStream outputStream, Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i10, SerializerFeature... serializerFeatureArr) throws IOException {
        j1 j1Var = new j1(null, i10, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.y(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.u0(outputStream, charset);
        } finally {
            j1Var.close();
        }
    }

    public static Object parse(String str, int i10) {
        return parse(str, h.t(), i10);
    }

    public static <T> List<T> parseArray(String str, Class<T> cls) {
        return parseArray(str, cls, h.f188z);
    }

    public static <T> T parseObject(String str, Type type, e3 e3Var, Feature... featureArr) {
        return (T) parseObject(str, type, h.f188z, e3Var, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static Object parse(byte[] bArr, Feature... featureArr) {
        char[] cArrC = c(bArr.length);
        int iE = com.alibaba.fastjson.util.f.e(bArr, 0, bArr.length, cArrC);
        if (iE < 0) {
            return null;
        }
        return parse(new String(cArrC, 0, iE), featureArr);
    }

    public static <T> List<T> parseArray(String str, Class<T> cls, h hVar) {
        ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        a5.a aVar = new a5.a(str, hVar);
        a5.b bVar = aVar.f141f;
        int iT0 = bVar.t0();
        if (iT0 == 8) {
            bVar.d0();
        } else if (iT0 != 20 || !bVar.W()) {
            arrayList = new ArrayList();
            aVar.T(cls, arrayList);
            aVar.v(arrayList);
        }
        aVar.close();
        return arrayList;
    }

    public static <T> T parseObject(String str, Type type, int i10, Feature... featureArr) {
        if (str == null) {
            return null;
        }
        for (Feature feature : featureArr) {
            i10 = Feature.config(i10, feature, true);
        }
        a5.a aVar = new a5.a(str, h.t(), i10);
        T t10 = (T) aVar.l0(type);
        aVar.v(t10);
        aVar.close();
        return t10;
    }

    public static String toJSONString(Object obj, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1.f16546j, new h1[]{h1Var}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, h1[] h1VarArr, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1.f16546j, h1VarArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static Object parse(byte[] bArr, int i10, int i11, CharsetDecoder charsetDecoder, Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(bArr, i10, i11, charsetDecoder, iConfig);
    }

    public static String toJSONString(Object obj, g1 g1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, (h1) null, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, g1 g1Var, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, new h1[]{h1Var}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, g1 g1Var, h1[] h1VarArr, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, h1VarArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static <T> T parseObject(String str, Type type, h hVar, Feature... featureArr) {
        return (T) parseObject(str, type, hVar, (e3) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static String toJSONString(Object obj, g1 g1Var, h1[] h1VarArr, String str, int i10, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i10, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.y(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.toString();
        } finally {
            j1Var.close();
        }
    }

    public static <T> T parseObject(String str, Type type, h hVar, int i10, Feature... featureArr) {
        return (T) parseObject(str, type, hVar, (e3) null, i10, featureArr);
    }

    public static Object parse(byte[] bArr, int i10, int i11, CharsetDecoder charsetDecoder, int i12) {
        charsetDecoder.reset();
        char[] cArrC = c((int) (((double) i11) * ((double) charsetDecoder.maxCharsPerByte())));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i10, i11);
        CharBuffer charBufferWrap = CharBuffer.wrap(cArrC);
        com.alibaba.fastjson.util.f.b(charsetDecoder, byteBufferWrap, charBufferWrap);
        a5.a aVar = new a5.a(cArrC, charBufferWrap.position(), h.t(), i12);
        Object objX = aVar.x();
        aVar.v(objX);
        aVar.close();
        return objX;
    }

    public static <T> T parseObject(String str, Type type, h hVar, e3 e3Var, int i10, Feature... featureArr) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (featureArr != null) {
            for (Feature feature : featureArr) {
                i10 |= feature.mask;
            }
        }
        a5.a aVar = new a5.a(str, hVar, i10);
        T t10 = (T) aVar.o0(type, null);
        aVar.v(t10);
        aVar.close();
        return t10;
    }

    public static List<Object> parseArray(String str, Type[] typeArr) {
        return parseArray(str, typeArr, h.f188z);
    }

    @Override
    public void writeJSONString(Appendable appendable) {
        j1 j1Var = new j1();
        try {
            try {
                new o0(j1Var).A(this);
                appendable.append(j1Var.toString());
                j1Var.close();
            } catch (IOException e10) {
                throw new JSONException(e10.getMessage(), e10);
            }
        } catch (Throwable th2) {
            j1Var.close();
            throw th2;
        }
    }

    public static List<Object> parseArray(String str, Type[] typeArr, h hVar) {
        if (str == null) {
            return null;
        }
        a5.a aVar = new a5.a(str, hVar);
        Object[] objArrF0 = aVar.f0(typeArr);
        List<Object> listAsList = objArrF0 != null ? Arrays.asList(objArrF0) : null;
        aVar.v(listAsList);
        aVar.close();
        return listAsList;
    }

    public static <T> T parseObject(byte[] bArr, Type type, Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, com.alibaba.fastjson.util.f.f17603b, type, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i10, int i11, Charset charset, Type type, Feature... featureArr) {
        return (T) parseObject(bArr, i10, i11, charset, type, h.f188z, null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, Charset charset, Type type, h hVar, e3 e3Var, int i10, Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, charset, type, hVar, e3Var, i10, featureArr);
    }

    public static String toJSONString(Object obj, boolean z10) {
        return !z10 ? toJSONString(obj) : toJSONString(obj, SerializerFeature.PrettyFormat);
    }

    public static <T> T parseObject(byte[] bArr, int i10, int i11, Charset charset, Type type, h hVar, e3 e3Var, int i12, Feature... featureArr) throws Throwable {
        String str;
        InputStreamReader inputStreamReader;
        String strM;
        if (charset == null) {
            charset = com.alibaba.fastjson.util.f.f17603b;
        }
        InputStreamReader inputStreamReader2 = null;
        if (charset == com.alibaba.fastjson.util.f.f17603b) {
            char[] cArrC = c(bArr.length);
            int iE = com.alibaba.fastjson.util.f.e(bArr, i10, i11, cArrC);
            if (iE < 0) {
                try {
                    inputStreamReader = new InputStreamReader(new GZIPInputStream(new ByteArrayInputStream(bArr, i10, i11)), "UTF-8");
                    try {
                        strM = com.alibaba.fastjson.util.f.m(inputStreamReader);
                        com.alibaba.fastjson.util.f.a(inputStreamReader);
                    } catch (Exception unused) {
                        com.alibaba.fastjson.util.f.a(inputStreamReader);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStreamReader2 = inputStreamReader;
                        com.alibaba.fastjson.util.f.a(inputStreamReader2);
                        throw th;
                    }
                } catch (Exception unused2) {
                    inputStreamReader = null;
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                strM = null;
            }
            if (strM == null && iE < 0) {
                return null;
            }
            if (strM == null) {
                strM = new String(cArrC, 0, iE);
            }
            str = strM;
        } else {
            if (i11 < 0) {
                return null;
            }
            str = new String(bArr, i10, i11, charset);
        }
        return (T) parseObject(str, type, hVar, e3Var, i12, featureArr);
    }

    public static Object parse(String str, Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(str, iConfig);
    }

    @Override
    public String toJSONString() {
        j1 j1Var = new j1();
        try {
            new o0(j1Var).A(this);
            return j1Var.toString();
        } finally {
            j1Var.close();
        }
    }

    public static <T> T parseObject(byte[] bArr, int i10, int i11, CharsetDecoder charsetDecoder, Type type, Feature... featureArr) {
        charsetDecoder.reset();
        char[] cArrC = c((int) (((double) i11) * ((double) charsetDecoder.maxCharsPerByte())));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i10, i11);
        CharBuffer charBufferWrap = CharBuffer.wrap(cArrC);
        com.alibaba.fastjson.util.f.b(charsetDecoder, byteBufferWrap, charBufferWrap);
        return (T) parseObject(cArrC, charBufferWrap.position(), type, featureArr);
    }

    public static <T> T parseObject(char[] cArr, int i10, Type type, Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        a5.a aVar = new a5.a(cArr, i10, h.t(), iConfig);
        T t10 = (T) aVar.l0(type);
        aVar.v(t10);
        aVar.close();
        return t10;
    }

    public static <T> T parseObject(InputStream inputStream, Type type, Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, com.alibaba.fastjson.util.f.f17603b, type, featureArr);
    }

    public static <T> T parseObject(InputStream inputStream, Charset charset, Type type, Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, charset, type, h.f188z, featureArr);
    }

    public static <T> T parseObject(InputStream inputStream, Charset charset, Type type, h hVar, Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, charset, type, hVar, (e3) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(InputStream inputStream, Charset charset, Type type, h hVar, e3 e3Var, int i10, Feature... featureArr) throws IOException {
        if (charset == null) {
            charset = com.alibaba.fastjson.util.f.f17603b;
        }
        Charset charset2 = charset;
        byte[] bArrA = a(65536);
        int i11 = 0;
        while (true) {
            int i12 = inputStream.read(bArrA, i11, bArrA.length - i11);
            if (i12 == -1) {
                return (T) parseObject(bArrA, 0, i11, charset2, type, hVar, e3Var, i10, featureArr);
            }
            i11 += i12;
            if (i11 == bArrA.length) {
                byte[] bArr = new byte[(bArrA.length * 3) / 2];
                System.arraycopy(bArrA, 0, bArr, 0, bArrA.length);
                bArrA = bArr;
            }
        }
    }

    public static <T> T parseObject(String str, Class<T> cls) {
        return (T) parseObject(str, (Class) cls, new Feature[0]);
    }
}
