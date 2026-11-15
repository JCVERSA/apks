package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.io.File;
import java.io.FileInputStream;
import java.util.zip.Checksum;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class cq3 implements Checksum {
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
                j = (j & 1) == 1 ? (j >>> 1) ^ 2197175160L : j >>> 1;
            }
            c[i] = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9 */
    public cq3(File file) throws Throwable {
        FileInputStream fileInputStream;
        y45.j(file, "f");
        this.a = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        ?? r0 = 0;
        zfb zfbVar = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
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
                            update(bArr, 0, i);
                        }
                    } catch (Exception e) {
                        e = e;
                        oq5.a.b("FileCRC32CCheckSum", "check file crc32c error:", e);
                        Result.Companion companion2 = Result.INSTANCE;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                            zfbVar = zfb.a;
                        }
                        Result.m279constructorimpl(zfbVar);
                    }
                } catch (Throwable th) {
                    Result.Companion companion3 = Result.INSTANCE;
                    Result.m279constructorimpl(c.a(th));
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    if (0 != 0) {
                        r0.close();
                        r0 = zfb.a;
                    }
                    Result.m279constructorimpl(r0);
                } catch (Throwable th3) {
                    Result.Companion companion5 = Result.INSTANCE;
                    Result.m279constructorimpl(c.a(th3));
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final String a() {
        return String.valueOf(getValue());
    }

    public final void b(byte b2) {
        long j = this.a;
        this.a = (j >>> 8) ^ c[(b2 ^ ((int) j)) & 255];
    }

    @Override
    public long getValue() {
        return (~this.a) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }

    @Override
    public void reset() {
        this.a = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
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
