package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.b0d;
import defpackage.bga;
import defpackage.bw4;
import defpackage.d1d;
import defpackage.dfa;
import defpackage.ffa;
import defpackage.gc7;
import defpackage.gga;
import defpackage.hfa;
import defpackage.ifa;
import defpackage.j37;
import defpackage.jb3;
import defpackage.k0d;
import defpackage.kb3;
import defpackage.lb3;
import defpackage.mga;
import defpackage.n0d;
import defpackage.nfa;
import defpackage.nga;
import defpackage.ofa;
import defpackage.pfa;
import defpackage.pga;
import defpackage.pn5;
import defpackage.pq5;
import defpackage.qrc;
import defpackage.xe1;
import defpackage.xo8;
import defpackage.zfa;
import freemarker.core.e1.a;
import freemarker.template.SimpleHash;
import freemarker.template.SimpleSequence;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.DateUtil;
import freemarker.template.utility.UndeclaredThrowableException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.text.Collator;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.greenrobot.greendao.generator.Schema;

public final class Environment extends Configurable {
    public static Class A0;
    public static Class B0;
    public static Class C0;
    public static Class D0;
    public static final ThreadLocal t0 = new ThreadLocal();
    public static final pq5 u0 = pq5.k("freemarker.runtime");
    public static final pq5 v0 = pq5.k("freemarker.runtime.attempt");
    public static final Map w0 = new HashMap();
    public static final DecimalFormat x0;
    public static final zfa[] y0;
    public static final Writer z0;
    public final ofa J;
    public final ArrayList K;
    public final ArrayList L;
    public NumberFormat M;
    public Map N;
    public dfa[] O;
    public qrc P;
    public qrc Q;
    public bw4 R;
    public bw4 S;
    public a1 T;
    public a1 U;
    public Boolean V;
    public NumberFormat W;
    public DateUtil.b X;
    public Collator Y;
    public Writer Z;
    public e1.a a0;
    public ArrayList b0;
    public final Namespace c0;
    public Namespace d0;
    public Namespace e0;
    public HashMap f0;
    public Configurable g0;
    public boolean h0;
    public Throwable i0;
    public zfa j0;
    public HashMap k0;
    public gga l0;
    public nga m0;
    public int n0;
    public String o0;
    public String p0;
    public String q0;
    public boolean r0;
    public boolean s0;

    public final class a implements hfa {
        public abstract ifa a();
    }

    public static final class b {
        public final String a;
        public final Locale b;

        public b(String str, Locale locale) {
            this.a = str;
            this.b = locale;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.a.equals(this.a) && bVar.b.equals(this.b);
        }

        public int hashCode() {
            return this.b.hashCode() ^ this.a.hashCode();
        }
    }

    static {
        DecimalFormat decimalFormat = new DecimalFormat("0.################", new DecimalFormatSymbols(Locale.US));
        x0 = decimalFormat;
        decimalFormat.setGroupingUsed(false);
        decimalFormat.setDecimalSeparatorAlwaysShown(false);
        y0 = new zfa[0];
        z0 = new lb3();
    }

    public Environment(Template template, ofa ofaVar, Writer writer) {
        super(template);
        this.K = new ArrayList();
        this.L = new ArrayList();
        this.k0 = new HashMap();
        this.e0 = new Namespace(null);
        Namespace namespace = new Namespace(template);
        this.c0 = namespace;
        this.d0 = namespace;
        this.Z = writer;
        this.J = ofaVar;
        q1(template);
    }

    public static boolean B1(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x003d  */
    public static void C1(ifa[] ifaVarArr, boolean z, Writer writer) {
        boolean z2;
        PrintWriter printWriter = (PrintWriter) (writer instanceof PrintWriter ? writer : null);
        try {
            if (ifaVarArr == null) {
                writer.write("(The stack was empty)");
                if (printWriter != null) {
                    printWriter.println();
                    return;
                } else {
                    writer.write(10);
                    return;
                }
            }
            int length = ifaVarArr.length;
            int i = (!z || length <= 10) ? length : 9;
            boolean z3 = false;
            boolean z4 = true;
            boolean z5 = z && i < length;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                ifa ifaVar = ifaVarArr[i5];
                if (i5 > 0 && (ifaVar instanceof h)) {
                    z2 = true;
                } else if (i5 <= 1 || !(ifaVarArr[i5 - 1] instanceof h)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (i4 >= i) {
                    i2++;
                } else if (z2 && z5) {
                    i3++;
                } else {
                    writer.write(i5 == 0 ? "\t- Failed at: " : z2 ? "\t~ Reached through: " : "\t- Reached through: ");
                    writer.write(s1(ifaVar));
                    if (printWriter != null) {
                        printWriter.println();
                    } else {
                        writer.write(10);
                    }
                    i4++;
                }
            }
            if (i2 > 0) {
                writer.write("\t... (Had ");
                writer.write(String.valueOf(i2 + i3));
                writer.write(" more, hidden for tersenes)");
                z3 = true;
            }
            if (i3 > 0) {
                if (z3) {
                    writer.write(32);
                } else {
                    writer.write(9);
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("(Hidden ");
                stringBuffer.append(i3);
                stringBuffer.append(" \"~\" lines for terseness)");
                writer.write(stringBuffer.toString());
                if (printWriter != null) {
                    printWriter.println();
                } else {
                    writer.write(10);
                }
            } else {
                z4 = z3;
            }
            if (z4) {
                if (printWriter != null) {
                    printWriter.println();
                } else {
                    writer.write(10);
                }
            }
        } catch (IOException e) {
            u0.h("Failed to print FTL stack trace", e);
        }
    }

    public static e1 H0(ifa ifaVar) {
        while (ifaVar != null) {
            if (ifaVar instanceof e1) {
                return (e1) ifaVar;
            }
            ifaVar = ifaVar.U();
        }
        return null;
    }

    public static void M1(Environment environment) {
        t0.set(environment);
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static void o0(ifa ifaVar, StringBuffer stringBuffer) {
        stringBuffer.append(f1.t(ifaVar.M(), 40));
        stringBuffer.append("  [");
        e1 e1VarH0 = H0(ifaVar);
        if (e1VarH0 != null) {
            stringBuffer.append(f1.e(e1VarH0, ifaVar.d, ifaVar.c));
        } else {
            stringBuffer.append(f1.f(ifaVar.y(), ifaVar.d, ifaVar.c));
        }
        stringBuffer.append("]");
    }

    public static String s1(ifa ifaVar) {
        StringBuffer stringBuffer = new StringBuffer();
        o0(ifaVar, stringBuffer);
        return stringBuffer.toString();
    }

    public static Environment y0() {
        return (Environment) t0.get();
    }

    public static boolean z1(Class cls) throws Throwable {
        Class clsA = A0;
        if (clsA == null) {
            clsA = a("java.util.Date");
            A0 = clsA;
        }
        if (cls != clsA) {
            Class clsA2 = B0;
            if (clsA2 == null) {
                clsA2 = a("java.sql.Date");
                B0 = clsA2;
            }
            if (cls != clsA2) {
                Class clsA3 = C0;
                if (clsA3 == null) {
                    clsA3 = a("java.sql.Time");
                    C0 = clsA3;
                }
                if (cls != clsA3) {
                    Class clsA4 = D0;
                    if (clsA4 == null) {
                        clsA4 = a("java.sql.Timestamp");
                        D0 = clsA4;
                    }
                    if (cls != clsA4) {
                        Class clsA5 = B0;
                        if (clsA5 == null) {
                            clsA5 = a("java.sql.Date");
                            B0 = clsA5;
                        }
                        if (!clsA5.isAssignableFrom(cls)) {
                            Class clsA6 = C0;
                            if (clsA6 == null) {
                                clsA6 = a("java.sql.Time");
                                C0 = clsA6;
                            }
                            if (clsA6.isAssignableFrom(cls)) {
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public Namespace A0() {
        return this.d0;
    }

    public final Object[] A1(gga ggaVar, String str, String str2) {
        String str3;
        String str4;
        if (str != null) {
            str3 = str.length() > 0 ? " and namespace " : " and no namespace";
            str4 = str;
        } else {
            str3 = "";
            str4 = str3;
        }
        return new Object[]{"No macro or directive is defined for node named ", new k0d(ggaVar.d()), str3, str4, ", and there is no fallback handler called @", str2, " either."};
    }

    public String B0() throws _MiscTemplateException {
        if (this.L.isEmpty()) {
            throw new _MiscTemplateException(this, ".error is not available outside of a #recover block");
        }
        ArrayList arrayList = this.L;
        return ((Throwable) arrayList.get(arrayList.size() - 1)).getMessage();
    }

    public Template C0() {
        int size = this.K.size();
        return size == 0 ? U0() : ((t1) this.K.get(size - 1)).y();
    }

    public gga D0() {
        return this.l0;
    }

    public final void D1() {
        ArrayList arrayList = this.K;
        arrayList.remove(arrayList.size() - 1);
    }

    public ofa E0() {
        jb3 jb3Var = new jb3(this);
        return this.J instanceof pfa ? new kb3(this, jb3Var) : jb3Var;
    }

    public final void E1() {
        ArrayList arrayList = this.b0;
        arrayList.remove(arrayList.size() - 1);
    }

    public String F0() {
        return this.d0.getTemplate().v0();
    }

    public void F1() {
        ThreadLocal threadLocal = t0;
        Object obj = threadLocal.get();
        threadLocal.set(this);
        try {
            p0();
            try {
                d(this);
                X1(c1().C0());
                if (g()) {
                    this.Z.flush();
                }
                p0();
                threadLocal.set(obj);
            } catch (Throwable th) {
                p0();
                throw th;
            }
        } catch (Throwable th2) {
            t0.set(obj);
            throw th2;
        }
    }

    public String G0() {
        if (!this.r0) {
            String strG = G();
            this.q0 = strG;
            if (strG == null) {
                this.q0 = v();
            }
            this.r0 = true;
        }
        return this.q0;
    }

    public final void G1(ifa ifaVar) {
        this.K.add(ifaVar);
    }

    public final void H1(pn5 pn5Var) {
        if (this.b0 == null) {
            this.b0 = new ArrayList();
        }
        this.b0.add(pn5Var);
    }

    public boolean I0() {
        return this.s0;
    }

    public void I1(gga ggaVar, nga ngaVar) throws _TemplateModelException {
        if (ggaVar == null && (ggaVar = D0()) == null) {
            throw new _TemplateModelException("The target node of recursion is missing or null.");
        }
        nga ngaVarK = ggaVar.k();
        if (ngaVarK == null) {
            return;
        }
        for (int i = 0; i < ngaVarK.size(); i++) {
            gga ggaVar2 = (gga) ngaVarK.get(i);
            if (ggaVar2 != null) {
                v1(ggaVar2, ngaVar);
            }
        }
    }

    public Namespace J0() {
        return this.e0;
    }

    public String J1(ifa ifaVar) {
        Writer writer = this.Z;
        try {
            StringWriter stringWriter = new StringWriter();
            this.Z = stringWriter;
            X1(ifaVar);
            return stringWriter.toString();
        } finally {
            this.Z = writer;
        }
    }

    public zfa K0(String str) throws TemplateModelException {
        zfa zfaVar = this.e0.get(str);
        if (zfaVar == null) {
            zfaVar = this.J.get(str);
        }
        return zfaVar == null ? x0().I0(str) : zfaVar;
    }

    public void K1(ifa ifaVar) {
        ArrayList arrayList = this.K;
        arrayList.set(arrayList.size() - 1, ifaVar);
    }

    public ofa L0() {
        return new o0(this);
    }

    public final ifa L1(ifa ifaVar) {
        ArrayList arrayList = this.K;
        return (ifa) arrayList.set(arrayList.size() - 1, ifaVar);
    }

    public DateUtil.b M0() {
        if (this.X == null) {
            this.X = new DateUtil.d();
        }
        return this.X;
    }

    public ifa[] N0() {
        int size = this.K.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ifa ifaVar = (ifa) this.K.get(i2);
            if (i2 == size || ifaVar.b0()) {
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        ifa[] ifaVarArr = new ifa[i];
        int i3 = i - 1;
        for (int i4 = 0; i4 < size; i4++) {
            ifa ifaVar2 = (ifa) this.K.get(i4);
            if (i4 == size || ifaVar2.b0()) {
                ifaVarArr[i3] = ifaVar2;
                i3--;
            }
        }
        return ifaVarArr;
    }

    public boolean N1(boolean z) {
        boolean z2 = this.s0;
        this.s0 = z;
        return z2;
    }

    public Set O0() {
        Set setJ0 = x0().J0();
        ofa ofaVar = this.J;
        if (ofaVar instanceof pfa) {
            bga it = ((pfa) ofaVar).keys().iterator();
            while (it.hasNext()) {
                setJ0.add(((mga) it.next()).getAsString());
            }
        }
        bga it2 = this.e0.keys().iterator();
        while (it2.hasNext()) {
            setJ0.add(((mga) it2.next()).getAsString());
        }
        bga it3 = this.d0.keys().iterator();
        while (it3.hasNext()) {
            setJ0.add(((mga) it3.next()).getAsString());
        }
        e1.a aVar = this.a0;
        if (aVar != null) {
            setJ0.addAll(aVar.a());
        }
        ArrayList arrayList = this.b0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                setJ0.addAll(((pn5) this.b0.get(size)).a());
            }
        }
        return setJ0;
    }

    public void O1(String str, zfa zfaVar) {
        this.e0.put(str, zfaVar);
    }

    public zfa P0() {
        return this.j0;
    }

    public void P1(zfa zfaVar) {
        this.j0 = zfaVar;
    }

    public ArrayList Q0() {
        return this.b0;
    }

    public void Q1(String str, zfa zfaVar) {
        e1.a aVar = this.a0;
        if (aVar == null) {
            throw new IllegalStateException("Not executing macro body");
        }
        aVar.g(str, zfaVar);
    }

    public zfa R0(String str) {
        ArrayList arrayList = this.b0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                zfa zfaVarB = ((pn5) this.b0.get(size)).b(str);
                if (zfaVarB != null) {
                    return zfaVarB;
                }
            }
        }
        e1.a aVar = this.a0;
        if (aVar == null) {
            return null;
        }
        return aVar.b(str);
    }

    public final void R1(e1.a aVar, e1 e1Var, Map map, List list) throws _MiscTemplateException {
        String strP0 = e1Var.p0();
        SimpleSequence simpleSequence = null;
        SimpleHash simpleHash = null;
        if (map != null) {
            if (strP0 != null) {
                SimpleHash simpleHash2 = new SimpleHash((gc7) null);
                aVar.g(strP0, simpleHash2);
                simpleHash = simpleHash2;
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                boolean zR0 = e1Var.r0(str);
                if (!zR0 && strP0 == null) {
                    throw new _MiscTemplateException(this, new Object[]{e1Var.s0() ? "Function " : "Macro ", new k0d(e1Var.q0()), " has no parameter with name ", new k0d(str), Consts.DOT});
                }
                zfa zfaVarK = ((t0) entry.getValue()).K(this);
                if (zR0) {
                    aVar.g(str, zfaVarK);
                } else {
                    simpleHash.put(str, zfaVarK);
                }
            }
            return;
        }
        if (list != null) {
            if (strP0 != null) {
                SimpleSequence simpleSequence2 = new SimpleSequence((gc7) null);
                aVar.g(strP0, simpleSequence2);
                simpleSequence = simpleSequence2;
            }
            String[] strArrO0 = e1Var.o0();
            int size = list.size();
            if (strArrO0.length < size && strP0 == null) {
                throw new _MiscTemplateException(this, new Object[]{e1Var.s0() ? "Function " : "Macro ", new k0d(e1Var.q0()), " only accepts ", new n0d(strArrO0.length), " parameters, but got ", new n0d(size), Consts.DOT});
            }
            for (int i = 0; i < size; i++) {
                zfa zfaVarK2 = ((t0) list.get(i)).K(this);
                try {
                    if (i < strArrO0.length) {
                        aVar.g(strArrO0[i], zfaVarK2);
                    } else {
                        simpleSequence.add(zfaVarK2);
                    }
                } catch (RuntimeException e) {
                    throw new _MiscTemplateException(e, this);
                }
            }
        }
    }

    public Namespace S0(e1 e1Var) {
        return (Namespace) this.k0.get(e1Var);
    }

    public void S1(Writer writer) {
        this.Z = writer;
    }

    @Override
    public void T(String str) {
        String strL = l();
        super.T(str);
        if (str.equals(strL) || this.O == null) {
            return;
        }
        for (int i = 0; i < 16; i += 4) {
            this.O[i + 2] = null;
        }
    }

    public Namespace T0() {
        return this.c0;
    }

    public void T1(String str, zfa zfaVar) {
        this.d0.put(str, zfaVar);
    }

    @Override
    public void U(String str) {
        String strM = m();
        super.U(str);
        if (str.equals(strM) || this.O == null) {
            return;
        }
        for (int i = 0; i < 16; i += 4) {
            this.O[i + 3] = null;
        }
    }

    public Template U0() {
        return this.c0.getTemplate();
    }

    public boolean U1(Class cls) throws Throwable {
        Class clsA = A0;
        if (clsA == null) {
            clsA = a("java.util.Date");
            A0 = clsA;
        }
        return (cls == clsA || y1() || !z1(cls)) ? false : true;
    }

    @Override
    public void V(Locale locale) {
        Locale localeP = p();
        super.V(locale);
        if (locale.equals(localeP)) {
            return;
        }
        this.N = null;
        this.M = null;
        if (this.O != null) {
            for (int i = 0; i < 16; i++) {
                dfa dfaVar = this.O[i];
                if (dfaVar != null && dfaVar.c()) {
                    this.O[i] = null;
                }
            }
        }
        qrc qrcVar = this.P;
        if (qrcVar != null && qrcVar.e()) {
            this.P = null;
        }
        qrc qrcVar2 = this.Q;
        if (qrcVar2 != null && qrcVar2.e()) {
            this.Q = null;
        }
        bw4 bw4Var = this.R;
        if (bw4Var != null && bw4Var.e()) {
            this.R = null;
        }
        bw4 bw4Var2 = this.S;
        if (bw4Var2 != null && bw4Var2.e()) {
            this.S = null;
        }
        a1 a1Var = this.T;
        if (a1Var != null && a1Var.d()) {
            this.T = null;
        }
        a1 a1Var2 = this.U;
        if (a1Var2 != null && a1Var2.d()) {
            this.U = null;
        }
        this.Y = null;
    }

    public String V0(String str) {
        return this.d0.getTemplate().z0(str);
    }

    public final boolean V1(boolean z) {
        return z && !y1();
    }

    public zfa W0(gga ggaVar) throws _MiscTemplateException, TemplateModelException {
        String strD = ggaVar.d();
        if (strD == null) {
            throw new _MiscTemplateException(this, "Node name is null.");
        }
        zfa zfaVarY0 = Y0(strD, ggaVar.g(), 0);
        if (zfaVarY0 != null) {
            return zfaVarY0;
        }
        String strI = ggaVar.i();
        if (strI == null) {
            strI = Schema.DEFAULT_NAME;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("@");
        stringBuffer.append(strI);
        return Y0(stringBuffer.toString(), null, 0);
    }

    public String W1(String str, String str2) {
        return J() ? str2 : b0d.a(x0().R0(), str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0069  */
    public final zfa X0(Namespace namespace, String str, String str2) throws TemplateModelException {
        zfa zfaVar;
        zfa zfaVar2;
        if (str2 == null) {
            zfaVar2 = namespace.get(str);
            if (!(zfaVar2 instanceof e1) && !(zfaVar2 instanceof pga)) {
                return null;
            }
        } else {
            Template template = namespace.getTemplate();
            String strB0 = template.B0(str2);
            if (strB0 == null) {
                return null;
            }
            if (strB0.length() > 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(strB0);
                stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                stringBuffer.append(str);
                zfaVar2 = namespace.get(stringBuffer.toString());
                if (!(zfaVar2 instanceof e1) && !(zfaVar2 instanceof pga)) {
                    return null;
                }
            } else {
                if (str2.length() == 0) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("N:");
                    stringBuffer2.append(str);
                    zfaVar = namespace.get(stringBuffer2.toString());
                    if (!(zfaVar instanceof e1) && !(zfaVar instanceof pga)) {
                        zfaVar = null;
                    }
                } else {
                    zfaVar = null;
                }
                if (str2.equals(template.v0())) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("D:");
                    stringBuffer3.append(str);
                    zfaVar = namespace.get(stringBuffer3.toString());
                    if (!(zfaVar instanceof e1) && !(zfaVar instanceof pga)) {
                        zfaVar = null;
                    }
                }
                if (zfaVar != null) {
                    return zfaVar;
                }
                zfaVar2 = namespace.get(str);
                if (!(zfaVar2 instanceof e1) && !(zfaVar2 instanceof pga)) {
                    return null;
                }
            }
        }
        return zfaVar2;
    }

    public void X1(ifa ifaVar) {
        G1(ifaVar);
        try {
            try {
                ifaVar.F(this);
            } catch (TemplateException e) {
                n1(e);
            }
        } finally {
            D1();
        }
    }

    @Override
    public void Y(String str) {
        super.Y(str);
        this.M = null;
    }

    public final zfa Y0(String str, String str2, int i) throws _MiscTemplateException, TemplateModelException {
        zfa zfaVarX0 = null;
        while (i < this.m0.size()) {
            try {
                zfaVarX0 = X0((Namespace) this.m0.get(i), str, str2);
                if (zfaVarX0 != null) {
                    break;
                }
                i++;
            } catch (ClassCastException unused) {
                throw new _MiscTemplateException(this, "A \"using\" clause should contain a sequence of namespaces or strings that indicate the location of importable macro libraries.");
            }
        }
        if (zfaVarX0 != null) {
            this.n0 = i + 1;
            this.o0 = str;
            this.p0 = str2;
        }
        return zfaVarX0;
    }

    public void Y1(ifa ifaVar, pga pgaVar, Map map) throws TemplateException, IOException {
        try {
            Writer writerH = pgaVar.h(this.Z, map);
            if (writerH == null) {
                writerH = z0;
            }
            Writer writer = this.Z;
            this.Z = writerH;
            if (ifaVar != null) {
                try {
                    a2(ifaVar);
                } catch (Throwable th) {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            throw th;
                                        } catch (IOException e) {
                                            throw e;
                                        }
                                    } catch (RuntimeException e2) {
                                        throw e2;
                                    }
                                } catch (Throwable th2) {
                                    throw new UndeclaredThrowableException(th2);
                                }
                            } catch (TemplateException e3) {
                                throw e3;
                            }
                        } catch (Error e4) {
                            throw e4;
                        }
                    } catch (Throwable th3) {
                        this.Z = writer;
                        writerH.close();
                        throw th3;
                    }
                }
            }
            this.Z = writer;
            writerH.close();
        } catch (TemplateException e5) {
            n1(e5);
        }
    }

    public NumberFormat Z0(String str) {
        NumberFormat numberFormat;
        NumberFormat numberFormatU0;
        if (this.N == null) {
            this.N = new HashMap();
        }
        NumberFormat numberFormat2 = (NumberFormat) this.N.get(str);
        if (numberFormat2 != null) {
            return numberFormat2;
        }
        Map map = w0;
        synchronized (map) {
            try {
                Locale localeP = p();
                b bVar = new b(str, localeP);
                numberFormat = (NumberFormat) map.get(bVar);
                if (numberFormat == null) {
                    if ("number".equals(str)) {
                        numberFormatU0 = NumberFormat.getNumberInstance(localeP);
                    } else if ("currency".equals(str)) {
                        numberFormatU0 = NumberFormat.getCurrencyInstance(localeP);
                    } else if ("percent".equals(str)) {
                        numberFormatU0 = NumberFormat.getPercentInstance(localeP);
                    } else {
                        numberFormatU0 = "computer".equals(str) ? u0() : new DecimalFormat(str, new DecimalFormatSymbols(p()));
                    }
                    numberFormat = numberFormatU0;
                    map.put(bVar, numberFormat);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        NumberFormat numberFormat3 = (NumberFormat) numberFormat.clone();
        this.N.put(str, numberFormat3);
        return numberFormat3;
    }

    public void Z1(ifa ifaVar, xo8 xo8Var) throws IOException {
        TemplateException templateException;
        Writer writer = this.Z;
        StringWriter stringWriter = new StringWriter();
        this.Z = stringWriter;
        boolean zN1 = N1(false);
        boolean z = this.h0;
        try {
            this.h0 = true;
            a2(ifaVar);
            this.h0 = z;
            N1(zN1);
            this.Z = writer;
            templateException = null;
        } catch (TemplateException e) {
            this.h0 = z;
            N1(zN1);
            this.Z = writer;
            templateException = e;
        } catch (Throwable th) {
            this.h0 = z;
            N1(zN1);
            this.Z = writer;
            throw th;
        }
        if (templateException == null) {
            this.Z.write(stringWriter.toString());
            return;
        }
        pq5 pq5Var = v0;
        if (pq5Var.q()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Error in attempt block ");
            stringBuffer.append(ifaVar.x());
            pq5Var.e(stringBuffer.toString(), templateException);
        }
        try {
            this.L.add(templateException);
            X1(xo8Var);
        } finally {
            ArrayList arrayList = this.L;
            arrayList.remove(arrayList.size() - 1);
        }
    }

    @Override
    public void a0(String str) {
        this.r0 = false;
        super.a0(str);
    }

    public Writer a1() {
        return this.Z;
    }

    public void a2(ifa ifaVar) {
        ifa ifaVarL1 = L1(ifaVar);
        try {
            try {
                ifaVar.F(this);
            } catch (TemplateException e) {
                n1(e);
            }
        } finally {
            L1(ifaVarL1);
        }
    }

    public String b1(String str) {
        return this.d0.getTemplate().B0(str);
    }

    public boolean b2(z0.a aVar) {
        H1(aVar);
        try {
            return aVar.c(this);
        } catch (TemplateException e) {
            n1(e);
            return true;
        } finally {
            E1();
        }
    }

    @Override
    public void c0(TimeZone timeZone) {
        TimeZone timeZoneX = x();
        super.c0(timeZone);
        if (B1(timeZone, timeZoneX)) {
            return;
        }
        if (this.O != null) {
            for (int i = 8; i < 16; i++) {
                this.O[i] = null;
            }
        }
        this.Q = null;
        this.S = null;
        this.U = null;
        this.V = null;
    }

    public Template c1() {
        return (Template) w();
    }

    public void c2(e1 e1Var) {
        this.k0.put(e1Var, this.d0);
        this.d0.put(e1Var.q0(), e1Var);
    }

    public Template d1() {
        Template template = (Template) this.g0;
        return template != null ? template : c1();
    }

    public dfa e1(int i, Class cls, t0 t0Var) throws Throwable {
        try {
            boolean zZ1 = z1(cls);
            return g1(i, zZ1, V1(zZ1), t0Var);
        } catch (UnknownDateTypeFormattingUnsupportedException e) {
            throw f1.m(t0Var, e);
        }
    }

    public dfa f1(int i, Class cls, String str, t0 t0Var) throws Throwable {
        try {
            boolean zZ1 = z1(cls);
            return h1(i, zZ1, V1(zZ1), str, null);
        } catch (UnknownDateTypeFormattingUnsupportedException e) {
            throw f1.m(t0Var, e);
        }
    }

    @Override
    public void g0(nfa nfaVar) {
        super.g0(nfaVar);
        this.i0 = null;
    }

    public final dfa g1(int i, boolean z, boolean z2, t0 t0Var) throws _TemplateModelException {
        String strC;
        String str;
        if (i == 0) {
            throw f1.m(t0Var, null);
        }
        int iV0 = v0(i, z, z2);
        dfa[] dfaVarArr = this.O;
        if (dfaVarArr == null) {
            dfaVarArr = new dfa[16];
            this.O = dfaVarArr;
        }
        dfa dfaVar = dfaVarArr[iV0];
        if (dfaVar != null) {
            return dfaVar;
        }
        if (i == 1) {
            strC = C();
            str = "time_format";
        } else if (i == 2) {
            strC = l();
            str = "date_format";
        } else {
            if (i != 3) {
                throw new _TemplateModelException(new Object[]{"Invalid date type enum: ", new Integer(i)});
            }
            strC = m();
            str = "datetime_format";
        }
        dfa dfaVarH1 = h1(i, z, z2, strC, str);
        dfaVarArr[iV0] = dfaVarH1;
        return dfaVarH1;
    }

    @Override
    public void h0(String str) {
        String strC = C();
        super.h0(str);
        if (str.equals(strC) || this.O == null) {
            return;
        }
        for (int i = 0; i < 16; i += 4) {
            this.O[i + 1] = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [bw4] */
    /* JADX WARN: Type inference failed for: r0v12, types: [efa] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [qrc] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3, types: [freemarker.core.a1] */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final dfa h1(int i, boolean z, boolean z2, String str, String str2) throws _TemplateModelException {
        a1 a1Var;
        ?? a1Var2;
        a1 a1Var3;
        bw4 bw4Var;
        bw4 bw4Var2;
        qrc qrcVar;
        qrc qrcVar2;
        int length = str.length();
        TimeZone timeZoneX = z2 ? x() : E();
        if (length > 1 && str.charAt(0) == 'x' && str.charAt(1) == 's') {
            if (z2) {
                qrcVar2 = this.Q;
            } else {
                qrcVar = this.P;
            }
            if (a1Var2 == 0) {
                a1Var2 = qrcVar;
                a1Var2 = new qrc(timeZoneX);
                if (z2) {
                    a1Var2 = qrcVar2;
                    this.Q = a1Var2;
                } else {
                    a1Var2 = qrcVar2;
                    this.P = a1Var2;
                }
            }
        } else if (length > 2 && str.charAt(0) == 'i' && str.charAt(1) == 's' && str.charAt(2) == 'o') {
            if (z2) {
                bw4Var2 = this.S;
            } else {
                bw4Var = this.R;
            }
            if (a1Var2 == 0) {
                a1Var2 = bw4Var;
                a1Var2 = new bw4(timeZoneX);
                if (z2) {
                    a1Var2 = bw4Var2;
                    this.S = a1Var2;
                } else {
                    a1Var2 = bw4Var2;
                    this.R = a1Var2;
                }
            }
        } else {
            if (z2) {
                a1Var3 = this.U;
            } else {
                a1Var = this.T;
            }
            if (a1Var2 == 0) {
                a1Var2 = a1Var;
                a1Var2 = new a1(timeZoneX, p());
                if (z2) {
                    a1Var2 = a1Var3;
                    this.U = a1Var2;
                } else {
                    a1Var2 = a1Var3;
                    this.T = a1Var2;
                }
            }
        }
        try {
            a1Var2 = a1Var;
            a1Var2 = a1Var3;
            a1Var2 = bw4Var;
            a1Var2 = bw4Var2;
            a1Var2 = qrcVar;
            a1Var2 = qrcVar2;
            return a1Var2.a(i, z, str);
        } catch (java.text.ParseException e) {
            throw new _TemplateModelException(e.getCause(), new Object[]{str2 == null ? "Malformed date/time format descriptor: " : new Object[]{"The value of the \"", str2, "\" FreeMarker configuration setting is a malformed date/time format descriptor: "}, new k0d(str), ". Reason given: ", e.getMessage()});
        }
    }

    @Override
    public void i0(TimeZone timeZone) {
        TimeZone timeZoneE = E();
        super.i0(timeZone);
        if (timeZone.equals(timeZoneE)) {
            return;
        }
        if (this.O != null) {
            for (int i = 0; i < 8; i++) {
                this.O[i] = null;
            }
        }
        this.P = null;
        this.R = null;
        this.T = null;
        this.V = null;
    }

    public Template i1(String str) {
        return j1(str, null, true);
    }

    @Override
    public void j0(String str) {
        this.r0 = false;
        super.j0(str);
    }

    public Template j1(String str, String str2, boolean z) {
        return k1(str, str2, z, false);
    }

    public Template k1(String str, String str2, boolean z, boolean z2) {
        Template templateC1 = c1();
        if (str2 == null && (str2 = templateC1.w0()) == null) {
            str2 = x0().E0(p());
        }
        return x0().O0(str, p(), templateC1.u0(), str2, z, z2);
    }

    public pga l1(t0 t0Var) {
        zfa zfaVarK = t0Var.K(this);
        if (zfaVarK instanceof pga) {
            return (pga) zfaVarK;
        }
        if (t0Var instanceof x0) {
            zfa zfaVarI0 = x0().I0(t0Var.toString());
            if (zfaVarI0 instanceof pga) {
                return (pga) zfaVarI0;
            }
        }
        return null;
    }

    public zfa m1(String str) throws TemplateModelException {
        zfa zfaVarR0 = R0(str);
        if (zfaVarR0 == null) {
            zfaVarR0 = this.d0.get(str);
        }
        return zfaVarR0 == null ? K0(str) : zfaVarR0;
    }

    public final void n1(TemplateException templateException) throws TemplateException {
        if (this.i0 == templateException) {
            throw templateException;
        }
        this.i0 = templateException;
        pq5 pq5Var = u0;
        if (pq5Var.r() && (x1() || q())) {
            pq5Var.h("Error executing FreeMarker template", templateException);
        }
        if (templateException instanceof StopException) {
            throw templateException;
        }
        B().a(templateException, this, this.Z);
    }

    public Namespace o1(Template template, String str) {
        if (this.f0 == null) {
            this.f0 = new HashMap();
        }
        String strY0 = template.y0();
        Namespace namespace = (Namespace) this.f0.get(strY0);
        if (namespace == null) {
            Namespace namespace2 = new Namespace(template);
            if (str != null) {
                this.d0.put(str, namespace2);
                if (this.d0 == this.c0) {
                    this.e0.put(str, namespace2);
                }
            }
            Namespace namespace3 = this.d0;
            this.d0 = namespace2;
            this.f0.put(strY0, namespace2);
            Writer writer = this.Z;
            this.Z = j37.b;
            try {
                r1(template);
            } finally {
                this.Z = writer;
                this.d0 = namespace3;
            }
        } else if (str != null) {
            T1(str, namespace);
        }
        return (Namespace) this.f0.get(strY0);
    }

    public final void p0() {
        this.N = null;
        this.M = null;
        this.O = null;
        this.Q = null;
        this.P = null;
        this.S = null;
        this.R = null;
        this.U = null;
        this.T = null;
        this.Y = null;
        this.q0 = null;
        this.r0 = false;
    }

    public Namespace p1(String str, String str2) {
        return o1(i1(str), str2);
    }

    public void q0() throws TemplateException, IOException {
        zfa zfaVarY0 = Y0(this.o0, this.p0, this.n0);
        if (zfaVarY0 instanceof e1) {
            t1((e1) zfaVarY0, null, null, null, null);
        } else if (zfaVarY0 instanceof pga) {
            Y1(null, (pga) zfaVarY0, null);
        }
    }

    public void q1(Template template) {
        Iterator it = template.x0().values().iterator();
        while (it.hasNext()) {
            c2((e1) it.next());
        }
    }

    public String r0(ffa ffaVar, t0 t0Var) throws Throwable {
        try {
            boolean zZ1 = z1(q0.f(ffaVar, t0Var).getClass());
            return g1(ffaVar.j(), zZ1, V1(zZ1), t0Var).a(ffaVar);
        } catch (UnknownDateTypeFormattingUnsupportedException e) {
            throw f1.m(t0Var, e);
        } catch (UnformattableDateException e2) {
            throw f1.l(t0Var, e2);
        }
    }

    public void r1(Template template) {
        boolean zW1 = w1();
        Template templateC1 = c1();
        if (zW1) {
            b0(template);
        } else {
            this.g0 = template;
        }
        q1(template);
        try {
            X1(template.C0());
        } finally {
            if (zW1) {
                b0(templateC1);
            } else {
                this.g0 = templateC1;
            }
        }
    }

    public String s0(ffa ffaVar, String str, t0 t0Var) throws Throwable {
        boolean zZ1 = z1(q0.f(ffaVar, t0Var).getClass());
        try {
            return h1(ffaVar.j(), zZ1, V1(zZ1), str, null).a(ffaVar);
        } catch (UnknownDateTypeFormattingUnsupportedException e) {
            throw f1.m(t0Var, e);
        } catch (UnformattableDateException e2) {
            throw f1.l(t0Var, e2);
        }
    }

    public String t0(Number number) {
        if (this.M == null) {
            this.M = Z0(t());
        }
        return this.M.format(number);
    }

    public void t1(e1 e1Var, Map map, List list, List list2, ifa ifaVar) {
        if (e1Var == e1.q) {
            return;
        }
        G1(e1Var);
        try {
            e1Var.getClass();
            e1.a aVar = e1Var.new a(this, ifaVar, list2);
            R1(aVar, e1Var, map, list);
            e1.a aVar2 = this.a0;
            this.a0 = aVar;
            ArrayList arrayList = this.b0;
            this.b0 = null;
            Namespace namespace = this.d0;
            this.d0 = (Namespace) this.k0.get(e1Var);
            try {
                try {
                    try {
                        aVar.e(this);
                        this.a0 = aVar2;
                        this.b0 = arrayList;
                    } catch (TemplateException e) {
                        n1(e);
                        this.a0 = aVar2;
                        this.b0 = arrayList;
                    }
                } catch (Throwable th) {
                    this.a0 = aVar2;
                    this.b0 = arrayList;
                    this.d0 = namespace;
                    throw th;
                }
            } catch (ReturnInstruction.Return unused) {
                this.a0 = aVar2;
                this.b0 = arrayList;
            }
            this.d0 = namespace;
            D1();
        } catch (Throwable th2) {
            D1();
            throw th2;
        }
    }

    public NumberFormat u0() {
        if (this.W == null) {
            this.W = (DecimalFormat) x0.clone();
        }
        return this.W;
    }

    public void u1(h.a aVar) {
        e1.a aVarZ0 = z0();
        ArrayList arrayList = this.b0;
        ifa ifaVar = aVarZ0.b;
        if (ifaVar != null) {
            this.a0 = aVarZ0.f;
            this.d0 = aVarZ0.c;
            boolean zW1 = w1();
            Configurable configurableW = w();
            if (zW1) {
                b0(this.d0.getTemplate());
            } else {
                this.g0 = this.d0.getTemplate();
            }
            this.b0 = aVarZ0.e;
            if (aVarZ0.d != null) {
                H1(aVar);
            }
            try {
                X1(ifaVar);
            } finally {
                if (aVarZ0.d != null) {
                    E1();
                }
                this.a0 = aVarZ0;
                this.d0 = S0(aVarZ0.d());
                if (zW1) {
                    b0(configurableW);
                } else {
                    this.g0 = configurableW;
                }
                this.b0 = arrayList;
            }
        }
    }

    public final int v0(int i, boolean z, boolean z2) {
        return i + (z ? 4 : 0) + (z2 ? 8 : 0);
    }

    public void v1(gga ggaVar, nga ngaVar) {
        if (this.m0 == null) {
            SimpleSequence simpleSequence = new SimpleSequence(1);
            simpleSequence.add(this.d0);
            this.m0 = simpleSequence;
        }
        int i = this.n0;
        String str = this.o0;
        String str2 = this.p0;
        nga ngaVar2 = this.m0;
        gga ggaVar2 = this.l0;
        this.l0 = ggaVar;
        if (ngaVar != null) {
            this.m0 = ngaVar;
        }
        try {
            zfa zfaVarW0 = W0(ggaVar);
            if (zfaVarW0 instanceof e1) {
                t1((e1) zfaVarW0, null, null, null, null);
            } else if (zfaVarW0 instanceof pga) {
                Y1(null, (pga) zfaVarW0, null);
            } else {
                String strI = ggaVar.i();
                if (strI == null) {
                    throw new _MiscTemplateException(this, A1(ggaVar, ggaVar.g(), Schema.DEFAULT_NAME));
                }
                if (strI.equals("text") && (ggaVar instanceof mga)) {
                    this.Z.write(((mga) ggaVar).getAsString());
                } else if (strI.equals("document")) {
                    I1(ggaVar, ngaVar);
                } else if (!strI.equals("pi") && !strI.equals("comment") && !strI.equals("document_type")) {
                    throw new _MiscTemplateException(this, A1(ggaVar, ggaVar.g(), strI));
                }
            }
            this.l0 = ggaVar2;
            this.n0 = i;
            this.o0 = str;
            this.p0 = str2;
            this.m0 = ngaVar2;
        } catch (Throwable th) {
            this.l0 = ggaVar2;
            this.n0 = i;
            this.o0 = str;
            this.p0 = str2;
            this.m0 = ngaVar2;
            throw th;
        }
    }

    public Collator w0() {
        if (this.Y == null) {
            this.Y = Collator.getInstance(p());
        }
        return this.Y;
    }

    public final boolean w1() {
        return x0().F0().intValue() < d1d.e;
    }

    public xe1 x0() {
        return c1().t0();
    }

    public boolean x1() {
        return this.h0;
    }

    public boolean y1() {
        if (this.V == null) {
            this.V = Boolean.valueOf(x() == null || x().equals(E()));
        }
        return this.V.booleanValue();
    }

    public e1.a z0() {
        return this.a0;
    }

    public class Namespace extends SimpleHash {
        private final Template template;

        public Namespace() {
            this.template = Environment.this.c1();
        }

        public Template getTemplate() {
            Template template = this.template;
            return template == null ? Environment.this.c1() : template;
        }

        public Namespace(Template template) {
            this.template = template;
        }
    }
}
