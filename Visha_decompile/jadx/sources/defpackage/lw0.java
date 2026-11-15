package defpackage;

import freemarker.ext.beans.b;
import freemarker.ext.beans.c;
import freemarker.template.TemplateModelException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public abstract class lw0 implements ofa {
    public final b b;
    public final Map c;
    public final boolean d;
    public final Set e;

    public lw0(b bVar) {
        Map mapC = c0d.c();
        this.c = mapC;
        this.d = c0d.b(mapC);
        this.e = new HashSet();
        this.b = bVar;
    }

    public void b() {
        synchronized (this.b.x()) {
            this.c.clear();
        }
    }

    public abstract zfa c(Class cls);

    public final zfa e(String str) {
        zfa zfaVar;
        if (this.d && (zfaVar = (zfa) this.c.get(str)) != null) {
            return zfaVar;
        }
        Object objX = this.b.x();
        synchronized (objX) {
            try {
                zfa zfaVar2 = (zfa) this.c.get(str);
                if (zfaVar2 != null) {
                    return zfaVar2;
                }
                while (zfaVar2 == null && this.e.contains(str)) {
                    try {
                        objX.wait();
                        zfaVar2 = (zfa) this.c.get(str);
                    } catch (InterruptedException e) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Class inrospection data lookup aborded: ");
                        stringBuffer.append(e);
                        throw new RuntimeException(stringBuffer.toString());
                    }
                }
                if (zfaVar2 != null) {
                    return zfaVar2;
                }
                this.e.add(str);
                c cVarQ = this.b.q();
                int iN = cVarQ.n();
                try {
                    Class clsD = hx0.d(str);
                    cVarQ.k(clsD);
                    zfa zfaVarC = c(clsD);
                    if (zfaVarC != null) {
                        synchronized (objX) {
                            try {
                                if (cVarQ == this.b.q() && iN == cVarQ.n()) {
                                    this.c.put(str, zfaVarC);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    synchronized (objX) {
                        this.e.remove(str);
                        objX.notifyAll();
                    }
                    return zfaVarC;
                } catch (Throwable th2) {
                    synchronized (objX) {
                        this.e.remove(str);
                        objX.notifyAll();
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        try {
            return e(str);
        } catch (Exception e) {
            if (e instanceof TemplateModelException) {
                throw ((TemplateModelException) e);
            }
            throw new TemplateModelException(e);
        }
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    public b l() {
        return this.b;
    }
}
