package q9;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import java.nio.ByteBuffer;
import java.util.UUID;

public abstract class l {

    private static class a {

        private final UUID f69523a;

        private final int f69524b;

        private final byte[] f69525c;

        public a(UUID uuid, int i10, byte[] bArr) {
            this.f69523a = uuid;
            this.f69524b = i10;
            this.f69525c = bArr;
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
        byteBufferAllocate.putInt(1886614376);
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

    private static a d(byte[] bArr) {
        d0 d0Var = new d0(bArr);
        if (d0Var.f() < 32) {
            return null;
        }
        d0Var.P(0);
        if (d0Var.n() != d0Var.a() + 4 || d0Var.n() != 1886614376) {
            return null;
        }
        int iC = q9.a.c(d0Var.n());
        if (iC > 1) {
            s.i("PsshAtomUtil", "Unsupported pssh version: " + iC);
            return null;
        }
        UUID uuid = new UUID(d0Var.w(), d0Var.w());
        if (iC == 1) {
            d0Var.Q(d0Var.H() * 16);
        }
        int iH = d0Var.H();
        if (iH != d0Var.a()) {
            return null;
        }
        byte[] bArr2 = new byte[iH];
        d0Var.j(bArr2, 0, iH);
        return new a(uuid, iC, bArr2);
    }

    public static byte[] e(byte[] bArr, UUID uuid) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        if (uuid.equals(aVarD.f69523a)) {
            return aVarD.f69525c;
        }
        s.i("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + aVarD.f69523a + ".");
        return null;
    }

    public static UUID f(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        return aVarD.f69523a;
    }

    public static int g(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return -1;
        }
        return aVarD.f69524b;
    }
}
