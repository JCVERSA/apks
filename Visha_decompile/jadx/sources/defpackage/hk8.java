package defpackage;

import androidx.media3.container.Mp4Box;
import com.alibaba.android.arouter.utils.Consts;
import java.nio.ByteBuffer;
import java.util.UUID;

public abstract class hk8 {

    public static class a {
        public final UUID a;
        public final int b;
        public final byte[] c;

        public a(UUID uuid, int i, byte[] bArr) {
            this.a = uuid;
            this.b = i;
            this.c = bArr;
        }
    }

    public static byte[] a(UUID uuid, byte[] bArr) {
        return b(uuid, null, bArr);
    }

    public static byte[] b(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(Mp4Box.TYPE_pssh);
        byteBufferAllocate.putInt(uuidArr != null ? 16777216 : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    public static boolean c(byte[] bArr) {
        return d(bArr) != null;
    }

    public static a d(byte[] bArr) {
        qw7 qw7Var = new qw7(bArr);
        if (qw7Var.f() < 32) {
            return null;
        }
        qw7Var.O(0);
        if (qw7Var.n() != qw7Var.a() + 4 || qw7Var.n() != 1886614376) {
            return null;
        }
        int iC = xk.c(qw7Var.n());
        if (iC > 1) {
            op5.i("PsshAtomUtil", "Unsupported pssh version: " + iC);
            return null;
        }
        UUID uuid = new UUID(qw7Var.v(), qw7Var.v());
        if (iC == 1) {
            qw7Var.P(qw7Var.G() * 16);
        }
        int iG = qw7Var.G();
        if (iG != qw7Var.a()) {
            return null;
        }
        byte[] bArr2 = new byte[iG];
        qw7Var.j(bArr2, 0, iG);
        return new a(uuid, iC, bArr2);
    }

    public static byte[] e(byte[] bArr, UUID uuid) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        if (uuid.equals(aVarD.a)) {
            return aVarD.c;
        }
        op5.i("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + aVarD.a + Consts.DOT);
        return null;
    }

    public static UUID f(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        return aVarD.a;
    }

    public static int g(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return -1;
        }
        return aVarD.b;
    }
}
