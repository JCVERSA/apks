package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.util.zip.Checksum;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class eq3 implements Checksum {
    public static final a b = new a(null);
    public static final long[] c = new long[256];
    public long a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        for (int i = 0; i < 256; i++) {
            long j = i;
            for (int i2 = 0; i2 < 8; i2++) {
                j = (j & 1) == 1 ? (j >>> 1) ^ (-3932672073523589310L) : j >>> 1;
            }
            c[i] = j;
        }
    }

    public eq3(File file) throws Throwable {
        FileInputStream fileInputStream;
        y45.j(file, "f");
        zfb zfbVar = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        byte[] bArr = new byte[10240];
                        while (true) {
                            int i = fileInputStream.read(bArr);
                            if (i == -1) {
                                Result.Companion companion = Result.INSTANCE;
                                fileInputStream.close();
                                Result.m279constructorimpl(zfb.a);
                                return;
                            }
                            c(bArr, i);
                            th = th;
                            try {
                                Result.Companion companion2 = Result.INSTANCE;
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                    zfbVar = zfb.a;
                                }
                                Result.m279constructorimpl(zfbVar);
                            } catch (Throwable th) {
                                Result.Companion companion3 = Result.INSTANCE;
                                Result.m279constructorimpl(c.a(th));
                            }
                            throw th;
                        }
                    } catch (Exception e) {
                        e = e;
                        oq5.a.b("FileCRC64CheckSum", "check file crc64 error:", e);
                        Result.Companion companion4 = Result.INSTANCE;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                            zfbVar = zfb.a;
                        }
                        Result.m279constructorimpl(zfbVar);
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                Result.Companion companion5 = Result.INSTANCE;
                Result.m279constructorimpl(c.a(th3));
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }

    public final String a() {
        long j = this.a;
        if (j > 0) {
            return String.valueOf(j);
        }
        String string = new BigInteger(String.valueOf(this.a)).add(BigInteger.ONE.shiftLeft(64)).toString();
        y45.g(string);
        return string;
    }

    public final void b(byte b2) {
        long j = ~this.a;
        this.a = j;
        this.a = ~((j >>> 8) ^ c[((int) (((long) b2) ^ j)) & 255]);
    }

    public final void c(byte[] bArr, int i) {
        this.a = ~this.a;
        int i2 = 0;
        while (i > 0) {
            long[] jArr = c;
            long j = this.a;
            this.a = (j >>> 8) ^ jArr[((int) (((long) bArr[i2]) ^ j)) & 255];
            i2++;
            i--;
        }
        this.a = ~this.a;
    }

    @Override
    public long getValue() {
        return this.a;
    }

    @Override
    public void reset() {
        this.a = 0L;
    }

    @Override
    public void update(int i) {
        b((byte) (i & 255));
    }

    @Override
    public void update(byte[] bArr, int i, int i2) {
        y45.j(bArr, "b");
        while (i2 > 0) {
            b(bArr[i]);
            i2--;
            i++;
        }
    }
}
