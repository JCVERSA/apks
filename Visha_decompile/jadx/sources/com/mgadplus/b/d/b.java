package com.mgadplus.b.d;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.hunantv.media.drm.IDrmSession;
import com.lzy.okgo.model.HttpHeaders;
import com.mgadplus.mgutil.SourceKitLogger;
import defpackage.b2d;
import defpackage.o8d;
import defpackage.r5d;
import defpackage.w9d;
import defpackage.x1d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.UUID;

public class b implements Runnable {
    private static final String j = "b";
    private x1d.a a;
    private com.mgmi.db.dao3.c b;
    private r5d c;
    private boolean d;
    private w9d e;
    private x1d f;
    private o8d h;
    private final Object i = new Object();
    private int g = 0;

    public interface a {
    }

    public b(@Nullable x1d.a aVar, @NonNull r5d r5dVar, @NonNull x1d x1dVar, o8d o8dVar) {
        this.a = aVar;
        this.c = r5dVar;
        this.f = x1dVar;
        this.h = o8dVar;
    }

    /* JADX WARN: Code duplicated, block: B:214:0x03d2 A[Catch: Exception -> 0x03cc, IOException -> 0x03ce, TryCatch #28 {IOException -> 0x03ce, Exception -> 0x03cc, blocks: (B:208:0x03c8, B:214:0x03d2, B:216:0x03d7), top: B:306:0x03c8 }] */
    /* JADX WARN: Code duplicated, block: B:216:0x03d7 A[Catch: Exception -> 0x03cc, IOException -> 0x03ce, TRY_LEAVE, TryCatch #28 {IOException -> 0x03ce, Exception -> 0x03cc, blocks: (B:208:0x03c8, B:214:0x03d2, B:216:0x03d7), top: B:306:0x03c8 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x03f5 A[Catch: Exception -> 0x03ed, IOException -> 0x03f0, TryCatch #48 {IOException -> 0x03f0, Exception -> 0x03ed, blocks: (B:223:0x03e9, B:229:0x03f5, B:231:0x03fa), top: B:282:0x03e9 }] */
    /* JADX WARN: Code duplicated, block: B:231:0x03fa A[Catch: Exception -> 0x03ed, IOException -> 0x03f0, TRY_LEAVE, TryCatch #48 {IOException -> 0x03f0, Exception -> 0x03ed, blocks: (B:223:0x03e9, B:229:0x03f5, B:231:0x03fa), top: B:282:0x03e9 }] */
    /* JADX WARN: Code duplicated, block: B:243:0x0416 A[Catch: Exception -> 0x040e, IOException -> 0x0411, TryCatch #41 {IOException -> 0x0411, Exception -> 0x040e, blocks: (B:237:0x040a, B:243:0x0416, B:245:0x041b), top: B:288:0x040a }] */
    /* JADX WARN: Code duplicated, block: B:245:0x041b A[Catch: Exception -> 0x040e, IOException -> 0x0411, TRY_LEAVE, TryCatch #41 {IOException -> 0x0411, Exception -> 0x040e, blocks: (B:237:0x040a, B:243:0x0416, B:245:0x041b), top: B:288:0x040a }] */
    /* JADX WARN: Code duplicated, block: B:256:0x0439 A[Catch: Exception -> 0x0431, IOException -> 0x0434, TryCatch #36 {IOException -> 0x0434, Exception -> 0x0431, blocks: (B:250:0x042d, B:256:0x0439, B:258:0x043e), top: B:294:0x042d }] */
    /* JADX WARN: Code duplicated, block: B:258:0x043e A[Catch: Exception -> 0x0431, IOException -> 0x0434, TRY_LEAVE, TryCatch #36 {IOException -> 0x0434, Exception -> 0x0431, blocks: (B:250:0x042d, B:256:0x0439, B:258:0x043e), top: B:294:0x042d }] */
    /* JADX WARN: Code duplicated, block: B:268:0x0453 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:269:0x0455 A[Catch: Exception -> 0x044f, IOException -> 0x0451, TryCatch #34 {IOException -> 0x0451, Exception -> 0x044f, blocks: (B:263:0x044b, B:269:0x0455, B:271:0x045a), top: B:298:0x044b }] */
    /* JADX WARN: Code duplicated, block: B:271:0x045a A[Catch: Exception -> 0x044f, IOException -> 0x0451, TRY_LEAVE, TryCatch #34 {IOException -> 0x0451, Exception -> 0x044f, blocks: (B:263:0x044b, B:269:0x0455, B:271:0x045a), top: B:298:0x044b }] */
    /* JADX WARN: Code duplicated, block: B:282:0x03e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x040a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x042d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:0x044b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x03c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void g() throws Throwable {
        Throwable th;
        RandomAccessFile randomAccessFile;
        int i;
        int i2;
        HttpURLConnection httpURLConnectionA;
        InputStream inputStream;
        File file;
        if (d()) {
            SourceKitLogger.a(j, "thread is been stop");
            return;
        }
        if (this.a == null) {
            return;
        }
        String str = j;
        SourceKitLogger.a(str, "startDownload");
        try {
            try {
                if (b2d.a(this.b.c())) {
                    SourceKitLogger.a(str, "startDownload and has file = " + this.b.c());
                    file = new File(this.b.c());
                } else {
                    SourceKitLogger.a(str, "startDownload and create file=" + this.b.c());
                    file = b2d.c(this.b.c());
                    if (file == null) {
                        b(8);
                        SourceKitLogger.a(str, "startDownload finally");
                        j();
                        c();
                        this.g = 4;
                        h();
                        return;
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                try {
                    this.b.a(randomAccessFile2.length());
                    if (this.b.e().longValue() > 0 && this.b.d().longValue() >= this.b.e().longValue()) {
                        i();
                        SourceKitLogger.a(str, "startDownload finally");
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        j();
                        c();
                        this.g = 4;
                        h();
                        return;
                    }
                    randomAccessFile2.seek(randomAccessFile2.length());
                    httpURLConnectionA = a(this.b.b(), false);
                    try {
                        int responseCode = httpURLConnectionA.getResponseCode();
                        while (true) {
                            if (302 != responseCode && 301 != responseCode) {
                                if (d()) {
                                    String str2 = j;
                                    SourceKitLogger.a(str2, "thread is been stop");
                                    b(10);
                                    SourceKitLogger.a(str2, "startDownload finally");
                                    try {
                                        randomAccessFile2.close();
                                        httpURLConnectionA.disconnect();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                    return;
                                }
                                if (200 != responseCode && 206 != responseCode) {
                                    a(httpURLConnectionA);
                                    String str3 = j;
                                    SourceKitLogger.a(str3, "RESPONSE CODE NOT 200 OR 206 responseCode =" + responseCode);
                                    b(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT);
                                    SourceKitLogger.a(str3, "startDownload finally");
                                    try {
                                        randomAccessFile2.close();
                                        httpURLConnectionA.disconnect();
                                    } catch (IOException e5) {
                                        e5.printStackTrace();
                                    } catch (Exception e6) {
                                        e6.printStackTrace();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                    return;
                                }
                                if (d()) {
                                    String str4 = j;
                                    SourceKitLogger.a(str4, "thread is been stop");
                                    b(10);
                                    SourceKitLogger.a(str4, "startDownload finally");
                                    try {
                                        randomAccessFile2.close();
                                        httpURLConnectionA.disconnect();
                                    } catch (IOException e7) {
                                        e7.printStackTrace();
                                    } catch (Exception e8) {
                                        e8.printStackTrace();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                    return;
                                }
                                long jLongValue = this.b.e().longValue();
                                long contentLength = httpURLConnectionA.getContentLength();
                                String str5 = j;
                                SourceKitLogger.a(str5, "get contentLength=" + contentLength);
                                if (jLongValue <= 0) {
                                    if (contentLength < 10240) {
                                        a(httpURLConnectionA);
                                        b(3);
                                        SourceKitLogger.a(str5, "ContentLength too short: " + contentLength);
                                        SourceKitLogger.a(str5, "startDownload finally");
                                        try {
                                            randomAccessFile2.close();
                                            httpURLConnectionA.disconnect();
                                        } catch (IOException e9) {
                                            e9.printStackTrace();
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                        j();
                                        c();
                                        this.g = 4;
                                        h();
                                        return;
                                    }
                                    this.b.b(contentLength);
                                } else if (this.b.e().longValue() != this.b.d().longValue() + contentLength) {
                                    SourceKitLogger.a(str5, "ERROR_REASON_CONTENT_CHANGED");
                                    a(httpURLConnectionA);
                                    b(4);
                                    SourceKitLogger.a(str5, "startDownload finally");
                                    try {
                                        randomAccessFile2.close();
                                        httpURLConnectionA.disconnect();
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                    return;
                                }
                                if (d()) {
                                    SourceKitLogger.a(str5, "thread is been stop");
                                    b(10);
                                    SourceKitLogger.a(str5, "startDownload finally");
                                    try {
                                        randomAccessFile2.close();
                                        httpURLConnectionA.disconnect();
                                    } catch (IOException e13) {
                                        e13.printStackTrace();
                                    } catch (Exception e14) {
                                        e14.printStackTrace();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                    return;
                                }
                                InputStream inputStream2 = httpURLConnectionA.getInputStream();
                                try {
                                    byte[] bArr = new byte[4096];
                                    try {
                                        while (!d()) {
                                            int i3 = inputStream2.read(bArr);
                                            if (i3 == -1) {
                                                i();
                                                break;
                                            }
                                            randomAccessFile2.write(bArr, 0, i3);
                                            com.mgmi.db.dao3.c cVar = this.b;
                                            cVar.a(cVar.d().longValue() + ((long) i3));
                                            a(this.b.d().longValue(), this.b.e().longValue());
                                            e.printStackTrace();
                                            j();
                                            c();
                                            this.g = 4;
                                            h();
                                        }
                                        randomAccessFile2.close();
                                        if (inputStream2 != null) {
                                            inputStream2.close();
                                        }
                                        httpURLConnectionA.disconnect();
                                    } catch (IOException e15) {
                                        e = e15;
                                        e.printStackTrace();
                                    } catch (Exception e16) {
                                        e = e16;
                                        e.printStackTrace();
                                    }
                                    SourceKitLogger.a(j, "startDownload finally");
                                } catch (FileNotFoundException e17) {
                                    e = e17;
                                    inputStream = inputStream2;
                                    randomAccessFile = randomAccessFile2;
                                    i2 = 9;
                                    b(i2);
                                    e.printStackTrace();
                                    SourceKitLogger.a(j, "startDownload finally");
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException e18) {
                                            e = e18;
                                            e.printStackTrace();
                                        } catch (Exception e19) {
                                            e = e19;
                                            e.printStackTrace();
                                        }
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (httpURLConnectionA != null) {
                                        httpURLConnectionA.disconnect();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                } catch (IOException unused) {
                                    inputStream = inputStream2;
                                    randomAccessFile = randomAccessFile2;
                                    b(5);
                                    SourceKitLogger.a(j, "startDownload finally");
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException e20) {
                                            e = e20;
                                            e.printStackTrace();
                                        } catch (Exception e21) {
                                            e = e21;
                                            e.printStackTrace();
                                        }
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (httpURLConnectionA != null) {
                                        httpURLConnectionA.disconnect();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                } catch (ArrayIndexOutOfBoundsException unused2) {
                                    inputStream = inputStream2;
                                    randomAccessFile = randomAccessFile2;
                                    b(12);
                                    SourceKitLogger.a(j, "startDownload finally");
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException e22) {
                                            e = e22;
                                            e.printStackTrace();
                                        } catch (Exception e23) {
                                            e = e23;
                                            e.printStackTrace();
                                        }
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (httpURLConnectionA != null) {
                                        httpURLConnectionA.disconnect();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                } catch (IllegalArgumentException unused3) {
                                    inputStream = inputStream2;
                                    randomAccessFile = randomAccessFile2;
                                    i = 9;
                                    b(i);
                                    SourceKitLogger.a(j, "startDownload finally");
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException e24) {
                                            e = e24;
                                            e.printStackTrace();
                                        } catch (Exception e25) {
                                            e = e25;
                                            e.printStackTrace();
                                        }
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (httpURLConnectionA != null) {
                                        httpURLConnectionA.disconnect();
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                } catch (Throwable th2) {
                                    th = th2;
                                    inputStream = inputStream2;
                                    randomAccessFile = randomAccessFile2;
                                    SourceKitLogger.a(j, "startDownload finally");
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                            if (httpURLConnectionA != null) {
                                                httpURLConnectionA.disconnect();
                                            }
                                        } catch (IOException e26) {
                                            e26.printStackTrace();
                                            j();
                                            c();
                                            this.g = 4;
                                            h();
                                            throw th;
                                        } catch (Exception e27) {
                                            e27.printStackTrace();
                                            j();
                                            c();
                                            this.g = 4;
                                            h();
                                            throw th;
                                        }
                                    } else {
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (httpURLConnectionA != null) {
                                            httpURLConnectionA.disconnect();
                                        }
                                    }
                                    j();
                                    c();
                                    this.g = 4;
                                    h();
                                    throw th;
                                }
                                j();
                                c();
                                this.g = 4;
                                h();
                            }
                            String headerField = httpURLConnectionA.getHeaderField("Location");
                            String str6 = j;
                            SourceKitLogger.a(str6, "[302] redirect url is:" + headerField);
                            if (TextUtils.isEmpty(headerField)) {
                                b(1);
                                randomAccessFile2.close();
                                SourceKitLogger.a(str6, "startDownload finally");
                                try {
                                    httpURLConnectionA.disconnect();
                                } catch (IOException e28) {
                                    e28.printStackTrace();
                                } catch (Exception e29) {
                                    e29.printStackTrace();
                                }
                                j();
                                c();
                                this.g = 4;
                                h();
                                return;
                            }
                            httpURLConnectionA = a(headerField, false);
                            responseCode = httpURLConnectionA.getResponseCode();
                        }
                    } catch (FileNotFoundException e30) {
                        e = e30;
                        randomAccessFile = randomAccessFile2;
                        i2 = 9;
                        inputStream = null;
                        b(i2);
                        e.printStackTrace();
                        SourceKitLogger.a(j, "startDownload finally");
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        j();
                        c();
                        this.g = 4;
                        h();
                    } catch (IOException unused4) {
                        randomAccessFile = randomAccessFile2;
                        inputStream = null;
                        b(5);
                        SourceKitLogger.a(j, "startDownload finally");
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        j();
                        c();
                        this.g = 4;
                        h();
                    } catch (ArrayIndexOutOfBoundsException unused5) {
                        randomAccessFile = randomAccessFile2;
                        inputStream = null;
                        b(12);
                        SourceKitLogger.a(j, "startDownload finally");
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        j();
                        c();
                        this.g = 4;
                        h();
                    } catch (IllegalArgumentException unused6) {
                        randomAccessFile = randomAccessFile2;
                        i = 9;
                        inputStream = null;
                        b(i);
                        SourceKitLogger.a(j, "startDownload finally");
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        j();
                        c();
                        this.g = 4;
                        h();
                    } catch (Throwable th3) {
                        th = th3;
                        randomAccessFile = randomAccessFile2;
                        inputStream = null;
                        SourceKitLogger.a(j, "startDownload finally");
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (httpURLConnectionA != null) {
                                httpURLConnectionA.disconnect();
                            }
                        } else {
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (httpURLConnectionA != null) {
                                httpURLConnectionA.disconnect();
                            }
                        }
                        j();
                        c();
                        this.g = 4;
                        h();
                        throw th;
                    }
                } catch (FileNotFoundException e31) {
                    e = e31;
                    randomAccessFile = randomAccessFile2;
                    i2 = 9;
                    httpURLConnectionA = null;
                    inputStream = null;
                    b(i2);
                    e.printStackTrace();
                    SourceKitLogger.a(j, "startDownload finally");
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    j();
                    c();
                    this.g = 4;
                    h();
                } catch (IOException unused7) {
                    randomAccessFile = randomAccessFile2;
                    httpURLConnectionA = null;
                    inputStream = null;
                    b(5);
                    SourceKitLogger.a(j, "startDownload finally");
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    j();
                    c();
                    this.g = 4;
                    h();
                } catch (ArrayIndexOutOfBoundsException unused8) {
                    randomAccessFile = randomAccessFile2;
                    httpURLConnectionA = null;
                    inputStream = null;
                    b(12);
                    SourceKitLogger.a(j, "startDownload finally");
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    j();
                    c();
                    this.g = 4;
                    h();
                } catch (IllegalArgumentException unused9) {
                    randomAccessFile = randomAccessFile2;
                    i = 9;
                    httpURLConnectionA = null;
                    inputStream = null;
                    b(i);
                    SourceKitLogger.a(j, "startDownload finally");
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    j();
                    c();
                    this.g = 4;
                    h();
                } catch (Throwable th4) {
                    th = th4;
                    randomAccessFile = randomAccessFile2;
                    httpURLConnectionA = null;
                    inputStream = null;
                    SourceKitLogger.a(j, "startDownload finally");
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                    } else {
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                    }
                    j();
                    c();
                    this.g = 4;
                    h();
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (FileNotFoundException e32) {
            e = e32;
            i2 = 9;
            randomAccessFile = null;
        } catch (IOException unused10) {
            randomAccessFile = null;
        } catch (ArrayIndexOutOfBoundsException unused11) {
            randomAccessFile = null;
        } catch (IllegalArgumentException unused12) {
            i = 9;
            randomAccessFile = null;
        } catch (Throwable th6) {
            th = th6;
            randomAccessFile = null;
        }
    }

    private void h() {
    }

    private void i() {
        SourceKitLogger.a(j, "download finish");
        synchronized (this.i) {
            try {
                if (!d()) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void j() {
        this.c.c(this.b);
    }

    public void a(long j2, long j3) {
        x1d x1dVar = this.f;
        if (x1dVar != null) {
            x1dVar.g(this.a, j2, j3);
        }
    }

    public void b() {
        x1d x1dVar = this.f;
        if (x1dVar != null) {
            x1dVar.l(this.a);
        }
    }

    public void c() {
        this.g = 3;
        this.d = true;
    }

    public boolean d() {
        return this.d;
    }

    public void e() {
        this.g = 1;
    }

    public boolean f() {
        int i = this.g;
        return (i == 0 || i == 4) ? false : true;
    }

    @Override
    public void run() throws Throwable {
        a((a) null);
        g();
    }

    private void b(int i) {
        SourceKitLogger.a(j, "download onError url=" + this.a.c() + "error reason=" + i);
        synchronized (this.i) {
            try {
                if (!d()) {
                    a(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public x1d.a a() {
        return this.a;
    }

    public void a(int i) {
        x1d x1dVar = this.f;
        if (x1dVar != null) {
            x1dVar.f(this.a, i);
        }
    }

    public b a(x1d.a aVar) {
        this.a = aVar;
        return this;
    }

    private void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused) {
            }
        }
    }

    private void a(a aVar) {
        this.g = 2;
        x1d.a aVar2 = this.a;
        if (aVar2 == null) {
            SourceKitLogger.a(j, "checkDownloadInfoAndDownloadFileSize but mBuild is null");
            return;
        }
        com.mgmi.db.dao3.c cVarA = this.c.a(aVar2.c());
        this.b = cVarA;
        if (cVarA == null) {
            SourceKitLogger.a(j, "startDownload and create info=" + this.a.c());
            com.mgmi.db.dao3.c cVar = new com.mgmi.db.dao3.c();
            this.b = cVar;
            cVar.a(0L);
            this.b.b(0L);
            this.b.c(System.currentTimeMillis());
            this.b.a(this.a.c());
            this.b.c(UUID.randomUUID().toString());
            com.mgmi.db.dao3.c cVar2 = this.b;
            cVar2.b(cVar2.d(this.a.e()));
            this.c.b(this.b);
            return;
        }
        SourceKitLogger.a(j, "startDownload and has info=" + this.a.c());
        this.c.c(this.b);
    }

    private HttpURLConnection a(String str, boolean z) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
        httpURLConnection.setRequestProperty("Accept", "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
        httpURLConnection.setRequestProperty("Referer", str);
        httpURLConnection.setRequestProperty("Charset", "UTF-8");
        SourceKitLogger.a(j, "initConnection getCompleteSize=" + this.b.d());
        if (!z) {
            httpURLConnection.setRequestProperty("Range", "bytes=" + this.b.d() + "-");
        }
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }
}
