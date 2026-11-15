package fl;

import java.io.File;
import java.io.IOException;

public class b implements h {

    private f f60183a;

    private final e f60184b = new e();

    private final i f60185c = new i();

    private File f60186d;

    private final long f60187e;

    private final long f60188f;

    protected b(File file, long j10, long j11) {
        this.f60186d = file;
        this.f60187e = j10;
        this.f60188f = j11;
    }

    private f d() {
        if (this.f60183a == null) {
            synchronized (b.class) {
                try {
                    if (this.f60183a == null) {
                        File fileA = this.f60186d;
                        if (fileA == null) {
                            fileA = kl.i.a(yj.a.a());
                        }
                        File file = fileA;
                        this.f60186d = file;
                        this.f60183a = f.h(file, 1, 1, this.f60187e, this.f60188f);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f60183a;
    }

    public File a(el.e eVar) {
        try {
            f.e eVarP = d().p(this.f60185c.a(eVar));
            if (eVarP != null) {
                return eVarP.a(0);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public void b() {
        try {
            d().close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void c(el.e eVar, h.a aVar) {
        this.f60184b.a(eVar);
        String strA = this.f60185c.a(eVar);
        try {
            try {
                if (d().p(strA) != null) {
                    this.f60184b.b(eVar);
                    return;
                }
                f.c cVarD = this.f60183a.d(strA);
                if (cVarD == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Had two simultaneous puts for: ");
                    sb2.append(strA);
                    throw new IllegalStateException(sb2.toString());
                }
                try {
                    if (((j) aVar).a(cVarD.b(0))) {
                        cVarD.f();
                    }
                    cVarD.d();
                    this.f60184b.b(eVar);
                } catch (Throwable th2) {
                    cVarD.d();
                    throw th2;
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                this.f60184b.b(eVar);
            }
        } catch (Throwable th3) {
            this.f60184b.b(eVar);
            throw th3;
        }
    }
}
