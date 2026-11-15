package defpackage;

import com.google.android.gms.internal.ads.zzfzh;
import java.io.IOException;

public final class a6i extends c6i {
    public final char[] e;

    public a6i(z5i z5iVar) {
        super(z5iVar, null);
        this.e = new char[512];
        v2i.e(z5iVar.b.length == 16);
        for (int i = 0; i < 256; i++) {
            this.e[i] = z5iVar.a(i >>> 4);
            this.e[i | 256] = z5iVar.a(i & 15);
        }
    }

    @Override
    public final int a(byte[] bArr, CharSequence charSequence) throws zzfzh {
        if (charSequence.length() % 2 == 1) {
            throw new zzfzh("Invalid input length " + charSequence.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            z5i z5iVar = this.b;
            bArr[i2] = (byte) (z5iVar.b(charSequence.charAt(i + 1)) | (z5iVar.b(charSequence.charAt(i)) << 4));
            i += 2;
            i2++;
        }
        return i2;
    }

    @Override
    public final void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        v2i.k(0, i2, bArr.length);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i3] & 255;
            char[] cArr = this.e;
            appendable.append(cArr[i4]);
            appendable.append(cArr[i4 | 256]);
        }
    }

    @Override
    public final d6i j(z5i z5iVar, Character ch) {
        return new a6i(z5iVar);
    }

    public a6i(String str, String str2) {
        this(new z5i("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
