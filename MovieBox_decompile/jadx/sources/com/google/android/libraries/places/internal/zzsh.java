package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;

class zzsh extends zzsi {
    final zzsd zzb;
    final Character zzc;

    zzsh(zzsd zzsdVar, Character ch2) {
        this.zzb = zzsdVar;
        boolean z10 = true;
        if (ch2 != null && zzsdVar.zzd('=')) {
            z10 = false;
        }
        zzmt.zzj(z10, "Padding character %s was already in alphabet", ch2);
        this.zzc = ch2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzsh) {
            zzsh zzshVar = (zzsh) obj;
            if (this.zzb.equals(zzshVar.zzb) && Objects.equals(this.zzc, zzshVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch2 = this.zzc;
        return Objects.hashCode(ch2) ^ this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        sb2.append(this.zzb);
        if (8 % this.zzb.zzb != 0) {
            if (this.zzc == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append(this.zzc);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    @Override
    int zza(byte[] bArr, CharSequence charSequence) throws zzsg {
        zzsd zzsdVar;
        CharSequence charSequenceZzg = zzg(charSequence);
        if (!this.zzb.zzc(charSequenceZzg.length())) {
            throw new zzsg("Invalid input length " + charSequenceZzg.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequenceZzg.length()) {
            long jZzb = 0;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                zzsdVar = this.zzb;
                if (i12 >= zzsdVar.zzc) {
                    break;
                }
                jZzb <<= zzsdVar.zzb;
                if (i10 + i12 < charSequenceZzg.length()) {
                    jZzb |= (long) this.zzb.zzb(charSequenceZzg.charAt(i13 + i10));
                    i13++;
                }
                i12++;
            }
            int i14 = zzsdVar.zzd;
            int i15 = i13 * zzsdVar.zzb;
            int i16 = (i14 - 1) * 8;
            while (i16 >= (i14 * 8) - i15) {
                bArr[i11] = (byte) ((jZzb >>> i16) & 255);
                i16 -= 8;
                i11++;
            }
            i10 += this.zzb.zzc;
        }
        return i11;
    }

    zzsi zzb(zzsd zzsdVar, Character ch2) {
        return new zzsh(zzsdVar, null);
    }

    @Override
    void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        zzmt.zzn(0, i11, bArr.length);
        while (i12 < i11) {
            zzh(appendable, bArr, i12, Math.min(this.zzb.zzd, i11 - i12));
            i12 += this.zzb.zzd;
        }
    }

    @Override
    final int zzd(int i10) {
        return (int) (((((long) this.zzb.zzb) * ((long) i10)) + 7) / 8);
    }

    @Override
    final int zze(int i10) {
        zzsd zzsdVar = this.zzb;
        return zzsdVar.zzc * zzajl.zza(i10, zzsdVar.zzd, RoundingMode.CEILING);
    }

    @Override
    public final zzsi zzf() {
        return this.zzc == null ? this : zzb(this.zzb, null);
    }

    @Override
    final CharSequence zzg(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzc == null) {
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

    final void zzh(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        zzmt.zzn(i10, i10 + i11, bArr.length);
        int i12 = 0;
        zzmt.zze(i11 <= this.zzb.zzd);
        long j10 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            j10 = (j10 | ((long) (bArr[i10 + i13] & 255))) << 8;
        }
        int i14 = (i11 + 1) * 8;
        zzsd zzsdVar = this.zzb;
        while (i12 < i11 * 8) {
            long j11 = j10 >>> ((i14 - zzsdVar.zzb) - i12);
            zzsd zzsdVar2 = this.zzb;
            appendable.append(zzsdVar2.zza(((int) j11) & zzsdVar2.zza));
            i12 += this.zzb.zzb;
        }
        if (this.zzc != null) {
            while (i12 < this.zzb.zzd * 8) {
                this.zzc.charValue();
                appendable.append('=');
                i12 += this.zzb.zzb;
            }
        }
    }

    zzsh(String str, String str2, Character ch2) {
        this(new zzsd(str, str2.toCharArray()), ch2);
    }
}
