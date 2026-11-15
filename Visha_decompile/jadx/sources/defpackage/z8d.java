package defpackage;

import android.text.TextUtils;
import androidx.media3.common.C;
import com.lzy.okgo.model.HttpHeaders;
import com.mgadplus.d.b;
import com.mgmi.db.dao3.FileDownloadInfoDao;
import com.mgmi.db.dao3.c;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;

public class z8d implements b {
    public c a;
    public FileDownloadInfoDao b;
    public Call d;
    public Long f;
    public RandomAccessFile c = null;
    public v5d e = new v5d();

    public z8d(FileDownloadInfoDao fileDownloadInfoDao) {
        this.b = fileDownloadInfoDao;
    }

    public final v5d b(b.a aVar, boolean z) {
        c cVar;
        if (z && (cVar = this.a) != null && !TextUtils.isEmpty(cVar.b)) {
            try {
                this.b.insert(this.a);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            Long lValueOf = Long.valueOf(this.a.d);
            this.f = lValueOf;
            if (lValueOf.longValue() < 0 || this.f.longValue() > this.a.e) {
                this.f = 0L;
            }
            Call call = this.d;
            if (call != null && !call.getCanceled()) {
                this.d.cancel();
            }
            this.e.c(this.a.b);
            this.e.g(this.a.i);
            this.e.e = this.a.c;
            Request requestBuild = new Request.Builder().header("Connection", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE).url(this.a.b).header("RANGE", "bytes=" + this.f + "-").build();
            q3d.a.connectTimeoutMillis();
            Call callNewCall = q3d.a.newCall(requestBuild);
            this.d = callNewCall;
            return c(callNewCall.execute(), aVar);
        } catch (Exception e2) {
            this.e.a(e2);
            this.e.a("网络错误");
            return this.e;
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0127 A[PHI: r0
      0x0127: PHI (r0v4 java.io.RandomAccessFile) = (r0v8 java.io.RandomAccessFile), (r0v12 java.io.RandomAccessFile) binds: [B:66:0x0145, B:60:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    public final v5d c(Response response, b.a aVar) throws Throwable {
        RandomAccessFile randomAccessFile;
        InputStream inputStream;
        InputStream inputStreamByteStream = null;
        try {
            try {
                if (response.code() != 200 && response.code() != 206) {
                    d(this.a, 3);
                    this.e.a("下载失败");
                    v5d v5dVar = this.e;
                    RandomAccessFile randomAccessFile2 = this.c;
                    if (randomAccessFile2 != null) {
                        randomAccessFile2.close();
                    }
                    return v5dVar;
                }
                byte[] bArr = new byte[4096];
                inputStreamByteStream = response.body().byteStream();
                try {
                    this.a.e = response.body().getContentLength() + this.f.longValue();
                    long j = this.a.e;
                    File file = new File(this.a.c);
                    long j2 = 0;
                    if (!file.exists()) {
                        if (!file.createNewFile()) {
                            d(this.a, 3);
                            this.e.a("创建文件失败");
                            v5d v5dVar2 = this.e;
                            if (inputStreamByteStream != null) {
                                inputStreamByteStream.close();
                            }
                            RandomAccessFile randomAccessFile3 = this.c;
                            if (randomAccessFile3 != null) {
                                randomAccessFile3.close();
                            }
                            return v5dVar2;
                        }
                        this.f = 0L;
                    }
                    RandomAccessFile randomAccessFile4 = new RandomAccessFile(file, "rw");
                    this.c = randomAccessFile4;
                    randomAccessFile4.seek(this.f.longValue());
                    long j3 = 0;
                    while (true) {
                        int i = inputStreamByteStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        this.c.write(bArr, 0, i);
                        inputStream = inputStreamByteStream;
                        try {
                            Long lValueOf = Long.valueOf(this.f.longValue() + ((long) i));
                            this.f = lValueOf;
                            this.a.d = lValueOf.longValue() < j ? this.f.longValue() : j;
                            int iLongValue = (int) (((this.f.longValue() * 1.0f) / j) * 100.0f);
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (jCurrentTimeMillis - j2 >= 1000) {
                                this.a.f = 2;
                                if (aVar != null) {
                                    aVar.a(iLongValue);
                                }
                                j2 = jCurrentTimeMillis;
                            }
                            if (jCurrentTimeMillis - j3 >= C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                                d(this.a, 2);
                                j3 = jCurrentTimeMillis;
                            }
                            inputStreamByteStream = inputStream;
                        } catch (Exception e) {
                            e = e;
                            inputStreamByteStream = inputStream;
                        } catch (Throwable th) {
                            th = th;
                            inputStreamByteStream = inputStream;
                            if (inputStreamByteStream != null) {
                                inputStreamByteStream.close();
                            }
                            RandomAccessFile randomAccessFile5 = this.c;
                            if (randomAccessFile5 != null) {
                                randomAccessFile5.close();
                            }
                            throw th;
                        }
                        e.printStackTrace();
                        d(this.a, 3);
                        this.e.a(e);
                        this.e.a("下载失败");
                        if (inputStreamByteStream != null) {
                            inputStreamByteStream.close();
                        }
                        randomAccessFile = this.c;
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        return this.e;
                    }
                    inputStream = inputStreamByteStream;
                    d(this.a, 1);
                    inputStream.close();
                    randomAccessFile = this.c;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } catch (Exception e2) {
                    e = e2;
                } catch (Throwable th2) {
                    th = th2;
                }
                return this.e;
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void d(c cVar, int i) {
        if (i == 1) {
            return;
        }
        try {
            cVar.f = Integer.valueOf(i);
            this.b.update(cVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public v5d a(g2d g2dVar, b.a aVar) {
        if (g2dVar == null) {
            return null;
        }
        this.a = g2dVar.f();
        return g2dVar.d() ? b(aVar, true) : b(aVar, false);
    }

    @Override
    public boolean a() {
        Call call = this.d;
        if (call == null || call.getCanceled()) {
            return true;
        }
        this.d.cancel();
        return true;
    }
}
