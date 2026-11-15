package e3;

import androidx.media3.common.util.j0;
import java.nio.ByteBuffer;
import java.util.UUID;

public abstract class p {

    public static final class a {

        public final UUID f59389a;

        public final int f59390b;

        public final byte[] f59391c;

        public final UUID[] f59392d;

        a(UUID uuid, int i10, byte[] bArr, UUID[] uuidArr) {
            this.f59389a = uuid;
            this.f59390b = i10;
            this.f59391c = bArr;
            this.f59392d = uuidArr;
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
        if (bArr == null || bArr.length == 0) {
            byteBufferAllocate.putInt(0);
        } else {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    public static boolean c(byte[] bArr) {
        return d(bArr) != null;
    }

    public static a d(byte[] bArr) {
        UUID[] uuidArr;
        j0 j0Var = new j0(bArr);
        if (j0Var.g() < 32) {
            return null;
        }
        j0Var.W(0);
        int iA = j0Var.a();
        int iQ = j0Var.q();
        if (iQ != iA) {
            androidx.media3.common.util.u.h("PsshAtomUtil", "Advertised atom size (" + iQ + ") does not match buffer size: " + iA);
            return null;
        }
        int iQ2 = j0Var.q();
        if (iQ2 != 1886614376) {
            androidx.media3.common.util.u.h("PsshAtomUtil", "Atom type is not pssh: " + iQ2);
            return null;
        }
        int iP = b.p(j0Var.q());
        if (iP > 1) {
            androidx.media3.common.util.u.h("PsshAtomUtil", "Unsupported pssh version: " + iP);
            return null;
        }
        UUID uuid = new UUID(j0Var.A(), j0Var.A());
        if (iP == 1) {
            int iL = j0Var.L();
            uuidArr = new UUID[iL];
            for (int i10 = 0; i10 < iL; i10++) {
                uuidArr[i10] = new UUID(j0Var.A(), j0Var.A());
            }
        } else {
            uuidArr = null;
        }
        int iL2 = j0Var.L();
        int iA2 = j0Var.a();
        if (iL2 == iA2) {
            byte[] bArr2 = new byte[iL2];
            j0Var.l(bArr2, 0, iL2);
            return new a(uuid, iP, bArr2, uuidArr);
        }
        androidx.media3.common.util.u.h("PsshAtomUtil", "Atom data size (" + iL2 + ") does not match the bytes left: " + iA2);
        return null;
    }

    public static byte[] e(byte[] bArr, UUID uuid) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        if (uuid.equals(aVarD.f59389a)) {
            return aVarD.f59391c;
        }
        androidx.media3.common.util.u.h("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + aVarD.f59389a + ".");
        return null;
    }

    public static UUID f(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return null;
        }
        return aVarD.f59389a;
    }

    public static int g(byte[] bArr) {
        a aVarD = d(bArr);
        if (aVarD == null) {
            return -1;
        }
        return aVarD.f59390b;
    }
}
