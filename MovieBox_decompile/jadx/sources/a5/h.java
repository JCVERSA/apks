package a5;

import b5.a2;
import b5.b2;
import b5.d3;
import b5.f3;
import b5.g3;
import b5.i3;
import b5.j3;
import b5.k3;
import b5.l;
import b5.l3;
import b5.n;
import b5.o;
import b5.p;
import b5.y1;
import b5.z1;
import c5.c0;
import c5.d1;
import c5.h0;
import c5.i0;
import c5.j0;
import c5.k1;
import c5.m;
import c5.q0;
import c5.r;
import c5.s;
import c5.t;
import c5.u;
import c5.u0;
import c5.v;
import c5.w;
import c5.w0;
import c5.x;
import c5.y0;
import c5.z;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.asm.TypeCollector;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.AccessControlException;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.sql.DataSource;
import javax.sql.RowSet;
import javax.xml.datatype.XMLGregorianCalendar;

public class h {
    private static boolean A;
    private static boolean B;
    private static boolean C;
    private static boolean D;
    private static com.alibaba.fastjson.util.e E;

    private static final String[] f184v;

    private static final long[] f187y;

    public static h f188z;

    private final com.alibaba.fastjson.util.g f189a;

    private final com.alibaba.fastjson.util.g f190b;

    private final ConcurrentMap f191c;

    private boolean f192d;

    public final i f193e;

    public PropertyNamingStrategy f194f;

    protected ClassLoader f195g;

    protected b5.a f196h;

    private boolean f197i;

    private long[] f198j;

    private long[] f199k;

    private long[] f200l;

    public final boolean f201m;

    private boolean f202n;

    public boolean f203o;

    private List f204p;

    private volatile List f205q;

    private boolean f206r;

    private final Callable f207s;

    public static final String[] f182t = B(com.alibaba.fastjson.util.f.j("fastjson.parser.deny.internal"));

    public static final String[] f183u = B(com.alibaba.fastjson.util.f.j("fastjson.parser.deny"));

    public static final boolean f185w = "true".equals(com.alibaba.fastjson.util.f.j("fastjson.parser.autoTypeSupport"));

    public static final boolean f186x = "true".equals(com.alibaba.fastjson.util.f.j("fastjson.parser.safeMode"));

    class a implements Callable {
        a() {
        }

        @Override
        public Void call() {
            h.this.f189a.c(Timestamp.class, i3.f15552c);
            h.this.f189a.c(Date.class, i3.f15551b);
            h.this.f189a.c(Time.class, l3.f15557a);
            h.this.f189a.c(java.util.Date.class, c0.f16511a);
            return null;
        }
    }

    static class b implements com.alibaba.fastjson.util.e {
        b() {
        }

        @Override
        public Boolean apply(Class cls) {
            return Boolean.valueOf(cls == Date.class || cls == Time.class || cls == Timestamp.class);
        }
    }

    public interface c {
    }

    static {
        String[] strArrB = B(com.alibaba.fastjson.util.f.j("fastjson.parser.autoTypeAccept"));
        if (strArrB == null) {
            strArrB = new String[0];
        }
        f184v = strArrB;
        f187y = new long[]{-6976602508726000783L, -6293031534589903644L, 59775428743665658L, 7267793227937552092L};
        f188z = new h();
        A = false;
        B = false;
        C = false;
        D = false;
        E = new b();
    }

    public h() {
        this(false);
    }

    private static String[] B(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.split(",");
    }

    private void e(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            b(str);
        }
    }

    private void f(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            c(str);
        }
    }

    private void g(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            d(str);
        }
    }

    private static Method q(Class cls, Class cls2) {
        for (Method method : cls.getMethods()) {
            if (Modifier.isStatic(method.getModifiers()) && method.getReturnType() == cls2 && method.getParameterTypes().length == 1 && ((z4.a) method.getAnnotation(z4.a.class)) != null) {
                return method;
            }
        }
        return null;
    }

    public static Field s(String str, Map map) {
        Field field = (Field) map.get(str);
        if (field == null) {
            field = (Field) map.get("_" + str);
        }
        if (field == null) {
            field = (Field) map.get("m_" + str);
        }
        if (field != null) {
            return field;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] - ' ');
            field = (Field) map.get(new String(charArray));
        }
        if (str.length() <= 2) {
            return field;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt < 'a' || cCharAt > 'z' || cCharAt2 < 'A' || cCharAt2 > 'Z') {
            return field;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                return (Field) entry.getValue();
            }
        }
        return field;
    }

    public static h t() {
        return f188z;
    }

    private void u() {
        com.alibaba.fastjson.util.g gVar = this.f189a;
        w0 w0Var = w0.f16679b;
        gVar.c(SimpleDateFormat.class, w0Var);
        com.alibaba.fastjson.util.g gVar2 = this.f189a;
        v vVar = v.f16674b;
        gVar2.c(Calendar.class, vVar);
        this.f189a.c(XMLGregorianCalendar.class, vVar);
        this.f189a.c(JSONObject.class, z1.f15590a);
        com.alibaba.fastjson.util.g gVar3 = this.f189a;
        z zVar = z.f16685a;
        gVar3.c(JSONArray.class, zVar);
        this.f189a.c(Map.class, z1.f15590a);
        this.f189a.c(HashMap.class, z1.f15590a);
        this.f189a.c(LinkedHashMap.class, z1.f15590a);
        this.f189a.c(TreeMap.class, z1.f15590a);
        this.f189a.c(ConcurrentMap.class, z1.f15590a);
        this.f189a.c(ConcurrentHashMap.class, z1.f15590a);
        this.f189a.c(Collection.class, zVar);
        this.f189a.c(List.class, zVar);
        this.f189a.c(ArrayList.class, zVar);
        com.alibaba.fastjson.util.g gVar4 = this.f189a;
        p pVar = p.f15568a;
        gVar4.c(Object.class, pVar);
        this.f189a.c(String.class, k1.f16610a);
        this.f189a.c(StringBuffer.class, k1.f16610a);
        this.f189a.c(StringBuilder.class, k1.f16610a);
        com.alibaba.fastjson.util.g gVar5 = this.f189a;
        Class cls = Character.TYPE;
        x xVar = x.f16682a;
        gVar5.c(cls, xVar);
        this.f189a.c(Character.class, xVar);
        com.alibaba.fastjson.util.g gVar6 = this.f189a;
        Class cls2 = Byte.TYPE;
        a2 a2Var = a2.f15531a;
        gVar6.c(cls2, a2Var);
        this.f189a.c(Byte.class, a2Var);
        this.f189a.c(Short.TYPE, a2Var);
        this.f189a.c(Short.class, a2Var);
        this.f189a.c(Integer.TYPE, j0.f16583a);
        this.f189a.c(Integer.class, j0.f16583a);
        this.f189a.c(Long.TYPE, u0.f16673a);
        this.f189a.c(Long.class, u0.f16673a);
        this.f189a.c(BigInteger.class, s.f16666c);
        this.f189a.c(BigDecimal.class, r.f16663c);
        this.f189a.c(Float.TYPE, h0.f16563b);
        this.f189a.c(Float.class, h0.f16563b);
        this.f189a.c(Double.TYPE, a2Var);
        this.f189a.c(Double.class, a2Var);
        com.alibaba.fastjson.util.g gVar7 = this.f189a;
        Class cls3 = Boolean.TYPE;
        t tVar = t.f16667a;
        gVar7.c(cls3, tVar);
        this.f189a.c(Boolean.class, tVar);
        this.f189a.c(Class.class, w0Var);
        this.f189a.c(char[].class, new w());
        this.f189a.c(AtomicBoolean.class, tVar);
        this.f189a.c(AtomicInteger.class, j0.f16583a);
        this.f189a.c(AtomicLong.class, u0.f16673a);
        com.alibaba.fastjson.util.g gVar8 = this.f189a;
        d1 d1Var = d1.f16514a;
        gVar8.c(AtomicReference.class, d1Var);
        this.f189a.c(WeakReference.class, d1Var);
        this.f189a.c(SoftReference.class, d1Var);
        this.f189a.c(UUID.class, w0Var);
        this.f189a.c(TimeZone.class, w0Var);
        this.f189a.c(Locale.class, w0Var);
        this.f189a.c(Currency.class, w0Var);
        this.f189a.c(Inet4Address.class, w0Var);
        this.f189a.c(Inet6Address.class, w0Var);
        this.f189a.c(InetSocketAddress.class, w0Var);
        this.f189a.c(File.class, w0Var);
        this.f189a.c(URI.class, w0Var);
        this.f189a.c(URL.class, w0Var);
        this.f189a.c(Pattern.class, w0Var);
        this.f189a.c(Charset.class, w0Var);
        this.f189a.c(JSONPath.class, w0Var);
        this.f189a.c(Number.class, a2Var);
        com.alibaba.fastjson.util.g gVar9 = this.f189a;
        m mVar = m.f16615a;
        gVar9.c(AtomicIntegerArray.class, mVar);
        this.f189a.c(AtomicLongArray.class, mVar);
        this.f189a.c(StackTraceElement.class, j3.f15554a);
        this.f189a.c(Serializable.class, pVar);
        this.f189a.c(Cloneable.class, pVar);
        this.f189a.c(Comparable.class, pVar);
        this.f189a.c(Closeable.class, pVar);
        this.f189a.c(com.alibaba.fastjson.c.class, new n());
        com.alibaba.fastjson.util.i.c(this.f207s);
    }

    public static boolean w(Class cls) {
        boolean z10 = cls.isPrimitive() || cls == Boolean.class || cls == Character.class || cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == String.class || cls == java.util.Date.class || cls.isEnum();
        Boolean boolValueOf = Boolean.valueOf(z10);
        if (!z10) {
            boolValueOf = (Boolean) com.alibaba.fastjson.util.i.b(E, cls);
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    public static void y(Class cls, Map map) {
        for (Field field : cls.getDeclaredFields()) {
            String name = field.getName();
            if (!map.containsKey(name)) {
                map.put(name, field);
            }
        }
        if (cls.getSuperclass() == null || cls.getSuperclass() == Object.class) {
            return;
        }
        y(cls.getSuperclass(), map);
    }

    public void A(boolean z10) {
        this.f192d = z10;
    }

    public void b(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long J = TypeUtils.J(str);
        if (Arrays.binarySearch(this.f200l, J) >= 0) {
            return;
        }
        long[] jArr = this.f200l;
        int length = jArr.length;
        long[] jArr2 = new long[length + 1];
        jArr2[length] = J;
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        Arrays.sort(jArr2);
        this.f200l = jArr2;
    }

    public void c(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long J = TypeUtils.J(str);
        if (Arrays.binarySearch(this.f199k, J) >= 0) {
            return;
        }
        long[] jArr = this.f199k;
        int length = jArr.length;
        long[] jArr2 = new long[length + 1];
        jArr2[length] = J;
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        Arrays.sort(jArr2);
        this.f199k = jArr2;
    }

    public void d(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long J = TypeUtils.J(str);
        long[] jArr = this.f198j;
        if (jArr == null) {
            this.f198j = new long[]{J};
            return;
        }
        if (Arrays.binarySearch(jArr, J) >= 0) {
            return;
        }
        long[] jArr2 = this.f198j;
        int length = jArr2.length;
        long[] jArr3 = new long[1 + length];
        jArr3[length] = J;
        System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
        Arrays.sort(jArr3);
        this.f198j = jArr3;
    }

    public Class h(Class cls) {
        return m(cls) != null ? cls : j(cls.getName(), null, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    public Class i(String str, Class cls) {
        return j(str, cls, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    /* JADX WARN: Code duplicated, block: B:173:0x030b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:175:0x030f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:176:0x0311 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:179:0x0316  */
    /* JADX WARN: Code duplicated, block: B:182:0x031f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:183:0x0321 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:184:0x0323  */
    /* JADX WARN: Code duplicated, block: B:186:0x0327  */
    /* JADX WARN: Code duplicated, block: B:188:0x032f  */
    /* JADX WARN: Code duplicated, block: B:209:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:211:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:213:0x03b1 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:217:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:218:0x03cb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    public Class j(String str, Class cls, int i10) throws Throwable {
        boolean z10;
        InputStream resourceAsStream;
        boolean z11;
        boolean zC;
        boolean z12;
        long j10;
        Class clsC0;
        if (str == null) {
            return null;
        }
        if (this.f205q != null) {
            Iterator it = this.f205q.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        int i11 = Feature.SafeMode.mask;
        if (this.f206r || (i10 & i11) != 0 || (i11 & com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE) != 0) {
            throw new JSONException("safeMode not support autoType : " + str);
        }
        int i12 = Feature.SupportAutoType.mask;
        boolean z13 = true;
        boolean z14 = (!this.f197i && (i10 & i12) == 0 && (i12 & com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE) == 0) ? false : true;
        if (str.length() >= 192 || str.length() < 3) {
            throw new JSONException("autoType is not support. " + str);
        }
        if (cls == null) {
            z10 = false;
        } else {
            long J = TypeUtils.J(cls.getName());
            if (J == -8024746738719829346L || J == 3247277300971823414L || J == -5811778396720452501L || J == -1368967840069965882L || J == 2980334044947851925L || J == 5183404141909004468L || J == 7222019943667248779L || J == -2027296626235911549L || J == -2114196234051346931L || J == -2939497380989775398L) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        String strReplace = str.replace('$', '.');
        long jCharAt = (((long) strReplace.charAt(0)) ^ (-3750763034362895579L)) * 1099511628211L;
        if (jCharAt == -5808493101479473382L) {
            throw new JSONException("autoType is not support. " + str);
        }
        boolean z15 = z14;
        if ((((long) strReplace.charAt(strReplace.length() - 1)) ^ jCharAt) * 1099511628211L == 655701488918567152L) {
            throw new JSONException("autoType is not support. " + str);
        }
        long jCharAt2 = (((((((long) strReplace.charAt(0)) ^ (-3750763034362895579L)) * 1099511628211L) ^ ((long) strReplace.charAt(1))) * 1099511628211L) ^ ((long) strReplace.charAt(2))) * 1099511628211L;
        long J2 = TypeUtils.J(strReplace);
        boolean z16 = Arrays.binarySearch(f187y, J2) >= 0;
        if (this.f198j != null) {
            long j11 = jCharAt2;
            int i13 = 3;
            while (i13 < strReplace.length()) {
                long j12 = J2;
                long jCharAt3 = (j11 ^ ((long) strReplace.charAt(i13))) * 1099511628211L;
                if (Arrays.binarySearch(this.f198j, jCharAt3) >= 0) {
                    throw new JSONException("autoType is not support. " + str);
                }
                i13++;
                j11 = jCharAt3;
                J2 = j12;
            }
        }
        long j13 = J2;
        if (!z16 && (z15 || z10)) {
            long jCharAt4 = jCharAt2;
            int i14 = 3;
            while (i14 < strReplace.length()) {
                jCharAt4 = (jCharAt4 ^ ((long) strReplace.charAt(i14))) * 1099511628211L;
                if (Arrays.binarySearch(this.f200l, jCharAt4) >= 0 && (clsC0 = TypeUtils.C0(str, this.f195g, z13)) != null) {
                    return clsC0;
                }
                if (Arrays.binarySearch(this.f199k, jCharAt4) < 0 || TypeUtils.R(str) != null) {
                    j10 = j13;
                } else {
                    j10 = j13;
                    if (Arrays.binarySearch(this.f200l, j10) < 0) {
                        throw new JSONException("autoType is not support. " + str);
                    }
                }
                i14++;
                j13 = j10;
                z13 = true;
            }
        }
        Class clsR = TypeUtils.R(str);
        if (clsR == null) {
            clsR = this.f189a.a(str);
        }
        if (cls == null && clsR != null && Throwable.class.isAssignableFrom(clsR) && !z15) {
            clsR = null;
        }
        if (clsR == null) {
            clsR = (Class) this.f191c.get(str);
        }
        if (z16) {
            clsR = TypeUtils.C0(str, this.f195g, true);
        }
        if (clsR != null) {
            if (cls == null || clsR == HashMap.class || clsR == LinkedHashMap.class || cls.isAssignableFrom(clsR)) {
                return clsR;
            }
            throw new JSONException("type not match. " + str + " -> " + cls.getName());
        }
        if (!z15) {
            for (int i15 = 3; i15 < strReplace.length(); i15++) {
                jCharAt2 = (jCharAt2 ^ ((long) strReplace.charAt(i15))) * 1099511628211L;
                if (Arrays.binarySearch(this.f199k, jCharAt2) >= 0) {
                    if (str.endsWith("Exception") || str.endsWith("Error")) {
                        return null;
                    }
                    throw new JSONException("autoType is not support. " + str);
                }
                if (Arrays.binarySearch(this.f200l, jCharAt2) >= 0) {
                    Class<?> clsC1 = TypeUtils.C0(str, this.f195g, true);
                    if (clsC1 == null) {
                        return cls;
                    }
                    if (cls == null || !cls.isAssignableFrom(clsC1)) {
                        return clsC1;
                    }
                    throw new JSONException("type not match. " + str + " -> " + cls.getName());
                }
            }
        }
        try {
            try {
                String str2 = str.replace('.', '/') + ".class";
                ClassLoader classLoader = this.f195g;
                if (classLoader != null) {
                    try {
                        resourceAsStream = classLoader.getResourceAsStream(str2);
                    } catch (Exception unused) {
                        resourceAsStream = null;
                        z11 = false;
                        com.alibaba.fastjson.util.f.a(resourceAsStream);
                        zC = z11;
                        if (z15) {
                            if (z15) {
                                z12 = true;
                            } else {
                                z12 = true;
                            }
                            clsR = TypeUtils.C0(str, this.f195g, z12);
                        } else {
                            if (z15) {
                                z12 = true;
                            } else {
                                z12 = true;
                            }
                            clsR = TypeUtils.C0(str, this.f195g, z12);
                        }
                        if (clsR != null) {
                            if (zC) {
                                if (z15) {
                                    TypeUtils.b(str, clsR);
                                }
                                return clsR;
                            }
                            if (ClassLoader.class.isAssignableFrom(clsR)) {
                            }
                            throw new JSONException("autoType is not support. " + str);
                        }
                        if (!z15) {
                            if (clsR != null) {
                                TypeUtils.b(str, clsR);
                            }
                            return clsR;
                        }
                        if (str.endsWith("Exception")) {
                            return null;
                        }
                        return null;
                    }
                } else {
                    resourceAsStream = h.class.getClassLoader().getResourceAsStream(str2);
                }
                if (resourceAsStream != null) {
                    try {
                        try {
                            com.alibaba.fastjson.asm.b bVar = new com.alibaba.fastjson.asm.b(resourceAsStream, true);
                            z11 = false;
                            try {
                                TypeCollector typeCollector = new TypeCollector("<clinit>", new Class[0]);
                                bVar.a(typeCollector);
                                zC = typeCollector.c();
                            } catch (Exception unused2) {
                                com.alibaba.fastjson.util.f.a(resourceAsStream);
                                zC = z11;
                            }
                        } catch (Exception unused3) {
                            z11 = false;
                            com.alibaba.fastjson.util.f.a(resourceAsStream);
                            zC = z11;
                            if (z15) {
                                if (z15) {
                                    z12 = true;
                                } else {
                                    z12 = true;
                                }
                                clsR = TypeUtils.C0(str, this.f195g, z12);
                            } else {
                                if (z15) {
                                    z12 = true;
                                } else {
                                    z12 = true;
                                }
                                clsR = TypeUtils.C0(str, this.f195g, z12);
                            }
                            if (clsR != null) {
                                if (zC) {
                                    if (z15) {
                                        TypeUtils.b(str, clsR);
                                    }
                                    return clsR;
                                }
                                if (ClassLoader.class.isAssignableFrom(clsR)) {
                                }
                                throw new JSONException("autoType is not support. " + str);
                            }
                            if (!z15) {
                                if (str.endsWith("Exception")) {
                                    return null;
                                }
                                return null;
                            }
                            if (clsR != null) {
                                TypeUtils.b(str, clsR);
                            }
                            return clsR;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        com.alibaba.fastjson.util.f.a(resourceAsStream);
                        throw th;
                    }
                } else {
                    z11 = false;
                    zC = false;
                }
                com.alibaba.fastjson.util.f.a(resourceAsStream);
            } catch (Exception unused4) {
                z11 = false;
                resourceAsStream = null;
            }
            if (z15 || zC || z10) {
                if (z15 || zC) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                clsR = TypeUtils.C0(str, this.f195g, z12);
            }
            if (clsR != null) {
                if (zC) {
                    if (z15) {
                        TypeUtils.b(str, clsR);
                    }
                    return clsR;
                }
                if (!ClassLoader.class.isAssignableFrom(clsR) || DataSource.class.isAssignableFrom(clsR) || RowSet.class.isAssignableFrom(clsR)) {
                    throw new JSONException("autoType is not support. " + str);
                }
                if (cls != null) {
                    if (cls.isAssignableFrom(clsR)) {
                        if (z15) {
                            TypeUtils.b(str, clsR);
                        }
                        return clsR;
                    }
                    throw new JSONException("type not match. " + str + " -> " + cls.getName());
                }
                if (com.alibaba.fastjson.util.h.b(clsR, clsR, this.f194f).f17628d != null && z15) {
                    throw new JSONException("autoType is not support. " + str);
                }
            }
            if (!z15) {
                if (clsR != null && z15) {
                    TypeUtils.b(str, clsR);
                }
                return clsR;
            }
            if (str.endsWith("Exception") || str.endsWith("Error")) {
                return null;
            }
            throw new JSONException("autoType is not support. " + str);
        } catch (Throwable th3) {
            th = th3;
            resourceAsStream = null;
        }
    }

    public l k(h hVar, com.alibaba.fastjson.util.h hVar2, com.alibaba.fastjson.util.d dVar) {
        Class clsDeserializeUsing;
        Class cls = hVar2.f17625a;
        Class cls2 = dVar.f17584e;
        z4.b bVarE = dVar.e();
        Class cls3 = null;
        if (bVarE != null && (clsDeserializeUsing = bVarE.deserializeUsing()) != Void.class) {
            cls3 = clsDeserializeUsing;
        }
        return (cls3 == null && (cls2 == List.class || cls2 == ArrayList.class)) ? new b5.c(hVar, cls, dVar) : new b5.f(hVar, cls, dVar);
    }

    public b2 l(Class cls, Type type) {
        z4.b bVarE;
        Method method;
        b5.a aVar;
        boolean zA = this.f192d & (!this.f201m);
        if (zA) {
            z4.d dVar = (z4.d) TypeUtils.N(cls, z4.d.class);
            if (dVar != null) {
                Class clsDeserializer = dVar.deserializer();
                if (clsDeserializer != Void.class) {
                    try {
                        Object objNewInstance = clsDeserializer.newInstance();
                        if (objNewInstance instanceof b2) {
                            return (b2) objNewInstance;
                        }
                    } catch (Throwable unused) {
                    }
                }
                zA = dVar.asm() && dVar.parseFeatures().length == 0;
            }
            if (zA) {
                Class clsF = com.alibaba.fastjson.util.h.f(cls, dVar);
                if (clsF == null) {
                    clsF = cls;
                }
                do {
                    if (!Modifier.isPublic(clsF.getModifiers())) {
                        zA = false;
                        break;
                    }
                    clsF = clsF.getSuperclass();
                    if (clsF == Object.class) {
                        break;
                    }
                } while (clsF != null);
            }
        }
        if (cls.getTypeParameters().length != 0) {
            zA = false;
        }
        if (zA && (aVar = this.f196h) != null && aVar.f15523a.c(cls)) {
            zA = false;
        }
        if (zA) {
            zA = com.alibaba.fastjson.util.b.a(cls.getSimpleName());
        }
        if (zA) {
            if (cls.isInterface()) {
                zA = false;
            }
            com.alibaba.fastjson.util.h hVarC = com.alibaba.fastjson.util.h.c(cls, type, this.f194f, false, TypeUtils.f17551b, this.f202n);
            if (zA && hVarC.f17632h.length > 200) {
                zA = false;
            }
            Constructor constructor = hVarC.f17627c;
            if (zA && constructor == null && !cls.isInterface()) {
                zA = false;
            }
            for (com.alibaba.fastjson.util.d dVar2 : hVarC.f17632h) {
                if (!dVar2.f17587h) {
                    Class cls2 = dVar2.f17584e;
                    if (Modifier.isPublic(cls2.getModifiers()) && ((!cls2.isMemberClass() || Modifier.isStatic(cls2.getModifiers())) && ((dVar2.m() == null || com.alibaba.fastjson.util.b.a(dVar2.m().getName())) && (((bVarE = dVar2.e()) == null || (com.alibaba.fastjson.util.b.a(bVarE.name()) && bVarE.format().length() == 0 && bVarE.deserializeUsing() == Void.class && bVarE.parseFeatures().length == 0 && !bVarE.unwrapped())) && (((method = dVar2.f17581b) == null || method.getParameterTypes().length <= 1) && (!cls2.isEnum() || (p(cls2) instanceof b5.h))))))) {
                    }
                }
                zA = false;
                break;
            }
        }
        if (zA && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            zA = false;
        }
        if (!((zA && TypeUtils.z0(cls)) ? false : zA)) {
            return new o(this, cls, type);
        }
        com.alibaba.fastjson.util.h hVarB = com.alibaba.fastjson.util.h.b(cls, type, this.f194f);
        try {
            return this.f196h.v(this, hVarB);
        } catch (JSONException unused2) {
            return new o(this, hVarB);
        } catch (NoSuchMethodException unused3) {
            return new o(this, cls, type);
        } catch (Exception e10) {
            throw new JSONException("create asm deserializer error, " + cls.getName(), e10);
        }
    }

    public b2 m(Type type) {
        Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return (b2) this.f189a.b(type);
        }
        com.alibaba.fastjson.util.g gVar = (com.alibaba.fastjson.util.g) this.f190b.b(type);
        if (gVar == null) {
            return null;
        }
        return (b2) gVar.b(mixInAnnotations);
    }

    public ClassLoader n() {
        return this.f195g;
    }

    public b2 o(Class cls, Type type) {
        b2 b2VarL;
        b2 g3Var;
        Class clsMappingTo;
        Type type2 = type;
        b2 b2VarM = m(type2);
        if (b2VarM == null && (type2 instanceof ParameterizedTypeImpl)) {
            b2VarM = m(com.alibaba.fastjson.g.b((ParameterizedTypeImpl) type2));
        }
        if (b2VarM != null) {
            return b2VarM;
        }
        if (type2 == null) {
            type2 = cls;
        }
        b2 b2VarM2 = m(type2);
        if (b2VarM2 != null) {
            return b2VarM2;
        }
        z4.d dVar = (z4.d) TypeUtils.N(cls, z4.d.class);
        if (dVar != null && (clsMappingTo = dVar.mappingTo()) != Void.class) {
            return o(clsMappingTo, clsMappingTo);
        }
        if ((type2 instanceof WildcardType) || (type2 instanceof TypeVariable) || (type2 instanceof ParameterizedType)) {
            b2VarM2 = m(cls);
        }
        if (b2VarM2 != null) {
            return b2VarM2;
        }
        Iterator it = this.f204p.iterator();
        Method methodQ = null;
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
        String strReplace = cls.getName().replace('$', '.');
        if (strReplace.startsWith("java.awt.") && c5.o.j(cls) && !A) {
            String[] strArr = {"java.awt.Point", "java.awt.Font", "java.awt.Rectangle", "java.awt.Color"};
            for (int i10 = 0; i10 < 4; i10++) {
                try {
                    String str = strArr[i10];
                    if (str.equals(strReplace)) {
                        Class<?> cls2 = Class.forName(str);
                        c5.o oVar = c5.o.f16617a;
                        z(cls2, oVar);
                        return oVar;
                    }
                } catch (Throwable unused) {
                    A = true;
                }
            }
            b2VarM2 = c5.o.f16617a;
        }
        if (!B) {
            try {
                if (strReplace.startsWith("java.time.")) {
                    String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.ZoneId", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                    for (int i11 = 0; i11 < 12; i11++) {
                        String str2 = strArr2[i11];
                        if (str2.equals(strReplace)) {
                            Class<?> cls3 = Class.forName(str2);
                            y1 y1Var = y1.f15569a;
                            z(cls3, y1Var);
                            return y1Var;
                        }
                    }
                } else if (strReplace.startsWith("java.util.Optional")) {
                    String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                    for (int i12 = 0; i12 < 4; i12++) {
                        String str3 = strArr3[i12];
                        if (str3.equals(strReplace)) {
                            Class<?> cls4 = Class.forName(str3);
                            d3 d3Var = d3.f15535a;
                            z(cls4, d3Var);
                            return d3Var;
                        }
                    }
                }
            } catch (Throwable unused2) {
                B = true;
            }
        }
        if (!C) {
            try {
                if (strReplace.startsWith("org.joda.time.")) {
                    String[] strArr4 = {"org.joda.time.DateTime", "org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.format.DateTimeFormatter"};
                    for (int i13 = 0; i13 < 9; i13++) {
                        String str4 = strArr4[i13];
                        if (str4.equals(strReplace)) {
                            Class<?> cls5 = Class.forName(str4);
                            b2VarM2 = q0.f16640a;
                            z(cls5, b2VarM2);
                            return b2VarM2;
                        }
                    }
                }
            } catch (Throwable unused3) {
                C = true;
            }
        }
        if (!D && strReplace.startsWith("com.google.common.collect.")) {
            try {
                String[] strArr5 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                for (int i14 = 0; i14 < 5; i14++) {
                    String str5 = strArr5[i14];
                    if (str5.equals(strReplace)) {
                        Class<?> cls6 = Class.forName(str5);
                        b2VarM2 = i0.f16568a;
                        z(cls6, b2VarM2);
                        return b2VarM2;
                    }
                }
            } catch (ClassNotFoundException unused4) {
                D = true;
            }
        }
        if (strReplace.equals("java.nio.ByteBuffer")) {
            b2VarM2 = u.f16669a;
            z(cls, b2VarM2);
        }
        if (strReplace.equals("java.nio.file.Path")) {
            b2VarM2 = w0.f16679b;
            z(cls, b2VarM2);
        }
        if (cls == Map.Entry.class) {
            b2VarM2 = w0.f16679b;
            z(cls, b2VarM2);
        }
        if (strReplace.equals("org.javamoney.moneta.Money")) {
            b2VarM2 = f5.a.f60038a;
            z(cls, b2VarM2);
        }
        try {
            Iterator it2 = com.alibaba.fastjson.util.l.a(b5.d.class, Thread.currentThread().getContextClassLoader()).iterator();
            if (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                throw null;
            }
        } catch (Exception unused5) {
        }
        if (b2VarM2 == null) {
            b2VarM2 = m(type2);
        }
        if (b2VarM2 != null) {
            return b2VarM2;
        }
        if (cls.isEnum()) {
            if (this.f202n) {
                for (Method method : cls.getMethods()) {
                    if (TypeUtils.s0(method)) {
                        b2 b2VarL2 = l(cls, type2);
                        z(type2, b2VarL2);
                        return b2VarL2;
                    }
                }
            }
            Class cls7 = (Class) com.alibaba.fastjson.a.getMixInAnnotations(cls);
            z4.d dVar2 = (z4.d) TypeUtils.N(cls7 != null ? cls7 : cls, z4.d.class);
            if (dVar2 != null) {
                try {
                    b2 b2Var = (b2) dVar2.deserializer().newInstance();
                    z(cls, b2Var);
                    return b2Var;
                } catch (Throwable unused6) {
                }
            }
            if (cls7 != null) {
                Method methodQ2 = q(cls7, cls);
                if (methodQ2 != null) {
                    try {
                        methodQ = cls.getMethod(methodQ2.getName(), methodQ2.getParameterTypes());
                    } catch (Exception unused7) {
                    }
                }
            } else {
                methodQ = q(cls, cls);
            }
            if (methodQ != null) {
                b5.g gVar = new b5.g(methodQ);
                z(cls, gVar);
                return gVar;
            }
            b2VarL = r(cls);
        } else if (cls.isArray()) {
            b2VarL = y0.f16684a;
        } else if (cls == Set.class || cls == HashSet.class || cls == Collection.class || cls == List.class || cls == ArrayList.class || Collection.class.isAssignableFrom(cls)) {
            b2VarL = z.f16685a;
        } else if (Map.class.isAssignableFrom(cls)) {
            b2VarL = z1.f15590a;
        } else {
            if (Throwable.class.isAssignableFrom(cls)) {
                g3Var = new k3(this, cls);
            } else if (f3.class.isAssignableFrom(cls)) {
                g3Var = new g3(cls);
            } else {
                b2VarL = cls == InetAddress.class ? w0.f16679b : l(cls, type2);
            }
            b2VarL = g3Var;
        }
        z(type2, b2VarL);
        return b2VarL;
    }

    public b2 p(Type type) {
        b2 b2VarM = m(type);
        if (b2VarM != null) {
            return b2VarM;
        }
        if (type instanceof Class) {
            return o((Class) type, type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            return rawType instanceof Class ? o((Class) rawType, type) : p(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return p(upperBounds[0]);
            }
        }
        return p.f15568a;
    }

    protected b2 r(Class cls) {
        return new b5.h(cls);
    }

    public boolean v() {
        return this.f202n;
    }

    public boolean x() {
        return this.f206r;
    }

    public void z(Type type, b2 b2Var) {
        Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            this.f189a.c(type, b2Var);
            return;
        }
        com.alibaba.fastjson.util.g gVar = (com.alibaba.fastjson.util.g) this.f190b.b(type);
        if (gVar == null) {
            gVar = new com.alibaba.fastjson.util.g(4);
            this.f190b.c(type, gVar);
        }
        gVar.c(mixInAnnotations, b2Var);
    }

    public h(boolean z10) {
        this(null, null, z10);
    }

    private h(b5.a aVar, ClassLoader classLoader, boolean z10) {
        this.f189a = new com.alibaba.fastjson.util.g();
        this.f190b = new com.alibaba.fastjson.util.g(16);
        this.f191c = new ConcurrentHashMap(16, 0.75f, 1);
        this.f192d = !com.alibaba.fastjson.util.b.f17579b;
        this.f193e = new i(4096);
        this.f197i = f185w;
        this.f202n = false;
        this.f203o = TypeUtils.f17551b;
        this.f204p = new ArrayList();
        this.f206r = f186x;
        this.f199k = new long[]{-9164606388214699518L, -8754006975464705441L, -8720046426850100497L, -8649961213709896794L, -8614556368991373401L, -8382625455832334425L, -8165637398350707645L, -8109300701639721088L, -7966123100503199569L, -7921218830998286408L, -7775351613326101303L, -7768608037458185275L, -7766605818834748097L, -6835437086156813536L, -6316154655839304624L, -6179589609550493385L, -6149130139291498841L, -6149093380703242441L, -6088208984980396913L, -6025144546313590215L, -5939269048541779808L, -5885964883385605994L, -5767141746063564198L, -5764804792063216819L, -5472097725414717105L, -5194641081268104286L, -5076846148177416215L, -4837536971810737970L, -4836620931940850535L, -4733542790109620528L, -4703320437989596122L, -4608341446948126581L, -4537258998789938600L, -4438775680185074100L, -4314457471973557243L, -4150995715611818742L, -4082057040235125754L, -3975378478825053783L, -3967588558552655563L, -3935185854875733362L, -3750763034362895579L, -3319207949486691020L, -3077205613010077203L, -3053747177772160511L, -2995060141064716555L, -2825378362173150292L, -2533039401923731906L, -2439930098895578154L, -2378990704010641148L, -2364987994247679115L, -2262244760619952081L, -2192804397019347313L, -2095516571388852610L, -1872417015366588117L, -1800035667138631116L, -1650485814983027158L, -1589194880214235129L, -1363634950764737555L, -965955008570215305L, -905177026366752536L, -831789045734283466L, -803541446955902575L, -731978084025273882L, -666475508176557463L, -582813228520337988L, -254670111376247151L, -219577392946377768L, -190281065685395680L, -26639035867733124L, -9822483067882491L, 4750336058574309L, 33238344207745342L, 156405680656087946L, 218512992947536312L, 313864100207897507L, 386461436234701831L, 744602970950881621L, 823641066473609950L, 860052378298585747L, 1073634739308289776L, 1153291637701043748L, 1203232727967308606L, 1214780596910349029L, 1268707909007641340L, 1459860845934817624L, 1502845958873959152L, 1534439610567445754L, 1698504441317515818L, 1818089308493370394L, 2078113382421334967L, 2164696723069287854L, 2622551729063269307L, 2653453629929770569L, 2660670623866180977L, 2731823439467737506L, 2836431254737891113L, 2930861374593775110L, 3058452313624178956L, 3085473968517218653L, 3089451460101527857L, 3114862868117605599L, 3129395579983849527L, 3256258368248066264L, 3452379460455804429L, 3547627781654598988L, 3637939656440441093L, 3688179072722109200L, 3718352661124136681L, 3730752432285826863L, 3740226159580918099L, 3794316665763266033L, 3977090344859527316L, 4000049462512838776L, 4046190361520671643L, 4147696707147271408L, 4193204392725694463L, 4215053018660518963L, 4241163808635564644L, 4254584350247334433L, 4319304524795015394L, 4814658433570175913L, 4841947709850912914L, 4904007817188630457L, 5100336081510080343L, 5120543992130540564L, 5274044858141538265L, 5347909877633654828L, 5450448828334921485L, 5474268165959054640L, 5545425291794704408L, 5596129856135573697L, 5688200883751798389L, 5751393439502795295L, 5916409771425455946L, 5944107969236155580L, 6007332606592876737L, 6090377589998869205L, 6280357960959217660L, 6456855723474196908L, 6511035576063254270L, 6534946468240507089L, 6584624952928234050L, 6734240326434096246L, 6742705432718011780L, 6800727078373023163L, 6854854816081053523L, 7045245923763966215L, 7123326897294507060L, 7164889056054194741L, 7179336928365889465L, 7240293012336844478L, 7347653049056829645L, 7375862386996623731L, 7442624256860549330L, 7617522210483516279L, 7658177784286215602L, 8055461369741094911L, 8064026652676081192L, 8389032537095247355L, 8409640769019589119L, 8488266005336625107L, 8537233257283452655L, 8711531061028787095L, 8735538376409180149L, 8838294710098435315L, 8861402923078831179L, 9140390920032557669L, 9140416208800006522L, 9144212112462101475L};
        long[] jArr = new long[f184v.length];
        int i10 = 0;
        while (true) {
            String[] strArr = f184v;
            if (i10 >= strArr.length) {
                break;
            }
            jArr[i10] = TypeUtils.J(strArr[i10]);
            i10++;
        }
        Arrays.sort(jArr);
        this.f200l = jArr;
        this.f207s = new a();
        this.f201m = z10;
        if (aVar == null && !com.alibaba.fastjson.util.b.f17579b) {
            try {
                if (classLoader == null) {
                    aVar = new b5.a(new com.alibaba.fastjson.util.a());
                } else {
                    aVar = new b5.a(classLoader);
                }
            } catch (ExceptionInInitializerError | NoClassDefFoundError | AccessControlException unused) {
            }
        }
        this.f196h = aVar;
        if (aVar == null) {
            this.f192d = false;
        }
        u();
        f(f183u);
        g(f182t);
        e(f184v);
    }
}
