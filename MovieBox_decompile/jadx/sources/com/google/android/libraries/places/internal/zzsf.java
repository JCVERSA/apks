package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzsf extends zzsh {
    private zzsf(zzsd zzsdVar, Character ch2) {
        super(zzsdVar, ch2);
        zzmt.zze(zzsdVar.zzf.length == 64);
    }

    @Override
    final int zza(byte[] bArr, CharSequence charSequence) throws zzsg {
        CharSequence charSequenceZzg = zzg(charSequence);
        if (!this.zzb.zzc(charSequenceZzg.length())) {
            throw new zzsg("Invalid input length " + charSequenceZzg.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequenceZzg.length()) {
            int i12 = i11 + 1;
            int iZzb = (this.zzb.zzb(charSequenceZzg.charAt(i10)) << 18) | (this.zzb.zzb(charSequenceZzg.charAt(i10 + 1)) << 12);
            bArr[i11] = (byte) (iZzb >>> 16);
            int i13 = i10 + 2;
            if (i13 < charSequenceZzg.length()) {
                int i14 = i10 + 3;
                int iZzb2 = iZzb | (this.zzb.zzb(charSequenceZzg.charAt(i13)) << 6);
                int i15 = i11 + 2;
                bArr[i12] = (byte) ((iZzb2 >>> 8) & 255);
                if (i14 < charSequenceZzg.length()) {
                    i10 += 4;
                    i11 += 3;
                    bArr[i15] = (byte) ((iZzb2 | this.zzb.zzb(charSequenceZzg.charAt(i14))) & 255);
                } else {
                    i11 = i15;
                    i10 = i14;
                }
            } else {
                i10 = i13;
                i11 = i12;
            }
        }
        return i11;
    }

    @Override
    final zzsi zzb(zzsd zzsdVar, Character ch2) {
        return new zzsf(zzsdVar, null);
    }

    @Override
    final void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        zzmt.zzn(0, i11, bArr.length);
        for (int i13 = i11; i13 >= 3; i13 -= 3) {
            int i14 = bArr[i12] & 255;
            int i15 = ((bArr[i12 + 1] & 255) << 8) | (i14 << 16) | (bArr[i12 + 2] & 255);
            appendable.append(this.zzb.zza(i15 >>> 18));
            appendable.append(this.zzb.zza((i15 >>> 12) & 63));
            appendable.append(this.zzb.zza((i15 >>> 6) & 63));
            appendable.append(this.zzb.zza(i15 & 63));
            i12 += 3;
        }
        if (i12 < i11) {
            zzh(appendable, bArr, i12, i11 - i12);
        }
    }

    zzsf(String str, String str2, Character ch2) {
        this(new zzsd(str, str2.toCharArray()), ch2);
    }
}
