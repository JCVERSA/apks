package freemarker.core;

import defpackage.bfa;
import defpackage.bga;
import defpackage.d0d;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.nga;
import defpackage.pn5;
import defpackage.sl5;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.utility.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public final class z0 extends ifa {
    public final t0 l;
    public final String m;
    public final boolean n;

    public class a implements pn5 {
        public bga a;
        public boolean b;
        public zfa c;
        public int d;
        public boolean e;
        public Collection f = null;
        public String g;
        public final zfa h;

        public a(zfa zfaVar, String str) {
            this.h = zfaVar;
            this.g = str;
        }

        @Override
        public Collection a() {
            String str = this.g;
            if (str == null) {
                return Collections.EMPTY_LIST;
            }
            if (this.f == null) {
                ArrayList arrayList = new ArrayList(3);
                this.f = arrayList;
                arrayList.add(str);
                Collection collection = this.f;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append("_index");
                collection.add(stringBuffer.toString());
                Collection collection2 = this.f;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(str);
                stringBuffer2.append("_has_next");
                collection2.add(stringBuffer2.toString());
            }
            return this.f;
        }

        @Override
        public zfa b(String str) {
            String str2 = this.g;
            if (str2 == null || !str.startsWith(str2)) {
                return null;
            }
            int length = str.length() - str2.length();
            if (length == 0) {
                return this.c;
            }
            if (length == 6) {
                if (str.endsWith("_index")) {
                    return new SimpleNumber(this.d);
                }
                return null;
            }
            if (length == 9 && str.endsWith("_has_next")) {
                return this.b ? freemarker.template.a.z6 : freemarker.template.a.y6;
            }
            return null;
        }

        public boolean c(Environment environment) {
            return d(environment, z0.this.S());
        }

        public final boolean d(Environment environment, ifa ifaVar) {
            return e(environment, ifaVar);
        }

        public final boolean e(Environment environment, ifa ifaVar) throws NonSequenceOrCollectionException {
            zfa zfaVar = this.h;
            if (zfaVar instanceof bfa) {
                bfa bfaVar = (bfa) zfaVar;
                bga it = this.a;
                if (it == null) {
                    it = bfaVar.iterator();
                }
                boolean zHasNext = it.hasNext();
                this.b = zHasNext;
                if (zHasNext) {
                    if (this.g != null) {
                        while (this.b) {
                            try {
                                this.c = it.next();
                                this.b = it.hasNext();
                                if (ifaVar != null) {
                                    environment.a2(ifaVar);
                                }
                                this.d++;
                            } catch (BreakInstruction.Break unused) {
                            }
                        }
                        this.a = null;
                    } else {
                        this.a = it;
                        if (ifaVar != null) {
                            environment.a2(ifaVar);
                        }
                    }
                }
                return zHasNext;
            }
            if (!(zfaVar instanceof nga)) {
                if (!environment.J()) {
                    throw new NonSequenceOrCollectionException(z0.this.l, this.h, environment);
                }
                if (this.g != null) {
                    this.c = this.h;
                    this.b = false;
                }
                if (ifaVar == null) {
                    return true;
                }
                try {
                    environment.a2(ifaVar);
                    return true;
                } catch (BreakInstruction.Break unused2) {
                    return true;
                }
            }
            nga ngaVar = (nga) zfaVar;
            int size = ngaVar.size();
            boolean z = size != 0;
            if (z) {
                if (this.g != null) {
                    try {
                        this.d = 0;
                        while (true) {
                            int i = this.d;
                            if (i >= size) {
                                break;
                            }
                            this.c = ngaVar.get(i);
                            this.b = size > this.d + 1;
                            if (ifaVar != null) {
                                environment.a2(ifaVar);
                            }
                            this.d++;
                        }
                    } catch (BreakInstruction.Break unused3) {
                    }
                } else if (ifaVar != null) {
                    environment.a2(ifaVar);
                }
            }
            return z;
        }

        public int f() {
            return this.d;
        }

        public String g() {
            return this.g;
        }

        public boolean h() {
            return this.b;
        }

        public void i(Environment environment, ifa ifaVar, String str) {
            try {
                if (this.e) {
                    throw new _MiscTemplateException(environment, "The #items directive was already entered earlier for this listing.");
                }
                this.e = true;
                this.g = str;
                d(environment, ifaVar);
                this.g = null;
            } catch (Throwable th) {
                this.g = null;
                throw th;
            }
        }
    }

    public z0(t0 t0Var, String str, ifa ifaVar, boolean z) {
        this.l = t0Var;
        this.m = str;
        j0(ifaVar);
        this.n = z;
    }

    public static a n0(Environment environment, String str) {
        ArrayList arrayListQ0 = environment.Q0();
        if (arrayListQ0 == null) {
            return null;
        }
        for (int size = arrayListQ0.size() - 1; size >= 0; size--) {
            Object obj = arrayListQ0.get(size);
            if ((obj instanceof a) && (str == null || str.equals(((a) obj).g()))) {
                return (a) obj;
            }
        }
        return null;
    }

    @Override
    public void F(Environment environment) throws InvalidReferenceException {
        l0(environment);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        if (this.n) {
            stringBuffer.append(d0d.e(this.m));
            stringBuffer.append(" in ");
            stringBuffer.append(this.l.o());
        } else {
            stringBuffer.append(this.l.o());
            if (this.m != null) {
                stringBuffer.append(" as ");
                stringBuffer.append(d0d.e(this.m));
            }
        }
        if (z) {
            stringBuffer.append(">");
            if (S() != null) {
                stringBuffer.append(S().o());
            }
            if (!(U() instanceof sl5)) {
                stringBuffer.append("</");
                stringBuffer.append(r());
                stringBuffer.append('>');
            }
        }
        return stringBuffer.toString();
    }

    public boolean l0(Environment environment) throws InvalidReferenceException {
        zfa zfaVarK = this.l.K(environment);
        if (zfaVarK == null) {
            if (environment.J()) {
                zfaVarK = Constants.i;
            } else {
                this.l.G(null, environment);
            }
        }
        return environment.b2(new a(zfaVarK, this.m));
    }

    @Override
    public String r() {
        return this.n ? "#foreach" : "#list";
    }

    @Override
    public int s() {
        return this.m != null ? 2 : 1;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.t;
        }
        if (i != 1) {
            throw new IndexOutOfBoundsException();
        }
        if (this.m != null) {
            return jw7.u;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i != 1) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.m;
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException();
    }
}
