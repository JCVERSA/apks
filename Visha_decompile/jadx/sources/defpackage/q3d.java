package defpackage;

import com.mgadplus.mgutil.SourceKitLogger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public abstract class q3d {
    public static OkHttpClient a;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        a = builder.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).build();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0079 A[Catch: IOException -> 0x007c, TRY_LEAVE, TryCatch #14 {IOException -> 0x007c, blocks: (B:34:0x0074, B:36:0x0079), top: B:67:0x0074 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0083 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0085 A[Catch: IOException -> 0x0088, TRY_LEAVE, TryCatch #7 {IOException -> 0x0088, blocks: (B:40:0x0080, B:42:0x0085), top: B:61:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0090 A[Catch: IOException -> 0x0093, TRY_LEAVE, TryCatch #2 {IOException -> 0x0093, blocks: (B:45:0x008b, B:47:0x0090), top: B:59:0x008b }] */
    /* JADX WARN: Code duplicated, block: B:59:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
    public static int a(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        File file = new File(str2);
        if (file.exists()) {
            return 0;
        }
        try {
            file.createNewFile();
            InputStream inputStream = null;
            try {
                Response responseExecute = a.newCall(new Request.Builder().url(str).build()).execute();
                if (!responseExecute.isSuccessful()) {
                    return -1;
                }
                byte[] bArr = new byte[4096];
                InputStream inputStreamByteStream = responseExecute.body().byteStream();
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int i = inputStreamByteStream.read(bArr);
                            if (i == -1) {
                                fileOutputStream.flush();
                                try {
                                    inputStreamByteStream.close();
                                    fileOutputStream.close();
                                    return 1;
                                } catch (IOException unused) {
                                    return 1;
                                }
                            }
                            fileOutputStream.write(bArr, 0, i);
                        } catch (ConnectException unused2) {
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused3) {
                                    return -2;
                                }
                            }
                            if (fileOutputStream != null) {
                                return -2;
                            }
                            fileOutputStream.close();
                            return -2;
                        } catch (IOException unused4) {
                            inputStream = inputStreamByteStream;
                            try {
                                SourceKitLogger.a("lyz", "下载失败");
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                    } catch (IOException unused5) {
                                        return -1;
                                    }
                                } else if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                return -1;
                            } catch (Throwable th) {
                                th = th;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                    } catch (IOException unused6) {
                                        throw th;
                                    }
                                } else if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                inputStream.close();
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                            } else if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    }
                } catch (ConnectException unused7) {
                    fileOutputStream = null;
                } catch (IOException unused8) {
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (ConnectException unused9) {
                fileOutputStream = null;
            } catch (IOException unused10) {
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
            if (inputStream != null) {
                inputStream.close();
            }
            if (fileOutputStream != null) {
                return -2;
            }
            fileOutputStream.close();
            return -2;
        } catch (IOException unused11) {
            return -1;
        }
    }
}
