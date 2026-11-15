package com.google.android.libraries.places.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class zzbqu {
    private static final Logger zza = Logger.getLogger(zzbqu.class.getName());
    private static final byte[] zzb = "-bin".getBytes(zzmb.zza);

    private zzbqu() {
    }

    public static byte[][] zza(zzbcf zzbcfVar) {
        int length;
        int i10;
        byte[][] bArrZzd = zzbar.zzd(zzbcfVar);
        int i11 = 0;
        int i12 = 0;
        while (true) {
            length = bArrZzd.length;
            if (i11 >= length) {
                break;
            }
            byte[] bArr = bArrZzd[i11];
            byte[] bArr2 = bArrZzd[i11 + 1];
            if (zzc(bArr, zzb)) {
                i10 = i12 + 2;
                bArrZzd[i12] = bArr;
                bArrZzd[i12 + 1] = zzbar.zzb.zzk(bArr2, 0, bArr2.length).getBytes(zzmb.zza);
            } else {
                int length2 = bArr2.length;
                int i13 = 0;
                while (true) {
                    if (i13 >= length2) {
                        i10 = i12 + 2;
                        bArrZzd[i12] = bArr;
                        bArrZzd[i12 + 1] = bArr2;
                    } else {
                        byte b10 = bArr2[i13];
                        if (b10 < 32 || b10 > 126) {
                            String str = new String(bArr, zzmb.zza);
                            zza.logp(Level.WARNING, "io.grpc.internal.TransportFrameUtil", "toHttp2Headers", "Metadata key=" + str + ", value=" + Arrays.toString(bArr2) + " contains invalid ASCII characters");
                        } else {
                            i13++;
                        }
                    }
                    i11 += 2;
                }
            }
            i12 = i10;
            i11 += 2;
        }
        return i12 == length ? bArrZzd : (byte[][]) Arrays.copyOfRange(bArrZzd, 0, i12);
    }

    public static byte[][] zzb(byte[][] bArr) {
        int i10 = 0;
        while (i10 < bArr.length) {
            byte[] bArr2 = bArr[i10];
            int i11 = i10 + 1;
            byte[] bArr3 = bArr[i11];
            if (zzc(bArr2, zzb)) {
                for (byte b10 : bArr3) {
                    if (b10 == 44) {
                        ArrayList arrayList = new ArrayList(bArr.length + 10);
                        for (int i12 = 0; i12 < i10; i12++) {
                            arrayList.add(bArr[i12]);
                        }
                        while (i10 < bArr.length) {
                            byte[] bArr4 = bArr[i10];
                            byte[] bArr5 = bArr[i10 + 1];
                            if (zzc(bArr4, zzb)) {
                                int i13 = 0;
                                int i14 = 0;
                                while (true) {
                                    int length = bArr5.length;
                                    if (i13 <= length) {
                                        if (i13 == length || bArr5[i13] == 44) {
                                            byte[] bArrZzl = zzsi.zzj().zzl(new String(bArr5, i14, i13 - i14, zzmb.zza));
                                            arrayList.add(bArr4);
                                            arrayList.add(bArrZzl);
                                            i14 = i13 + 1;
                                        }
                                        i13++;
                                    }
                                }
                            } else {
                                arrayList.add(bArr4);
                                arrayList.add(bArr5);
                            }
                            i10 += 2;
                        }
                        return (byte[][]) arrayList.toArray(new byte[0][]);
                    }
                }
                bArr[i11] = zzsi.zzj().zzl(new String(bArr3, zzmb.zza));
            }
            i10 += 2;
        }
        return bArr;
    }

    private static boolean zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i10 = length; i10 < bArr.length; i10++) {
            if (bArr[i10] != bArr2[i10 - length]) {
                return false;
            }
        }
        return true;
    }
}
