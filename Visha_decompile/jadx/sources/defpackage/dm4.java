package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.InputStream;

public class dm4 extends ii5 {
    public final int c;
    public final ki5 d;

    public dm4(int i, ki5 ki5Var) {
        super(false);
        if (ki5Var == null) {
            throw new NullPointerException("lmsPublicKey");
        }
        this.c = i;
        this.d = ki5Var;
    }

    public static dm4 b(Object obj) throws Throwable {
        if (obj instanceof dm4) {
            return (dm4) obj;
        }
        if (obj instanceof DataInputStream) {
            return new dm4(((DataInputStream) obj).readInt(), ki5.b(obj));
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return b(fz9.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                dm4 dm4VarB = b(dataInputStream2);
                dataInputStream2.close();
                return dm4VarB;
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int c() {
        return this.c;
    }

    public ki5 d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dm4 dm4Var = (dm4) obj;
        if (this.c != dm4Var.c) {
            return false;
        }
        return this.d.equals(dm4Var.d);
    }

    @Override
    public byte[] getEncoded() {
        return zc1.f().i(this.c).d(this.d.getEncoded()).b();
    }

    public int hashCode() {
        return (this.c * 31) + this.d.hashCode();
    }
}
