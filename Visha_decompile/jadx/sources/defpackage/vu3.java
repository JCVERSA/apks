package defpackage;

import java.io.File;
import java.io.RandomAccessFile;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;

public final class vu3 extends RequestBody {
    public static final a f = new a(null);
    public final File a;
    public final long b;
    public final long c;
    public final is3 d;
    public final String e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public vu3(File file, long j, long j2, is3 is3Var) {
        y45.j(file, "file");
        y45.j(is3Var, "callback");
        this.a = file;
        this.b = j;
        this.c = j2;
        this.d = is3Var;
        this.e = "FileUploadProgressRequestBody";
    }

    @Override
    public long contentLength() {
        return this.c;
    }

    @Override
    public MediaType getContentType() {
        return null;
    }

    @Override
    public void writeTo(BufferedSink bufferedSink) throws Throwable {
        y45.j(bufferedSink, "sink");
        byte[] bArr = new byte[102400];
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.a, "r");
            try {
                randomAccessFile2.seek(this.b);
                long length = 0;
                while (true) {
                    long j = this.c;
                    if (length >= j) {
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            randomAccessFile2.close();
                            bufferedSink.close();
                            Result.m279constructorimpl(zfb.a);
                            return;
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            Result.m279constructorimpl(c.a(th));
                            return;
                        }
                    }
                    if (((long) 102400) + length > j) {
                        bArr = new byte[(int) (j - length)];
                    }
                    randomAccessFile2.read(bArr);
                    bufferedSink.write(bArr);
                    bufferedSink.flush();
                    length += (long) bArr.length;
                    this.d.a(bArr.length);
                }
            } catch (Exception e) {
                e = e;
                randomAccessFile = randomAccessFile2;
                oq5.a.b(this.e, "write file body error:", e);
                throw e;
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = randomAccessFile2;
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    bufferedSink.close();
                    Result.m279constructorimpl(zfb.a);
                } catch (Throwable th3) {
                    Result.Companion companion4 = Result.INSTANCE;
                    Result.m279constructorimpl(c.a(th3));
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
