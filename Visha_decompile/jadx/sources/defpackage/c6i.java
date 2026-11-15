package defpackage;

import com.google.android.gms.internal.ads.zzfzh;
import java.math.RoundingMode;
import java.util.Objects;

public class c6i extends d6i {
    public final z5i b;
    public final Character c;
    public volatile d6i d;

    public c6i(z5i z5iVar, Character ch) {
        this.b = z5iVar;
        boolean z = true;
        if (ch != null && z5iVar.e('=')) {
            z = false;
        }
        v2i.i(z, "Padding character %s was already in alphabet", ch);
        this.c = ch;
    }

    @Override
    public int a(byte[] bArr, CharSequence charSequence) throws zzfzh {
        int i;
        CharSequence charSequenceF = f(charSequence);
        int length = charSequenceF.length();
        z5i z5iVar = this.b;
        if (!z5iVar.d(length)) {
            throw new zzfzh("Invalid input length " + charSequenceF.length());
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < charSequenceF.length()) {
            long jB = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i = z5iVar.e;
                if (i4 >= i) {
                    break;
                }
                jB <<= z5iVar.d;
                if (i2 + i4 < charSequenceF.length()) {
                    jB |= (long) z5iVar.b(charSequenceF.charAt(i5 + i2));
                    i5++;
                }
                i4++;
            }
            int i6 = z5iVar.f;
            int i7 = i5 * z5iVar.d;
            int i8 = (i6 - 1) * 8;
            while (i8 >= (i6 * 8) - i7) {
                bArr[i3] = (byte) ((jB >>> i8) & 255);
                i8 -= 8;
                i3++;
            }
            i2 += i;
        }
        return i3;
    }

    @Override
    public void b(Appendable appendable, byte[] bArr, int i, int i2) {
        int i3 = 0;
        v2i.k(0, i2, bArr.length);
        while (i3 < i2) {
            int i4 = this.b.f;
            k(appendable, bArr, i3, Math.min(i4, i2 - i3));
            i3 += i4;
        }
    }

    @Override
    public final int c(int i) {
        return (int) (((((long) this.b.d) * ((long) i)) + 7) / 8);
    }

    @Override
    public final int d(int i) {
        z5i z5iVar = this.b;
        return z5iVar.e * m6i.b(i, z5iVar.f, RoundingMode.CEILING);
    }

    @Override
    public final d6i e() {
        d6i d6iVarJ = this.d;
        if (d6iVarJ == null) {
            z5i z5iVar = this.b;
            z5i z5iVarC = z5iVar.c();
            d6iVarJ = z5iVarC == z5iVar ? this : j(z5iVarC, this.c);
            this.d = d6iVarJ;
        }
        return d6iVarJ;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c6i) {
            c6i c6iVar = (c6i) obj;
            if (this.b.equals(c6iVar.b) && Objects.equals(this.c, c6iVar.c)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final CharSequence f(CharSequence charSequence) {
        charSequence.getClass();
        if (this.c == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ Objects.hashCode(this.c);
    }

    public d6i j(z5i z5iVar, Character ch) {
        return new c6i(z5iVar, ch);
    }

    public final void k(Appendable appendable, byte[] bArr, int i, int i2) {
        v2i.k(i, i + i2, bArr.length);
        z5i z5iVar = this.b;
        int i3 = z5iVar.f;
        int i4 = 0;
        v2i.e(i2 <= i3);
        long j = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            j = (j | ((long) (bArr[i + i5] & 255))) << 8;
        }
        int i6 = (i2 + 1) * 8;
        int i7 = z5iVar.d;
        while (i4 < i2 * 8) {
            appendable.append(z5iVar.a(z5iVar.c & ((int) (j >>> ((i6 - i7) - i4)))));
            i4 += i7;
        }
        if (this.c != null) {
            while (i4 < i3 * 8) {
                appendable.append('=');
                i4 += i7;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        z5i z5iVar = this.b;
        sb.append(z5iVar);
        if (8 % z5iVar.d != 0) {
            Character ch = this.c;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public c6i(String str, String str2, Character ch) {
        this(new z5i(str, str2.toCharArray()), ch);
    }
}
