package com.alibaba.fastjson;

import c5.g1;
import c5.p0;
import c5.z0;
import com.alibaba.fastjson.util.TypeUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

public class JSONPath implements com.alibaba.fastjson.b {

    private static ConcurrentMap f17365g = new ConcurrentHashMap(128, 0.75f, 1);

    private final String f17366a;

    private a0[] f17367b;

    private boolean f17368c;

    private g1 f17369d;

    private a5.h f17370e;

    private boolean f17371f;

    enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN,
        And,
        Or,
        REG_MATCH
    }

    static class a {

        static final int[] f17372a;

        static {
            int[] iArr = new int[Operator.values().length];
            f17372a = iArr;
            try {
                iArr[Operator.EQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17372a[Operator.NE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17372a[Operator.GE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17372a[Operator.GT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17372a[Operator.LE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17372a[Operator.LT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    interface a0 {
        Object a(JSONPath jSONPath, Object obj, Object obj2);
    }

    static class b implements a0 {

        private final int f17373a;

        public b(int i10) {
            this.f17373a = i10;
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.h(obj2, this.f17373a);
        }
    }

    static class b0 implements a0 {

        public static final b0 f17374a = new b0();

        b0() {
        }

        @Override
        public Integer a(JSONPath jSONPath, Object obj, Object obj2) {
            return Integer.valueOf(jSONPath.g(obj2));
        }
    }

    static class c extends u {

        private final double f17375f;

        private final Operator f17376g;

        public c(String str, boolean z10, double d10, Operator operator) {
            super(str, z10);
            this.f17375f = d10;
            this.f17376g = operator;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null || !(objB instanceof Number)) {
                return false;
            }
            double dDoubleValue = ((Number) objB).doubleValue();
            switch (a.f17372a[this.f17376g.ordinal()]) {
                case 1:
                    return dDoubleValue == this.f17375f;
                case 2:
                    return dDoubleValue != this.f17375f;
                case 3:
                    return dDoubleValue >= this.f17375f;
                case 4:
                    return dDoubleValue > this.f17375f;
                case 5:
                    return dDoubleValue <= this.f17375f;
                case 6:
                    return dDoubleValue < this.f17375f;
                default:
                    return false;
            }
        }
    }

    static class c0 extends u {

        private final String[] f17377f;

        private final boolean f17378g;

        public c0(String str, boolean z10, String[] strArr, boolean z11) {
            super(str, z10);
            this.f17377f = strArr;
            this.f17378g = z11;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            for (String str : this.f17377f) {
                if (str == objB) {
                    return !this.f17378g;
                }
                if (str != null && str.equals(objB)) {
                    return !this.f17378g;
                }
            }
            return this.f17378g;
        }
    }

    interface d {
        boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3);
    }

    static class d0 extends u {

        private final String f17379f;

        private final Operator f17380g;

        public d0(String str, boolean z10, String str2, Operator operator) {
            super(str, z10);
            this.f17379f = str2;
            this.f17380g = operator;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            Operator operator = this.f17380g;
            if (operator == Operator.EQ) {
                return this.f17379f.equals(objB);
            }
            if (operator == Operator.NE) {
                return !this.f17379f.equals(objB);
            }
            if (objB == null) {
                return false;
            }
            int iCompareTo = this.f17379f.compareTo(objB.toString());
            Operator operator2 = this.f17380g;
            if (operator2 == Operator.GE) {
                return iCompareTo <= 0;
            }
            if (operator2 == Operator.GT) {
                return iCompareTo < 0;
            }
            if (operator2 == Operator.LE) {
                return iCompareTo >= 0;
            }
            return operator2 == Operator.LT && iCompareTo > 0;
        }
    }

    static class e implements d {

        private boolean f17381a;

        private List f17382b;

        public e(d dVar, d dVar2, boolean z10) {
            ArrayList arrayList = new ArrayList(2);
            this.f17382b = arrayList;
            arrayList.add(dVar);
            this.f17382b.add(dVar2);
            this.f17381a = z10;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            if (this.f17381a) {
                Iterator it = this.f17382b.iterator();
                while (it.hasNext()) {
                    if (!((d) it.next()).a(jSONPath, obj, obj2, obj3)) {
                        return false;
                    }
                }
                return true;
            }
            Iterator it2 = this.f17382b.iterator();
            while (it2.hasNext()) {
                if (((d) it2.next()).a(jSONPath, obj, obj2, obj3)) {
                    return true;
                }
            }
            return false;
        }
    }

    static class e0 implements a0 {

        public static final e0 f17383a = new e0();

        e0() {
        }

        @Override
        public String a(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return "null";
            }
            if (obj2 instanceof Collection) {
                return "array";
            }
            if (obj2 instanceof Number) {
                return "number";
            }
            if (obj2 instanceof Boolean) {
                return "boolean";
            }
            return ((obj2 instanceof String) || (obj2 instanceof UUID) || (obj2 instanceof Enum)) ? "string" : "object";
        }
    }

    public static class f implements a0 {

        private final d f17384a;

        public f(d dVar) {
            this.f17384a = dVar;
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            if (!(obj2 instanceof Iterable)) {
                if (this.f17384a.a(jSONPath, obj, obj2, obj2)) {
                    return obj2;
                }
                return null;
            }
            for (Object obj3 : (Iterable) obj2) {
                if (this.f17384a.a(jSONPath, obj, obj2, obj3)) {
                    jSONArray.add(obj3);
                }
            }
            return jSONArray;
        }
    }

    static class f0 extends u {

        private final Object f17385f;

        private boolean f17386g;

        public f0(String str, boolean z10, Object obj, boolean z11) {
            super(str, z10);
            this.f17386g = true;
            if (obj == null) {
                throw new IllegalArgumentException("value is null");
            }
            this.f17385f = obj;
            this.f17386g = z11;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            boolean zEquals = this.f17385f.equals(b(jSONPath, obj, obj3));
            return !this.f17386g ? !zEquals : zEquals;
        }
    }

    static class g implements a0 {

        public static final g f17387a = new g();

        g() {
        }

        private static Object b(Object obj) {
            if (obj == null) {
                return null;
            }
            if (obj instanceof Float) {
                return Double.valueOf(Math.floor(((Float) obj).floatValue()));
            }
            if (obj instanceof Double) {
                return Double.valueOf(Math.floor(((Double) obj).doubleValue()));
            }
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).setScale(0, RoundingMode.FLOOR);
            }
            if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof BigInteger)) {
                return obj;
            }
            throw new UnsupportedOperationException();
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!(obj2 instanceof JSONArray)) {
                return b(obj2);
            }
            JSONArray jSONArray = (JSONArray) ((JSONArray) obj2).clone();
            for (int i10 = 0; i10 < jSONArray.size(); i10++) {
                Object obj3 = jSONArray.get(i10);
                Object objB = b(obj3);
                if (objB != obj3) {
                    jSONArray.set(i10, objB);
                }
            }
            return jSONArray;
        }
    }

    static class g0 implements a0 {

        public static final g0 f17388c = new g0(false, false);

        public static final g0 f17389d = new g0(true, false);

        public static final g0 f17390e = new g0(true, true);

        private boolean f17391a;

        private boolean f17392b;

        private g0(boolean z10, boolean z11) {
            this.f17391a = z10;
            this.f17392b = z11;
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!this.f17391a) {
                return jSONPath.k(obj2);
            }
            ArrayList arrayList = new ArrayList();
            jSONPath.c(obj2, arrayList);
            return arrayList;
        }
    }

    static class h extends u {

        private final long f17393f;

        private final long f17394g;

        private final boolean f17395h;

        public h(String str, boolean z10, long j10, long j11, boolean z11) {
            super(str, z10);
            this.f17393f = j10;
            this.f17394g = j11;
            this.f17395h = z11;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            if (objB instanceof Number) {
                long jD0 = TypeUtils.D0((Number) objB);
                if (jD0 >= this.f17393f && jD0 <= this.f17394g) {
                    return !this.f17395h;
                }
            }
            return this.f17395h;
        }
    }

    static class i extends u {

        private final long[] f17396f;

        private final boolean f17397g;

        public i(String str, boolean z10, long[] jArr, boolean z11) {
            super(str, z10);
            this.f17396f = jArr;
            this.f17397g = z11;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            if (objB instanceof Number) {
                long jD0 = TypeUtils.D0((Number) objB);
                for (long j10 : this.f17396f) {
                    if (j10 == jD0) {
                        return !this.f17397g;
                    }
                }
            }
            return this.f17397g;
        }
    }

    static class j extends u {

        private final Long[] f17398f;

        private final boolean f17399g;

        public j(String str, boolean z10, Long[] lArr, boolean z11) {
            super(str, z10);
            this.f17398f = lArr;
            this.f17399g = z11;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            int i10 = 0;
            if (objB == null) {
                Long[] lArr = this.f17398f;
                int length = lArr.length;
                while (i10 < length) {
                    if (lArr[i10] == null) {
                        return !this.f17399g;
                    }
                    i10++;
                }
                return this.f17399g;
            }
            if (objB instanceof Number) {
                long jD0 = TypeUtils.D0((Number) objB);
                Long[] lArr2 = this.f17398f;
                int length2 = lArr2.length;
                while (i10 < length2) {
                    Long l10 = lArr2[i10];
                    if (l10 != null && l10.longValue() == jD0) {
                        return !this.f17399g;
                    }
                    i10++;
                }
            }
            return this.f17399g;
        }
    }

    static class k extends u {

        private final long f17400f;

        private final Operator f17401g;

        private BigDecimal f17402h;

        private Float f17403i;

        private Double f17404j;

        public k(String str, boolean z10, long j10, Operator operator) {
            super(str, z10);
            this.f17400f = j10;
            this.f17401g = operator;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null || !(objB instanceof Number)) {
                return false;
            }
            if (objB instanceof BigDecimal) {
                if (this.f17402h == null) {
                    this.f17402h = BigDecimal.valueOf(this.f17400f);
                }
                int iCompareTo = this.f17402h.compareTo((BigDecimal) objB);
                switch (a.f17372a[this.f17401g.ordinal()]) {
                    case 1:
                        return iCompareTo == 0;
                    case 2:
                        return iCompareTo != 0;
                    case 3:
                        return iCompareTo <= 0;
                    case 4:
                        return iCompareTo < 0;
                    case 5:
                        return iCompareTo >= 0;
                    case 6:
                        return iCompareTo > 0;
                    default:
                        return false;
                }
            }
            if (objB instanceof Float) {
                if (this.f17403i == null) {
                    this.f17403i = Float.valueOf(this.f17400f);
                }
                int iCompareTo2 = this.f17403i.compareTo((Float) objB);
                switch (a.f17372a[this.f17401g.ordinal()]) {
                    case 1:
                        return iCompareTo2 == 0;
                    case 2:
                        return iCompareTo2 != 0;
                    case 3:
                        return iCompareTo2 <= 0;
                    case 4:
                        return iCompareTo2 < 0;
                    case 5:
                        return iCompareTo2 >= 0;
                    case 6:
                        return iCompareTo2 > 0;
                    default:
                        return false;
                }
            }
            if (!(objB instanceof Double)) {
                long jD0 = TypeUtils.D0((Number) objB);
                switch (a.f17372a[this.f17401g.ordinal()]) {
                    case 1:
                        return jD0 == this.f17400f;
                    case 2:
                        return jD0 != this.f17400f;
                    case 3:
                        return jD0 >= this.f17400f;
                    case 4:
                        return jD0 > this.f17400f;
                    case 5:
                        return jD0 <= this.f17400f;
                    case 6:
                        return jD0 < this.f17400f;
                    default:
                        return false;
                }
            }
            if (this.f17404j == null) {
                this.f17404j = Double.valueOf(this.f17400f);
            }
            int iCompareTo3 = this.f17404j.compareTo((Double) objB);
            switch (a.f17372a[this.f17401g.ordinal()]) {
                case 1:
                    return iCompareTo3 == 0;
                case 2:
                    return iCompareTo3 != 0;
                case 3:
                    return iCompareTo3 <= 0;
                case 4:
                    return iCompareTo3 < 0;
                case 5:
                    return iCompareTo3 >= 0;
                case 6:
                    return iCompareTo3 > 0;
                default:
                    return false;
            }
        }
    }

    static class l {

        private static final Pattern f17405f = Pattern.compile("'\\s*,\\s*'");

        private final String f17406a;

        private int f17407b;

        private char f17408c;

        private int f17409d;

        private boolean f17410e;

        public l(String str) {
            this.f17406a = str;
            i();
        }

        static boolean g(char c10) {
            return c10 == '-' || c10 == '+' || (c10 >= '0' && c10 <= '9');
        }

        void a(char c10) {
            if (this.f17408c == ' ') {
                i();
            }
            if (this.f17408c == c10) {
                if (h()) {
                    return;
                }
                i();
            } else {
                throw new JSONPathException("expect '" + c10 + ", but '" + this.f17408c + "'");
            }
        }

        a0 c(String str) {
            int length = str.length();
            char cCharAt = str.charAt(0);
            int i10 = length - 1;
            char cCharAt2 = str.charAt(i10);
            int iIndexOf = str.indexOf(44);
            if (str.length() > 2 && cCharAt == '\'' && cCharAt2 == '\'') {
                String strSubstring = str.substring(1, i10);
                return (iIndexOf == -1 || !f17405f.matcher(str).find()) ? new v(strSubstring, false) : new r(strSubstring.split("'\\s*,\\s*'"));
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                if (TypeUtils.v0(str)) {
                    try {
                        return new b(Integer.parseInt(str));
                    } catch (NumberFormatException unused) {
                        return new v(str, false);
                    }
                }
                if (str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') {
                    str = str.substring(1, str.length() - 1);
                }
                return new v(str, false);
            }
            if (iIndexOf != -1) {
                String[] strArrSplit = str.split(",");
                int[] iArr = new int[strArrSplit.length];
                for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                    iArr[i11] = Integer.parseInt(strArrSplit[i11]);
                }
                return new q(iArr);
            }
            if (iIndexOf2 == -1) {
                throw new UnsupportedOperationException();
            }
            String[] strArrSplit2 = str.split(":");
            int length2 = strArrSplit2.length;
            int[] iArr2 = new int[length2];
            for (int i12 = 0; i12 < strArrSplit2.length; i12++) {
                String str2 = strArrSplit2[i12];
                if (str2.length() != 0) {
                    iArr2[i12] = Integer.parseInt(str2);
                } else {
                    if (i12 != 0) {
                        throw new UnsupportedOperationException();
                    }
                    iArr2[i12] = 0;
                }
            }
            int i13 = iArr2[0];
            int i14 = length2 > 1 ? iArr2[1] : -1;
            int i15 = length2 == 3 ? iArr2[2] : 1;
            if (i14 < 0 || i14 >= i13) {
                if (i15 > 0) {
                    return new w(i13, i14, i15);
                }
                throw new UnsupportedOperationException("step must greater than zero : " + i15);
            }
            throw new UnsupportedOperationException("end must greater than or equals start. start " + i13 + ",  end " + i14);
        }

        public a0[] d() {
            String str = this.f17406a;
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException();
            }
            a0[] a0VarArr = new a0[8];
            while (true) {
                a0 a0VarP = p();
                if (a0VarP == null) {
                    break;
                }
                if (a0VarP instanceof v) {
                    v vVar = (v) a0VarP;
                    if (vVar.f17429c || !vVar.f17427a.equals("*")) {
                    }
                }
                int i10 = this.f17409d;
                if (i10 == a0VarArr.length) {
                    a0[] a0VarArr2 = new a0[(i10 * 3) / 2];
                    System.arraycopy(a0VarArr, 0, a0VarArr2, 0, i10);
                    a0VarArr = a0VarArr2;
                }
                int i11 = this.f17409d;
                this.f17409d = i11 + 1;
                a0VarArr[i11] = a0VarP;
            }
            int i12 = this.f17409d;
            if (i12 == a0VarArr.length) {
                return a0VarArr;
            }
            a0[] a0VarArr3 = new a0[i12];
            System.arraycopy(a0VarArr, 0, a0VarArr3, 0, i12);
            return a0VarArr3;
        }

        d e(d dVar) {
            char c10 = this.f17408c;
            boolean z10 = true;
            boolean z11 = c10 == '&';
            if ((c10 != '&' || f() != '&') && (this.f17408c != '|' || f() != '|')) {
                return dVar;
            }
            i();
            i();
            if (this.f17408c == '(') {
                i();
            } else {
                z10 = false;
            }
            while (this.f17408c == ' ') {
                i();
            }
            e eVar = new e(dVar, (d) k(false), z11);
            if (z10 && this.f17408c == ')') {
                i();
            }
            return eVar;
        }

        char f() {
            return this.f17406a.charAt(this.f17407b);
        }

        boolean h() {
            return this.f17407b >= this.f17406a.length();
        }

        void i() {
            String str = this.f17406a;
            int i10 = this.f17407b;
            this.f17407b = i10 + 1;
            this.f17408c = str.charAt(i10);
        }

        a0 j(boolean z10) {
            Object objK = k(z10);
            return objK instanceof a0 ? (a0) objK : new f((d) objK);
        }

        Object k(boolean z10) {
            int i10;
            boolean z11;
            boolean z12;
            char c10;
            char c11;
            char c12;
            char c13;
            char c14;
            char c15;
            String str;
            String[] strArr;
            String str2;
            String str3;
            d nVar;
            d d0Var;
            char c16;
            char c17;
            char c18;
            char c19;
            int i11;
            char c20;
            char c21;
            char c22;
            char c23;
            char c24;
            int i12;
            String strReplaceAll;
            int i13;
            char cCharAt;
            char c25;
            if (z10) {
                a('[');
            }
            if (this.f17408c == '?') {
                i();
                a('(');
                i10 = 1;
                while (this.f17408c == '(') {
                    i();
                    i10++;
                }
                z11 = true;
            } else {
                i10 = 0;
                z11 = false;
            }
            s();
            if (!z11 && !com.alibaba.fastjson.util.f.g(this.f17408c) && !Character.isJavaIdentifierStart(this.f17408c) && (c23 = this.f17408c) != '\\' && c23 != '@') {
                int i14 = this.f17407b - 1;
                while (true) {
                    char c26 = this.f17408c;
                    if (c26 == ']' || c26 == '/' || h() || !((c25 = this.f17408c) != '.' || z11 || z11 || c23 == '\'')) {
                        break;
                    }
                    if (c25 == '\\') {
                        i();
                    }
                    i();
                }
                if (z10 || (c24 = this.f17408c) == '/' || c24 == '.') {
                    int i15 = this.f17407b;
                    i12 = i15 - 1;
                } else {
                    i12 = this.f17407b;
                }
                String strSubstring = this.f17406a.substring(i14, i12);
                if (strSubstring.indexOf(92) != 0) {
                    StringBuilder sb2 = new StringBuilder(strSubstring.length());
                    int i16 = 0;
                    while (i16 < strSubstring.length()) {
                        char cCharAt2 = strSubstring.charAt(i16);
                        if (cCharAt2 == '\\' && i16 < strSubstring.length() - 1 && ((cCharAt = strSubstring.charAt((i13 = i16 + 1))) == '@' || cCharAt2 == '\\' || cCharAt2 == '\"')) {
                            sb2.append(cCharAt);
                            i16 = i13;
                        } else {
                            sb2.append(cCharAt2);
                        }
                        i16++;
                    }
                    strSubstring = sb2.toString();
                }
                if (strSubstring.indexOf("\\.") == -1) {
                    a0 a0VarC = c(strSubstring);
                    if (z10 && !h()) {
                        a(']');
                    }
                    return a0VarC;
                }
                if (c23 == '\'' && strSubstring.length() > 2 && strSubstring.charAt(strSubstring.length() - 1) == c23) {
                    strReplaceAll = strSubstring.substring(1, strSubstring.length() - 1);
                } else {
                    strReplaceAll = strSubstring.replaceAll("\\\\\\.", "\\.");
                    if (strReplaceAll.indexOf("\\-") != -1) {
                        strReplaceAll = strReplaceAll.replaceAll("\\\\-", "-");
                    }
                }
                if (z11) {
                    a(')');
                }
                return new v(strReplaceAll, false);
            }
            if (this.f17408c == '@') {
                i();
                a('.');
            }
            String strN = n();
            s();
            if (z11 && this.f17408c == ')') {
                i();
                d sVar = new s(strN, false);
                while (true) {
                    c22 = this.f17408c;
                    if (c22 != ' ') {
                        break;
                    }
                    i();
                }
                if (c22 == '&' || c22 == '|') {
                    sVar = e(sVar);
                }
                if (z10) {
                    a(']');
                }
                return sVar;
            }
            if (z10 && this.f17408c == ']') {
                if (h() && strN.equals("last")) {
                    return new q(new int[]{-1});
                }
                i();
                d sVar2 = new s(strN, false);
                while (true) {
                    c21 = this.f17408c;
                    if (c21 != ' ') {
                        break;
                    }
                    i();
                }
                if (c21 == '&' || c21 == '|') {
                    sVar2 = e(sVar2);
                }
                a(')');
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return sVar2;
            }
            s();
            if (this.f17408c == '(') {
                i();
                a(')');
                s();
                z12 = true;
            } else {
                z12 = false;
            }
            Operator operatorO = o();
            s();
            if (operatorO == Operator.BETWEEN || operatorO == Operator.NOT_BETWEEN) {
                boolean z13 = operatorO == Operator.NOT_BETWEEN;
                Object objR = r();
                if (!"and".equalsIgnoreCase(n())) {
                    throw new JSONPathException(this.f17406a);
                }
                Object objR2 = r();
                if (objR == null || objR2 == null) {
                    throw new JSONPathException(this.f17406a);
                }
                if (JSONPath.m(objR.getClass()) && JSONPath.m(objR2.getClass())) {
                    return new h(strN, z12, TypeUtils.D0((Number) objR), TypeUtils.D0((Number) objR2), z13);
                }
                throw new JSONPathException(this.f17406a);
            }
            if (operatorO == Operator.IN || operatorO == Operator.NOT_IN) {
                boolean z14 = operatorO == Operator.NOT_IN;
                a('(');
                JSONArray jSONArray = new JSONArray();
                jSONArray.add(r());
                while (true) {
                    s();
                    if (this.f17408c != ',') {
                        break;
                    }
                    i();
                    jSONArray.add(r());
                }
                boolean z15 = true;
                boolean z16 = true;
                boolean z17 = true;
                for (Object obj : jSONArray) {
                    if (obj != null) {
                        Class<?> cls = obj.getClass();
                        if (z15 && cls != Byte.class && cls != Short.class && cls != Integer.class && cls != Long.class) {
                            z15 = false;
                            z17 = false;
                        }
                        if (z16 && cls != String.class) {
                            z16 = false;
                        }
                    } else if (z15) {
                        z15 = false;
                    }
                }
                if (jSONArray.size() == 1 && jSONArray.get(0) == null) {
                    d sVar3 = z14 ? new s(strN, z12) : new t(strN, z12);
                    while (true) {
                        c15 = this.f17408c;
                        if (c15 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c15 == '&' || c15 == '|') {
                        sVar3 = e(sVar3);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return sVar3;
                }
                if (z15) {
                    if (jSONArray.size() == 1) {
                        d kVar = new k(strN, z12, TypeUtils.D0((Number) jSONArray.get(0)), z14 ? Operator.NE : Operator.EQ);
                        while (true) {
                            c14 = this.f17408c;
                            if (c14 != ' ') {
                                break;
                            }
                            i();
                        }
                        if (c14 == '&' || c14 == '|') {
                            kVar = e(kVar);
                        }
                        a(')');
                        if (z11) {
                            a(')');
                        }
                        if (z10) {
                            a(']');
                        }
                        return kVar;
                    }
                    int size = jSONArray.size();
                    long[] jArr = new long[size];
                    for (int i17 = 0; i17 < size; i17++) {
                        jArr[i17] = TypeUtils.D0((Number) jSONArray.get(i17));
                    }
                    d iVar = new i(strN, z12, jArr, z14);
                    while (true) {
                        c13 = this.f17408c;
                        if (c13 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c13 == '&' || c13 == '|') {
                        iVar = e(iVar);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return iVar;
                }
                if (!z16) {
                    if (!z17) {
                        throw new UnsupportedOperationException();
                    }
                    int size2 = jSONArray.size();
                    Long[] lArr = new Long[size2];
                    for (int i18 = 0; i18 < size2; i18++) {
                        Number number = (Number) jSONArray.get(i18);
                        if (number != null) {
                            lArr[i18] = Long.valueOf(TypeUtils.D0(number));
                        }
                    }
                    d jVar = new j(strN, z12, lArr, z14);
                    while (true) {
                        c10 = this.f17408c;
                        if (c10 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c10 == '&' || c10 == '|') {
                        jVar = e(jVar);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return jVar;
                }
                if (jSONArray.size() == 1) {
                    d d0Var2 = new d0(strN, z12, (String) jSONArray.get(0), z14 ? Operator.NE : Operator.EQ);
                    while (true) {
                        c12 = this.f17408c;
                        if (c12 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c12 == '&' || c12 == '|') {
                        d0Var2 = e(d0Var2);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return d0Var2;
                }
                String[] strArr2 = new String[jSONArray.size()];
                jSONArray.toArray(strArr2);
                d c0Var = new c0(strN, z12, strArr2, z14);
                while (true) {
                    c11 = this.f17408c;
                    if (c11 != ' ') {
                        break;
                    }
                    i();
                }
                if (c11 == '&' || c11 == '|') {
                    c0Var = e(c0Var);
                }
                a(')');
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return c0Var;
            }
            char c27 = this.f17408c;
            if (c27 == '\'' || c27 == '\"') {
                String strQ = q();
                if (operatorO == Operator.RLIKE) {
                    nVar = new z(strN, z12, strQ, false);
                } else {
                    if (operatorO == Operator.NOT_RLIKE) {
                        d0Var = new z(strN, z12, strQ, true);
                    } else if (operatorO == Operator.LIKE || operatorO == Operator.NOT_LIKE) {
                        while (strQ.indexOf("%%") != -1) {
                            strQ = strQ.replaceAll("%%", "%");
                        }
                        boolean z18 = operatorO == Operator.NOT_LIKE;
                        int iIndexOf = strQ.indexOf(37);
                        if (iIndexOf == -1) {
                            d0Var = new d0(strN, z12, strQ, operatorO == Operator.LIKE ? Operator.EQ : Operator.NE);
                        } else {
                            String[] strArrSplit = strQ.split("%");
                            if (iIndexOf != 0) {
                                if (strQ.charAt(strQ.length() - 1) == '%') {
                                    if (strArrSplit.length == 1) {
                                        str3 = strArrSplit[0];
                                    } else {
                                        strArr = strArrSplit;
                                        str = null;
                                        str2 = null;
                                    }
                                } else if (strArrSplit.length == 1) {
                                    str3 = strArrSplit[0];
                                } else if (strArrSplit.length == 2) {
                                    str = strArrSplit[0];
                                    str2 = strArrSplit[1];
                                    strArr = null;
                                } else {
                                    String str4 = strArrSplit[0];
                                    String str5 = strArrSplit[strArrSplit.length - 1];
                                    int length = strArrSplit.length - 2;
                                    String[] strArr3 = new String[length];
                                    System.arraycopy(strArrSplit, 1, strArr3, 0, length);
                                    str = str4;
                                    strArr = strArr3;
                                    str2 = str5;
                                }
                                str = str3;
                                str2 = null;
                                strArr = null;
                            } else if (strQ.charAt(strQ.length() - 1) == '%') {
                                int length2 = strArrSplit.length - 1;
                                String[] strArr4 = new String[length2];
                                System.arraycopy(strArrSplit, 1, strArr4, 0, length2);
                                strArr = strArr4;
                                str = null;
                                str2 = null;
                            } else {
                                String str6 = strArrSplit[strArrSplit.length - 1];
                                if (strArrSplit.length > 2) {
                                    int length3 = strArrSplit.length - 2;
                                    String[] strArr5 = new String[length3];
                                    System.arraycopy(strArrSplit, 1, strArr5, 0, length3);
                                    str2 = str6;
                                    strArr = strArr5;
                                    str = null;
                                } else {
                                    str2 = str6;
                                    str = null;
                                    strArr = null;
                                }
                            }
                            nVar = new n(strN, z12, str, str2, strArr, z18);
                        }
                    } else {
                        nVar = new d0(strN, z12, strQ, operatorO);
                    }
                    nVar = d0Var;
                }
                while (true) {
                    c16 = this.f17408c;
                    if (c16 != ' ') {
                        break;
                    }
                    i();
                }
                if (c16 == '&' || c16 == '|') {
                    nVar = e(nVar);
                }
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return nVar;
            }
            if (g(c27)) {
                long jM = m();
                double dL = this.f17408c == '.' ? l(jM) : 0.0d;
                d kVar2 = dL == 0.0d ? new k(strN, z12, jM, operatorO) : new c(strN, z12, dL, operatorO);
                while (true) {
                    c20 = this.f17408c;
                    if (c20 != ' ') {
                        break;
                    }
                    i();
                }
                if (i10 > 1 && c20 == ')') {
                    i();
                }
                char c28 = this.f17408c;
                if (c28 == '&' || c28 == '|') {
                    kVar2 = e(kVar2);
                }
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return kVar2;
            }
            char c29 = this.f17408c;
            if (c29 == '$') {
                x xVar = new x(strN, z12, p(), operatorO);
                this.f17410e = true;
                while (this.f17408c == ' ') {
                    i();
                }
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return xVar;
            }
            if (c29 == '/') {
                StringBuilder sb3 = new StringBuilder();
                while (true) {
                    i();
                    char c30 = this.f17408c;
                    if (c30 == '/') {
                        break;
                    }
                    if (c30 == '\\') {
                        i();
                        sb3.append(this.f17408c);
                    } else {
                        sb3.append(c30);
                    }
                }
                i();
                if (this.f17408c == 'i') {
                    i();
                    i11 = 2;
                } else {
                    i11 = 0;
                }
                y yVar = new y(strN, z12, Pattern.compile(sb3.toString(), i11), operatorO);
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return yVar;
            }
            if (c29 == 'n') {
                if ("null".equals(n())) {
                    d tVar = operatorO == Operator.EQ ? new t(strN, z12) : operatorO == Operator.NE ? new s(strN, z12) : null;
                    if (tVar != null) {
                        while (true) {
                            c19 = this.f17408c;
                            if (c19 != ' ') {
                                break;
                            }
                            i();
                        }
                        if (c19 == '&' || c19 == '|') {
                            tVar = e(tVar);
                        }
                    }
                    if (z11) {
                        a(')');
                    }
                    a(']');
                    if (tVar != null) {
                        return tVar;
                    }
                    throw new UnsupportedOperationException();
                }
            } else if (c29 == 't') {
                if ("true".equals(n())) {
                    d f0Var = operatorO == Operator.EQ ? new f0(strN, z12, Boolean.TRUE, true) : operatorO == Operator.NE ? new f0(strN, z12, Boolean.TRUE, false) : null;
                    if (f0Var != null) {
                        while (true) {
                            c18 = this.f17408c;
                            if (c18 != ' ') {
                                break;
                            }
                            i();
                        }
                        if (c18 == '&' || c18 == '|') {
                            f0Var = e(f0Var);
                        }
                    }
                    if (z11) {
                        a(')');
                    }
                    a(']');
                    if (f0Var != null) {
                        return f0Var;
                    }
                    throw new UnsupportedOperationException();
                }
            } else if (c29 == 'f' && "false".equals(n())) {
                d f0Var2 = operatorO == Operator.EQ ? new f0(strN, z12, Boolean.FALSE, true) : operatorO == Operator.NE ? new f0(strN, z12, Boolean.FALSE, false) : null;
                if (f0Var2 != null) {
                    while (true) {
                        c17 = this.f17408c;
                        if (c17 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c17 == '&' || c17 == '|') {
                        f0Var2 = e(f0Var2);
                    }
                }
                if (z11) {
                    a(')');
                }
                a(']');
                if (f0Var2 != null) {
                    return f0Var2;
                }
                throw new UnsupportedOperationException();
            }
            throw new UnsupportedOperationException();
        }

        protected double l(long j10) {
            int i10 = this.f17407b - 1;
            i();
            while (true) {
                char c10 = this.f17408c;
                if (c10 < '0' || c10 > '9') {
                    break;
                }
                i();
            }
            return Double.parseDouble(this.f17406a.substring(i10, this.f17407b - 1)) + j10;
        }

        protected long m() {
            int i10 = this.f17407b - 1;
            char c10 = this.f17408c;
            if (c10 == '+' || c10 == '-') {
                i();
            }
            while (true) {
                char c11 = this.f17408c;
                if (c11 < '0' || c11 > '9') {
                    break;
                }
                i();
            }
            return Long.parseLong(this.f17406a.substring(i10, this.f17407b - 1));
        }

        String n() {
            s();
            char c10 = this.f17408c;
            if (c10 != '\\' && !Character.isJavaIdentifierStart(c10)) {
                throw new JSONPathException("illeal jsonpath syntax. " + this.f17406a);
            }
            StringBuilder sb2 = new StringBuilder();
            while (!h()) {
                char c11 = this.f17408c;
                if (c11 == '\\') {
                    i();
                    sb2.append(this.f17408c);
                    if (h()) {
                        return sb2.toString();
                    }
                    i();
                } else {
                    if (!Character.isJavaIdentifierPart(c11)) {
                        break;
                    }
                    sb2.append(this.f17408c);
                    i();
                }
            }
            if (h() && Character.isJavaIdentifierPart(this.f17408c)) {
                sb2.append(this.f17408c);
            }
            return sb2.toString();
        }

        protected Operator o() {
            Operator operator;
            char c10 = this.f17408c;
            if (c10 == '=') {
                i();
                char c11 = this.f17408c;
                if (c11 == '~') {
                    i();
                    operator = Operator.REG_MATCH;
                } else if (c11 == '=') {
                    i();
                    operator = Operator.EQ;
                } else {
                    operator = Operator.EQ;
                }
            } else if (c10 == '!') {
                i();
                a('=');
                operator = Operator.NE;
            } else if (c10 == '<') {
                i();
                if (this.f17408c == '=') {
                    i();
                    operator = Operator.LE;
                } else {
                    operator = Operator.LT;
                }
            } else if (c10 == '>') {
                i();
                if (this.f17408c == '=') {
                    i();
                    operator = Operator.GE;
                } else {
                    operator = Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            String strN = n();
            if ("not".equalsIgnoreCase(strN)) {
                s();
                String strN2 = n();
                if ("like".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_LIKE;
                }
                if ("rlike".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_RLIKE;
                }
                if ("in".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_IN;
                }
                if ("between".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_BETWEEN;
                }
                throw new UnsupportedOperationException();
            }
            if ("nin".equalsIgnoreCase(strN)) {
                return Operator.NOT_IN;
            }
            if ("like".equalsIgnoreCase(strN)) {
                return Operator.LIKE;
            }
            if ("rlike".equalsIgnoreCase(strN)) {
                return Operator.RLIKE;
            }
            if ("in".equalsIgnoreCase(strN)) {
                return Operator.IN;
            }
            if ("between".equalsIgnoreCase(strN)) {
                return Operator.BETWEEN;
            }
            throw new UnsupportedOperationException();
        }

        a0 p() {
            boolean z10;
            if (this.f17409d == 0 && this.f17406a.length() == 1) {
                if (g(this.f17408c)) {
                    return new b(this.f17408c - '0');
                }
                char c10 = this.f17408c;
                if ((c10 >= 'a' && c10 <= 'z') || (c10 >= 'A' && c10 <= 'Z')) {
                    return new v(Character.toString(c10), false);
                }
            }
            while (!h()) {
                s();
                char c11 = this.f17408c;
                if (c11 != '$') {
                    if (c11 != '.' && c11 != '/') {
                        if (c11 == '[') {
                            return j(true);
                        }
                        if (this.f17409d == 0) {
                            return new v(n(), false);
                        }
                        if (c11 == '?') {
                            return new f((d) k(false));
                        }
                        throw new JSONPathException("not support jsonpath : " + this.f17406a);
                    }
                    i();
                    if (c11 == '.' && this.f17408c == '.') {
                        i();
                        int length = this.f17406a.length();
                        int i10 = this.f17407b;
                        if (length > i10 + 3 && this.f17408c == '[' && this.f17406a.charAt(i10) == '*' && this.f17406a.charAt(this.f17407b + 1) == ']' && this.f17406a.charAt(this.f17407b + 2) == '.') {
                            i();
                            i();
                            i();
                            i();
                        }
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    char c12 = this.f17408c;
                    if (c12 == '*' || (z10 && c12 == '[')) {
                        boolean z11 = c12 == '[';
                        if (!h()) {
                            i();
                        }
                        if (z10) {
                            return z11 ? g0.f17390e : g0.f17389d;
                        }
                        return g0.f17388c;
                    }
                    if (g(c12)) {
                        return j(false);
                    }
                    String strN = n();
                    if (this.f17408c != '(') {
                        return new v(strN, z10);
                    }
                    i();
                    if (this.f17408c != ')') {
                        throw new JSONPathException("not support jsonpath : " + this.f17406a);
                    }
                    if (!h()) {
                        i();
                    }
                    if ("size".equals(strN) || "length".equals(strN)) {
                        return b0.f17374a;
                    }
                    if ("max".equals(strN)) {
                        return o.f17417a;
                    }
                    if ("min".equals(strN)) {
                        return p.f17418a;
                    }
                    if ("keySet".equals(strN)) {
                        return m.f17411a;
                    }
                    if (NativeComponentConstants.KEY_COMPONENT_TYPE.equals(strN)) {
                        return e0.f17383a;
                    }
                    if (PlaceTypes.FLOOR.equals(strN)) {
                        return g.f17387a;
                    }
                    throw new JSONPathException("not support jsonpath : " + this.f17406a);
                }
                i();
                s();
                if (this.f17408c == '?') {
                    return new f((d) k(false));
                }
            }
            return null;
        }

        String q() {
            char c10 = this.f17408c;
            i();
            int i10 = this.f17407b - 1;
            while (this.f17408c != c10 && !h()) {
                i();
            }
            String strSubstring = this.f17406a.substring(i10, h() ? this.f17407b : this.f17407b - 1);
            a(c10);
            return strSubstring;
        }

        protected Object r() {
            s();
            if (g(this.f17408c)) {
                return Long.valueOf(m());
            }
            char c10 = this.f17408c;
            if (c10 == '\"' || c10 == '\'') {
                return q();
            }
            if (c10 != 'n') {
                throw new UnsupportedOperationException();
            }
            if ("null".equals(n())) {
                return null;
            }
            throw new JSONPathException(this.f17406a);
        }

        public final void s() {
            while (true) {
                char c10 = this.f17408c;
                if (c10 > ' ') {
                    return;
                }
                if (c10 != ' ' && c10 != '\r' && c10 != '\n' && c10 != '\t' && c10 != '\f' && c10 != '\b') {
                    return;
                } else {
                    i();
                }
            }
        }
    }

    static class m implements a0 {

        public static final m f17411a = new m();

        m() {
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.f(obj2);
        }
    }

    static class n extends u {

        private final String f17412f;

        private final String f17413g;

        private final String[] f17414h;

        private final int f17415i;

        private final boolean f17416j;

        public n(String str, boolean z10, String str2, String str3, String[] strArr, boolean z11) {
            super(str, z10);
            this.f17412f = str2;
            this.f17413g = str3;
            this.f17414h = strArr;
            this.f17416j = z11;
            int length = str2 != null ? str2.length() : 0;
            length = str3 != null ? length + str3.length() : length;
            if (strArr != null) {
                for (String str4 : strArr) {
                    length += str4.length();
                }
            }
            this.f17415i = length;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int length;
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            String string = objB.toString();
            if (string.length() < this.f17415i) {
                return this.f17416j;
            }
            String str = this.f17412f;
            if (str == null) {
                length = 0;
            } else {
                if (!string.startsWith(str)) {
                    return this.f17416j;
                }
                length = this.f17412f.length();
            }
            String[] strArr = this.f17414h;
            if (strArr != null) {
                for (String str2 : strArr) {
                    int iIndexOf = string.indexOf(str2, length);
                    if (iIndexOf == -1) {
                        return this.f17416j;
                    }
                    length = iIndexOf + str2.length();
                }
            }
            String str3 = this.f17413g;
            return (str3 == null || string.endsWith(str3)) ? !this.f17416j : this.f17416j;
        }
    }

    static class o implements a0 {

        public static final o f17417a = new o();

        o() {
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!(obj2 instanceof Collection)) {
                throw new UnsupportedOperationException();
            }
            Object obj3 = null;
            for (Object obj4 : (Collection) obj2) {
                if (obj4 != null && (obj3 == null || JSONPath.a(obj3, obj4) < 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }
    }

    static class p implements a0 {

        public static final p f17418a = new p();

        p() {
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!(obj2 instanceof Collection)) {
                throw new UnsupportedOperationException();
            }
            Object obj3 = null;
            for (Object obj4 : (Collection) obj2) {
                if (obj4 != null && (obj3 == null || JSONPath.a(obj3, obj4) > 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }
    }

    static class q implements a0 {

        private final int[] f17419a;

        public q(int[] iArr) {
            this.f17419a = iArr;
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            JSONArray jSONArray = new JSONArray(this.f17419a.length);
            int i10 = 0;
            while (true) {
                int[] iArr = this.f17419a;
                if (i10 >= iArr.length) {
                    return jSONArray;
                }
                jSONArray.add(jSONPath.h(obj2, iArr[i10]));
                i10++;
            }
        }
    }

    static class r implements a0 {

        private final String[] f17420a;

        private final long[] f17421b;

        public r(String[] strArr) {
            this.f17420a = strArr;
            this.f17421b = new long[strArr.length];
            int i10 = 0;
            while (true) {
                long[] jArr = this.f17421b;
                if (i10 >= jArr.length) {
                    return;
                }
                jArr[i10] = TypeUtils.J(strArr[i10]);
                i10++;
            }
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.f17420a.length);
            int i10 = 0;
            while (true) {
                String[] strArr = this.f17420a;
                if (i10 >= strArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.j(obj2, strArr[i10], this.f17421b[i10]));
                i10++;
            }
        }
    }

    static class s extends u {
        public s(String str, boolean z10) {
            super(str, z10);
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.j(obj3, this.f17423a, this.f17424b) != null;
        }
    }

    static class t extends u {
        public t(String str, boolean z10) {
            super(str, z10);
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return b(jSONPath, obj, obj3) == null;
        }
    }

    static abstract class u implements d {

        static long f17422e = TypeUtils.J(NativeComponentConstants.KEY_COMPONENT_TYPE);

        protected final String f17423a;

        protected final long f17424b;

        protected final boolean f17425c;

        protected a0 f17426d;

        protected u(String str, boolean z10) {
            this.f17423a = str;
            long J = TypeUtils.J(str);
            this.f17424b = J;
            this.f17425c = z10;
            if (z10) {
                if (J == f17422e) {
                    this.f17426d = e0.f17383a;
                } else {
                    if (J == 5614464919154503228L) {
                        this.f17426d = b0.f17374a;
                        return;
                    }
                    throw new JSONPathException("unsupported funciton : " + str);
                }
            }
        }

        protected Object b(JSONPath jSONPath, Object obj, Object obj2) {
            a0 a0Var = this.f17426d;
            return a0Var != null ? a0Var.a(jSONPath, obj, obj2) : jSONPath.j(obj2, this.f17423a, this.f17424b);
        }
    }

    static class v implements a0 {

        private final String f17427a;

        private final long f17428b;

        private final boolean f17429c;

        public v(String str, boolean z10) {
            this.f17427a = str;
            this.f17428b = TypeUtils.J(str);
            this.f17429c = z10;
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!this.f17429c) {
                return jSONPath.j(obj2, this.f17427a, this.f17428b);
            }
            ArrayList arrayList = new ArrayList();
            jSONPath.d(obj2, this.f17427a, arrayList);
            return arrayList;
        }
    }

    static class w implements a0 {

        private final int f17430a;

        private final int f17431b;

        private final int f17432c;

        public w(int i10, int i11, int i12) {
            this.f17430a = i10;
            this.f17431b = i11;
            this.f17432c = i12;
        }

        @Override
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            int iIntValue = b0.f17374a.a(jSONPath, obj, obj2).intValue();
            int i10 = this.f17430a;
            if (i10 < 0) {
                i10 += iIntValue;
            }
            int i11 = this.f17431b;
            if (i11 < 0) {
                i11 += iIntValue;
            }
            int i12 = ((i11 - i10) / this.f17432c) + 1;
            if (i12 == -1) {
                return null;
            }
            ArrayList arrayList = new ArrayList(i12);
            while (i10 <= i11 && i10 < iIntValue) {
                arrayList.add(jSONPath.h(obj2, i10));
                i10 += this.f17432c;
            }
            return arrayList;
        }
    }

    static class x extends u {

        private final a0 f17433f;

        private final Operator f17434g;

        public x(String str, boolean z10, a0 a0Var, Operator operator) {
            super(str, z10);
            this.f17433f = a0Var;
            this.f17434g = operator;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null || !(objB instanceof Number)) {
                return false;
            }
            Object objA = this.f17433f.a(jSONPath, obj, obj);
            if ((objA instanceof Integer) || (objA instanceof Long) || (objA instanceof Short) || (objA instanceof Byte)) {
                long jD0 = TypeUtils.D0((Number) objA);
                if ((objB instanceof Integer) || (objB instanceof Long) || (objB instanceof Short) || (objB instanceof Byte)) {
                    long jD1 = TypeUtils.D0((Number) objB);
                    switch (a.f17372a[this.f17434g.ordinal()]) {
                        case 1:
                            return jD1 == jD0;
                        case 2:
                            return jD1 != jD0;
                        case 3:
                            return jD1 >= jD0;
                        case 4:
                            return jD1 > jD0;
                        case 5:
                            return jD1 <= jD0;
                        case 6:
                            return jD1 < jD0;
                    }
                }
                if (objB instanceof BigDecimal) {
                    int iCompareTo = BigDecimal.valueOf(jD0).compareTo((BigDecimal) objB);
                    switch (a.f17372a[this.f17434g.ordinal()]) {
                        case 1:
                            return iCompareTo == 0;
                        case 2:
                            return iCompareTo != 0;
                        case 3:
                            return iCompareTo <= 0;
                        case 4:
                            return iCompareTo < 0;
                        case 5:
                            return iCompareTo >= 0;
                        case 6:
                            return iCompareTo > 0;
                        default:
                            return false;
                    }
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    static class y extends u {

        private final Pattern f17435f;

        private final Operator f17436g;

        public y(String str, boolean z10, Pattern pattern, Operator operator) {
            super(str, z10);
            this.f17435f = pattern;
            this.f17436g = operator;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            return this.f17435f.matcher(objB.toString()).matches();
        }
    }

    static class z extends u {

        private final Pattern f17437f;

        private final boolean f17438g;

        public z(String str, boolean z10, String str2, boolean z11) {
            super(str, z10);
            this.f17437f = Pattern.compile(str2);
            this.f17438g = z11;
        }

        @Override
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            boolean zMatches = this.f17437f.matcher(objB.toString()).matches();
            return this.f17438g ? !zMatches : zMatches;
        }
    }

    public JSONPath(String str) {
        this(str, g1.g(), a5.h.t(), true);
    }

    static int a(Object obj, Object obj2) {
        Object d10;
        Object f10;
        if (obj.getClass() == obj2.getClass()) {
            return ((Comparable) obj).compareTo(obj2);
        }
        Class<?> cls = obj.getClass();
        Class<?> cls2 = obj2.getClass();
        if (cls == BigDecimal.class) {
            if (cls2 == Integer.class) {
                f10 = new BigDecimal(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                f10 = new BigDecimal(((Long) obj2).longValue());
            } else if (cls2 == Float.class) {
                f10 = new BigDecimal(((Float) obj2).floatValue());
            } else if (cls2 == Double.class) {
                f10 = new BigDecimal(((Double) obj2).doubleValue());
            }
            obj2 = f10;
        } else if (cls == Long.class) {
            if (cls2 == Integer.class) {
                f10 = new Long(((Integer) obj2).intValue());
                obj2 = f10;
            } else {
                if (cls2 == BigDecimal.class) {
                    d10 = new BigDecimal(((Long) obj).longValue());
                } else if (cls2 == Float.class) {
                    d10 = new Float(((Long) obj).longValue());
                } else if (cls2 == Double.class) {
                    d10 = new Double(((Long) obj).longValue());
                }
                obj = d10;
            }
        } else if (cls == Integer.class) {
            if (cls2 == Long.class) {
                d10 = new Long(((Integer) obj).intValue());
            } else if (cls2 == BigDecimal.class) {
                d10 = new BigDecimal(((Integer) obj).intValue());
            } else if (cls2 == Float.class) {
                d10 = new Float(((Integer) obj).intValue());
            } else if (cls2 == Double.class) {
                d10 = new Double(((Integer) obj).intValue());
            }
            obj = d10;
        } else if (cls == Double.class) {
            if (cls2 == Integer.class) {
                f10 = new Double(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                f10 = new Double(((Long) obj2).longValue());
            } else if (cls2 == Float.class) {
                f10 = new Double(((Float) obj2).floatValue());
            }
            obj2 = f10;
        } else if (cls == Float.class) {
            if (cls2 == Integer.class) {
                f10 = new Float(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                f10 = new Float(((Long) obj2).longValue());
            } else if (cls2 == Double.class) {
                d10 = new Double(((Float) obj).floatValue());
                obj = d10;
            }
            obj2 = f10;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    public static JSONPath b(String str) {
        if (str == null) {
            throw new JSONPathException("jsonpath can not be null");
        }
        JSONPath jSONPath = (JSONPath) f17365g.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        JSONPath jSONPath2 = new JSONPath(str);
        if (f17365g.size() >= 1024) {
            return jSONPath2;
        }
        f17365g.putIfAbsent(str, jSONPath2);
        return (JSONPath) f17365g.get(str);
    }

    protected static boolean m(Class cls) {
        return cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class;
    }

    protected void c(Object obj, List list) {
        Collection collectionO;
        Class<?> cls = obj.getClass();
        p0 p0VarI = i(cls);
        if (p0VarI != null) {
            try {
                collectionO = p0VarI.o(obj);
            } catch (Exception e10) {
                throw new JSONPathException("jsonpath error, path " + this.f17366a, e10);
            }
        } else if (obj instanceof Map) {
            collectionO = ((Map) obj).values();
        } else {
            collectionO = obj instanceof Collection ? (Collection) obj : null;
        }
        if (collectionO == null) {
            throw new UnsupportedOperationException(cls.getName());
        }
        for (Object obj2 : collectionO) {
            if (obj2 == null || a5.h.w(obj2.getClass())) {
                list.add(obj2);
            } else {
                c(obj2, list);
            }
        }
    }

    protected void d(Object obj, String str, List list) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object value = entry.getValue();
                if (str.equals(entry.getKey())) {
                    if (value instanceof Collection) {
                        list.addAll((Collection) value);
                    } else {
                        list.add(value);
                    }
                } else if (value != null && !a5.h.w(value.getClass())) {
                    d(value, str, list);
                }
            }
            return;
        }
        if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                if (!a5.h.w(obj2.getClass())) {
                    d(obj2, str, list);
                }
            }
            return;
        }
        p0 p0VarI = i(obj.getClass());
        if (p0VarI == null) {
            if (obj instanceof List) {
                List list2 = (List) obj;
                for (int i10 = 0; i10 < list2.size(); i10++) {
                    d(list2.get(i10), str, list);
                }
                return;
            }
            return;
        }
        try {
            c5.g0 g0VarM = p0VarI.m(str);
            if (g0VarM == null) {
                Iterator it = p0VarI.o(obj).iterator();
                while (it.hasNext()) {
                    d(it.next(), str, list);
                }
                return;
            }
            try {
                try {
                    list.add(g0VarM.d(obj));
                } catch (IllegalAccessException e10) {
                    throw new JSONException("getFieldValue error." + str, e10);
                }
            } catch (InvocationTargetException e11) {
                throw new JSONException("getFieldValue error." + str, e11);
            }
        } catch (Exception e12) {
            throw new JSONPathException("jsonpath error, path " + this.f17366a + ", segement " + str, e12);
        }
    }

    public Object e(Object obj) {
        if (obj == null) {
            return null;
        }
        l();
        int i10 = 0;
        Object objA = obj;
        while (true) {
            a0[] a0VarArr = this.f17367b;
            if (i10 >= a0VarArr.length) {
                return objA;
            }
            objA = a0VarArr[i10].a(this, obj, objA);
            i10++;
        }
    }

    Set f(Object obj) {
        p0 p0VarI;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            return ((Map) obj).keySet();
        }
        if ((obj instanceof Collection) || (obj instanceof Object[]) || obj.getClass().isArray() || (p0VarI = i(obj.getClass())) == null) {
            return null;
        }
        try {
            return p0VarI.k(obj);
        } catch (Exception e10) {
            throw new JSONPathException("evalKeySet error : " + this.f17366a, e10);
        }
    }

    int g(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj);
        }
        if (obj instanceof Map) {
            Iterator it = ((Map) obj).values().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (it.next() != null) {
                    i10++;
                }
            }
            return i10;
        }
        p0 p0VarI = i(obj.getClass());
        if (p0VarI == null) {
            return -1;
        }
        try {
            return p0VarI.r(obj);
        } catch (Exception e10) {
            throw new JSONPathException("evalSize error : " + this.f17366a, e10);
        }
    }

    protected Object h(Object obj, int i10) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (i10 >= 0) {
                if (i10 < list.size()) {
                    return list.get(i10);
                }
                return null;
            }
            if (Math.abs(i10) <= list.size()) {
                return list.get(list.size() + i10);
            }
            return null;
        }
        if (obj.getClass().isArray()) {
            int length = Array.getLength(obj);
            if (i10 >= 0) {
                if (i10 < length) {
                    return Array.get(obj, i10);
                }
                return null;
            }
            if (Math.abs(i10) <= length) {
                return Array.get(obj, length + i10);
            }
            return null;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get(Integer.valueOf(i10));
            return obj2 == null ? map.get(Integer.toString(i10)) : obj2;
        }
        if (!(obj instanceof Collection)) {
            if (i10 == 0) {
                return obj;
            }
            throw new UnsupportedOperationException();
        }
        int i11 = 0;
        for (Object obj3 : (Collection) obj) {
            if (i11 == i10) {
                return obj3;
            }
            i11++;
        }
        return null;
    }

    protected p0 i(Class cls) {
        z0 z0VarH = this.f17369d.h(cls);
        if (z0VarH instanceof p0) {
            return (p0) z0VarH;
        }
        return null;
    }

    protected Object j(Object obj, String str, long j10) {
        Object obj2;
        JSONArray jSONArray = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            try {
                obj2 = (JSONObject) com.alibaba.fastjson.a.parse((String) obj, this.f17370e);
            } catch (Exception unused) {
                obj2 = obj;
            }
        } else {
            obj2 = obj;
        }
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get(str);
            if (obj3 == null) {
                return (5614464919154503228L == j10 || -1580386065683472715L == j10) ? Integer.valueOf(map.size()) : obj3;
            }
            return obj3;
        }
        p0 p0VarI = i(obj2.getClass());
        if (p0VarI != null) {
            try {
                return p0VarI.n(obj2, str, j10, false);
            } catch (Exception e10) {
                throw new JSONPathException("jsonpath error, path " + this.f17366a + ", segement " + str, e10);
            }
        }
        int i10 = 0;
        if (obj2 instanceof List) {
            List list = (List) obj2;
            if (5614464919154503228L == j10 || -1580386065683472715L == j10) {
                return Integer.valueOf(list.size());
            }
            while (i10 < list.size()) {
                Object obj4 = list.get(i10);
                if (obj4 == list) {
                    if (jSONArray == null) {
                        jSONArray = new JSONArray(list.size());
                    }
                    jSONArray.add(obj4);
                } else {
                    Object objJ = j(obj4, str, j10);
                    if (objJ instanceof Collection) {
                        Collection collection = (Collection) objJ;
                        if (jSONArray == null) {
                            jSONArray = new JSONArray(list.size());
                        }
                        jSONArray.addAll(collection);
                    } else if (objJ != null || !this.f17371f) {
                        if (jSONArray == null) {
                            jSONArray = new JSONArray(list.size());
                        }
                        jSONArray.add(objJ);
                    }
                }
                i10++;
            }
            return jSONArray == null ? Collections.emptyList() : jSONArray;
        }
        if (obj2 instanceof Object[]) {
            Object[] objArr = (Object[]) obj2;
            if (5614464919154503228L == j10 || -1580386065683472715L == j10) {
                return Integer.valueOf(objArr.length);
            }
            JSONArray jSONArray2 = new JSONArray(objArr.length);
            while (i10 < objArr.length) {
                Object[] objArr2 = objArr[i10];
                if (objArr2 == objArr) {
                    jSONArray2.add(objArr2);
                } else {
                    Object objJ2 = j(objArr2, str, j10);
                    if (objJ2 instanceof Collection) {
                        jSONArray2.addAll((Collection) objJ2);
                    } else if (objJ2 != null || !this.f17371f) {
                        jSONArray2.add(objJ2);
                    }
                }
                i10++;
            }
            return jSONArray2;
        }
        if (obj2 instanceof Enum) {
            Enum r10 = (Enum) obj2;
            if (-4270347329889690746L == j10) {
                return r10.name();
            }
            if (-1014497654951707614L == j10) {
                return Integer.valueOf(r10.ordinal());
            }
        }
        if (obj2 instanceof Calendar) {
            Calendar calendar = (Calendar) obj2;
            if (8963398325558730460L == j10) {
                return Integer.valueOf(calendar.get(1));
            }
            if (-811277319855450459L == j10) {
                return Integer.valueOf(calendar.get(2));
            }
            if (-3851359326990528739L == j10) {
                return Integer.valueOf(calendar.get(5));
            }
            if (4647432019745535567L == j10) {
                return Integer.valueOf(calendar.get(11));
            }
            if (6607618197526598121L == j10) {
                return Integer.valueOf(calendar.get(12));
            }
            if (-6586085717218287427L == j10) {
                return Integer.valueOf(calendar.get(13));
            }
        }
        return null;
    }

    protected Collection k(Object obj) {
        if (obj == null) {
            return null;
        }
        p0 p0VarI = i(obj.getClass());
        if (p0VarI == null) {
            if (obj instanceof Map) {
                return ((Map) obj).values();
            }
            if (obj instanceof Collection) {
                return (Collection) obj;
            }
            throw new UnsupportedOperationException();
        }
        try {
            return p0VarI.o(obj);
        } catch (Exception e10) {
            throw new JSONPathException("jsonpath error, path " + this.f17366a, e10);
        }
    }

    protected void l() {
        if (this.f17367b != null) {
            return;
        }
        if ("*".equals(this.f17366a)) {
            this.f17367b = new a0[]{g0.f17388c};
            return;
        }
        l lVar = new l(this.f17366a);
        this.f17367b = lVar.d();
        this.f17368c = lVar.f17410e;
    }

    public boolean n() {
        try {
            l();
            int i10 = 0;
            while (true) {
                a0[] a0VarArr = this.f17367b;
                if (i10 >= a0VarArr.length) {
                    return true;
                }
                Class<?> cls = a0VarArr[i10].getClass();
                if (cls != b.class && cls != v.class) {
                    return false;
                }
                i10++;
            }
        } catch (JSONPathException unused) {
            return false;
        }
    }

    @Override
    public String toJSONString() {
        return com.alibaba.fastjson.a.toJSONString(this.f17366a);
    }

    public JSONPath(String str, g1 g1Var, a5.h hVar, boolean z10) {
        if (str == null || str.length() == 0) {
            throw new JSONPathException("json-path can not be null or empty");
        }
        this.f17366a = str;
        this.f17369d = g1Var;
        this.f17370e = hVar;
        this.f17371f = z10;
    }
}
