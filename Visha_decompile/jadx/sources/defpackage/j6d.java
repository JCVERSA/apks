package defpackage;

import java.io.File;
import java.io.IOException;

public class j6d implements fkd {
    public mfd a;
    public final abd b = new abd();
    public final dld c = new dld();
    public File d;
    public final long e;
    public final long f;

    public j6d(File file, long j, long j2) {
        this.d = file;
        this.e = j;
        this.f = j2;
    }

    public File a(zad zadVar) {
        try {
            mfd.e eVarE = d().E(this.c.a(zadVar));
            if (eVarE != null) {
                return eVarE.a(0);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String b(zad zadVar, fkd.a aVar) {
        this.b.a(zadVar);
        String strA = this.c.a(zadVar);
        String path = null;
        try {
            try {
                if (d().E(strA) != null) {
                    this.b.b(zadVar);
                    return null;
                }
                mfd.c cVarB = this.a.b(strA);
                if (cVarB == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Had two simultaneous puts for: ");
                    sb.append(strA);
                    throw new IllegalStateException(sb.toString());
                }
                try {
                    File fileB = cVarB.b(0);
                    if (((gnd) aVar).a(fileB)) {
                        cVarB.f();
                    }
                    path = fileB.getPath();
                    cVarB.d();
                    this.b.b(zadVar);
                    return path;
                } catch (Throwable th) {
                    cVarB.d();
                    throw th;
                }
            } catch (Throwable th2) {
                this.b.b(zadVar);
                throw th2;
            }
        } catch (IOException e) {
            e.printStackTrace();
            this.b.b(zadVar);
        }
    }

    public void c() {
        try {
            d().close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final mfd d() {
        if (this.a == null) {
            synchronized (j6d.class) {
                try {
                    if (this.a == null) {
                        File fileA = this.d;
                        if (fileA == null) {
                            fileA = zx9.a(xj1.a());
                        }
                        this.d = fileA;
                        this.a = mfd.e(fileA, 1, 1, this.e, this.f);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.a;
    }
}
