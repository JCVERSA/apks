package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;

@SourceDebugExtension
public final class zzbwb implements Cloneable, ByteChannel, zzbwd, zzbwc {

    @JvmField
    public zzbwn zza;
    private long zzb;

    public final Object clone() {
        zzbwb zzbwbVar = new zzbwb();
        if (this.zzb != 0) {
            zzbwn zzbwnVar = this.zza;
            Intrinsics.e(zzbwnVar);
            zzbwn zzbwnVarZzc = zzbwnVar.zzc();
            zzbwbVar.zza = zzbwnVarZzc;
            zzbwnVarZzc.zzh = zzbwnVarZzc;
            zzbwnVarZzc.zzg = zzbwnVarZzc;
            for (zzbwn zzbwnVar2 = zzbwnVar.zzg; zzbwnVar2 != zzbwnVar; zzbwnVar2 = zzbwnVar2.zzg) {
                zzbwn zzbwnVar3 = zzbwnVarZzc.zzh;
                Intrinsics.e(zzbwnVar3);
                Intrinsics.e(zzbwnVar2);
                zzbwnVar3.zzb(zzbwnVar2.zzc());
            }
            zzbwbVar.zzb = this.zzb;
        }
        return zzbwbVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbwb) {
            long j10 = this.zzb;
            zzbwb zzbwbVar = (zzbwb) obj;
            if (j10 == zzbwbVar.zzb) {
                if (j10 == 0) {
                    return true;
                }
                zzbwn zzbwnVar = this.zza;
                Intrinsics.e(zzbwnVar);
                zzbwn zzbwnVar2 = zzbwbVar.zza;
                Intrinsics.e(zzbwnVar2);
                int i10 = zzbwnVar.zzc;
                int i11 = zzbwnVar2.zzc;
                long j11 = 0;
                while (j11 < this.zzb) {
                    long jMin = Math.min(zzbwnVar.zzd - i10, zzbwnVar2.zzd - i11);
                    long j12 = 0;
                    while (j12 < jMin) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (zzbwnVar.zzb[i10] == zzbwnVar2.zzb[i11]) {
                            j12++;
                            i10 = i12;
                            i11 = i13;
                        }
                    }
                    if (i10 == zzbwnVar.zzd) {
                        zzbwnVar = zzbwnVar.zzg;
                        Intrinsics.e(zzbwnVar);
                        i10 = zzbwnVar.zzc;
                    }
                    if (i11 == zzbwnVar2.zzd) {
                        zzbwnVar2 = zzbwnVar2.zzg;
                        Intrinsics.e(zzbwnVar2);
                        i11 = zzbwnVar2.zzc;
                    }
                    j11 += jMin;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = zzbwnVar.zzd;
            for (int i12 = zzbwnVar.zzc; i12 < i11; i12++) {
                i10 = (i10 * 31) + zzbwnVar.zzb[i12];
            }
            zzbwnVar = zzbwnVar.zzg;
            Intrinsics.e(zzbwnVar);
        } while (zzbwnVar != this.zza);
        return i10;
    }

    @Override
    public final boolean isOpen() {
        return true;
    }

    @Override
    public final int read(ByteBuffer sink) throws IOException {
        Intrinsics.h(sink, "sink");
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), zzbwnVar.zzd - zzbwnVar.zzc);
        sink.put(zzbwnVar.zzb, zzbwnVar.zzc, iMin);
        int i10 = zzbwnVar.zzc + iMin;
        zzbwnVar.zzc = i10;
        this.zzb -= (long) iMin;
        if (i10 == zzbwnVar.zzd) {
            this.zza = zzbwnVar.zza();
            zzbwo.zzb(zzbwnVar);
        }
        return iMin;
    }

    public final String toString() {
        return zzz().toString();
    }

    @Override
    public final int write(ByteBuffer source) throws IOException {
        Intrinsics.h(source, "source");
        int iRemaining = source.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            zzbwn zzbwnVarZzB = zzB(1);
            int iMin = Math.min(i10, 8192 - zzbwnVarZzB.zzd);
            source.get(zzbwnVarZzB.zzb, zzbwnVarZzB.zzd, iMin);
            i10 -= iMin;
            zzbwnVarZzB.zzd += iMin;
        }
        this.zzb += (long) iRemaining;
        return iRemaining;
    }

    public final zzbwf zzA(int i10) {
        if (i10 == 0) {
            return zzbwf.zzb;
        }
        zzbvv.zzb(this.zzb, 0L, i10);
        zzbwn zzbwnVar = this.zza;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            Intrinsics.e(zzbwnVar);
            int i14 = zzbwnVar.zzd;
            int i15 = zzbwnVar.zzc;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            zzbwnVar = zzbwnVar.zzg;
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 + i13];
        zzbwn zzbwnVar2 = this.zza;
        int i16 = 0;
        while (i11 < i10) {
            Intrinsics.e(zzbwnVar2);
            bArr[i16] = zzbwnVar2.zzb;
            i11 += zzbwnVar2.zzd - zzbwnVar2.zzc;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = zzbwnVar2.zzc;
            zzbwnVar2.zze = true;
            i16++;
            zzbwnVar2 = zzbwnVar2.zzg;
        }
        return new zzbwp(bArr, iArr);
    }

    public final zzbwn zzB(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar == null) {
            zzbwn zzbwnVarZza = zzbwo.zza();
            this.zza = zzbwnVarZza;
            zzbwnVarZza.zzh = zzbwnVarZza;
            zzbwnVarZza.zzg = zzbwnVarZza;
            return zzbwnVarZza;
        }
        Intrinsics.e(zzbwnVar);
        zzbwn zzbwnVar2 = zzbwnVar.zzh;
        Intrinsics.e(zzbwnVar2);
        if (zzbwnVar2.zzd + i10 <= 8192 && zzbwnVar2.zzf) {
            return zzbwnVar2;
        }
        zzbwn zzbwnVarZza2 = zzbwo.zza();
        zzbwnVar2.zzb(zzbwnVarZza2);
        return zzbwnVarZza2;
    }

    public final short zzC() throws EOFException {
        int iZzc;
        if (this.zzb < 2) {
            throw new EOFException(null);
        }
        zzbwn zzbwnVar = this.zza;
        Intrinsics.e(zzbwnVar);
        int i10 = zzbwnVar.zzc;
        int i11 = zzbwnVar.zzd;
        if (i11 - i10 < 2) {
            iZzc = ((zzc() & 255) << 8) | (zzc() & 255);
        } else {
            byte[] bArr = zzbwnVar.zzb;
            int i12 = (bArr[i10] & 255) << 8;
            int i13 = bArr[i10 + 1] & 255;
            this.zzb -= 2;
            int i14 = i10 + 2;
            if (i14 == i11) {
                this.zza = zzbwnVar.zza();
                zzbwo.zzb(zzbwnVar);
            } else {
                zzbwnVar.zzc = i14;
            }
            iZzc = i12 | i13;
        }
        return (short) iZzc;
    }

    @Override
    public final void zzD(long j10) throws EOFException {
        throw null;
    }

    public final void zzE(long j10) {
        this.zzb = j10;
    }

    @Override
    public final void zzF(long j10) throws EOFException {
        while (j10 > 0) {
            zzbwn zzbwnVar = this.zza;
            if (zzbwnVar == null) {
                throw new EOFException(null);
            }
            int iMin = (int) Math.min(j10, zzbwnVar.zzd - zzbwnVar.zzc);
            long j11 = iMin;
            this.zzb -= j11;
            j10 -= j11;
            int i10 = zzbwnVar.zzc + iMin;
            zzbwnVar.zzc = i10;
            if (i10 == zzbwnVar.zzd) {
                this.zza = zzbwnVar.zza();
                zzbwo.zzb(zzbwnVar);
            }
        }
    }

    public final boolean zzG() {
        return this.zzb == 0;
    }

    public final byte[] zzH(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount: " + j10);
        }
        if (this.zzb < j10) {
            throw new EOFException(null);
        }
        int i10 = (int) j10;
        byte[] sink = new byte[i10];
        Intrinsics.h(sink, "sink");
        int i11 = 0;
        while (i11 < i10) {
            int iZzd = zzd(sink, i11, i10 - i11);
            if (iZzd == -1) {
                throw new EOFException(null);
            }
            i11 += iZzd;
        }
        return sink;
    }

    @Override
    public final long zza(zzbwb sink, long j10) {
        Intrinsics.h(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        long j11 = this.zzb;
        if (j11 == 0) {
            return -1L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        sink.zzn(this, j10);
        return j10;
    }

    @JvmName
    public final byte zzb(long j10) {
        zzbvv.zzb(this.zzb, j10, 1L);
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar == null) {
            Intrinsics.e(null);
            throw null;
        }
        long j11 = this.zzb;
        if (j11 - j10 < j10) {
            while (j11 > j10) {
                zzbwnVar = zzbwnVar.zzh;
                Intrinsics.e(zzbwnVar);
                j11 -= (long) (zzbwnVar.zzd - zzbwnVar.zzc);
            }
            Intrinsics.e(zzbwnVar);
            return zzbwnVar.zzb[(int) ((((long) zzbwnVar.zzc) + j10) - j11)];
        }
        long j12 = 0;
        while (true) {
            long j13 = ((long) (zzbwnVar.zzd - zzbwnVar.zzc)) + j12;
            if (j13 > j10) {
                Intrinsics.e(zzbwnVar);
                return zzbwnVar.zzb[(int) ((((long) zzbwnVar.zzc) + j10) - j12)];
            }
            zzbwnVar = zzbwnVar.zzg;
            Intrinsics.e(zzbwnVar);
            j12 = j13;
        }
    }

    @Override
    public final byte zzc() throws EOFException {
        if (this.zzb == 0) {
            throw new EOFException(null);
        }
        zzbwn zzbwnVar = this.zza;
        Intrinsics.e(zzbwnVar);
        int i10 = zzbwnVar.zzc;
        int i11 = zzbwnVar.zzd;
        int i12 = i10 + 1;
        byte b10 = zzbwnVar.zzb[i10];
        this.zzb--;
        if (i12 == i11) {
            this.zza = zzbwnVar.zza();
            zzbwo.zzb(zzbwnVar);
        } else {
            zzbwnVar.zzc = i12;
        }
        return b10;
    }

    public final int zzd(byte[] sink, int i10, int i11) {
        Intrinsics.h(sink, "sink");
        zzbvv.zzb(sink.length, i10, i11);
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, zzbwnVar.zzd - zzbwnVar.zzc);
        int i12 = zzbwnVar.zzc;
        ArraysKt.h(zzbwnVar.zzb, sink, i10, i12, i12 + iMin);
        int i13 = zzbwnVar.zzc + iMin;
        zzbwnVar.zzc = i13;
        this.zzb -= (long) iMin;
        if (i13 != zzbwnVar.zzd) {
            return iMin;
        }
        this.zza = zzbwnVar.zza();
        zzbwo.zzb(zzbwnVar);
        return iMin;
    }

    @Override
    public final int zze() throws EOFException {
        if (this.zzb < 4) {
            throw new EOFException(null);
        }
        zzbwn zzbwnVar = this.zza;
        Intrinsics.e(zzbwnVar);
        int i10 = zzbwnVar.zzc;
        int i11 = zzbwnVar.zzd;
        if (i11 - i10 < 4) {
            return ((zzc() & 255) << 24) | ((zzc() & 255) << 16) | ((zzc() & 255) << 8) | (zzc() & 255);
        }
        byte[] bArr = zzbwnVar.zzb;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = (bArr[i10 + 1] & 255) << 16;
        int i14 = (bArr[i10 + 2] & 255) << 8;
        int i15 = bArr[i10 + 3] & 255;
        this.zzb -= 4;
        int i16 = i15 | i13 | i12 | i14;
        int i17 = i10 + 4;
        if (i17 == i11) {
            this.zza = zzbwnVar.zza();
            zzbwo.zzb(zzbwnVar);
        } else {
            zzbwnVar.zzc = i17;
        }
        return i16;
    }

    public final long zzf() {
        long j10 = this.zzb;
        if (j10 == 0) {
            return 0L;
        }
        zzbwn zzbwnVar = this.zza;
        Intrinsics.e(zzbwnVar);
        zzbwn zzbwnVar2 = zzbwnVar.zzh;
        Intrinsics.e(zzbwnVar2);
        int i10 = zzbwnVar2.zzd;
        if (i10 < 8192 && zzbwnVar2.zzf) {
            j10 -= (long) (i10 - zzbwnVar2.zzc);
        }
        return j10;
    }

    @JvmName
    public final long zzg() {
        return this.zzb;
    }

    public final String zzh(long j10, Charset charset) throws EOFException {
        Intrinsics.h(charset, "charset");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount: " + j10);
        }
        if (this.zzb < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        zzbwn zzbwnVar = this.zza;
        Intrinsics.e(zzbwnVar);
        int i10 = zzbwnVar.zzc;
        int i11 = zzbwnVar.zzd;
        if (((long) i10) + j10 > i11) {
            return new String(zzH(j10), charset);
        }
        int i12 = (int) j10;
        String str = new String(zzbwnVar.zzb, i10, i12, charset);
        int i13 = i10 + i12;
        zzbwnVar.zzc = i13;
        this.zzb -= j10;
        if (i13 == i11) {
            this.zza = zzbwnVar.zza();
            zzbwo.zzb(zzbwnVar);
        }
        return str;
    }

    public final String zzi() {
        return zzh(this.zzb, Charsets.UTF_8);
    }

    public final String zzj(long j10) throws EOFException {
        zzbwn zzbwnVar;
        long j11;
        long j12;
        long j13;
        long j14 = this.zzb;
        long j15 = j14 < Long.MAX_VALUE ? j14 : Long.MAX_VALUE;
        if (j15 == 0 || (zzbwnVar = this.zza) == null) {
            j13 = -1;
            j12 = -1;
        } else if (j14 < 0) {
            while (j14 > 0) {
                zzbwnVar = zzbwnVar.zzh;
                Intrinsics.e(zzbwnVar);
                j14 -= (long) (zzbwnVar.zzd - zzbwnVar.zzc);
            }
            long j16 = 0;
            while (true) {
                if (j14 < j15) {
                    byte[] bArr = zzbwnVar.zzb;
                    int iMin = (int) Math.min(zzbwnVar.zzd, (((long) zzbwnVar.zzc) + j15) - j14);
                    int i10 = (int) ((((long) zzbwnVar.zzc) + j16) - j14);
                    while (true) {
                        if (i10 >= iMin) {
                            j16 = j14 + ((long) (zzbwnVar.zzd - zzbwnVar.zzc));
                            zzbwnVar = zzbwnVar.zzg;
                            Intrinsics.e(zzbwnVar);
                            j14 = j16;
                        } else if (bArr[i10] == 10) {
                            j11 = i10 - zzbwnVar.zzc;
                            j12 = j11 + j14;
                            j13 = -1;
                        } else {
                            i10++;
                        }
                    }
                } else {
                    j13 = -1;
                    j12 = -1;
                }
            }
        } else {
            j14 = 0;
            while (true) {
                long j17 = ((long) (zzbwnVar.zzd - zzbwnVar.zzc)) + j14;
                if (j17 > 0) {
                    break;
                }
                zzbwnVar = zzbwnVar.zzg;
                Intrinsics.e(zzbwnVar);
                j14 = j17;
            }
            long j18 = 0;
            while (true) {
                if (j14 < j15) {
                    byte[] bArr2 = zzbwnVar.zzb;
                    int iMin2 = (int) Math.min(zzbwnVar.zzd, (((long) zzbwnVar.zzc) + j15) - j14);
                    int i11 = (int) ((((long) zzbwnVar.zzc) + j18) - j14);
                    while (true) {
                        if (i11 >= iMin2) {
                            j18 = ((long) (zzbwnVar.zzd - zzbwnVar.zzc)) + j14;
                            zzbwnVar = zzbwnVar.zzg;
                            Intrinsics.e(zzbwnVar);
                            j14 = j18;
                        } else if (bArr2[i11] == 10) {
                            j11 = i11 - zzbwnVar.zzc;
                            j12 = j11 + j14;
                            j13 = -1;
                        } else {
                            i11++;
                        }
                    }
                } else {
                    j13 = -1;
                    j12 = -1;
                }
            }
        }
        if (j12 != j13) {
            int i12 = zzbwx.zza;
            Intrinsics.h(this, "<this>");
            if (j12 > 0) {
                long j19 = j12 + j13;
                if (zzb(j19) == 13) {
                    String strZzh = zzh(j19, Charsets.UTF_8);
                    zzF(2L);
                    return strZzh;
                }
            }
            String strZzh2 = zzh(j12, Charsets.UTF_8);
            zzF(1L);
            return strZzh2;
        }
        zzbwb out = new zzbwb();
        long jMin = Math.min(32L, this.zzb);
        Intrinsics.h(out, "out");
        zzbvv.zzb(this.zzb, 0L, jMin);
        if (jMin != 0) {
            out.zzb += jMin;
            zzbwn zzbwnVar2 = this.zza;
            long j20 = 0;
            while (true) {
                Intrinsics.e(zzbwnVar2);
                long j21 = zzbwnVar2.zzd - zzbwnVar2.zzc;
                if (j20 < j21) {
                    break;
                }
                zzbwnVar2 = zzbwnVar2.zzg;
                j20 -= j21;
            }
            while (jMin > 0) {
                Intrinsics.e(zzbwnVar2);
                zzbwn zzbwnVarZzc = zzbwnVar2.zzc();
                int i13 = zzbwnVarZzc.zzc + ((int) j20);
                zzbwnVarZzc.zzc = i13;
                zzbwnVarZzc.zzd = Math.min(i13 + ((int) jMin), zzbwnVarZzc.zzd);
                zzbwn zzbwnVar3 = out.zza;
                if (zzbwnVar3 == null) {
                    zzbwnVarZzc.zzh = zzbwnVarZzc;
                    zzbwnVarZzc.zzg = zzbwnVarZzc;
                    out.zza = zzbwnVarZzc;
                } else {
                    Intrinsics.e(zzbwnVar3);
                    zzbwn zzbwnVar4 = zzbwnVar3.zzh;
                    Intrinsics.e(zzbwnVar4);
                    zzbwnVar4.zzb(zzbwnVarZzc);
                }
                jMin -= (long) (zzbwnVarZzc.zzd - zzbwnVarZzc.zzc);
                zzbwnVar2 = zzbwnVar2.zzg;
                j20 = 0;
            }
        }
        throw new EOFException("\\n not found: limit=" + Math.min(this.zzb, Long.MAX_VALUE) + " content=" + out.zzy(out.zzb).zze() + "…");
    }

    public final zzbwb zzk(zzbwf byteString) {
        Intrinsics.h(byteString, "byteString");
        byteString.zzj(this, 0, byteString.zzc());
        return this;
    }

    public final zzbwb zzl(byte[] source, int i10, int i11) {
        Intrinsics.h(source, "source");
        long j10 = i11;
        zzbvv.zzb(source.length, i10, j10);
        int i12 = i10;
        while (true) {
            int i13 = i10 + i11;
            if (i12 >= i13) {
                this.zzb += j10;
                return this;
            }
            zzbwn zzbwnVarZzB = zzB(1);
            int iMin = Math.min(i13 - i12, 8192 - zzbwnVarZzB.zzd);
            int i14 = i12 + iMin;
            ArraysKt.h(source, zzbwnVarZzB.zzb, zzbwnVarZzB.zzd, i12, i14);
            zzbwnVarZzB.zzd += iMin;
            i12 = i14;
        }
    }

    public final zzbwb zzm(int i10) {
        zzbwn zzbwnVarZzB = zzB(1);
        byte[] bArr = zzbwnVarZzB.zzb;
        int i11 = zzbwnVarZzB.zzd;
        zzbwnVarZzB.zzd = i11 + 1;
        bArr[i11] = (byte) i10;
        this.zzb++;
        return this;
    }

    @Override
    public final void zzn(zzbwb source, long j10) {
        zzbwn zzbwnVar;
        Intrinsics.h(source, "source");
        if (source == this) {
            throw new IllegalArgumentException("source == this");
        }
        zzbvv.zzb(source.zzb, 0L, j10);
        while (j10 > 0) {
            zzbwn zzbwnVar2 = source.zza;
            Intrinsics.e(zzbwnVar2);
            int i10 = zzbwnVar2.zzd;
            zzbwn zzbwnVar3 = source.zza;
            Intrinsics.e(zzbwnVar3);
            long j11 = i10 - zzbwnVar3.zzc;
            int i11 = 0;
            if (j10 < j11) {
                zzbwn zzbwnVar4 = this.zza;
                if (zzbwnVar4 != null) {
                    Intrinsics.e(zzbwnVar4);
                    zzbwnVar = zzbwnVar4.zzh;
                } else {
                    zzbwnVar = null;
                }
                int i12 = (int) j10;
                if (zzbwnVar != null && zzbwnVar.zzf) {
                    if ((((long) zzbwnVar.zzd) + j10) - ((long) (zzbwnVar.zze ? 0 : zzbwnVar.zzc)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        zzbwn zzbwnVar5 = source.zza;
                        Intrinsics.e(zzbwnVar5);
                        zzbwnVar5.zze(zzbwnVar, i12);
                        source.zzb -= j10;
                        this.zzb += j10;
                        return;
                    }
                }
                zzbwn zzbwnVar6 = source.zza;
                Intrinsics.e(zzbwnVar6);
                source.zza = zzbwnVar6.zzd(i12);
            }
            zzbwn zzbwnVar7 = source.zza;
            Intrinsics.e(zzbwnVar7);
            int i13 = zzbwnVar7.zzd - zzbwnVar7.zzc;
            source.zza = zzbwnVar7.zza();
            zzbwn zzbwnVar8 = this.zza;
            if (zzbwnVar8 == null) {
                this.zza = zzbwnVar7;
                zzbwnVar7.zzh = zzbwnVar7;
                zzbwnVar7.zzg = zzbwnVar7;
            } else {
                Intrinsics.e(zzbwnVar8);
                zzbwn zzbwnVar9 = zzbwnVar8.zzh;
                Intrinsics.e(zzbwnVar9);
                zzbwnVar9.zzb(zzbwnVar7);
                zzbwn zzbwnVar10 = zzbwnVar7.zzh;
                if (zzbwnVar10 == zzbwnVar7) {
                    throw new IllegalStateException("cannot compact");
                }
                Intrinsics.e(zzbwnVar10);
                if (zzbwnVar10.zzf) {
                    int i14 = zzbwnVar7.zzd - zzbwnVar7.zzc;
                    zzbwn zzbwnVar11 = zzbwnVar7.zzh;
                    Intrinsics.e(zzbwnVar11);
                    int i15 = 8192 - zzbwnVar11.zzd;
                    zzbwn zzbwnVar12 = zzbwnVar7.zzh;
                    Intrinsics.e(zzbwnVar12);
                    if (!zzbwnVar12.zze) {
                        zzbwn zzbwnVar13 = zzbwnVar7.zzh;
                        Intrinsics.e(zzbwnVar13);
                        i11 = zzbwnVar13.zzc;
                    }
                    if (i14 <= i15 + i11) {
                        zzbwn zzbwnVar14 = zzbwnVar7.zzh;
                        Intrinsics.e(zzbwnVar14);
                        zzbwnVar7.zze(zzbwnVar14, i14);
                        zzbwnVar7.zza();
                        zzbwo.zzb(zzbwnVar7);
                    }
                }
            }
            long j12 = i13;
            source.zzb -= j12;
            this.zzb += j12;
            j10 -= j12;
        }
    }

    public final zzbwb zzo(long j10) {
        if (j10 == 0) {
            zzm(48);
        } else {
            long j11 = (j10 >>> 1) | j10;
            long j12 = j11 | (j11 >>> 2);
            long j13 = j12 | (j12 >>> 4);
            long j14 = j13 | (j13 >>> 8);
            long j15 = j14 - ((j14 >>> 1) & 6148914691236517205L);
            long j16 = ((j15 >>> 2) & 3689348814741910323L) + (j15 & 3689348814741910323L);
            long j17 = ((j16 >>> 4) + j16) & 1085102592571150095L;
            long j18 = j17 + (j17 >>> 8);
            long j19 = j18 + (j18 >>> 16);
            int i10 = (int) ((((j19 & 63) + ((j19 >>> 32) & 63)) + 3) >> 2);
            zzbwn zzbwnVarZzB = zzB(i10);
            byte[] bArr = zzbwnVarZzB.zzb;
            int i11 = zzbwnVarZzB.zzd;
            int i12 = i11 + i10;
            while (true) {
                i12--;
                if (i12 < i11) {
                    break;
                }
                bArr[i12] = zzbwx.zza()[(int) (15 & j10)];
                j10 >>>= 4;
            }
            zzbwnVarZzB.zzd += i10;
            this.zzb += (long) i10;
        }
        return this;
    }

    public final zzbwb zzp(int i10) {
        zzbwn zzbwnVarZzB = zzB(4);
        byte[] bArr = zzbwnVarZzB.zzb;
        int i11 = zzbwnVarZzB.zzd;
        bArr[i11] = (byte) (i10 >> 24);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        zzbwnVarZzB.zzd = i11 + 4;
        this.zzb += 4;
        return this;
    }

    public final zzbwb zzq(int i10) {
        zzbwn zzbwnVarZzB = zzB(2);
        byte[] bArr = zzbwnVarZzB.zzb;
        int i11 = zzbwnVarZzB.zzd;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        zzbwnVarZzB.zzd = i11 + 2;
        this.zzb += 2;
        return this;
    }

    @JvmOverloads
    public final zzbwb zzr(OutputStream out, long j10) throws IOException {
        Intrinsics.h(out, "out");
        zzbvv.zzb(this.zzb, 0L, j10);
        zzbwn zzbwnVar = this.zza;
        while (j10 > 0) {
            Intrinsics.e(zzbwnVar);
            int iMin = (int) Math.min(j10, zzbwnVar.zzd - zzbwnVar.zzc);
            out.write(zzbwnVar.zzb, zzbwnVar.zzc, iMin);
            int i10 = zzbwnVar.zzc + iMin;
            zzbwnVar.zzc = i10;
            long j11 = iMin;
            this.zzb -= j11;
            j10 -= j11;
            if (i10 == zzbwnVar.zzd) {
                zzbwn zzbwnVarZza = zzbwnVar.zza();
                this.zza = zzbwnVarZza;
                zzbwo.zzb(zzbwnVar);
                zzbwnVar = zzbwnVarZza;
            }
        }
        return this;
    }

    public final zzbwb zzs(String string) {
        Intrinsics.h(string, "string");
        zzt(string, 0, string.length());
        return this;
    }

    public final zzbwb zzt(String string, int i10, int i11) {
        Intrinsics.h(string, "string");
        if (i11 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < 0");
        }
        if (i11 > string.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + string.length());
        }
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i12 + 1;
            char cCharAt = string.charAt(i12);
            if (cCharAt < 128) {
                zzbwn zzbwnVarZzB = zzB(1);
                byte[] bArr = zzbwnVarZzB.zzb;
                int i14 = zzbwnVarZzB.zzd - i12;
                int iMin = Math.min(i11, 8192 - i14);
                bArr[i12 + i14] = (byte) cCharAt;
                i12 = i13;
                while (i12 < iMin) {
                    char cCharAt2 = string.charAt(i12);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i12 + i14] = (byte) cCharAt2;
                    i12++;
                }
                int i15 = zzbwnVarZzB.zzd;
                int i16 = (i14 + i12) - i15;
                zzbwnVarZzB.zzd = i15 + i16;
                this.zzb += (long) i16;
            } else {
                if (cCharAt < 2048) {
                    zzbwn zzbwnVarZzB2 = zzB(2);
                    byte[] bArr2 = zzbwnVarZzB2.zzb;
                    int i17 = zzbwnVarZzB2.zzd;
                    bArr2[i17] = (byte) ((cCharAt >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i17 + 1] = (byte) ((cCharAt & '?') | 128);
                    zzbwnVarZzB2.zzd = i17 + 2;
                    this.zzb += 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    zzbwn zzbwnVarZzB3 = zzB(3);
                    byte[] bArr3 = zzbwnVarZzB3.zzb;
                    int i18 = zzbwnVarZzB3.zzd;
                    bArr3[i18] = (byte) ((cCharAt >> '\f') | 224);
                    bArr3[i18 + 1] = (byte) ((63 & (cCharAt >> 6)) | 128);
                    bArr3[i18 + 2] = (byte) ((cCharAt & '?') | 128);
                    zzbwnVarZzB3.zzd = i18 + 3;
                    this.zzb += 3;
                } else {
                    char cCharAt3 = i13 < i11 ? string.charAt(i13) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 >= 57344) {
                        zzm(63);
                    } else {
                        zzbwn zzbwnVarZzB4 = zzB(4);
                        byte[] bArr4 = zzbwnVarZzB4.zzb;
                        int i19 = zzbwnVarZzB4.zzd;
                        int i20 = (((cCharAt & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        bArr4[i19] = (byte) ((i20 >> 18) | 240);
                        bArr4[i19 + 1] = (byte) (((i20 >> 12) & 63) | 128);
                        bArr4[i19 + 2] = (byte) (((i20 >> 6) & 63) | 128);
                        bArr4[i19 + 3] = (byte) ((i20 & 63) | 128);
                        zzbwnVarZzB4.zzd = i19 + 4;
                        this.zzb += 4;
                        i12 += 2;
                    }
                }
                i12 = i13;
            }
        }
        return this;
    }

    public final zzbwb zzu(int i10) {
        if (i10 < 128) {
            zzm(i10);
        } else if (i10 < 2048) {
            zzbwn zzbwnVarZzB = zzB(2);
            byte[] bArr = zzbwnVarZzB.zzb;
            int i11 = zzbwnVarZzB.zzd;
            bArr[i11] = (byte) ((i10 >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            zzbwnVarZzB.zzd = i11 + 2;
            this.zzb += 2;
        } else if (i10 >= 55296 && i10 < 57344) {
            zzm(63);
        } else if (i10 < 65536) {
            zzbwn zzbwnVarZzB2 = zzB(3);
            byte[] bArr2 = zzbwnVarZzB2.zzb;
            int i12 = zzbwnVarZzB2.zzd;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            zzbwnVarZzB2.zzd = i12 + 3;
            this.zzb += 3;
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x".concat(String.valueOf(zzbvv.zza(i10))));
            }
            zzbwn zzbwnVarZzB3 = zzB(4);
            byte[] bArr3 = zzbwnVarZzB3.zzb;
            int i13 = zzbwnVarZzB3.zzd;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            zzbwnVarZzB3.zzd = i13 + 4;
            this.zzb += 4;
        }
        return this;
    }

    @Override
    public final zzbwc zzv(int i10) {
        throw null;
    }

    @Override
    public final zzbwc zzw(int i10) {
        throw null;
    }

    @Override
    public final zzbwc zzx(String str) {
        throw null;
    }

    @Override
    public final zzbwf zzy(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount: " + j10);
        }
        if (this.zzb < j10) {
            throw new EOFException(null);
        }
        if (j10 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new zzbwf(zzH(j10));
        }
        zzbwf zzbwfVarZzA = zzA((int) j10);
        zzF(j10);
        return zzbwfVarZzA;
    }

    public final zzbwf zzz() {
        long j10 = this.zzb;
        if (j10 <= 2147483647L) {
            return zzA((int) j10);
        }
        throw new IllegalStateException("size > Int.MAX_VALUE: " + j10);
    }

    @Override
    public final void close() {
    }

    @Override
    public final void flush() {
    }
}
