package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;
import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;

public class ei5 implements y93 {
    public final LMOtsParameters b;
    public final byte[] c;
    public final byte[] d;

    public ei5(LMOtsParameters lMOtsParameters, byte[] bArr, byte[] bArr2) {
        this.b = lMOtsParameters;
        this.c = bArr;
        this.d = bArr2;
    }

    public static ei5 a(Object obj) throws Throwable {
        if (obj instanceof ei5) {
            return (ei5) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            LMOtsParameters lMOtsParametersF = LMOtsParameters.f(dataInputStream.readInt());
            byte[] bArr = new byte[lMOtsParametersF.d()];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[lMOtsParametersF.e() * lMOtsParametersF.d()];
            dataInputStream.readFully(bArr2);
            return new ei5(lMOtsParametersF, bArr, bArr2);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(fz9.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                ei5 ei5VarA = a(dataInputStream3);
                dataInputStream3.close();
                return ei5VarA;
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ei5 ei5Var = (ei5) obj;
        LMOtsParameters lMOtsParameters = this.b;
        if (lMOtsParameters == null ? ei5Var.b != null : !lMOtsParameters.equals(ei5Var.b)) {
            return false;
        }
        if (Arrays.equals(this.c, ei5Var.c)) {
            return Arrays.equals(this.d, ei5Var.d);
        }
        return false;
    }

    @Override
    public byte[] getEncoded() {
        return zc1.f().i(this.b.g()).d(this.c).d(this.d).b();
    }

    public int hashCode() {
        LMOtsParameters lMOtsParameters = this.b;
        return ((((lMOtsParameters != null ? lMOtsParameters.hashCode() : 0) * 31) + Arrays.hashCode(this.c)) * 31) + Arrays.hashCode(this.d);
    }
}
