package freemarker.core;

import androidx.room.FtsOptions;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.afa;
import defpackage.b1d;
import defpackage.c1d;
import defpackage.d1d;
import defpackage.gc7;
import defpackage.js7;
import defpackage.k0d;
import defpackage.n0a;
import defpackage.nfa;
import defpackage.q0d;
import defpackage.xd5;
import defpackage.xe1;
import defpackage.z0d;
import defpackage.zm1;
import freemarker.template.TemplateException;
import freemarker.template.Version;
import freemarker.template.utility.NullArgumentException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import org.apache.commons.lang3.BooleanUtils;
import org.greenrobot.greendao.generator.Schema;

public abstract class Configurable {
    public static final String[] C = {"api_builtin_enabled", "arithmetic_engine", "auto_flush", "boolean_format", "classic_compatible", "date_format", "datetime_format", CommonUrlParts.LOCALE, "log_template_exceptions", "new_builtin_class_resolver", "number_format", "object_wrapper", "output_encoding", "show_error_tips", "sql_date_and_time_time_zone", "strict_bean_models", "template_exception_handler", "time_format", "time_zone", "url_escaping_charset"};
    public static final String[] D = {"apiBuiltinEnabled", "arithmeticEngine", "autoFlush", "booleanFormat", "classicCompatible", "dateFormat", "datetimeFormat", CommonUrlParts.LOCALE, "logTemplateExceptions", "newBuiltinClassResolver", "numberFormat", "objectWrapper", "outputEncoding", "showErrorTips", "sqlDateAndTimeTimeZone", "strictBeanModels", "templateExceptionHandler", "timeFormat", "timeZone", "urlEscapingCharset"};
    public static Class E;
    public static Class F;
    public static Class G;
    public static Class H;
    public static Class I;
    public Boolean A;
    public Boolean B;
    public Configurable b;
    public Properties c;
    public HashMap d;
    public Locale e;
    public String f;
    public String g;
    public String h;
    public String i;
    public TimeZone j;
    public TimeZone k;
    public boolean l;
    public String m;
    public String n;
    public String o;
    public Integer p;
    public nfa q;
    public c r;
    public gc7 s;
    public String t;
    public boolean u;
    public String v;
    public boolean w;
    public Boolean x;
    public afa y;
    public Boolean z;

    public static class SettingValueAssignmentException extends _MiscTemplateException {
        private SettingValueAssignmentException(Environment environment, String str, String str2, Throwable th) {
            super(th, environment, new Object[]{"Failed to set FreeMarker configuration setting ", new k0d(str), " to value ", new k0d(str2), "; see cause exception."});
        }
    }

    public static class UnknownSettingException extends _MiscTemplateException {
        private UnknownSettingException(Environment environment, String str, String str2) {
            super(environment, new Object[]{"Unknown FreeMarker configuration setting: ", new k0d(str), str2 == null ? "" : new Object[]{". You may meant: ", new k0d(str2)}});
        }
    }

    public static class a {
        public final Object a;
        public final Object b;

        public a(Object obj, Object obj2) {
            this.a = obj;
            this.b = obj2;
        }

        public Object a() {
            return this.a;
        }

        public Object b() {
            return this.b;
        }
    }

    public static class b {
        public String a;
        public int b;
        public int c;

        public String a() throws ParseException {
            String strB = b();
            if (strB.startsWith("'") || strB.startsWith("\"")) {
                strB = strB.substring(1, strB.length() - 1);
            }
            return n0a.a(strB);
        }

        public final String b() throws ParseException {
            char cCharAt;
            int i;
            int i2 = this.b;
            if (i2 == this.c) {
                throw new ParseException("Unexpeced end of text", 0, 0);
            }
            char cCharAt2 = this.a.charAt(i2);
            int i3 = this.b;
            if (cCharAt2 != '\'' && cCharAt2 != '\"') {
                do {
                    cCharAt = this.a.charAt(this.b);
                    if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '/' && cCharAt != '\\' && cCharAt != '_' && cCharAt != '.' && cCharAt != '-' && cCharAt != '!' && cCharAt != '*' && cCharAt != '?') {
                        break;
                    }
                    i = this.b + 1;
                    this.b = i;
                } while (i < this.c);
                int i4 = this.b;
                if (i3 != i4) {
                    return this.a.substring(i3, i4);
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unexpected character: ");
                stringBuffer.append(cCharAt);
                throw new ParseException(stringBuffer.toString(), 0, 0);
            }
            this.b = i3 + 1;
            boolean z = false;
            while (true) {
                int i5 = this.b;
                if (i5 >= this.c) {
                    break;
                }
                char cCharAt3 = this.a.charAt(i5);
                if (z) {
                    z = false;
                } else if (cCharAt3 == '\\') {
                    z = true;
                } else if (cCharAt3 == cCharAt2) {
                    break;
                }
                this.b++;
            }
            int i6 = this.b;
            if (i6 != this.c) {
                int i7 = i6 + 1;
                this.b = i7;
                return this.a.substring(i3, i7);
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Missing ");
            stringBuffer2.append(cCharAt2);
            throw new ParseException(stringBuffer2.toString(), 0, 0);
        }

        public ArrayList c() throws ParseException {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = null;
            while (d() != ' ') {
                String strA = a();
                char cD = d();
                if (cD == ':') {
                    arrayList2 = new ArrayList();
                    arrayList.add(new a(strA, arrayList2));
                } else {
                    if (arrayList2 == null) {
                        throw new ParseException("The very first list item must be followed by \":\" so it will be the key for the following sub-list.", 0, 0);
                    }
                    arrayList2.add(strA);
                }
                if (cD == ' ') {
                    break;
                }
                if (cD != ',' && cD != ':') {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Expected \",\" or \":\" or the end of text but found \"");
                    stringBuffer.append(cD);
                    stringBuffer.append("\"");
                    throw new ParseException(stringBuffer.toString(), 0, 0);
                }
                this.b++;
            }
            return arrayList;
        }

        public char d() {
            while (true) {
                int i = this.b;
                if (i >= this.c) {
                    return ' ';
                }
                char cCharAt = this.a.charAt(i);
                if (!Character.isWhitespace(cCharAt)) {
                    return cCharAt;
                }
                this.b++;
            }
        }

        public b(String str) {
            this.a = str;
            this.b = 0;
            this.c = str.length();
        }
    }

    public Configurable(Version version) {
        d1d.a(version);
        this.b = null;
        this.c = new Properties();
        Locale locale = Locale.getDefault();
        this.e = locale;
        this.c.setProperty(CommonUrlParts.LOCALE, locale.toString());
        TimeZone timeZone = TimeZone.getDefault();
        this.j = timeZone;
        this.c.setProperty("time_zone", timeZone.getID());
        this.k = null;
        this.c.setProperty("sql_date_and_time_time_zone", String.valueOf((Object) null));
        this.f = "number";
        this.c.setProperty("number_format", "number");
        this.g = "";
        this.c.setProperty("time_format", "");
        this.h = "";
        this.c.setProperty("date_format", "");
        this.i = "";
        this.c.setProperty("datetime_format", "");
        Integer num = new Integer(0);
        this.p = num;
        this.c.setProperty("classic_compatible", num.toString());
        nfa nfaVarD = d1d.d(version);
        this.q = nfaVarD;
        this.c.setProperty("template_exception_handler", nfaVarD.getClass().getName());
        c.a aVar = c.d;
        this.r = aVar;
        this.c.setProperty("arithmetic_engine", aVar.getClass().getName());
        this.s = xe1.w0(version);
        Boolean bool = Boolean.TRUE;
        this.x = bool;
        this.c.setProperty("auto_flush", bool.toString());
        afa afaVar = afa.a;
        this.y = afaVar;
        this.c.setProperty("new_builtin_class_resolver", afaVar.getClass().getName());
        this.z = bool;
        this.c.setProperty("show_error_tips", bool.toString());
        Boolean bool2 = Boolean.FALSE;
        this.A = bool2;
        this.c.setProperty("api_builtin_enabled", bool2.toString());
        Boolean boolValueOf = Boolean.valueOf(d1d.c(version));
        this.B = boolValueOf;
        this.c.setProperty("log_template_exceptions", boolValueOf.toString());
        P("true,false");
        this.d = new HashMap();
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public boolean A() {
        Boolean bool = this.z;
        if (bool != null) {
            return bool.booleanValue();
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.A();
        }
        return true;
    }

    public nfa B() {
        nfa nfaVar = this.q;
        return nfaVar != null ? nfaVar : this.b.B();
    }

    public String C() {
        String str = this.g;
        return str != null ? str : this.b.C();
    }

    public TimeZone E() {
        TimeZone timeZone = this.j;
        return timeZone != null ? timeZone : this.b.E();
    }

    public String F() {
        if (this.m != null) {
            return this.n;
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.F();
        }
        return null;
    }

    public String G() {
        if (this.w) {
            return this.v;
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.G();
        }
        return null;
    }

    public TemplateException H(String str, String str2) {
        return new _MiscTemplateException(n(), new Object[]{"Invalid value for setting ", new k0d(str), ": ", new k0d(str2)});
    }

    public boolean I() {
        Boolean bool = this.A;
        if (bool != null) {
            return bool.booleanValue();
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.I();
        }
        return false;
    }

    public boolean J() {
        Integer num = this.p;
        if (num != null) {
            return num.intValue() != 0;
        }
        return this.b.J();
    }

    public ArrayList K(String str) {
        return new b(str).c();
    }

    public final TimeZone L(String str) {
        return "JVM default".equalsIgnoreCase(str) ? TimeZone.getDefault() : TimeZone.getTimeZone(str);
    }

    public void M(boolean z) {
        this.A = Boolean.valueOf(z);
        this.c.setProperty("api_builtin_enabled", String.valueOf(z));
    }

    public void N(c cVar) {
        NullArgumentException.check("arithmeticEngine", cVar);
        this.r = cVar;
        this.c.setProperty("arithmetic_engine", cVar.getClass().getName());
    }

    public void O(boolean z) {
        this.x = Boolean.valueOf(z);
        this.c.setProperty("auto_flush", String.valueOf(z));
    }

    public void P(String str) {
        NullArgumentException.check("booleanFormat", str);
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException("Setting value must be string that contains two comma-separated values for true and false, respectively.");
        }
        this.m = str;
        this.c.setProperty("boolean_format", str);
        if (str.equals("true,false")) {
            this.n = null;
            this.o = null;
        } else {
            this.n = str.substring(0, iIndexOf);
            this.o = str.substring(iIndexOf + 1);
        }
    }

    public void Q(boolean z) {
        Integer num = new Integer(z ? 1 : 0);
        this.p = num;
        this.c.setProperty("classic_compatible", c(num));
    }

    public void R(int i) {
        if (i >= 0 && i <= 2) {
            this.p = new Integer(i);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unsupported \"classicCompatibility\": ");
        stringBuffer.append(i);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public void S(String str, Object obj) {
        synchronized (this.d) {
            this.d.put(str, obj);
        }
    }

    public void T(String str) {
        NullArgumentException.check("dateFormat", str);
        this.h = str;
        this.c.setProperty("date_format", str);
    }

    public void U(String str) {
        NullArgumentException.check("dateTimeFormat", str);
        this.i = str;
        this.c.setProperty("datetime_format", str);
    }

    public void V(Locale locale) {
        NullArgumentException.check(CommonUrlParts.LOCALE, locale);
        this.e = locale;
        this.c.setProperty(CommonUrlParts.LOCALE, locale.toString());
    }

    public void W(boolean z) {
        this.B = Boolean.valueOf(z);
        this.c.setProperty("log_template_exceptions", String.valueOf(z));
    }

    public void X(afa afaVar) {
        NullArgumentException.check("newBuiltinClassResolver", afaVar);
        this.y = afaVar;
        this.c.setProperty("new_builtin_class_resolver", afaVar.getClass().getName());
    }

    public void Y(String str) {
        NullArgumentException.check("numberFormat", str);
        this.f = str;
        this.c.setProperty("number_format", str);
    }

    public void Z(gc7 gc7Var) {
        NullArgumentException.check("objectWrapper", gc7Var);
        this.s = gc7Var;
        this.c.setProperty("object_wrapper", gc7Var.getClass().getName());
    }

    public void a0(String str) {
        this.t = str;
        if (str != null) {
            this.c.setProperty("output_encoding", str);
        } else {
            this.c.remove("output_encoding");
        }
        this.u = true;
    }

    public final void b0(Configurable configurable) {
        this.b = configurable;
    }

    public final String c(Integer num) {
        if (num == null) {
            return null;
        }
        if (num.intValue() == 0) {
            return BooleanUtils.FALSE;
        }
        return num.intValue() == 1 ? BooleanUtils.TRUE : num.toString();
    }

    public void c0(TimeZone timeZone) {
        this.k = timeZone;
        this.l = true;
        this.c.setProperty("sql_date_and_time_time_zone", timeZone != null ? timeZone.getID() : "null");
    }

    public Object clone() {
        Configurable configurable = (Configurable) super.clone();
        configurable.c = new Properties(this.c);
        configurable.d = (HashMap) this.d.clone();
        return configurable;
    }

    public void d(Environment environment) {
        Configurable configurable = this.b;
        if (configurable != null) {
            configurable.d(environment);
        }
    }

    public void d0(String str, String str2) throws Throwable {
        try {
            if (CommonUrlParts.LOCALE.equals(str)) {
                V(n0a.r(str2));
                return;
            }
            if (!"number_format".equals(str) && !"numberFormat".equals(str)) {
                if (!"time_format".equals(str) && !"timeFormat".equals(str)) {
                    if (!"date_format".equals(str) && !"dateFormat".equals(str)) {
                        if (!"datetime_format".equals(str) && !"datetimeFormat".equals(str)) {
                            if (!"time_zone".equals(str) && !"timeZone".equals(str)) {
                                TimeZone timeZoneL = null;
                                HashSet hashSet = null;
                                if (!"sql_date_and_time_time_zone".equals(str) && !"sqlDateAndTimeTimeZone".equals(str)) {
                                    if (!"classic_compatible".equals(str) && !"classicCompatible".equals(str)) {
                                        if (!"template_exception_handler".equals(str) && !"templateExceptionHandler".equals(str)) {
                                            if (!"arithmetic_engine".equals(str) && !"arithmeticEngine".equals(str)) {
                                                if (!"object_wrapper".equals(str) && !"objectWrapper".equals(str)) {
                                                    if (!"boolean_format".equals(str) && !"booleanFormat".equals(str)) {
                                                        if (!"output_encoding".equals(str) && !"outputEncoding".equals(str)) {
                                                            if (!"url_escaping_charset".equals(str) && !"urlEscapingCharset".equals(str)) {
                                                                if (!"strict_bean_models".equals(str) && !"strictBeanModels".equals(str)) {
                                                                    if (!"auto_flush".equals(str) && !"autoFlush".equals(str)) {
                                                                        if (!"show_error_tips".equals(str) && !"showErrorTips".equals(str)) {
                                                                            if (!"api_builtin_enabled".equals(str) && !"apiBuiltinEnabled".equals(str)) {
                                                                                if (!"new_builtin_class_resolver".equals(str) && !"newBuiltinClassResolver".equals(str)) {
                                                                                    if (!"log_template_exceptions".equals(str) && !"logTemplateExceptions".equals(str)) {
                                                                                        throw l0(str);
                                                                                    }
                                                                                    W(n0a.u(str2));
                                                                                    return;
                                                                                }
                                                                                if ("unrestricted".equals(str2)) {
                                                                                    X(afa.a);
                                                                                    return;
                                                                                }
                                                                                if ("safer".equals(str2)) {
                                                                                    X(afa.b);
                                                                                    return;
                                                                                }
                                                                                if (!"allows_nothing".equals(str2) && !"allowsNothing".equals(str2)) {
                                                                                    if (str2.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER) == -1) {
                                                                                        if (str2.indexOf(46) == -1) {
                                                                                            throw H(str, str2);
                                                                                        }
                                                                                        Class clsA = H;
                                                                                        if (clsA == null) {
                                                                                            clsA = a("freemarker.core.TemplateClassResolver");
                                                                                            H = clsA;
                                                                                        }
                                                                                        X((afa) z0d.g(str2, clsA, b1d.a()));
                                                                                        return;
                                                                                    }
                                                                                    ArrayList arrayListK = K(str2);
                                                                                    List list = null;
                                                                                    for (int i = 0; i < arrayListK.size(); i++) {
                                                                                        a aVar = (a) arrayListK.get(i);
                                                                                        String str3 = (String) aVar.a();
                                                                                        List list2 = (List) aVar.b();
                                                                                        if (str3.equals("allowed_classes")) {
                                                                                            hashSet = new HashSet(list2);
                                                                                        } else {
                                                                                            if (!str3.equals("trusted_templates")) {
                                                                                                StringBuffer stringBuffer = new StringBuffer();
                                                                                                stringBuffer.append("Unrecognized list segment key: ");
                                                                                                stringBuffer.append(n0a.D(str3));
                                                                                                stringBuffer.append(". Supported keys are: \"");
                                                                                                stringBuffer.append("allowed_classes");
                                                                                                stringBuffer.append("\", \"");
                                                                                                stringBuffer.append("trusted_templates");
                                                                                                stringBuffer.append("\"");
                                                                                                throw new ParseException(stringBuffer.toString(), 0, 0);
                                                                                            }
                                                                                            list = list2;
                                                                                        }
                                                                                    }
                                                                                    X(new js7(hashSet, list));
                                                                                    return;
                                                                                }
                                                                                X(afa.c);
                                                                                return;
                                                                            }
                                                                            M(n0a.u(str2));
                                                                            return;
                                                                        }
                                                                        e0(n0a.u(str2));
                                                                        return;
                                                                    }
                                                                    O(n0a.u(str2));
                                                                    return;
                                                                }
                                                                f0(n0a.u(str2));
                                                                return;
                                                            }
                                                            j0(str2);
                                                            return;
                                                        }
                                                        a0(str2);
                                                        return;
                                                    }
                                                    P(str2);
                                                    return;
                                                }
                                                if (Schema.DEFAULT_NAME.equalsIgnoreCase(str2)) {
                                                    if (this instanceof xe1) {
                                                        ((xe1) this).d1();
                                                        return;
                                                    } else {
                                                        Z(xe1.w0(xe1.e0));
                                                        return;
                                                    }
                                                }
                                                if ("default_2_3_0".equalsIgnoreCase(str2)) {
                                                    Z(xe1.w0(xe1.e0));
                                                    return;
                                                }
                                                if (FtsOptions.TOKENIZER_SIMPLE.equalsIgnoreCase(str2)) {
                                                    Z(gc7.c);
                                                    return;
                                                }
                                                if ("beans".equalsIgnoreCase(str2)) {
                                                    Z(gc7.a);
                                                    return;
                                                }
                                                if ("jython".equalsIgnoreCase(str2)) {
                                                    Class cls = xd5.g;
                                                    Z((gc7) xd5.class.getField("INSTANCE").get(null));
                                                    return;
                                                }
                                                Class clsA2 = G;
                                                if (clsA2 == null) {
                                                    clsA2 = a("freemarker.template.ObjectWrapper");
                                                    G = clsA2;
                                                }
                                                Z((gc7) z0d.g(str2, clsA2, b1d.a()));
                                                return;
                                            }
                                            if (str2.indexOf(46) != -1) {
                                                Class clsA3 = F;
                                                if (clsA3 == null) {
                                                    clsA3 = a("freemarker.core.ArithmeticEngine");
                                                    F = clsA3;
                                                }
                                                N((c) z0d.g(str2, clsA3, b1d.a()));
                                                return;
                                            }
                                            if ("bigdecimal".equalsIgnoreCase(str2)) {
                                                N(c.d);
                                                return;
                                            } else {
                                                if (!"conservative".equalsIgnoreCase(str2)) {
                                                    throw H(str, str2);
                                                }
                                                N(c.e);
                                                return;
                                            }
                                        }
                                        if (str2.indexOf(46) != -1) {
                                            Class clsA4 = E;
                                            if (clsA4 == null) {
                                                clsA4 = a("freemarker.template.TemplateExceptionHandler");
                                                E = clsA4;
                                            }
                                            g0((nfa) z0d.g(str2, clsA4, b1d.a()));
                                            return;
                                        }
                                        if ("debug".equalsIgnoreCase(str2)) {
                                            g0(nfa.c);
                                            return;
                                        }
                                        if (!"html_debug".equalsIgnoreCase(str2) && !"htmlDebug".equals(str2)) {
                                            if ("ignore".equalsIgnoreCase(str2)) {
                                                g0(nfa.a);
                                                return;
                                            }
                                            if ("rethrow".equalsIgnoreCase(str2)) {
                                                g0(nfa.b);
                                                return;
                                            } else {
                                                if (!Schema.DEFAULT_NAME.equalsIgnoreCase(str2) || !(this instanceof xe1)) {
                                                    throw H(str, str2);
                                                }
                                                ((xe1) this).e1();
                                                return;
                                            }
                                        }
                                        g0(nfa.d);
                                        return;
                                    }
                                    char cCharAt = (str2 == null || str2.length() <= 0) ? (char) 0 : str2.charAt(0);
                                    if (!Character.isDigit(cCharAt) && cCharAt != '+' && cCharAt != '-') {
                                        Q(str2 != null ? n0a.u(str2) : false);
                                        return;
                                    }
                                    R(Integer.parseInt(str2));
                                    return;
                                }
                                if (!str2.equals("null")) {
                                    timeZoneL = L(str2);
                                }
                                c0(timeZoneL);
                                return;
                            }
                            i0(L(str2));
                            return;
                        }
                        U(str2);
                        return;
                    }
                    T(str2);
                    return;
                }
                h0(str2);
                return;
            }
            Y(str2);
        } catch (Exception e) {
            throw k0(str, str2, e);
        }
    }

    public String e(boolean z, boolean z2) throws _MiscTemplateException {
        if (z) {
            String strF = F();
            if (strF != null) {
                return strF;
            }
            if (z2) {
                return BooleanUtils.TRUE;
            }
            throw new _MiscTemplateException(s());
        }
        String strO = o();
        if (strO != null) {
            return strO;
        }
        if (z2) {
            return BooleanUtils.FALSE;
        }
        throw new _MiscTemplateException(s());
    }

    public void e0(boolean z) {
        this.z = Boolean.valueOf(z);
        this.c.setProperty("show_error_tips", String.valueOf(z));
    }

    public c f() {
        c cVar = this.r;
        return cVar != null ? cVar : this.b.f();
    }

    public void f0(boolean z) throws Throwable {
        gc7 gc7Var = this.s;
        if (gc7Var instanceof freemarker.ext.beans.b) {
            ((freemarker.ext.beans.b) gc7Var).I(z);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The value of the object_wrapper setting isn't a ");
        Class clsA = I;
        if (clsA == null) {
            clsA = a("freemarker.ext.beans.BeansWrapper");
            I = clsA;
        }
        stringBuffer.append(clsA.getName());
        stringBuffer.append(Consts.DOT);
        throw new IllegalStateException(stringBuffer.toString());
    }

    public boolean g() {
        Boolean bool = this.x;
        if (bool != null) {
            return bool.booleanValue();
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.g();
        }
        return true;
    }

    public void g0(nfa nfaVar) {
        NullArgumentException.check("templateExceptionHandler", nfaVar);
        this.q = nfaVar;
        this.c.setProperty("template_exception_handler", nfaVar.getClass().getName());
    }

    public String h() {
        String str = this.m;
        return str != null ? str : this.b.h();
    }

    public void h0(String str) {
        NullArgumentException.check("timeFormat", str);
        this.g = str;
        this.c.setProperty("time_format", str);
    }

    public int i() {
        Integer num = this.p;
        return num != null ? num.intValue() : this.b.i();
    }

    public void i0(TimeZone timeZone) {
        NullArgumentException.check("timeZone", timeZone);
        this.j = timeZone;
        this.c.setProperty("time_zone", timeZone.getID());
    }

    public String j(String str) {
        return null;
    }

    public void j0(String str) {
        this.v = str;
        if (str != null) {
            this.c.setProperty("url_escaping_charset", str);
        } else {
            this.c.remove("url_escaping_charset");
        }
        this.w = true;
    }

    public Object k(Object obj, zm1 zm1Var) {
        Object objA;
        synchronized (this.d) {
            try {
                objA = this.d.get(obj);
                if (objA == null && !this.d.containsKey(obj)) {
                    objA = zm1Var.a();
                    this.d.put(obj, objA);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objA;
    }

    public TemplateException k0(String str, String str2, Throwable th) {
        return new SettingValueAssignmentException(n(), str, str2, th);
    }

    public String l() {
        String str = this.h;
        return str != null ? str : this.b.l();
    }

    public TemplateException l0(String str) {
        return new UnknownSettingException(n(), str, j(str));
    }

    public String m() {
        String str = this.i;
        return str != null ? str : this.b.m();
    }

    public Environment n() {
        return this instanceof Environment ? (Environment) this : Environment.y0();
    }

    public String o() {
        if (this.m != null) {
            return this.o;
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.o();
        }
        return null;
    }

    public Locale p() {
        Locale locale = this.e;
        return locale != null ? locale : this.b.p();
    }

    public boolean q() {
        Boolean bool = this.B;
        if (bool != null) {
            return bool.booleanValue();
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.q();
        }
        return true;
    }

    public afa r() {
        afa afaVar = this.y;
        return afaVar != null ? afaVar : this.b.r();
    }

    public final q0d s() {
        return new q0d(new Object[]{"Can't convert boolean to string automatically, because the \"", "boolean_format", "\" setting was ", new k0d(h()), h().equals("true,false") ? ", which is the legacy default computer-language format, and hence isn't accepted." : Consts.DOT}).j(new Object[]{"If you just want \"true\"/\"false\" result as you are generting computer-language output, use \"?c\", like ${myBool?c}.", "You can write myBool?string('yes', 'no') and like to specify boolean formatting in place.", new Object[]{"If you need the same two values on most places, the programmers should set the \"", "boolean_format", "\" setting to something like \"yes,no\"."}});
    }

    public String t() {
        String str = this.f;
        return str != null ? str : this.b.t();
    }

    public gc7 u() {
        gc7 gc7Var = this.s;
        return gc7Var != null ? gc7Var : this.b.u();
    }

    public String v() {
        if (this.u) {
            return this.t;
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.v();
        }
        return null;
    }

    public final Configurable w() {
        return this.b;
    }

    public TimeZone x() {
        if (this.l) {
            return this.k;
        }
        Configurable configurable = this.b;
        if (configurable != null) {
            return configurable.x();
        }
        return null;
    }

    public String y(String str) {
        return this.c.getProperty(str);
    }

    Set z(boolean z) {
        return new c1d(z ? D : C);
    }

    public Configurable(Configurable configurable) {
        this.b = configurable;
        this.e = null;
        this.f = null;
        this.p = null;
        this.q = null;
        this.c = new Properties(configurable.c);
        this.d = new HashMap();
    }
}
