package freemarker.cache;

import defpackage.afb;
import defpackage.d1d;
import defpackage.ee1;
import defpackage.fga;
import defpackage.n0a;
import defpackage.pq5;
import defpackage.qfa;
import defpackage.sfa;
import defpackage.uea;
import defpackage.ufa;
import defpackage.wfa;
import defpackage.xe1;
import defpackage.zp0;
import freemarker.core.BugException;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.utility.NullArgumentException;
import freemarker.template.utility.UndeclaredThrowableException;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.io.IOUtils;

public class TemplateCache {
    public static final pq5 i = pq5.k("freemarker.cache");
    public static final Method j = j();
    public static Class k;
    public final qfa a;
    public final zp0 b;
    public final wfa c;
    public final fga d;
    public final boolean e;
    public long f = 5000;
    public boolean g = true;
    public xe1 h;

    public static final class CachedTemplate implements Cloneable, Serializable {
        private static final long serialVersionUID = 1;
        long lastChecked;
        long lastModified;
        Object source;
        Object templateOrException;

        private CachedTemplate() {
        }

        public CachedTemplate cloneCachedTemplate() {
            try {
                return (CachedTemplate) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new UndeclaredThrowableException(e);
            }
        }
    }

    public class b extends sfa {
        public b(String str, Locale locale, Object obj) {
            super(str, TemplateCache.this.g ? locale : null, obj);
        }

        @Override
        public ufa d(String str, Locale locale) {
            if (locale == null) {
                return e(str);
            }
            int iLastIndexOf = str.lastIndexOf(46);
            String strSubstring = iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
            String strSubstring2 = iLastIndexOf == -1 ? "" : str.substring(iLastIndexOf);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("_");
            stringBuffer.append(locale.toString());
            String string = stringBuffer.toString();
            StringBuffer stringBuffer2 = new StringBuffer(str.length() + string.length());
            stringBuffer2.append(strSubstring);
            while (true) {
                stringBuffer2.setLength(strSubstring.length());
                stringBuffer2.append(string);
                stringBuffer2.append(strSubstring2);
                ufa ufaVarE = e(stringBuffer2.toString());
                if (ufaVarE.e()) {
                    return ufaVarE;
                }
                int iLastIndexOf2 = string.lastIndexOf(95);
                if (iLastIndexOf2 == -1) {
                    return a();
                }
                string = string.substring(0, iLastIndexOf2);
            }
        }

        public ufa e(String str) {
            if (!str.startsWith("/")) {
                return TemplateCache.this.r(str);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Non-normalized name, starts with \"/\": ");
            stringBuffer.append(str);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public static final class c {
        public final String a;
        public final Locale b;
        public final Object c;
        public final String d;
        public final boolean e;

        public c(String str, Locale locale, Object obj, String str2, boolean z) {
            this.a = str;
            this.b = locale;
            this.c = obj;
            this.d = str2;
            this.e = z;
        }

        public final boolean a(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            if (obj2 != null) {
                return obj.equals(obj2);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.e == cVar.e && this.a.equals(cVar.a) && this.b.equals(cVar.b) && a(this.c, cVar.c) && this.d.equals(cVar.d);
        }

        public int hashCode() {
            int iHashCode = (this.a.hashCode() ^ this.b.hashCode()) ^ this.d.hashCode();
            Object obj = this.c;
            return Boolean.valueOf(!this.e).hashCode() ^ (iHashCode ^ (obj != null ? obj.hashCode() : 0));
        }
    }

    public TemplateCache(qfa qfaVar, zp0 zp0Var, wfa wfaVar, fga fgaVar, xe1 xe1Var) {
        this.a = qfaVar;
        NullArgumentException.check("cacheStorage", zp0Var);
        this.b = zp0Var;
        this.e = (zp0Var instanceof ee1) && ((ee1) zp0Var).a();
        NullArgumentException.check("templateLookupStrategy", wfaVar);
        this.c = wfaVar;
        NullArgumentException.check("templateNameFormat", fgaVar);
        this.d = fgaVar;
        this.h = xe1Var;
    }

    public static Class d(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static final Method j() throws Throwable {
        try {
            Class clsD = k;
            if (clsD == null) {
                clsD = d("java.lang.Throwable");
                k = clsD;
            }
            Class clsD2 = k;
            if (clsD2 == null) {
                clsD2 = d("java.lang.Throwable");
                k = clsD2;
            }
            return clsD.getMethod("initCause", clsD2);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final String c(String str, Locale locale, Object obj, String str2, boolean z) {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(n0a.F(str));
        stringBuffer.append("(");
        stringBuffer.append(n0a.E(locale));
        if (obj != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(", cond=");
            stringBuffer2.append(n0a.E(obj));
            string = stringBuffer2.toString();
        } else {
            string = "";
        }
        stringBuffer.append(string);
        stringBuffer.append(", ");
        stringBuffer.append(str2);
        stringBuffer.append(z ? ", parsed)" : ", unparsed]");
        return stringBuffer.toString();
    }

    public void e() {
        synchronized (this.b) {
            this.b.clear();
        }
    }

    public final String f(List list, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer((i3 - i2) * 16);
        while (i2 < i3) {
            stringBuffer.append(list.get(i2));
            stringBuffer.append(IOUtils.DIR_SEPARATOR_UNIX);
            i2++;
        }
        return stringBuffer.toString();
    }

    public final Object g(String str) {
        Object objA = this.a.a(str);
        pq5 pq5Var = i;
        if (pq5Var.q()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("TemplateLoader.findTemplateSource(");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append("): ");
            stringBuffer.append(objA == null ? "Not found" : "Found");
            pq5Var.d(stringBuffer.toString());
        }
        return s(objA);
    }

    public zp0 h() {
        return this.b;
    }

    public long i() {
        long j2;
        synchronized (this) {
            j2 = this.f;
        }
        return j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a k(String str, Locale locale, Object obj, String str2, boolean z) {
        NullArgumentException.check("name", str);
        NullArgumentException.check(CommonUrlParts.LOCALE, locale);
        NullArgumentException.check("encoding", str2);
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        try {
            String strE = this.d.e(str);
            qfa qfaVar = this.a;
            if (qfaVar == null) {
                return new a(strE, "The TemplateLoader was null.");
            }
            Template templateL = l(qfaVar, strE, locale, obj, str2, z);
            return templateL != null ? new a(templateL) : new a(strE, (String) (objArr4 == true ? 1 : 0));
        } catch (MalformedTemplateNameException e) {
            if (this.d != fga.a || this.h.F0().intValue() >= d1d.g) {
                throw e;
            }
            return new a((String) (objArr2 == true ? 1 : 0), e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x022c A[Catch: all -> 0x024f, IOException -> 0x0254, RuntimeException -> 0x0259, TryCatch #14 {IOException -> 0x0254, RuntimeException -> 0x0259, all -> 0x024f, blocks: (B:103:0x0224, B:105:0x022c, B:115:0x0263, B:116:0x0267), top: B:167:0x0224 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0263 A[Catch: all -> 0x024f, IOException -> 0x0254, RuntimeException -> 0x0259, TryCatch #14 {IOException -> 0x0254, RuntimeException -> 0x0259, all -> 0x024f, blocks: (B:103:0x0224, B:105:0x022c, B:115:0x0263, B:116:0x0267), top: B:167:0x0224 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x028b  */
    /* JADX WARN: Code duplicated, block: B:145:0x02b6 A[Catch: all -> 0x02ae, TryCatch #8 {all -> 0x02ae, blocks: (B:138:0x02aa, B:141:0x02b0, B:145:0x02b6, B:146:0x02b9), top: B:157:0x0055 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02bc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v3, types: [ufa] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v8 */
    public final Template l(qfa qfaVar, String str, Locale locale, Object obj, String str2, boolean z) throws Throwable {
        CachedTemplate cachedTemplate;
        CachedTemplate cachedTemplateCloneCachedTemplate;
        ?? r13;
        String str3;
        uea ueaVar;
        ufa ufaVar;
        CachedTemplate cachedTemplate2;
        long jC;
        Object objC;
        pq5 pq5Var = i;
        boolean zQ = pq5Var.q();
        String strC = zQ ? c(str, locale, obj, str2, z) : null;
        c cVar = new c(str, locale, obj, str2, z);
        if (this.e) {
            cachedTemplateCloneCachedTemplate = (CachedTemplate) this.b.get(cVar);
        } else {
            synchronized (this.b) {
                cachedTemplate = (CachedTemplate) this.b.get(cVar);
            }
            cachedTemplateCloneCachedTemplate = cachedTemplate;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z2 = false;
        try {
            try {
                try {
                    if (cachedTemplateCloneCachedTemplate != null) {
                        String str4 = strC;
                        if (jCurrentTimeMillis - cachedTemplateCloneCachedTemplate.lastChecked < this.f) {
                            if (zQ) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append(str4);
                                stringBuffer.append(" cached copy not yet stale; using cached.");
                                pq5Var.d(stringBuffer.toString());
                            }
                            Object obj2 = cachedTemplateCloneCachedTemplate.templateOrException;
                            if (!(obj2 instanceof Template) && obj2 != null) {
                                if (obj2 instanceof RuntimeException) {
                                    x((RuntimeException) obj2);
                                } else if (obj2 instanceof IOException) {
                                    try {
                                        x((IOException) obj2);
                                    } catch (IOException e) {
                                        e = e;
                                        z2 = true;
                                    }
                                }
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("t is ");
                                stringBuffer2.append(obj2.getClass().getName());
                                throw new BugException(stringBuffer2.toString());
                            }
                            return (Template) obj2;
                        }
                        str3 = str4;
                        cachedTemplateCloneCachedTemplate = cachedTemplateCloneCachedTemplate.cloneCachedTemplate();
                        cachedTemplateCloneCachedTemplate.lastChecked = jCurrentTimeMillis;
                        ufa ufaVarQ = q(str, locale, obj);
                        try {
                            if (!ufaVarQ.e()) {
                                if (zQ) {
                                    StringBuffer stringBuffer3 = new StringBuffer();
                                    stringBuffer3.append(str3);
                                    stringBuffer3.append(" no source found.");
                                    pq5Var.d(stringBuffer3.toString());
                                }
                                w(cVar, cachedTemplateCloneCachedTemplate, null);
                                if (ufaVarQ.e()) {
                                    qfaVar.d(ufaVarQ.c());
                                }
                                return null;
                            }
                            Object objC2 = ufaVarQ.c();
                            long jC2 = qfaVar.c(objC2);
                            boolean z3 = jC2 == cachedTemplateCloneCachedTemplate.lastModified;
                            boolean zEquals = objC2.equals(cachedTemplateCloneCachedTemplate.source);
                            if (z3 && zEquals) {
                                if (zQ) {
                                    StringBuffer stringBuffer4 = new StringBuffer();
                                    stringBuffer4.append(str3);
                                    stringBuffer4.append(": using cached since ");
                                    stringBuffer4.append(objC2);
                                    stringBuffer4.append(" hasn't changed.");
                                    pq5Var.d(stringBuffer4.toString());
                                }
                                v(cVar, cachedTemplateCloneCachedTemplate);
                                Template template = (Template) cachedTemplateCloneCachedTemplate.templateOrException;
                                if (ufaVarQ.e()) {
                                    qfaVar.d(ufaVarQ.c());
                                }
                                return template;
                            }
                            if (zQ) {
                                if (!zEquals) {
                                    StringBuffer stringBuffer5 = new StringBuffer();
                                    stringBuffer5.append("Updating source because: sourceEquals=");
                                    stringBuffer5.append(zEquals);
                                    stringBuffer5.append(", newlyFoundSource=");
                                    stringBuffer5.append(n0a.E(objC2));
                                    stringBuffer5.append(", cached.source=");
                                    stringBuffer5.append(n0a.E(cachedTemplateCloneCachedTemplate.source));
                                    pq5Var.d(stringBuffer5.toString());
                                } else if (!z3) {
                                    StringBuffer stringBuffer6 = new StringBuffer();
                                    stringBuffer6.append("Updating source because: lastModifiedNotChanged=");
                                    stringBuffer6.append(z3);
                                    stringBuffer6.append(", cached.lastModified=");
                                    stringBuffer6.append(cachedTemplateCloneCachedTemplate.lastModified);
                                    stringBuffer6.append(" != source.lastModified=");
                                    stringBuffer6.append(jC2);
                                    pq5Var.d(stringBuffer6.toString());
                                }
                            }
                            cachedTemplate2 = cachedTemplateCloneCachedTemplate;
                            ufaVar = ufaVarQ;
                            jC = jC2;
                            try {
                                objC = ufaVar.c();
                                cachedTemplate2.source = objC;
                                if (zQ) {
                                    StringBuffer stringBuffer7 = new StringBuffer();
                                    stringBuffer7.append("Loading template for ");
                                    stringBuffer7.append(str3);
                                    stringBuffer7.append(" from ");
                                    stringBuffer7.append(n0a.E(objC));
                                    pq5Var.d(stringBuffer7.toString());
                                }
                                if (jC == Long.MIN_VALUE) {
                                    jC = qfaVar.c(objC);
                                }
                                Template templateP = p(qfaVar, objC, str, ufaVar.d(), locale, obj, str2, z);
                                cachedTemplate2.templateOrException = templateP;
                                cachedTemplate2.lastModified = jC;
                                v(cVar, cachedTemplate2);
                                if (ufaVar.e()) {
                                    qfaVar.d(ufaVar.c());
                                }
                                return templateP;
                            } catch (IOException e2) {
                                e = e2;
                                cachedTemplateCloneCachedTemplate = cachedTemplate2;
                            } catch (RuntimeException e3) {
                                e = e3;
                                cachedTemplateCloneCachedTemplate = cachedTemplate2;
                                if (cachedTemplateCloneCachedTemplate != null) {
                                    w(cVar, cachedTemplateCloneCachedTemplate, e);
                                }
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                r13 = ufaVar;
                                if (r13 != 0) {
                                    qfaVar.d(r13.c());
                                }
                                throw th;
                            }
                        } catch (IOException e4) {
                            e = e4;
                        } catch (RuntimeException e5) {
                            e = e5;
                            if (cachedTemplateCloneCachedTemplate != null) {
                                w(cVar, cachedTemplateCloneCachedTemplate, e);
                            }
                            throw e;
                        } catch (Throwable th2) {
                            th = th2;
                            r13 = ufaVarQ;
                            if (r13 != 0) {
                                qfaVar.d(r13.c());
                            }
                            throw th;
                        }
                        if (!z2) {
                            w(cVar, cachedTemplateCloneCachedTemplate, e);
                        }
                        throw e;
                    }
                    str3 = strC;
                    if (zQ) {
                        StringBuffer stringBuffer8 = new StringBuffer();
                        stringBuffer8.append("Couldn't find template in cache for ");
                        stringBuffer8.append(str3);
                        stringBuffer8.append("; will try to load it.");
                        pq5Var.d(stringBuffer8.toString());
                    }
                    try {
                        ueaVar = null;
                        try {
                            try {
                                CachedTemplate cachedTemplate3 = new CachedTemplate();
                                try {
                                    cachedTemplate3.lastChecked = jCurrentTimeMillis;
                                    ufa ufaVarQ2 = q(str, locale, obj);
                                    try {
                                        if (!ufaVarQ2.e()) {
                                            w(cVar, cachedTemplate3, null);
                                            if (ufaVarQ2.e()) {
                                                qfaVar.d(ufaVarQ2.c());
                                            }
                                            return null;
                                        }
                                        cachedTemplate3.lastModified = Long.MIN_VALUE;
                                        ufaVar = ufaVarQ2;
                                        cachedTemplate2 = cachedTemplate3;
                                        jC = Long.MIN_VALUE;
                                        objC = ufaVar.c();
                                        cachedTemplate2.source = objC;
                                        if (zQ) {
                                            StringBuffer stringBuffer9 = new StringBuffer();
                                            stringBuffer9.append("Loading template for ");
                                            stringBuffer9.append(str3);
                                            stringBuffer9.append(" from ");
                                            stringBuffer9.append(n0a.E(objC));
                                            pq5Var.d(stringBuffer9.toString());
                                        }
                                        if (jC == Long.MIN_VALUE) {
                                            jC = qfaVar.c(objC);
                                        }
                                        Template templateP2 = p(qfaVar, objC, str, ufaVar.d(), locale, obj, str2, z);
                                        cachedTemplate2.templateOrException = templateP2;
                                        cachedTemplate2.lastModified = jC;
                                        v(cVar, cachedTemplate2);
                                        if (ufaVar.e()) {
                                            qfaVar.d(ufaVar.c());
                                        }
                                        return templateP2;
                                    } catch (IOException e6) {
                                        e = e6;
                                        cachedTemplateCloneCachedTemplate = cachedTemplate3;
                                    } catch (RuntimeException e7) {
                                        e = e7;
                                        cachedTemplateCloneCachedTemplate = cachedTemplate3;
                                        if (cachedTemplateCloneCachedTemplate != null) {
                                            w(cVar, cachedTemplateCloneCachedTemplate, e);
                                        }
                                        throw e;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        r13 = ufaVarQ2;
                                        if (r13 != 0) {
                                            qfaVar.d(r13.c());
                                        }
                                        throw th;
                                    }
                                } catch (IOException e8) {
                                    e = e8;
                                    cachedTemplateCloneCachedTemplate = cachedTemplate3;
                                } catch (RuntimeException e9) {
                                    e = e9;
                                    cachedTemplateCloneCachedTemplate = cachedTemplate3;
                                    if (cachedTemplateCloneCachedTemplate != null) {
                                        w(cVar, cachedTemplateCloneCachedTemplate, e);
                                    }
                                    throw e;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                r13 = ueaVar;
                                if (r13 != 0 && r13.e()) {
                                    qfaVar.d(r13.c());
                                }
                                throw th;
                            }
                        } catch (IOException e10) {
                            e = e10;
                        } catch (RuntimeException e11) {
                            e = e11;
                        }
                    } catch (IOException e12) {
                        e = e12;
                        ueaVar = null;
                    } catch (RuntimeException e13) {
                        e = e13;
                        ueaVar = null;
                    } catch (Throwable th5) {
                        th = th5;
                        ueaVar = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (IOException e14) {
                e = e14;
            }
        } catch (RuntimeException e15) {
            e = e15;
        } catch (Throwable th7) {
            th = th7;
            r13 = 0;
        }
    }

    public qfa m() {
        return this.a;
    }

    public wfa n() {
        return this.c;
    }

    public fga o() {
        return this.d;
    }

    public final Template p(qfa qfaVar, Object obj, String str, String str2, Locale locale, Object obj2, String str3, boolean z) throws IOException {
        Template template;
        if (z) {
            try {
                Reader readerB = qfaVar.b(obj, str3);
                try {
                    template = new Template(str, str2, readerB, this.h, str3);
                    readerB.close();
                } catch (Throwable th) {
                    readerB.close();
                    throw th;
                }
            } catch (Template.WrongEncodingException e) {
                String templateSpecifiedEncoding = e.getTemplateSpecifiedEncoding();
                pq5 pq5Var = i;
                if (pq5Var.q()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Initial encoding \"");
                    stringBuffer.append(str3);
                    stringBuffer.append("\" was incorrect, re-reading with \"");
                    stringBuffer.append(templateSpecifiedEncoding);
                    stringBuffer.append("\". Template: ");
                    stringBuffer.append(str2);
                    pq5Var.d(stringBuffer.toString());
                }
                Reader readerB2 = qfaVar.b(obj, templateSpecifiedEncoding);
                try {
                    template = new Template(str, str2, readerB2, this.h, templateSpecifiedEncoding);
                    readerB2.close();
                    str3 = templateSpecifiedEncoding;
                } catch (Throwable th2) {
                    readerB2.close();
                    throw th2;
                }
            }
        } else {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[4096];
            Reader readerB3 = qfaVar.b(obj, str3);
            while (true) {
                try {
                    int i2 = readerB3.read(cArr);
                    if (i2 > 0) {
                        stringWriter.write(cArr, 0, i2);
                    } else if (i2 < 0) {
                        break;
                    }
                } catch (Throwable th3) {
                    readerB3.close();
                    throw th3;
                }
            }
            readerB3.close();
            template = Template.A0(str, str2, stringWriter.toString(), this.h);
        }
        template.V(locale);
        template.I0(obj2);
        template.J0(str3);
        return template;
    }

    public final ufa q(String str, Locale locale, Object obj) {
        ufa ufaVarA = this.c.a(new b(str, locale, obj));
        if (ufaVarA != null) {
            return ufaVarA;
        }
        throw new NullPointerException("Lookup result shouldn't be null");
    }

    public final ufa r(String str) {
        if (str.indexOf(42) == -1) {
            return ufa.b(str, g(str));
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/");
        ArrayList arrayList = new ArrayList();
        int size = -1;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals("*")) {
                if (size != -1) {
                    arrayList.remove(size);
                }
                size = arrayList.size();
            }
            arrayList.add(strNextToken);
        }
        if (size == -1) {
            return ufa.b(str, g(str));
        }
        String strF = f(arrayList, 0, size);
        String strF2 = f(arrayList, size + 1, arrayList.size());
        if (strF2.endsWith("/")) {
            strF2 = strF2.substring(0, strF2.length() - 1);
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        stringBuffer.append(strF);
        int length = strF.length();
        while (true) {
            stringBuffer.append(strF2);
            String string = stringBuffer.toString();
            Object objG = g(string);
            if (objG != null) {
                return ufa.b(string, objG);
            }
            if (length == 0) {
                return ufa.a();
            }
            length = strF.lastIndexOf(47, length - 2) + 1;
            stringBuffer.setLength(length);
        }
    }

    public final Object s(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.h.F0().intValue() >= d1d.d && (obj instanceof afb)) {
            afb afbVar = (afb) obj;
            if (afbVar.c() == null) {
                afbVar.e(false);
            }
        }
        return obj;
    }

    public void t(long j2) {
        synchronized (this) {
            this.f = j2;
        }
    }

    public void u(boolean z) {
        synchronized (this) {
            try {
                if (this.g != z) {
                    this.g = z;
                    e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(c cVar, CachedTemplate cachedTemplate) {
        if (this.e) {
            this.b.put(cVar, cachedTemplate);
            return;
        }
        synchronized (this.b) {
            this.b.put(cVar, cachedTemplate);
        }
    }

    public final void w(c cVar, CachedTemplate cachedTemplate, Exception exc) {
        cachedTemplate.templateOrException = exc;
        cachedTemplate.source = null;
        cachedTemplate.lastModified = 0L;
        v(cVar, cachedTemplate);
    }

    public final void x(Exception exc) throws IOException {
        Method method = j;
        if (method == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("There was an error loading the template on an earlier attempt: ");
            stringBuffer.append(exc.getClass().getName());
            stringBuffer.append(": ");
            stringBuffer.append(exc.getMessage());
            throw new IOException(stringBuffer.toString());
        }
        IOException iOException = new IOException("There was an error loading the template on an earlier attempt; it's attached as a cause");
        try {
            method.invoke(iOException, exc);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UndeclaredThrowableException(e2);
        }
    }

    public static final class a {
        public final Template a;
        public final String b;
        public final String c;
        public final MalformedTemplateNameException d;

        public String a() {
            return this.b;
        }

        public String b() {
            String str = this.c;
            if (str != null) {
                return str;
            }
            MalformedTemplateNameException malformedTemplateNameException = this.d;
            if (malformedTemplateNameException != null) {
                return malformedTemplateNameException.getMalformednessDescription();
            }
            return null;
        }

        public Template c() {
            return this.a;
        }

        public a(Template template) {
            this.a = template;
            this.b = null;
            this.c = null;
            this.d = null;
        }

        public a(String str, MalformedTemplateNameException malformedTemplateNameException) {
            this.a = null;
            this.b = str;
            this.c = null;
            this.d = malformedTemplateNameException;
        }

        public a(String str, String str2) {
            this.a = null;
            this.b = str;
            this.c = str2;
            this.d = null;
        }
    }
}
