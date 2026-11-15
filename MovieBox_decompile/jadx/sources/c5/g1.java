package c5;

import b5.d3;
import b5.y1;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.xml.datatype.XMLGregorianCalendar;
import org.w3c.dom.Node;

public class g1 {

    public static final g1 f16546j = new g1();

    private static boolean f16547k = false;

    private static boolean f16548l = false;

    private static boolean f16549m = false;

    private static boolean f16550n = false;

    private static boolean f16551o = false;

    private static boolean f16552p = false;

    private boolean f16553a;

    private a f16554b;

    protected String f16555c;

    public PropertyNamingStrategy f16556d;

    private final com.alibaba.fastjson.util.g f16557e;

    private final com.alibaba.fastjson.util.g f16558f;

    private final boolean f16559g;

    private long[] f16560h;

    private List f16561i;

    public g1() {
        this(8192);
    }

    private final p0 a(f1 f1Var) {
        p0 p0VarZ = this.f16554b.z(f1Var);
        int i10 = 0;
        while (true) {
            g0[] g0VarArr = p0VarZ.f16633k;
            if (i10 >= g0VarArr.length) {
                return p0VarZ;
            }
            Class cls = g0VarArr[i10].f16529a.f17584e;
            if (cls.isEnum() && !(h(cls) instanceof e0)) {
                p0VarZ.f16577i = false;
            }
            i10++;
        }
    }

    private static Member f(Class cls) {
        Field field = null;
        for (Method method : cls.getMethods()) {
            if (method.getReturnType() != Void.class && ((z4.b) method.getAnnotation(z4.b.class)) != null) {
                if (field != null) {
                    return null;
                }
                field = method;
            }
        }
        for (Field field2 : cls.getFields()) {
            if (((z4.b) field2.getAnnotation(z4.b.class)) != null) {
                if (field != null) {
                    return null;
                }
                field = field2;
            }
        }
        return field;
    }

    public static g1 g() {
        return f16546j;
    }

    private void j() {
        k(Boolean.class, t.f16667a);
        k(Character.class, x.f16682a);
        k(Byte.class, j0.f16583a);
        k(Short.class, j0.f16583a);
        k(Integer.class, j0.f16583a);
        k(Long.class, u0.f16673a);
        k(Float.class, h0.f16563b);
        k(Double.class, d0.f16512b);
        k(BigDecimal.class, r.f16663c);
        k(BigInteger.class, s.f16666c);
        k(String.class, k1.f16610a);
        k(byte[].class, a1.f16510a);
        k(short[].class, a1.f16510a);
        k(int[].class, a1.f16510a);
        k(long[].class, a1.f16510a);
        k(float[].class, a1.f16510a);
        k(double[].class, a1.f16510a);
        k(boolean[].class, a1.f16510a);
        k(char[].class, a1.f16510a);
        k(Object[].class, y0.f16684a);
        w0 w0Var = w0.f16679b;
        k(Class.class, w0Var);
        k(SimpleDateFormat.class, w0Var);
        k(Currency.class, new w0());
        k(TimeZone.class, w0Var);
        k(InetAddress.class, w0Var);
        k(Inet4Address.class, w0Var);
        k(Inet6Address.class, w0Var);
        k(InetSocketAddress.class, w0Var);
        k(File.class, w0Var);
        k kVar = k.f16608a;
        k(Appendable.class, kVar);
        k(StringBuffer.class, kVar);
        k(StringBuilder.class, kVar);
        l1 l1Var = l1.f16614a;
        k(Charset.class, l1Var);
        k(Pattern.class, l1Var);
        k(Locale.class, l1Var);
        k(URI.class, l1Var);
        k(URL.class, l1Var);
        k(UUID.class, l1Var);
        m mVar = m.f16615a;
        k(AtomicBoolean.class, mVar);
        k(AtomicInteger.class, mVar);
        k(AtomicLong.class, mVar);
        d1 d1Var = d1.f16514a;
        k(AtomicReference.class, d1Var);
        k(AtomicIntegerArray.class, mVar);
        k(AtomicLongArray.class, mVar);
        k(WeakReference.class, d1Var);
        k(SoftReference.class, d1Var);
        k(LinkedList.class, z.f16685a);
    }

    public z0 b(f1 f1Var) {
        Method method;
        z4.d dVar = f1Var.f16525d;
        boolean z10 = false;
        boolean z11 = this.f16553a && !this.f16559g;
        if (dVar != null) {
            Class clsSerializer = dVar.serializer();
            if (clsSerializer != Void.class) {
                try {
                    Object objNewInstance = clsSerializer.newInstance();
                    if (objNewInstance instanceof z0) {
                        return (z0) objNewInstance;
                    }
                } catch (Throwable unused) {
                }
            }
            if (!dVar.asm()) {
                z11 = false;
            }
            if (z11) {
                for (SerializerFeature serializerFeature : dVar.serialzeFeatures()) {
                    if (SerializerFeature.WriteNonStringValueAsString == serializerFeature || SerializerFeature.WriteEnumUsingToString == serializerFeature || SerializerFeature.NotWriteDefaultValue == serializerFeature || SerializerFeature.BrowserCompatible == serializerFeature) {
                        z11 = false;
                        break;
                    }
                }
            }
            if (z11 && dVar.serialzeFilters().length != 0) {
                z11 = false;
            }
        }
        Class cls = f1Var.f16522a;
        if (!Modifier.isPublic(cls.getModifiers())) {
            return new p0(f1Var);
        }
        if ((z11 && this.f16554b.f16498a.c(cls)) || cls == Serializable.class || cls == Object.class) {
            z11 = false;
        }
        if (z11 && !com.alibaba.fastjson.util.b.a(cls.getSimpleName())) {
            z11 = false;
        }
        if (z11 && f1Var.f16522a.isInterface()) {
            z11 = false;
        }
        if (!z11) {
            z10 = z11;
            break;
        }
        com.alibaba.fastjson.util.d[] dVarArr = f1Var.f16526e;
        int length = dVarArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                z10 = z11;
                break;
            }
            com.alibaba.fastjson.util.d dVar2 = dVarArr[i10];
            Field field = dVar2.f17582c;
            if ((field != null && !field.getType().equals(dVar2.f17584e)) || (((method = dVar2.f17581b) != null && !method.getReturnType().equals(dVar2.f17584e)) || (dVar2.f17584e.isEnum() && d(dVar2.f17584e) != e0.f16515b))) {
                break;
            }
            z4.b bVarE = dVar2.e();
            if (bVarE != null) {
                String str = bVarE.format();
                if ((str.length() != 0 && (dVar2.f17584e != String.class || !"trim".equals(str))) || !com.alibaba.fastjson.util.b.a(bVarE.name()) || bVarE.jsonDirect() || bVarE.serializeUsing() != Void.class || bVarE.unwrapped()) {
                    break;
                }
                for (SerializerFeature serializerFeature2 : bVarE.serialzeFeatures()) {
                    if (SerializerFeature.WriteNonStringValueAsString == serializerFeature2 || SerializerFeature.WriteEnumUsingToString == serializerFeature2 || SerializerFeature.NotWriteDefaultValue == serializerFeature2 || SerializerFeature.BrowserCompatible == serializerFeature2 || SerializerFeature.WriteClassName == serializerFeature2) {
                        z11 = false;
                        break;
                    }
                }
                if (TypeUtils.n0(method) || TypeUtils.m0(method) || (bVarE.defaultValue() != null && !"".equals(bVarE.defaultValue()))) {
                    break;
                }
            }
            i10++;
        }
        if (z10) {
            try {
                p0 p0VarA = a(f1Var);
                if (p0VarA != null) {
                    return p0VarA;
                }
            } catch (ClassCastException | ClassFormatError | ClassNotFoundException unused2) {
            } catch (OutOfMemoryError e10) {
                if (e10.getMessage().indexOf("Metaspace") != -1) {
                    throw e10;
                }
            } catch (Throwable th2) {
                throw new JSONException("create asm serializer error, verson 1.2.83, class " + cls, th2);
            }
        }
        return new p0(f1Var);
    }

    public final z0 c(Class cls) {
        String name = cls.getName();
        if (Arrays.binarySearch(this.f16560h, TypeUtils.J(name)) < 0) {
            f1 f1VarD = TypeUtils.d(cls, null, this.f16556d, this.f16559g);
            return (f1VarD.f16526e.length == 0 && Iterable.class.isAssignableFrom(cls)) ? w0.f16679b : b(f1VarD);
        }
        throw new JSONException("not support class : " + name);
    }

    public final z0 d(Type type) {
        Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return (z0) this.f16557e.b(type);
        }
        com.alibaba.fastjson.util.g gVar = (com.alibaba.fastjson.util.g) this.f16558f.b(type);
        if (gVar == null) {
            return null;
        }
        return (z0) gVar.b(mixInAnnotations);
    }

    protected z0 e() {
        return e0.f16515b;
    }

    public z0 h(Class cls) {
        return i(cls, true);
    }

    /* JADX WARN: Code duplicated, block: B:256:0x045e  */
    /* JADX WARN: Code duplicated, block: B:303:? A[RETURN, SYNTHETIC] */
    public z0 i(Class cls, boolean z10) {
        z0 z0VarC;
        ClassLoader classLoader;
        z0 z0VarD = d(cls);
        if (z0VarD != null) {
            return z0VarD;
        }
        try {
            Iterator it = com.alibaba.fastjson.util.l.a(n.class, Thread.currentThread().getContextClassLoader()).iterator();
            while (it.hasNext()) {
                it.next();
            }
        } catch (ClassCastException unused) {
        }
        z0 z0VarD2 = d(cls);
        if (z0VarD2 == null && (classLoader = com.alibaba.fastjson.a.class.getClassLoader()) != Thread.currentThread().getContextClassLoader()) {
            try {
                Iterator it2 = com.alibaba.fastjson.util.l.a(n.class, classLoader).iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            } catch (ClassCastException unused2) {
            }
            z0VarD2 = d(cls);
        }
        Iterator it3 = this.f16561i.iterator();
        Class<?> cls2 = null;
        memberF = null;
        memberF = null;
        Member memberF = null;
        if (it3.hasNext()) {
            android.support.v4.media.session.c.a(it3.next());
            throw null;
        }
        if (z0VarD2 != null) {
            return z0VarD2;
        }
        String name = cls.getName();
        if (Map.class.isAssignableFrom(cls)) {
            z0VarC = v0.f16676j;
            k(cls, z0VarC);
        } else if (List.class.isAssignableFrom(cls)) {
            z0VarC = t0.f16668a;
            k(cls, z0VarC);
        } else if (Collection.class.isAssignableFrom(cls)) {
            z0VarC = z.f16685a;
            k(cls, z0VarC);
        } else if (Date.class.isAssignableFrom(cls)) {
            z0VarC = c0.f16511a;
            k(cls, z0VarC);
        } else if (com.alibaba.fastjson.b.class.isAssignableFrom(cls)) {
            z0VarC = k0.f16609a;
            k(cls, z0VarC);
        } else if (m0.class.isAssignableFrom(cls)) {
            z0VarC = n0.f16616a;
            k(cls, z0VarC);
        } else if (com.alibaba.fastjson.e.class.isAssignableFrom(cls)) {
            z0VarC = w0.f16679b;
            k(cls, z0VarC);
        } else if (cls.isEnum()) {
            Class cls3 = (Class) com.alibaba.fastjson.a.getMixInAnnotations(cls);
            z4.d dVar = cls3 != null ? (z4.d) TypeUtils.N(cls3, z4.d.class) : (z4.d) TypeUtils.N(cls, z4.d.class);
            if (dVar == null || !dVar.serializeEnumAsJavaBean()) {
                if (cls3 != null) {
                    Member memberF2 = f(cls3);
                    if (memberF2 != null) {
                        try {
                            if (memberF2 instanceof Method) {
                                Method method = (Method) memberF2;
                                memberF = cls.getMethod(method.getName(), method.getParameterTypes());
                            }
                        } catch (Exception unused3) {
                        }
                    }
                } else {
                    memberF = f(cls);
                }
                if (memberF != null) {
                    z0VarC = new e0(memberF);
                    k(cls, z0VarC);
                } else {
                    z0VarC = e();
                    k(cls, z0VarC);
                }
            } else {
                z0VarC = c(cls);
                k(cls, z0VarC);
            }
        } else {
            Class superclass = cls.getSuperclass();
            if (superclass == null || !superclass.isEnum()) {
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    l lVar = new l(componentType, h(componentType));
                    k(cls, lVar);
                    z0VarD2 = lVar;
                } else if (Throwable.class.isAssignableFrom(cls)) {
                    f1 f1VarC = TypeUtils.c(cls, null, this.f16556d);
                    f1VarC.f16528g |= SerializerFeature.WriteClassName.mask;
                    p0 p0Var = new p0(f1VarC);
                    k(cls, p0Var);
                    z0VarD2 = p0Var;
                } else if (TimeZone.class.isAssignableFrom(cls) || Map.Entry.class.isAssignableFrom(cls)) {
                    z0VarC = w0.f16679b;
                    k(cls, z0VarC);
                } else if (Appendable.class.isAssignableFrom(cls)) {
                    z0VarC = k.f16608a;
                    k(cls, z0VarC);
                } else if (Charset.class.isAssignableFrom(cls)) {
                    z0VarC = l1.f16614a;
                    k(cls, z0VarC);
                } else if (Enumeration.class.isAssignableFrom(cls)) {
                    z0VarC = f0.f16521a;
                    k(cls, z0VarC);
                } else if (Calendar.class.isAssignableFrom(cls) || XMLGregorianCalendar.class.isAssignableFrom(cls)) {
                    z0VarC = v.f16674b;
                    k(cls, z0VarC);
                } else if (TypeUtils.o0(cls)) {
                    z0VarC = y.f16683a;
                    k(cls, z0VarC);
                } else if (TypeUtils.w0(cls)) {
                    z0VarC = l1.f16614a;
                    k(cls, z0VarC);
                } else if (Iterator.class.isAssignableFrom(cls)) {
                    z0VarC = w0.f16679b;
                    k(cls, z0VarC);
                } else if (Node.class.isAssignableFrom(cls)) {
                    z0VarC = w0.f16679b;
                    k(cls, z0VarC);
                } else {
                    int i10 = 0;
                    if (name.startsWith("java.awt.") && o.j(cls) && !f16547k) {
                        try {
                            String[] strArr = {"java.awt.Color", "java.awt.Font", "java.awt.Point", "java.awt.Rectangle"};
                            for (int i11 = 0; i11 < 4; i11++) {
                                String str = strArr[i11];
                                if (str.equals(name)) {
                                    Class<?> cls4 = Class.forName(str);
                                    z0VarD2 = o.f16617a;
                                    k(cls4, z0VarD2);
                                    return z0VarD2;
                                }
                            }
                        } catch (Throwable unused4) {
                            f16547k = true;
                        }
                    }
                    if (!f16548l && (name.startsWith("java.time.") || name.startsWith("java.util.Optional") || name.equals("java.util.concurrent.atomic.LongAdder") || name.equals("java.util.concurrent.atomic.DoubleAdder"))) {
                        try {
                            String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                            for (int i12 = 0; i12 < 11; i12++) {
                                String str2 = strArr2[i12];
                                if (str2.equals(name)) {
                                    Class<?> cls5 = Class.forName(str2);
                                    y1 y1Var = y1.f15569a;
                                    k(cls5, y1Var);
                                    return y1Var;
                                }
                            }
                            String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                            for (int i13 = 0; i13 < 4; i13++) {
                                String str3 = strArr3[i13];
                                if (str3.equals(name)) {
                                    Class<?> cls6 = Class.forName(str3);
                                    d3 d3Var = d3.f15535a;
                                    k(cls6, d3Var);
                                    return d3Var;
                                }
                            }
                            String[] strArr4 = {"java.util.concurrent.atomic.LongAdder", "java.util.concurrent.atomic.DoubleAdder"};
                            for (int i14 = 0; i14 < 2; i14++) {
                                String str4 = strArr4[i14];
                                if (str4.equals(name)) {
                                    Class<?> cls7 = Class.forName(str4);
                                    h hVar = h.f16562a;
                                    k(cls7, hVar);
                                    return hVar;
                                }
                            }
                        } catch (Throwable unused5) {
                            f16548l = true;
                        }
                    }
                    if (!f16549m && name.startsWith("oracle.sql.")) {
                        try {
                            String[] strArr5 = {"oracle.sql.DATE", "oracle.sql.TIMESTAMP"};
                            for (int i15 = 0; i15 < 2; i15++) {
                                String str5 = strArr5[i15];
                                if (str5.equals(name)) {
                                    Class<?> cls8 = Class.forName(str5);
                                    z0VarD2 = c0.f16511a;
                                    k(cls8, z0VarD2);
                                    return z0VarD2;
                                }
                            }
                        } catch (Throwable unused6) {
                            f16549m = true;
                        }
                    }
                    if (!f16550n && name.equals("springfox.documentation.spring.web.json.Json")) {
                        try {
                            Class<?> cls9 = Class.forName("springfox.documentation.spring.web.json.Json");
                            z0VarD2 = g5.a.f60664a;
                            k(cls9, z0VarD2);
                            return z0VarD2;
                        } catch (ClassNotFoundException unused7) {
                            f16550n = true;
                        }
                    }
                    if (!f16551o && name.startsWith("com.google.common.collect.")) {
                        try {
                            String[] strArr6 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                            for (int i16 = 0; i16 < 5; i16++) {
                                String str6 = strArr6[i16];
                                if (str6.equals(name)) {
                                    Class<?> cls10 = Class.forName(str6);
                                    z0VarD2 = i0.f16568a;
                                    k(cls10, z0VarD2);
                                    return z0VarD2;
                                }
                            }
                        } catch (ClassNotFoundException unused8) {
                            f16551o = true;
                        }
                    }
                    if (name.equals("net.sf.json.JSONNull")) {
                        w0 w0Var = w0.f16679b;
                        k(cls, w0Var);
                        return w0Var;
                    }
                    if (name.equals("org.json.JSONObject")) {
                        l0 l0Var = l0.f16613a;
                        k(cls, l0Var);
                        return l0Var;
                    }
                    if (!f16552p && name.startsWith("org.joda.")) {
                        try {
                            String[] strArr7 = {"org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.DateTime", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.UTCDateTimeZone", "org.joda.time.tz.CachedDateTimeZone", "org.joda.time.tz.FixedDateTimeZone"};
                            for (int i17 = 0; i17 < 11; i17++) {
                                String str7 = strArr7[i17];
                                if (str7.equals(name)) {
                                    Class<?> cls11 = Class.forName(str7);
                                    z0VarD2 = q0.f16640a;
                                    k(cls11, z0VarD2);
                                    return z0VarD2;
                                }
                            }
                        } catch (ClassNotFoundException unused9) {
                            f16552p = true;
                        }
                    }
                    if ("java.nio.HeapByteBuffer".equals(name)) {
                        u uVar = u.f16669a;
                        k(cls, uVar);
                        return uVar;
                    }
                    if ("org.javamoney.moneta.Money".equals(name)) {
                        f5.a aVar = f5.a.f60038a;
                        k(cls, aVar);
                        return aVar;
                    }
                    if ("com.google.protobuf.Descriptors$FieldDescriptor".equals(name)) {
                        l1 l1Var = l1.f16614a;
                        k(cls, l1Var);
                        return l1Var;
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
                        k(cls, j.f16582e);
                        return j.f16582e;
                    }
                    if (TypeUtils.x0(cls)) {
                        z0 z0VarH = h(cls.getSuperclass());
                        k(cls, z0VarH);
                        return z0VarH;
                    }
                    if (Proxy.isProxyClass(cls)) {
                        if (interfaces.length != 2) {
                            int length = interfaces.length;
                            Class<?> cls12 = null;
                            while (true) {
                                if (i10 >= length) {
                                    cls2 = cls12;
                                    break;
                                }
                                Class<?> cls13 = interfaces[i10];
                                if (!cls13.getName().startsWith("org.springframework.aop.")) {
                                    if (cls12 != null) {
                                        break;
                                    }
                                    cls12 = cls13;
                                }
                                i10++;
                            }
                        } else {
                            cls2 = interfaces[1];
                        }
                        if (cls2 != null) {
                            z0 z0VarH2 = h(cls2);
                            k(cls, z0VarH2);
                            return z0VarH2;
                        }
                    }
                    if (z10) {
                        z0VarC = c(cls);
                        k(cls, z0VarC);
                    }
                }
                if (z0VarD2 == null) {
                    return d(cls);
                }
                return z0VarD2;
            }
            z4.d dVar2 = (z4.d) TypeUtils.N(superclass, z4.d.class);
            if (dVar2 == null || !dVar2.serializeEnumAsJavaBean()) {
                z0VarC = e();
                k(cls, z0VarC);
            } else {
                z0VarC = c(cls);
                k(cls, z0VarC);
            }
        }
        z0VarD2 = z0VarC;
        if (z0VarD2 == null) {
            return d(cls);
        }
        return z0VarD2;
    }

    public boolean k(Type type, z0 z0Var) {
        Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return this.f16557e.c(type, z0Var);
        }
        com.alibaba.fastjson.util.g gVar = (com.alibaba.fastjson.util.g) this.f16558f.b(type);
        if (gVar == null) {
            gVar = new com.alibaba.fastjson.util.g(4);
            this.f16558f.c(type, gVar);
        }
        return gVar.c(mixInAnnotations, z0Var);
    }

    public void l(boolean z10) {
        if (com.alibaba.fastjson.util.b.f17579b) {
            return;
        }
        this.f16553a = z10;
    }

    public g1(int i10) {
        this(i10, false);
    }

    public g1(int i10, boolean z10) {
        this.f16553a = !com.alibaba.fastjson.util.b.f17579b;
        this.f16555c = com.alibaba.fastjson.a.DEFAULT_TYPE_KEY;
        this.f16560h = new long[]{4165360493669296979L, 4446674157046724083L};
        this.f16561i = new ArrayList();
        this.f16559g = z10;
        this.f16557e = new com.alibaba.fastjson.util.g(i10);
        this.f16558f = new com.alibaba.fastjson.util.g(16);
        try {
            if (this.f16553a) {
                this.f16554b = new a();
            }
        } catch (Throwable unused) {
            this.f16553a = false;
        }
        j();
    }
}
