package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzse extends zzsh {
    final char[] zza;

    private zzse(zzsd zzsdVar) {
        super(zzsdVar, null);
        this.zza = new char[512];
        zzmt.zze(zzsdVar.zzf.length == 16);
        for (int i10 = 0; i10 < 256; i10++) {
            this.zza[i10] = zzsdVar.zza(i10 >>> 4);
            this.zza[i10 | 256] = zzsdVar.zza(i10 & 15);
        }
    }

    @Override
    final int zza(byte[] bArr, CharSequence charSequence) throws zzsg {
        if (charSequence.length() % 2 == 1) {
            throw new zzsg("Invalid input length " + charSequence.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            bArr[i11] = (byte) ((this.zzb.zzb(charSequence.charAt(i10)) << 4) | this.zzb.zzb(charSequence.charAt(i10 + 1)));
            i10 += 2;
            i11++;
        }
        return i11;
    }

    @Override
    final zzsi zzb(zzsd zzsdVar, Character ch2) {
        return new zzse(zzsdVar);
    }

    @Override
    final void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException {
        zzmt.zzn(0, i11, bArr.length);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = bArr[i12] & 255;
            appendable.append(this.zza[i13]);
            appendable.append(this.zza[i13 | 256]);
        }
    }

    zzse(String str, String str2) {
        this(new zzsd("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
