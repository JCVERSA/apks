package defpackage;

import java.security.GeneralSecurityException;
import java.util.Iterator;

public final class mai implements q8i {
    public final eji a;

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Iterator it = this.a.a(bArr).iterator();
        while (it.hasNext()) {
            try {
                byte[] bArrA = ((lai) it.next()).a.a(bArr, bArr2);
                int length = bArr.length;
                return bArrA;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
