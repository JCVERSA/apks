package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Date;
import java.util.Locale;
import org.bouncycastle.cert.X509CertificateHolder;

public class lqc {
    public nmb a;
    public ik3 b;

    public lqc(cqc cqcVar, BigInteger bigInteger, mna mnaVar, mna mnaVar2, cqc cqcVar2, s1a s1aVar) {
        nmb nmbVar = new nmb();
        this.a = nmbVar;
        nmbVar.f(new g1(bigInteger));
        this.a.e(cqcVar);
        this.a.h(mnaVar);
        this.a.c(mnaVar2);
        this.a.i(cqcVar2);
        this.a.j(s1aVar);
        this.b = new ik3();
    }

    public static byte[] b(ch1 ch1Var, j1 j1Var) throws IOException {
        OutputStream outputStreamA = ch1Var.a();
        j1Var.k(outputStreamA, "DER");
        outputStreamA.close();
        return ch1Var.c();
    }

    public static ms0 c(nca ncaVar, oa oaVar, byte[] bArr) {
        y0 y0Var = new y0();
        y0Var.a(ncaVar);
        y0Var.a(oaVar);
        y0Var.a(new np1(bArr));
        return ms0.n(new aq1(y0Var));
    }

    public X509CertificateHolder a(ch1 ch1Var) {
        this.a.g(ch1Var.b());
        if (!this.b.e()) {
            ik3 ik3Var = this.b;
            l1 l1Var = bk3.N;
            if (ik3Var.d(l1Var)) {
                bk3 bk3VarC = this.b.c(l1Var);
                try {
                    this.b.f(l1Var, bk3VarC.r(), j82.n(bk3VarC.q()).o(this.a.a(), this.b.b()));
                } catch (IOException e) {
                    throw new IllegalStateException("unable to replace deltaCertificateDescriptor: " + e.getMessage());
                }
            }
            this.a.d(this.b.b());
        }
        try {
            nca ncaVarA = this.a.a();
            return new X509CertificateHolder(c(ncaVarA, ch1Var.b(), b(ch1Var, ncaVarA)));
        } catch (IOException e2) {
            throw qe3.a("cannot produce certificate signature", e2);
        }
    }

    public lqc(cqc cqcVar, BigInteger bigInteger, Date date, Date date2, Locale locale, cqc cqcVar2, s1a s1aVar) {
        this(cqcVar, bigInteger, new mna(date, locale), new mna(date2, locale), cqcVar2, s1aVar);
    }
}
