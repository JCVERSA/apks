package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

final class a {

    private InputStream f68454d;

    private boolean f68455e;

    long f68456f;

    int f68457g;

    private int f68458h;

    private final byte[] f68451a = new byte[4160];

    private final int[] f68452b = new int[1040];

    private final h f68453c = new h();

    private int f68459i = 0;

    a() {
    }

    static void a(a aVar, boolean z10) {
        if (aVar.f68455e) {
            int i10 = ((aVar.f68458h << 2) + ((aVar.f68457g + 7) >> 3)) - 8;
            int i11 = aVar.f68459i;
            if (i10 > i11) {
                throw new BrotliRuntimeException("Read after end");
            }
            if (z10 && i10 != i11) {
                throw new BrotliRuntimeException("Unused bytes after end");
            }
        }
    }

    static void b(a aVar) throws IOException {
        InputStream inputStream = aVar.f68454d;
        aVar.f68454d = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    static void c(a aVar, byte[] bArr, int i10, int i11) {
        if ((aVar.f68457g & 7) != 0) {
            throw new BrotliRuntimeException("Unaligned copyBytes");
        }
        while (true) {
            int i12 = aVar.f68457g;
            if (i12 == 64 || i11 == 0) {
                break;
            }
            bArr[i10] = (byte) (aVar.f68456f >>> i12);
            aVar.f68457g = i12 + 8;
            i11--;
            i10++;
        }
        if (i11 == 0) {
            return;
        }
        int iMin = Math.min(f(aVar), i11 >> 2);
        if (iMin > 0) {
            int i13 = iMin << 2;
            System.arraycopy(aVar.f68451a, aVar.f68458h << 2, bArr, i10, i13);
            i10 += i13;
            i11 -= i13;
            aVar.f68458h += iMin;
        }
        if (i11 == 0) {
            return;
        }
        if (f(aVar) <= 0) {
            while (i11 > 0) {
                try {
                    int i14 = aVar.f68454d.read(bArr, i10, i11);
                    if (i14 == -1) {
                        throw new BrotliRuntimeException("Unexpected end of input");
                    }
                    i10 += i14;
                    i11 -= i14;
                } catch (IOException e10) {
                    throw new BrotliRuntimeException("Failed to read input", e10);
                }
            }
            return;
        }
        d(aVar);
        while (i11 != 0) {
            long j10 = aVar.f68456f;
            int i15 = aVar.f68457g;
            bArr[i10] = (byte) (j10 >>> i15);
            aVar.f68457g = i15 + 8;
            i11--;
            i10++;
        }
        a(aVar, false);
    }

    static void d(a aVar) {
        int i10 = aVar.f68457g;
        if (i10 >= 32) {
            int[] iArr = aVar.f68452b;
            int i11 = aVar.f68458h;
            aVar.f68458h = i11 + 1;
            aVar.f68456f = (((long) iArr[i11]) << 32) | (aVar.f68456f >>> 32);
            aVar.f68457g = i10 - 32;
        }
    }

    static void e(a aVar, InputStream inputStream) {
        if (aVar.f68454d != null) {
            throw new IllegalStateException("Bit reader already has associated input stream");
        }
        h.b(aVar.f68453c, aVar.f68451a, aVar.f68452b);
        aVar.f68454d = inputStream;
        aVar.f68456f = 0L;
        aVar.f68457g = 64;
        aVar.f68458h = 1024;
        aVar.f68455e = false;
        h(aVar);
    }

    static int f(a aVar) {
        return (aVar.f68455e ? (aVar.f68459i + 3) >> 2 : 1024) - aVar.f68458h;
    }

    static void g(a aVar) {
        int i10 = (64 - aVar.f68457g) & 7;
        if (i10 != 0 && i(aVar, i10) != 0) {
            throw new BrotliRuntimeException("Corrupted padding bits");
        }
    }

    private static void h(a aVar) {
        j(aVar);
        a(aVar, false);
        d(aVar);
        d(aVar);
    }

    static int i(a aVar, int i10) {
        d(aVar);
        long j10 = aVar.f68456f;
        int i11 = aVar.f68457g;
        int i12 = ((int) (j10 >>> i11)) & ((1 << i10) - 1);
        aVar.f68457g = i11 + i10;
        return i12;
    }

    static void j(a aVar) {
        int i10 = aVar.f68458h;
        if (i10 <= 1015) {
            return;
        }
        if (aVar.f68455e) {
            if (f(aVar) < -2) {
                throw new BrotliRuntimeException("No more input");
            }
            return;
        }
        int i11 = i10 << 2;
        int i12 = 4096 - i11;
        byte[] bArr = aVar.f68451a;
        System.arraycopy(bArr, i11, bArr, 0, i12);
        aVar.f68458h = 0;
        while (i12 < 4096) {
            try {
                int i13 = aVar.f68454d.read(aVar.f68451a, i12, 4096 - i12);
                if (i13 <= 0) {
                    aVar.f68455e = true;
                    aVar.f68459i = i12;
                    i12 += 3;
                    break;
                }
                i12 += i13;
            } catch (IOException e10) {
                throw new BrotliRuntimeException("Failed to read input", e10);
            }
        }
        h.a(aVar.f68453c, i12 >> 2);
    }

    static void k(a aVar) {
        if (aVar.f68457g == 64) {
            h(aVar);
        }
    }
}
