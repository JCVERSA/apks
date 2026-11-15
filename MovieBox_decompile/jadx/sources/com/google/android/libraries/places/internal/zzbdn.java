package com.google.android.libraries.places.internal;

import java.nio.ByteBuffer;
import java.util.Arrays;

final class zzbdn implements zzbce {
    private static final byte[] zza = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

    private zzbdn() {
        throw null;
    }

    private static boolean zzc(byte b10) {
        return b10 < 32 || b10 >= 126 || b10 == 37;
    }

    @Override
    public final Object zza(byte[] bArr) {
        int i10 = 0;
        while (true) {
            int length = bArr.length;
            if (i10 >= length) {
                return new String(bArr, 0);
            }
            byte b10 = bArr[i10];
            if (b10 < 32 || b10 >= 126 || (b10 == 37 && i10 + 2 < length)) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
                int i11 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i11 >= length2) {
                        return new String(byteBufferAllocate.array(), 0, byteBufferAllocate.position(), zzmb.zzc);
                    }
                    int i12 = i11 + 1;
                    if (bArr[i11] == 37 && i11 + 2 < length2) {
                        try {
                            byteBufferAllocate.put((byte) Integer.parseInt(new String(bArr, i12, 2, zzmb.zza), 16));
                            i11 += 3;
                        } catch (NumberFormatException unused) {
                            byteBufferAllocate.put(bArr[i11]);
                            i11 = i12;
                        }
                    }
                    byteBufferAllocate.put(bArr[i11]);
                    i11 = i12;
                }
            } else {
                i10++;
            }
        }
    }

    @Override
    public final byte[] zzb(Object obj) {
        byte[] bytes = ((String) obj).getBytes(zzmb.zzc);
        int i10 = 0;
        while (true) {
            int length = bytes.length;
            if (i10 >= length) {
                return bytes;
            }
            if (zzc(bytes[i10])) {
                byte[] bArr = new byte[((length - i10) * 3) + i10];
                if (i10 != 0) {
                    System.arraycopy(bytes, 0, bArr, 0, i10);
                }
                int i11 = i10;
                while (i10 < bytes.length) {
                    int i12 = i11 + 1;
                    byte b10 = bytes[i10];
                    if (zzc(b10)) {
                        bArr[i11] = 37;
                        byte[] bArr2 = zza;
                        bArr[i12] = bArr2[(b10 >> 4) & 15];
                        bArr[i11 + 2] = bArr2[b10 & 15];
                        i11 += 3;
                    } else {
                        bArr[i11] = b10;
                        i11 = i12;
                    }
                    i10++;
                }
                return Arrays.copyOf(bArr, i11);
            }
            i10++;
        }
    }

    zzbdn(zzbdm zzbdmVar) {
    }
}
