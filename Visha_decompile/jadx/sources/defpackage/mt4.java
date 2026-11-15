package defpackage;

import com.transsion.cloud_drive.transfer.exception.ServerException;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.c;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class mt4 implements nt4, hs4 {
    public static final mt4 a = new mt4();
    public static final OkHttpClient b;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        b = builder.connectTimeout(60L, timeUnit).readTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).build();
    }

    @Override
    public Response a(File file, String str, long j, long j2, is3 is3Var) {
        y45.j(file, "file");
        y45.j(str, "url");
        y45.j(is3Var, "callback");
        return b.newCall(new Request.Builder().url(str).put(new vu3(file, j, j2, is3Var)).build()).execute();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.InputStream] */
    @Override
    public void b(String str, String str2, long j, long j2, long j3, is3 is3Var) throws Throwable {
        Throwable th;
        y45.j(str, "url");
        y45.j(str2, "path");
        y45.j(is3Var, "callback");
        long j4 = j3 - 1;
        long j5 = j + j2;
        try {
            Response responseExecute = b.newCall(new Request.Builder().addHeader("Range", "bytes=" + j5 + "-" + (j4 > 0 ? Long.valueOf(j4) : "")).url(str).build()).execute();
            if (responseExecute.code() > 300) {
                throw new ServerException(responseExecute.code(), responseExecute.message(), String.valueOf(responseExecute.body()));
            }
            xk0 xk0Var = null;
            try {
                try {
                    File file = new File((String) str2);
                    File parentFile = file.getParentFile();
                    if (parentFile != null && !parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    ResponseBody responseBodyBody = responseExecute.body();
                    y45.g(responseBodyBody);
                    str2 = responseBodyBody.byteStream();
                    try {
                        xk0 xk0Var2 = new xk0(file);
                        try {
                            xk0Var2.c(j5);
                            byte[] bArr = new byte[1048576];
                            while (true) {
                                int i = str2.read(bArr);
                                if (i == -1) {
                                    xk0Var2.b();
                                    try {
                                        Result.Companion companion = Result.INSTANCE;
                                        xk0Var2.a();
                                        str2.close();
                                        responseExecute.close();
                                        Result.m279constructorimpl(zfb.a);
                                        return;
                                    } catch (Throwable th2) {
                                        Result.Companion companion2 = Result.INSTANCE;
                                        Result.m279constructorimpl(c.a(th2));
                                        return;
                                    }
                                }
                                xk0Var2.d(bArr, 0, i);
                                is3Var.a(i);
                            }
                        } catch (InterruptedIOException unused) {
                            throw new InterruptedException();
                        } catch (IOException e) {
                        } catch (Throwable th3) {
                            th = th3;
                            xk0Var = xk0Var2;
                            try {
                                Result.Companion companion3 = Result.INSTANCE;
                                if (xk0Var != null) {
                                    xk0Var.a();
                                }
                                if (str2 != 0) {
                                    str2.close();
                                }
                                responseExecute.close();
                                Result.m279constructorimpl(zfb.a);
                            } catch (Throwable th4) {
                                Result.Companion companion4 = Result.INSTANCE;
                                Result.m279constructorimpl(c.a(th4));
                            }
                            throw th;
                        }
                    } catch (InterruptedIOException unused2) {
                    } catch (IOException e2) {
                        throw e2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (InterruptedIOException unused3) {
            } catch (IOException e3) {
            } catch (Throwable th6) {
                th = th6;
                str2 = 0;
            }
        } catch (InterruptedIOException e4) {
            oq5.a.b("HttpTransManager", "download io interrupted:", e4);
            throw new InterruptedException();
        } catch (IOException e5) {
            throw e5;
        }
    }
}
