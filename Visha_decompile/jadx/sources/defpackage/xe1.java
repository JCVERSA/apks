package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.cache.TemplateCache;
import freemarker.core.BugException;
import freemarker.core.Configurable;
import freemarker.core.Environment;
import freemarker.core.x1;
import freemarker.template.Template;
import freemarker.template.TemplateModelException;
import freemarker.template.TemplateNotFoundException;
import freemarker.template.Version;
import freemarker.template.utility.NullArgumentException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class xe1 extends Configurable implements Cloneable {
    public static final pq5 b0 = pq5.k("freemarker.cache");
    public static final String[] c0 = {"auto_import", "auto_include", "cache_storage", "default_encoding", "incompatible_improvements", "localized_lookup", "naming_convention", "strict_syntax", "tag_syntax", "template_loader", "template_lookup_strategy", "template_name_format", "template_update_delay", "whitespace_stripping"};
    public static final String[] d0 = {"autoImport", "autoInclude", "cacheStorage", "defaultEncoding", "incompatibleImprovements", "localizedLookup", "namingConvention", "strictSyntax", "tagSyntax", "templateLoader", "templateLookupStrategy", "templateNameFormat", "templateUpdateDelay", "whitespaceStripping"};
    public static final Version e0;
    public static final Version f0;
    public static final Version g0;
    public static final Version h0;
    public static final Version i0;
    public static final Version j0;
    public static final Version k0;
    public static final String l0;
    public static final int m0;
    public static final Version n0;
    public static final boolean o0;
    public static final Object p0;
    public static xe1 q0;
    public static Class r0;
    public boolean J;
    public volatile boolean K;
    public boolean L;
    public Version M;
    public int N;
    public int O;
    public TemplateCache P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public HashMap U;
    public HashMap V;
    public String W;
    public Map X;
    public ArrayList Y;
    public ArrayList Z;
    public Map a0;

    public static class a extends xr9 {
        public a() {
        }
    }

    public static class b extends xr3 {
    }

    static {
        Date date;
        boolean z = false;
        Version version = new Version(2, 3, 0);
        e0 = version;
        f0 = new Version(2, 3, 19);
        g0 = new Version(2, 3, 20);
        h0 = new Version(2, 3, 21);
        i0 = new Version(2, 3, 22);
        j0 = new Version(2, 3, 23);
        k0 = version;
        l0 = version.toString();
        m0 = version.intValue();
        try {
            Properties properties = new Properties();
            Class clsA = r0;
            if (clsA == null) {
                clsA = a("freemarker.template.Configuration");
                r0 = clsA;
            }
            InputStream resourceAsStream = clsA.getClassLoader().getResourceAsStream("freemarker/version.properties");
            if (resourceAsStream == null) {
                throw new RuntimeException("Version file is missing.");
            }
            try {
                properties.load(resourceAsStream);
                resourceAsStream.close();
                String strH0 = H0(properties, "version");
                String strH1 = H0(properties, "buildTimestamp");
                if (strH1.endsWith("Z")) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(strH1.substring(0, strH1.length() - 1));
                    stringBuffer.append("+0000");
                    strH1 = stringBuffer.toString();
                }
                try {
                    date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).parse(strH1);
                } catch (ParseException unused) {
                    date = null;
                }
                n0 = new Version(strH0, Boolean.valueOf(H0(properties, "isGAECompliant")), date);
                try {
                    Class.forName("freemarker.core._2_4_OrLaterMarker");
                } catch (LinkageError unused2) {
                } catch (Throwable unused3) {
                }
                z = true;
                o0 = z;
                p0 = new Object();
            } catch (Throwable th) {
                resourceAsStream.close();
                throw th;
            }
        } catch (IOException e) {
            throw new RuntimeException("Failed to load and parse freemarker/version.properties", e);
        }
    }

    public xe1() {
        this(k0);
    }

    public static wfa B0(Version version) {
        return wfa.a;
    }

    public static fga D0(Version version) {
        return fga.a;
    }

    public static String H0(Properties properties, String str) {
        String property = properties.getProperty(str);
        if (property != null) {
            return property;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Version file is corrupt: \"");
        stringBuffer.append(str);
        stringBuffer.append("\" property is missing.");
        throw new RuntimeException(stringBuffer.toString());
    }

    public static Version S0() {
        return n0;
    }

    public static String T0() {
        return n0.toString();
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static void m0() {
        if (o0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Clashing FreeMarker versions (");
            stringBuffer.append(n0);
            stringBuffer.append(" and some post-2.3.x) detected: ");
            stringBuffer.append("found post-2.3.x class ");
            stringBuffer.append("freemarker.core._2_4_OrLaterMarker");
            stringBuffer.append(". You probably have two different ");
            stringBuffer.append("freemarker.jar-s in the classpath.");
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    public static zp0 n0(Version version, zp0 zp0Var) {
        return zp0Var instanceof a ? zp0Var : new a();
    }

    public static qfa o0(Version version, qfa qfaVar) {
        if (version.intValue() < d1d.d) {
            if (qfaVar instanceof b) {
                return qfaVar;
            }
            try {
                return new b();
            } catch (Exception e) {
                b0.A("Couldn't create legacy default TemplateLoader which accesses the current directory. (Use new Configuration(Configuration.VERSION_2_3_21) or higher to avoid this.)", e);
            }
        }
        return null;
    }

    public static xe1 t0() {
        xe1 xe1Var;
        synchronized (p0) {
            try {
                if (q0 == null) {
                    q0 = new xe1();
                }
                xe1Var = q0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xe1Var;
    }

    public static final boolean u0(Version version) {
        return true;
    }

    public static gc7 w0(Version version) {
        return version.intValue() < d1d.d ? gc7.b : new a32(version).m();
    }

    public static final nfa y0(Version version) {
        return nfa.c;
    }

    public final wfa A0() {
        return B0(F0());
    }

    public final fga C0() {
        return D0(F0());
    }

    public String E0(Locale locale) {
        if (this.X.isEmpty()) {
            return this.W;
        }
        String str = (String) this.X.get(locale.toString());
        if (str == null) {
            if (locale.getVariant().length() > 0) {
                String str2 = (String) this.X.get(new Locale(locale.getLanguage(), locale.getCountry()).toString());
                if (str2 != null) {
                    this.X.put(locale.toString(), str2);
                }
            }
            str = (String) this.X.get(locale.getLanguage());
            if (str != null) {
                this.X.put(locale.toString(), str);
            }
        }
        return str != null ? str : this.W;
    }

    public Version F0() {
        return this.M;
    }

    public int G0() {
        return this.O;
    }

    public zfa I0(String str) {
        return (zfa) this.U.get(str);
    }

    public Set J0() {
        return new HashSet(this.U.keySet());
    }

    public boolean K0() {
        return this.J;
    }

    public int L0() {
        return this.N;
    }

    public Template M0(String str) {
        return O0(str, null, null, null, true, false);
    }

    public Template N0(String str, Locale locale) {
        return O0(str, locale, null, null, true, false);
    }

    public Template O0(String str, Locale locale, Object obj, String str2, boolean z, boolean z2) throws TemplateNotFoundException {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        if (locale == null) {
            locale = p();
        }
        Locale locale2 = locale;
        if (str2 == null) {
            str2 = E0(locale2);
        }
        TemplateCache.a aVarK = this.P.k(str, locale2, obj, str2, z);
        Template templateC = aVarK.c();
        if (templateC != null) {
            return templateC;
        }
        if (z2) {
            return null;
        }
        qfa qfaVarP0 = P0();
        if (qfaVarP0 == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Don't know where to load template ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(" from because the \"template_loader\" FreeMarker ");
            stringBuffer.append("setting wasn't set (Configuration.setTemplateLoader), so it's null.");
            string5 = stringBuffer.toString();
        } else {
            String strA = aVarK.a();
            String strB = aVarK.b();
            wfa wfaVarQ0 = Q0();
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Template not found for name ");
            stringBuffer2.append(n0a.D(str));
            String str3 = "";
            if (strA == null || str == null || Y0(str).equals(strA)) {
                string = "";
            } else {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(" (normalized: ");
                stringBuffer3.append(n0a.D(strA));
                stringBuffer3.append(")");
                string = stringBuffer3.toString();
            }
            stringBuffer2.append(string);
            if (obj != null) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(" and custom lookup condition ");
                stringBuffer4.append(n0a.C(obj));
                string2 = stringBuffer4.toString();
            } else {
                string2 = "";
            }
            stringBuffer2.append(string2);
            stringBuffer2.append(Consts.DOT);
            if (strB != null) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("\nReason given: ");
                stringBuffer5.append(q0(strB));
                string3 = stringBuffer5.toString();
            } else {
                string3 = "";
            }
            stringBuffer2.append(string3);
            stringBuffer2.append("\nThe name was interpreted by this TemplateLoader: ");
            stringBuffer2.append(n0a.a0(qfaVarP0));
            stringBuffer2.append(Consts.DOT);
            if (V0(wfaVarQ0)) {
                string4 = "";
            } else {
                StringBuffer stringBuffer6 = new StringBuffer();
                stringBuffer6.append("\n(Before that, the name was possibly changed by this lookup strategy: ");
                stringBuffer6.append(n0a.a0(wfaVarQ0));
                stringBuffer6.append(".)");
                string4 = stringBuffer6.toString();
            }
            stringBuffer2.append(string4);
            stringBuffer2.append(!this.Q ? "\nWarning: The \"template_loader\" FreeMarker setting wasn't set (Configuration.setTemplateLoader), and using the default value is most certainly not intended and dangerous, and can be the cause of this error." : "");
            if (strB == null && str.indexOf(92) != -1) {
                str3 = "\nWarning: The name contains backslash (\"\\\") instead of slash (\"/\"); template names should use slash only.";
            }
            stringBuffer2.append(str3);
            string5 = stringBuffer2.toString();
        }
        String strA2 = aVarK.a();
        if (strA2 != null) {
            str = strA2;
        }
        throw new TemplateNotFoundException(str, obj, string5);
    }

    public qfa P0() {
        TemplateCache templateCache = this.P;
        if (templateCache == null) {
            return null;
        }
        return templateCache.m();
    }

    public wfa Q0() {
        TemplateCache templateCache = this.P;
        if (templateCache == null) {
            return null;
        }
        return templateCache.n();
    }

    public fga R0() {
        TemplateCache templateCache = this.P;
        if (templateCache == null) {
            return null;
        }
        return templateCache.o();
    }

    public boolean U0() {
        return this.L;
    }

    public final boolean V0(wfa wfaVar) {
        return wfaVar == wfa.a;
    }

    @Override
    public void W(boolean z) {
        super.W(z);
        this.T = true;
    }

    public final void W0() {
        this.U.put("capture_output", new mr0());
        this.U.put("compress", ew9.c);
        this.U.put("html_escape", new bs4());
        this.U.put("normalize_newlines", new u17());
        this.U.put("xml_escape", new xrc());
    }

    public final void X0(qfa qfaVar, zp0 zp0Var, wfa wfaVar, fga fgaVar) {
        TemplateCache templateCache = this.P;
        TemplateCache templateCache2 = new TemplateCache(qfaVar, zp0Var, wfaVar, fgaVar, this);
        this.P = templateCache2;
        templateCache2.e();
        this.P.t(templateCache.i());
        this.P.u(this.K);
    }

    public final String Y0(String str) {
        return str.startsWith("/") ? str.substring(1) : str;
    }

    @Override
    public void Z(gc7 gc7Var) {
        gc7 gc7VarU = u();
        super.Z(gc7Var);
        this.R = true;
        if (gc7Var != gc7VarU) {
            try {
                b1();
            } catch (TemplateModelException e) {
                throw new RuntimeException("Failed to re-wrap earliearly set shared variables with the newly set object wrapper", e);
            }
        }
    }

    public void Z0(Class cls, String str) {
        c1(new ex0(cls, str));
    }

    public void a1(File file) {
        qfa qfaVarP0 = P0();
        if ((qfaVarP0 instanceof xr3) && ((xr3) qfaVarP0).a.getCanonicalPath().equals(file.getCanonicalPath())) {
            return;
        }
        c1(new xr3(file));
    }

    public final void b1() {
        HashMap map = this.V;
        if (map == null) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            this.U.put(str, value instanceof zfa ? (zfa) value : u().c(value));
        }
    }

    public void c1(qfa qfaVar) {
        synchronized (this) {
            try {
                if (this.P.m() != qfaVar) {
                    X0(qfaVar, this.P.h(), this.P.n(), this.P.o());
                }
                this.Q = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public Object clone() {
        try {
            xe1 xe1Var = (xe1) super.clone();
            xe1Var.U = new HashMap(this.U);
            xe1Var.X = new HashMap(this.X);
            xe1Var.a0 = new HashMap(this.a0);
            xe1Var.Y = (ArrayList) this.Y.clone();
            xe1Var.Z = (ArrayList) this.Z.clone();
            xe1Var.X0(this.P.m(), this.P.h(), this.P.n(), this.P.o());
            return xe1Var;
        } catch (CloneNotSupportedException e) {
            throw new BugException(e.getMessage());
        }
    }

    @Override
    public void d(Environment environment) {
        for (int i = 0; i < this.Y.size(); i++) {
            String str = (String) this.Y.get(i);
            environment.p1((String) this.a0.get(str), str);
        }
        for (int i2 = 0; i2 < this.Z.size(); i2++) {
            environment.r1(N0((String) this.Z.get(i2), environment.p()));
        }
    }

    public void d1() {
        if (this.R) {
            Z(v0());
            this.R = false;
        }
    }

    public void e1() {
        if (this.S) {
            g0(x0());
            this.S = false;
        }
    }

    @Override
    public void g0(nfa nfaVar) {
        super.g0(nfaVar);
        this.S = true;
    }

    @Override
    public String j(String str) {
        if ("encoding".equals(str) || "charset".equals(str) || "default_charset".equals(str)) {
            return "default_encoding";
        }
        return "defaultCharset".equals(str) ? "defaultEncoding" : super.j(str);
    }

    public final void p0() {
        TemplateCache templateCache = new TemplateCache(z0(), s0(), A0(), C0(), this);
        this.P = templateCache;
        templateCache.e();
        this.P.t(5000L);
    }

    public final String q0(String str) {
        char cCharAt;
        if (str == null || str.length() == 0 || (cCharAt = str.charAt(str.length() - 1)) == '.' || cCharAt == '!' || cCharAt == '?') {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(Consts.DOT);
        return stringBuffer.toString();
    }

    public zp0 r0() {
        synchronized (this) {
            try {
                TemplateCache templateCache = this.P;
                if (templateCache == null) {
                    return null;
                }
                return templateCache.h();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zp0 s0() {
        return n0(F0(), r0());
    }

    public final gc7 v0() {
        return w0(F0());
    }

    public final nfa x0() {
        return y0(F0());
    }

    public Set z(boolean z) {
        return new g1d(x1.a(this, z), new c1d(z ? d0 : c0));
    }

    public final qfa z0() {
        return o0(F0(), P0());
    }

    public xe1(Version version) {
        super(version);
        this.J = true;
        this.K = true;
        this.L = true;
        this.N = 1;
        this.O = 10;
        this.U = new HashMap();
        this.V = null;
        this.W = ha9.c("file.encoding", "utf-8");
        this.X = c0d.e();
        this.Y = new ArrayList();
        this.Z = new ArrayList();
        this.a0 = new HashMap();
        m0();
        NullArgumentException.check("incompatibleImprovements", version);
        this.M = version;
        p0();
        W0();
    }
}
