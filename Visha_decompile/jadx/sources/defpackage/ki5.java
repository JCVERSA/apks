package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public class ki5 extends ii5 {
    public final LMSigParameters c;
    public final LMOtsParameters d;
    public final byte[] e;
    public final byte[] f;

    public ki5(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, byte[] bArr, byte[] bArr2) {
        super(false);
        this.c = lMSigParameters;
        this.d = lMOtsParameters;
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr);
    }

    public static ki5 b(Object obj) throws Throwable {
        if (obj instanceof ki5) {
            return (ki5) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            LMSigParameters lMSigParametersE = LMSigParameters.e(dataInputStream.readInt());
            LMOtsParameters lMOtsParametersF = LMOtsParameters.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[lMSigParametersE.d()];
            dataInputStream.readFully(bArr2);
            return new ki5(lMSigParametersE, lMOtsParametersF, bArr2, bArr);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return b(fz9.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                ki5 ki5VarB = b(dataInputStream3);
                dataInputStream3.close();
                return ki5VarB;
            } catch (Throwable th) {
                th = th;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public byte[] c() {
        return zc1.f().i(this.c.f()).i(this.d.g()).d(this.e).d(this.f).b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ki5 ki5Var = (ki5) obj;
        if (this.c.equals(ki5Var.c) && this.d.equals(ki5Var.d) && ci.b(this.e, ki5Var.e)) {
            return ci.b(this.f, ki5Var.f);
        }
        return false;
    }

    @Override
    public byte[] getEncoded() {
        return c();
    }

    public int hashCode() {
        return (((((this.c.hashCode() * 31) + this.d.hashCode()) * 31) + ci.v(this.e)) * 31) + ci.v(this.f);
    }
}
