package defpackage;

import com.google.android.gms.internal.ads.zzfzh;
import java.io.IOException;

public final class b6i extends c6i {
    public b6i(z5i z5iVar, Character ch) {
        super(z5iVar, ch);
        v2i.e(z5iVar.b.length == 64);
    }

    @Override
    public final int a(byte[] bArr, CharSequence charSequence) throws zzfzh {
        CharSequence charSequenceF = f(charSequence);
        int length = charSequenceF.length();
        z5i z5iVar = this.b;
        if (!z5iVar.d(length)) {
            throw new zzfzh("Invalid input length " + charSequenceF.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequenceF.length()) {
            int i3 = i2 + 1;
            int iB = (z5iVar.b(charSequenceF.charAt(i + 1)) << 12) | (z5iVar.b(charSequenceF.charAt(i)) << 18);
            bArr[i2] = (byte) (iB >>> 16);
            int i4 = i + 2;
            if (i4 < charSequenceF.length()) {
                int i5 = i + 3;
                int iB2 = iB | (z5iVar.b(charSequenceF.charAt(i4)) << 6);
                int i6 = i2 + 2;
                bArr[i3] = (byte) ((iB2 >>> 8) & 255);
                if (i5 < charSequenceF.length()) {
                    i += 4;
                    i2 += 3;
                    bArr[i6] = (byte) ((iB2 | z5iVar.b(charSequenceF.charAt(i5))) & 255);
                } else {
                    i2 = i6;
                    i = i5;
                }
            } else {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }

    @Override
    public final void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        v2i.k(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            int i5 = bArr[i3] & 255;
            int i6 = bArr[i3 + 1] & 255;
            int i7 = bArr[i3 + 2] & 255;
            z5i z5iVar = this.b;
            int i8 = (i6 << 8) | (i5 << 16) | i7;
            appendable.append(z5iVar.a(i8 >>> 18));
            appendable.append(z5iVar.a((i8 >>> 12) & 63));
            appendable.append(z5iVar.a((i8 >>> 6) & 63));
            appendable.append(z5iVar.a(i8 & 63));
            i3 += 3;
        }
        if (i3 < i2) {
            k(appendable, bArr, i3, i2 - i3);
        }
    }

    @Override
    public final d6i j(z5i z5iVar, Character ch) {
        return new b6i(z5iVar, ch);
    }

    public b6i(String str, String str2, Character ch) {
        this(new z5i(str, str2.toCharArray()), ch);
    }
}
