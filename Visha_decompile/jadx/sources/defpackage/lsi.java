package defpackage;

import com.google.android.gms.internal.ads.ia;
import com.google.android.gms.internal.ads.zzgyk;
import java.io.IOException;

public abstract class lsi extends gri {
    public final ia b;
    public ia c;

    public lsi(ia iaVar) {
        this.b = iaVar;
        if (iaVar.V()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.c = l();
    }

    public static void m(Object obj, Object obj2) {
        xti.a().b(obj.getClass()).b(obj, obj2);
    }

    @Override
    public gri g(byte[] bArr, int i, int i2, esi esiVar) throws zzgyk {
        p(bArr, i, i2, esiVar);
        return this;
    }

    public final ia l() {
        return this.b.K();
    }

    public lsi clone() {
        lsi lsiVarE = s().e();
        lsiVarE.c = D();
        return lsiVarE;
    }

    public lsi o(ia iaVar) {
        if (s().equals(iaVar)) {
            return this;
        }
        t();
        m(this.c, iaVar);
        return this;
    }

    public lsi p(byte[] bArr, int i, int i2, esi esiVar) throws zzgyk {
        t();
        try {
            xti.a().b(this.c.getClass()).d(this.c, bArr, i, i + i2, new mri(esiVar));
            return this;
        } catch (zzgyk e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final ia q() {
        ia iaVarD = D();
        if (iaVarD.P()) {
            return iaVarD;
        }
        throw gri.i(iaVarD);
    }

    @Override
    public ia D() {
        if (!this.c.V()) {
            return this.c;
        }
        this.c.C();
        return this.c;
    }

    public ia s() {
        return this.b;
    }

    public final void t() {
        if (this.c.V()) {
            return;
        }
        u();
    }

    public void u() {
        ia iaVarL = l();
        m(iaVarL, this.c);
        this.c = iaVarL;
    }
}
