package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public class li5 implements y93 {
    public final int b;
    public final ei5 c;
    public final LMSigParameters d;
    public final byte[][] e;

    public li5(int i, ei5 ei5Var, LMSigParameters lMSigParameters, byte[][] bArr) {
        this.b = i;
        this.c = ei5Var;
        this.d = lMSigParameters;
        this.e = bArr;
    }

    public static li5 a(Object obj) throws Throwable {
        if (obj instanceof li5) {
            return (li5) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            int i = dataInputStream.readInt();
            ei5 ei5VarA = ei5.a(obj);
            LMSigParameters lMSigParametersE = LMSigParameters.e(dataInputStream.readInt());
            int iC = lMSigParametersE.c();
            byte[][] bArr = new byte[iC][];
            for (int i2 = 0; i2 < iC; i2++) {
                byte[] bArr2 = new byte[lMSigParametersE.d()];
                bArr[i2] = bArr2;
                dataInputStream.readFully(bArr2);
            }
            return new li5(i, ei5VarA, lMSigParametersE, bArr);
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
                li5 li5VarA = a(dataInputStream3);
                dataInputStream3.close();
                return li5VarA;
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
        li5 li5Var = (li5) obj;
        if (this.b != li5Var.b) {
            return false;
        }
        ei5 ei5Var = this.c;
        if (ei5Var == null ? li5Var.c != null : !ei5Var.equals(li5Var.c)) {
            return false;
        }
        LMSigParameters lMSigParameters = this.d;
        if (lMSigParameters == null ? li5Var.d == null : lMSigParameters.equals(li5Var.d)) {
            return Arrays.deepEquals(this.e, li5Var.e);
        }
        return false;
    }

    @Override
    public byte[] getEncoded() {
        return zc1.f().i(this.b).d(this.c.getEncoded()).i(this.d.f()).e(this.e).b();
    }

    public int hashCode() {
        int i = this.b * 31;
        ei5 ei5Var = this.c;
        int iHashCode = (i + (ei5Var != null ? ei5Var.hashCode() : 0)) * 31;
        LMSigParameters lMSigParameters = this.d;
        return ((iHashCode + (lMSigParameters != null ? lMSigParameters.hashCode() : 0)) * 31) + Arrays.deepHashCode(this.e);
    }
}
