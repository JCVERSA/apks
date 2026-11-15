package freemarker.core;

import defpackage.bfa;
import defpackage.bga;
import defpackage.kr8;
import defpackage.ll0;
import defpackage.mga;
import defpackage.n0a;
import defpackage.nga;
import defpackage.xfa;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateModelException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class g0 {
    public static Class a;
    public static Class b;

    public static class a implements freemarker.template.a, bfa, nga {
        public final Pattern b;
        public final String c;
        public Matcher d;
        public Boolean e;
        public nga f;
        public ArrayList g;

        public static class C0346a implements mga {
            public final String b;
            public final SimpleSequence c;

            public C0346a(String str, Matcher matcher) {
                this.b = str.substring(matcher.start(), matcher.end());
                int iGroupCount = matcher.groupCount() + 1;
                this.c = new SimpleSequence(iGroupCount);
                for (int i = 0; i < iGroupCount; i++) {
                    this.c.add(matcher.group(i));
                }
            }

            @Override
            public String getAsString() {
                return this.b;
            }
        }

        public a(Pattern pattern, String str) {
            this.b = pattern;
            this.c = str;
        }

        public zfa c() {
            nga ngaVar = this.f;
            if (ngaVar != null) {
                return ngaVar;
            }
            Matcher matcher = this.d;
            if (matcher == null) {
                l();
                matcher = this.d;
            }
            d0 d0Var = new d0(this, matcher);
            this.f = d0Var;
            return d0Var;
        }

        public final ArrayList e() {
            ArrayList arrayList = new ArrayList();
            Matcher matcher = this.b.matcher(this.c);
            while (matcher.find()) {
                arrayList.add(new C0346a(this.c, matcher));
            }
            this.g = arrayList;
            return arrayList;
        }

        @Override
        public zfa get(int i) {
            ArrayList arrayListE = this.g;
            if (arrayListE == null) {
                arrayListE = e();
            }
            return (zfa) arrayListE.get(i);
        }

        @Override
        public boolean getAsBoolean() {
            Boolean bool = this.e;
            return bool != null ? bool.booleanValue() : l();
        }

        @Override
        public bga iterator() {
            ArrayList arrayList = this.g;
            return arrayList == null ? new e0(this, this.b.matcher(this.c)) : new f0(this, arrayList);
        }

        public final boolean l() {
            Matcher matcher = this.b.matcher(this.c);
            boolean zMatches = matcher.matches();
            this.d = matcher;
            this.e = Boolean.valueOf(zMatches);
            return zMatches;
        }

        @Override
        public int size() {
            ArrayList arrayListE = this.g;
            if (arrayListE == null) {
                arrayListE = e();
            }
            return arrayListE.size();
        }
    }

    public static class b extends j {
        @Override
        public zfa F(Environment environment) throws Throwable {
            zfa zfaVarK = this.h.K(environment);
            G(zfaVarK, environment);
            if (zfaVarK instanceof a) {
                return ((a) zfaVarK).c();
            }
            if (zfaVarK instanceof a.C0346a) {
                return ((a.C0346a) zfaVarK).c;
            }
            t0 t0Var = this.h;
            Class clsA = g0.a;
            if (clsA == null) {
                clsA = g0.a("freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel");
                g0.a = clsA;
            }
            Class clsA2 = g0.b;
            if (clsA2 == null) {
                clsA2 = g0.a("freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups");
                g0.b = clsA2;
            }
            throw new UnexpectedTypeException(t0Var, zfaVarK, "regular expression matcher", new Class[]{clsA, clsA2}, environment);
        }
    }

    public static class c extends ll0 {

        public class a implements xfa {
            public String b;

            public a(String str) {
                this.b = str;
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                int size = list.size();
                c.this.Y(size, 1, 2);
                String str = (String) list.get(0);
                long jF = size > 1 ? kr8.f((String) list.get(1)) : 0L;
                if ((8589934592L & jF) != 0) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("?");
                    stringBuffer.append(c.this.i);
                    stringBuffer.append(" doesn't support the \"f\" flag.");
                    kr8.e(stringBuffer.toString());
                }
                return new a(kr8.c(str, (int) jF), this.b);
            }
        }

        @Override
        public zfa h0(String str, Environment environment) {
            return new a(str);
        }
    }

    public static class d extends ll0 {

        public class a implements xfa {
            public String b;

            public a(String str) {
                this.b = str;
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                String strReplaceFirst;
                int size = list.size();
                d.this.Y(size, 2, 3);
                String str = (String) list.get(0);
                String str2 = (String) list.get(1);
                long jF = size > 2 ? kr8.f((String) list.get(2)) : 0L;
                if ((4294967296L & jF) == 0) {
                    kr8.a("replace", jF);
                    strReplaceFirst = n0a.P(this.b, str, str2, (kr8.f & jF) != 0, (jF & 8589934592L) != 0);
                } else {
                    Matcher matcher = kr8.c(str, (int) jF).matcher(this.b);
                    strReplaceFirst = (jF & 8589934592L) != 0 ? matcher.replaceFirst(str2) : matcher.replaceAll(str2);
                }
                return new SimpleScalar(strReplaceFirst);
            }
        }

        @Override
        public zfa h0(String str, Environment environment) {
            return new a(str);
        }
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }
}
