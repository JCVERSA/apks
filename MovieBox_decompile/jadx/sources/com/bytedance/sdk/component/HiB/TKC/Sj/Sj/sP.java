package com.bytedance.sdk.component.HiB.TKC.Sj.Sj;

import android.util.Log;
import com.bytedance.sdk.component.utils.TEQ;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;

public class sP implements com.bytedance.sdk.component.HiB.TKC {
    private long Sj;
    private Sj sP;

    public sP(File file, long j10, ExecutorService executorService) {
        this.Sj = j10;
        try {
            this.sP = Sj.Sj(file, 20210302, 1, j10, executorService);
        } catch (IOException e10) {
            Log.w("LruCountDiskCache", e10.toString());
        }
    }

    @Override
    public boolean sP(String str) {
        try {
            try {
                Sj.TKC tkcSj = this.sP.Sj(str);
                boolean z10 = tkcSj != null;
                TEQ.Sj(tkcSj);
                return z10;
            } catch (IOException e10) {
                Log.w("LruCountDiskCache", e10.getMessage());
                TEQ.Sj(null);
                return false;
            }
        } catch (Throwable th2) {
            TEQ.Sj(null);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    @Override
    public byte[] Sj(String str) throws Throwable {
        ?? r10;
        ByteArrayOutputStream byteArrayOutputStream;
        Sj sj2 = this.sP;
        ?? r11 = 0;
        if (sj2 != null) {
            try {
                if (str != 0) {
                    try {
                        Sj.TKC tkcSj = sj2.Sj((String) str);
                        if (tkcSj == null) {
                            TEQ.Sj(null);
                            TEQ.Sj(null);
                            return null;
                        }
                        str = tkcSj.Sj(0);
                        if (str != 0) {
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i10 = str.read(bArr);
                                        if (i10 == -1) {
                                            break;
                                        }
                                        byteArrayOutputStream.write(bArr, 0, i10);
                                    }
                                } catch (IOException e10) {
                                    e = e10;
                                    r10 = str;
                                }
                            } catch (IOException e11) {
                                e = e11;
                                byteArrayOutputStream = null;
                                r10 = str;
                            } catch (Throwable th2) {
                                th = th2;
                                r11 = str;
                                TEQ.Sj(r11);
                                TEQ.Sj(0);
                                throw th;
                            }
                        } else {
                            byteArrayOutputStream = null;
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        TEQ.Sj(str);
                        TEQ.Sj(byteArrayOutputStream);
                        return byteArray;
                    } catch (IOException e12) {
                        e = e12;
                        r10 = 0;
                        byteArrayOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        TEQ.Sj(r11);
                        TEQ.Sj(0);
                        throw th;
                    }
                    Log.w("LruCountDiskCache", e.toString());
                    TEQ.Sj(r10);
                    TEQ.Sj(byteArrayOutputStream);
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public InputStream Sj(String str) {
        Sj sj2 = this.sP;
        if (sj2 == null) {
            return null;
        }
        try {
            Sj.TKC tkcSj = sj2.Sj(str);
            if (tkcSj != null) {
                return tkcSj.Sj(0);
            }
        } catch (IOException e10) {
            Log.w("LruCountDiskCache", e10.getMessage());
        }
        return null;
    }

    @Override
    public boolean Sj(String str, byte[] bArr) throws Throwable {
        Sj sj2 = this.sP;
        if (sj2 == null || bArr == null || str == null) {
            return false;
        }
        Closeable closeable = null;
        Sj.C0192Sj c0192Sj = null;
        try {
            try {
                Sj.C0192Sj c0192SjSP = sj2.sP(str);
                try {
                    if (c0192SjSP == null) {
                        Log.w("LruCountDiskCache", "save " + str + " failed for edit null");
                        TEQ.Sj(null);
                        return false;
                    }
                    OutputStream outputStreamSj = c0192SjSP.Sj(0);
                    if (outputStreamSj == Sj.TKC) {
                        Log.w("LruCountDiskCache", "save " + str + " failed for null OutputStream");
                        TEQ.Sj(outputStreamSj);
                        return false;
                    }
                    outputStreamSj.write(bArr);
                    c0192SjSP.Sj();
                    this.sP.Sj();
                    TEQ.Sj(outputStreamSj);
                    return true;
                } catch (IOException e10) {
                    e = e10;
                    c0192Sj = c0192SjSP;
                    try {
                        Log.w("LruCountDiskCache", e.toString());
                        if (c0192Sj != null) {
                            try {
                                c0192Sj.sP();
                            } catch (IOException unused) {
                            }
                        }
                        TEQ.Sj(0);
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = closeable;
                        TEQ.Sj(closeable);
                        throw th;
                    }
                }
            } catch (IOException e11) {
                e = e11;
            }
        } catch (Throwable th3) {
            th = th3;
            TEQ.Sj(closeable);
            throw th;
        }
    }
}
