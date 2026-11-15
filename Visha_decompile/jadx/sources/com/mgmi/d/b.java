package com.mgmi.d;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.HttpHeaders;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.db.dao3.MgmiOfflineAdResourceDao;
import com.mgmi.db.dao3.d;
import com.mgmi.db.dao3.g;
import com.transsion.videodownloader.model.Video;
import defpackage.ard;
import defpackage.fyd;
import defpackage.qwd;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

public class b extends Thread {
    public static final String a = "b";
    private Context b;
    private boolean c = false;
    private g d;
    private a e;

    public interface a {
        void a(g gVar);

        void a(g gVar, int i, Exception exc, String str);

        void a(g gVar, String str);
    }

    public b(Context context, g gVar, a aVar) {
        this.b = context;
        this.d = gVar;
        this.e = aVar;
    }

    private void a(g gVar) {
        MgmiOfflineAdResourceDao mgmiOfflineAdResourceDaoA = a();
        if (mgmiOfflineAdResourceDaoA != null) {
            try {
                mgmiOfflineAdResourceDaoA.update(gVar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:190:0x0537 A[Catch: IOException -> 0x0533, TryCatch #5 {IOException -> 0x0533, blocks: (B:186:0x052f, B:190:0x0537, B:191:0x053a), top: B:238:0x052f }] */
    /* JADX WARN: Code duplicated, block: B:197:0x0564  */
    /* JADX WARN: Code duplicated, block: B:198:0x0567  */
    /* JADX WARN: Code duplicated, block: B:201:0x0578  */
    /* JADX WARN: Code duplicated, block: B:202:0x057b  */
    /* JADX WARN: Code duplicated, block: B:205:0x0582  */
    /* JADX WARN: Code duplicated, block: B:208:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:209:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:238:0x052f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x03d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    private void b() throws Throwable {
        HttpURLConnection httpURLConnection;
        Throwable th;
        InputStream inputStream;
        long j;
        IOException iOException;
        InputStream inputStream2;
        int responseCode;
        boolean z;
        String str;
        int i;
        long jLongValue;
        long j2;
        long j3;
        long j4;
        InputStream inputStream3;
        String headerFieldKey;
        String str2;
        boolean z2;
        String str3;
        if (this.b == null || this.e == null) {
            SourceKitLogger.a(a, "no context or callback");
            return;
        }
        g gVar = this.d;
        if (gVar == null || TextUtils.isEmpty(gVar.d())) {
            SourceKitLogger.a(a, "invalid resource");
            this.e.a(this.d, "invalid resource");
            return;
        }
        if (!c()) {
            SourceKitLogger.a(a, "invalid network");
            this.e.a(this.d, "invalid network");
            return;
        }
        if (this.d.h()) {
            SourceKitLogger.a(a, "already completed");
            this.e.a(this.d);
            return;
        }
        String absolutePath = this.b.getFilesDir().getAbsolutePath();
        String strD = this.d.d();
        if (TextUtils.isEmpty(this.d.e())) {
            String str4 = qwd.c(strD) + Video.SUFFIX.SUFFIX_MP4;
            String str5 = File.separator;
            if (absolutePath.endsWith(str5)) {
                str3 = absolutePath;
            } else {
                str3 = absolutePath.concat(str5) + str4;
            }
            this.d.b(str3);
            SourceKitLogger.a(a, "first time, set path : " + str3);
        }
        File file = new File(this.d.e());
        if (!file.exists()) {
            this.d.c(0L);
            a(this.d);
            try {
                String str6 = a;
                SourceKitLogger.a(str6, "create file");
                if (!file.createNewFile()) {
                    SourceKitLogger.a(str6, "can't create file");
                    this.e.a(this.d, "can't create file");
                    return;
                }
            } catch (IOException e) {
                SourceKitLogger.a(a, "create file exception -  " + e.getMessage());
                this.e.a(this.d, "create file exception");
                return;
            }
        }
        long jLongValue2 = this.d.b().longValue();
        long jA = ard.a(absolutePath);
        long jLongValue3 = (jLongValue2 - this.d.c().longValue()) + ((long) 10485760);
        String str7 = a;
        SourceKitLogger.a(str7, "download path remain size:" + jA);
        SourceKitLogger.a(str7, "download file need  size:" + jLongValue3);
        if (jA < jLongValue3) {
            SourceKitLogger.a(str7, "no more space");
            this.e.a(this.d, "no more space");
            return;
        }
        SourceKitLogger.a(str7, "download source file resource.getPath() = " + this.d.e());
        try {
            SourceKitLogger.a(str7, "open random access file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.d.e()), "rw");
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jLongValue4 = this.d.c() == null ? 0L : this.d.c().longValue();
            try {
                SourceKitLogger.a(str7, "init connection to : " + this.d.d());
                HttpURLConnection httpURLConnectionA = a(this.d.d(), this.d.c().longValue());
                try {
                    try {
                        responseCode = httpURLConnectionA.getResponseCode();
                        try {
                            SourceKitLogger.a(str7, "response code : " + responseCode);
                            while (true) {
                                if (responseCode == 302 || responseCode == 301) {
                                    j = jLongValue4;
                                    try {
                                        String headerField = httpURLConnectionA.getHeaderField("Location");
                                        if (headerField == null) {
                                            SourceKitLogger.a(a, "redirect but invalid url");
                                            inputStream3 = null;
                                            this.e.a(this.d, responseCode, null, "redirect but invalid url");
                                            a(this.d);
                                            try {
                                                httpURLConnectionA.disconnect();
                                                randomAccessFile.close();
                                                return;
                                            } catch (IOException e2) {
                                                SourceKitLogger.a(a, "IOException finally -" + e2.getMessage());
                                                return;
                                            }
                                        }
                                        inputStream3 = null;
                                        try {
                                            String str8 = a;
                                            SourceKitLogger.a(str8, "redirect connection to : " + headerField);
                                            httpURLConnectionA = a(headerField, this.d.c().longValue());
                                            responseCode = httpURLConnectionA.getResponseCode();
                                            SourceKitLogger.a(str8, "redirect response code : " + responseCode);
                                            jLongValue4 = j;
                                        } catch (IOException e3) {
                                            e = e3;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (IOException e4) {
                                        e = e4;
                                        inputStream3 = null;
                                    }
                                    inputStream2 = inputStream3;
                                    httpURLConnection = httpURLConnectionA;
                                    iOException = e;
                                    try {
                                        str = "IOException during loading - " + iOException.getMessage();
                                        a(this.d);
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                            } catch (IOException e5) {
                                                SourceKitLogger.a(a, "IOException finally -" + e5.getMessage());
                                            }
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        randomAccessFile.close();
                                        i = responseCode;
                                        z = false;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        inputStream = inputStream2;
                                    }
                                } else {
                                    try {
                                        try {
                                            if (responseCode != 200 && responseCode != 206) {
                                                try {
                                                    SourceKitLogger.a(a, "failed, http code: " + responseCode);
                                                    this.d.e(1L);
                                                    this.e.a(this.d, responseCode, null, "failed, http code: " + responseCode);
                                                    a(this.d);
                                                    try {
                                                        httpURLConnectionA.disconnect();
                                                        randomAccessFile.close();
                                                        return;
                                                    } catch (IOException e6) {
                                                        SourceKitLogger.a(a, "IOException finally -" + e6.getMessage());
                                                        return;
                                                    }
                                                } catch (IOException e7) {
                                                    e = e7;
                                                    j = jLongValue4;
                                                    inputStream2 = null;
                                                    httpURLConnection = httpURLConnectionA;
                                                    iOException = e;
                                                    str = "IOException during loading - " + iOException.getMessage();
                                                    a(this.d);
                                                    if (inputStream2 != null) {
                                                        inputStream2.close();
                                                    }
                                                    if (httpURLConnection != null) {
                                                        httpURLConnection.disconnect();
                                                    }
                                                    randomAccessFile.close();
                                                    i = responseCode;
                                                    z = false;
                                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                    if (this.d.c() == null) {
                                                        jLongValue = 0;
                                                    } else {
                                                        jLongValue = this.d.c().longValue();
                                                    }
                                                    j2 = jCurrentTimeMillis2 - jCurrentTimeMillis;
                                                    if (j2 <= 0) {
                                                        j3 = 1;
                                                    } else {
                                                        j3 = j2;
                                                    }
                                                    j4 = jLongValue - j;
                                                    if (j4 < 0) {
                                                        j4 = 0;
                                                    }
                                                    String str9 = a;
                                                    SourceKitLogger.a(str9, str);
                                                    SourceKitLogger.a(str9, "end, average speed : " + (j4 / j3) + " bps");
                                                    if (z) {
                                                        this.e.a(this.d);
                                                    } else {
                                                        this.e.a(this.d, i, iOException, str);
                                                    }
                                                }
                                            }
                                            try {
                                                SourceKitLogger.a(a, "try get content-length");
                                                int i2 = 1;
                                                while (true) {
                                                    headerFieldKey = httpURLConnectionA.getHeaderFieldKey(i2);
                                                    if (headerFieldKey != null && headerFieldKey.equals("Content-Length")) {
                                                        break;
                                                    }
                                                    i2++;
                                                    jLongValue4 = jLongValue4;
                                                }
                                                long j5 = Long.parseLong(httpURLConnectionA.getHeaderField(headerFieldKey));
                                                String str10 = a;
                                                SourceKitLogger.a(str10, "content-length : " + j5);
                                                long jLongValue5 = this.d.b().longValue();
                                                if (jLongValue5 < 10240) {
                                                    if (j5 < 10240) {
                                                        SourceKitLogger.a(str10, "invalid content length");
                                                        this.e.a(this.d, responseCode, null, "invalid content length");
                                                        a(this.d);
                                                        try {
                                                            httpURLConnectionA.disconnect();
                                                            randomAccessFile.close();
                                                            return;
                                                        } catch (IOException e8) {
                                                            SourceKitLogger.a(a, "IOException finally -" + e8.getMessage());
                                                            return;
                                                        }
                                                    }
                                                    SourceKitLogger.a(str10, "first time, total : " + j5);
                                                    this.d.b(Long.valueOf(j5));
                                                    this.d.c(0L);
                                                } else {
                                                    if (this.d.b().longValue() != this.d.c().longValue() + j5) {
                                                        SourceKitLogger.a(str10, "content length don't match total file size");
                                                        this.e.a(this.d, responseCode, null, "content length don't match total file size");
                                                        a(this.d);
                                                        try {
                                                            httpURLConnectionA.disconnect();
                                                            randomAccessFile.close();
                                                            return;
                                                        } catch (IOException e9) {
                                                            SourceKitLogger.a(a, "IOException finally -" + e9.getMessage());
                                                            return;
                                                        }
                                                    }
                                                    j5 = jLongValue5;
                                                }
                                                a(this.d);
                                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                                long jLongValue6 = this.d.c().longValue();
                                                byte[] bArr = new byte[4096];
                                                randomAccessFile.seek(jLongValue6);
                                                long jCurrentTimeMillis4 = jCurrentTimeMillis3;
                                                InputStream inputStream4 = httpURLConnectionA.getInputStream();
                                                while (true) {
                                                    try {
                                                        try {
                                                            if (!this.c) {
                                                                if (c()) {
                                                                    if (jLongValue6 >= j5) {
                                                                        str = "already completed, break";
                                                                        j = jLongValue4;
                                                                    } else {
                                                                        int i3 = inputStream4.read(bArr);
                                                                        j = jLongValue4;
                                                                        if (-1 == i3) {
                                                                            str = "no more input stream, break";
                                                                        } else {
                                                                            try {
                                                                                randomAccessFile.write(bArr, 0, i3);
                                                                                jLongValue6 += (long) i3;
                                                                                if (jLongValue6 > j5) {
                                                                                    jLongValue6 = j5;
                                                                                }
                                                                                this.d.c(Long.valueOf(jLongValue6));
                                                                                if (System.currentTimeMillis() - jCurrentTimeMillis4 >= 5000) {
                                                                                    a(this.d);
                                                                                    jCurrentTimeMillis4 = System.currentTimeMillis();
                                                                                    SourceKitLogger.a(a, "flushing - received : " + jLongValue6 + ", total : " + j5);
                                                                                }
                                                                                jLongValue4 = j;
                                                                            } catch (IOException e10) {
                                                                                e = e10;
                                                                                inputStream2 = inputStream4;
                                                                                httpURLConnection = httpURLConnectionA;
                                                                                iOException = e;
                                                                                str = "IOException during loading - " + iOException.getMessage();
                                                                                a(this.d);
                                                                                if (inputStream2 != null) {
                                                                                    inputStream2.close();
                                                                                }
                                                                                if (httpURLConnection != null) {
                                                                                    httpURLConnection.disconnect();
                                                                                }
                                                                                randomAccessFile.close();
                                                                                i = responseCode;
                                                                                z = false;
                                                                                long jCurrentTimeMillis5 = System.currentTimeMillis();
                                                                                if (this.d.c() == null) {
                                                                                    jLongValue = 0;
                                                                                } else {
                                                                                    jLongValue = this.d.c().longValue();
                                                                                }
                                                                                j2 = jCurrentTimeMillis5 - jCurrentTimeMillis;
                                                                                if (j2 <= 0) {
                                                                                    j3 = 1;
                                                                                } else {
                                                                                    j3 = j2;
                                                                                }
                                                                                j4 = jLongValue - j;
                                                                                if (j4 < 0) {
                                                                                    j4 = 0;
                                                                                }
                                                                                String str11 = a;
                                                                                SourceKitLogger.a(str11, str);
                                                                                SourceKitLogger.a(str11, "end, average speed : " + (j4 / j3) + " bps");
                                                                                if (z) {
                                                                                    this.e.a(this.d);
                                                                                } else {
                                                                                    this.e.a(this.d, i, iOException, str);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    z2 = true;
                                                                } else {
                                                                    str2 = "not in valid network, break";
                                                                }
                                                                a(this.d);
                                                                if (inputStream4 != null) {
                                                                    try {
                                                                        inputStream4.close();
                                                                    } catch (IOException e11) {
                                                                        SourceKitLogger.a(a, "IOException finally -" + e11.getMessage());
                                                                    }
                                                                }
                                                                httpURLConnectionA.disconnect();
                                                                randomAccessFile.close();
                                                                i = responseCode;
                                                                z = z2;
                                                                iOException = null;
                                                                break;
                                                            }
                                                            str2 = "stopped, break";
                                                            str = str2;
                                                            j = jLongValue4;
                                                            z2 = false;
                                                            a(this.d);
                                                            if (inputStream4 != null) {
                                                                inputStream4.close();
                                                            }
                                                            httpURLConnectionA.disconnect();
                                                            randomAccessFile.close();
                                                            i = responseCode;
                                                            z = z2;
                                                            iOException = null;
                                                            break;
                                                        } catch (Throwable th4) {
                                                            httpURLConnection = httpURLConnectionA;
                                                            inputStream = inputStream4;
                                                            th = th4;
                                                        }
                                                    } catch (IOException e12) {
                                                        e = e12;
                                                        j = jLongValue4;
                                                    }
                                                }
                                            } catch (IOException e13) {
                                                e = e13;
                                                j = jLongValue4;
                                                httpURLConnection = httpURLConnectionA;
                                                inputStream2 = null;
                                                iOException = e;
                                                str = "IOException during loading - " + iOException.getMessage();
                                                a(this.d);
                                                if (inputStream2 != null) {
                                                    inputStream2.close();
                                                }
                                                if (httpURLConnection != null) {
                                                    httpURLConnection.disconnect();
                                                }
                                                randomAccessFile.close();
                                                i = responseCode;
                                                z = false;
                                            }
                                        } catch (IOException e14) {
                                            e = e14;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        httpURLConnection = httpURLConnectionA;
                                        inputStream = null;
                                    }
                                }
                                th = th;
                                InputStream inputStream5 = inputStream3;
                                httpURLConnection = httpURLConnectionA;
                                inputStream = inputStream5;
                                a(this.d);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e15) {
                                        SourceKitLogger.a(a, "IOException finally -" + e15.getMessage());
                                        throw th;
                                    }
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                randomAccessFile.close();
                                throw th;
                            }
                        } catch (IOException e16) {
                            e = e16;
                            j = jLongValue4;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStream3 = null;
                    }
                } catch (IOException e17) {
                    e = e17;
                    j = jLongValue4;
                    inputStream2 = null;
                    responseCode = 0;
                }
            } catch (IOException e18) {
                j = jLongValue4;
                httpURLConnection = null;
                iOException = e18;
                inputStream2 = null;
                responseCode = 0;
            } catch (Throwable th7) {
                httpURLConnection = null;
                th = th7;
                inputStream = null;
            }
            long jCurrentTimeMillis6 = System.currentTimeMillis();
            if (this.d.c() == null) {
                jLongValue = 0;
            } else {
                jLongValue = this.d.c().longValue();
            }
            j2 = jCurrentTimeMillis6 - jCurrentTimeMillis;
            if (j2 <= 0) {
                j3 = 1;
            } else {
                j3 = j2;
            }
            j4 = jLongValue - j;
            if (j4 < 0) {
                j4 = 0;
            }
            String str12 = a;
            SourceKitLogger.a(str12, str);
            SourceKitLogger.a(str12, "end, average speed : " + (j4 / j3) + " bps");
            if (z) {
                this.e.a(this.d);
            } else {
                this.e.a(this.d, i, iOException, str);
            }
        } catch (FileNotFoundException e19) {
            SourceKitLogger.a(a, "open random access file exception - " + e19.getMessage());
            this.e.a(this.d, "open file exception");
        }
    }

    private boolean c() {
        return fyd.e(this.b);
    }

    @Override
    public void run() throws Throwable {
        b();
    }

    public MgmiOfflineAdResourceDao a() {
        try {
            return d.a(this.b).b();
        } catch (Exception e) {
            SourceKitLogger.a(a, "getAdResDao exception: " + e.getMessage());
            return null;
        }
    }

    private HttpURLConnection a(String str, long j) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
        httpURLConnection.setRequestProperty("Accept", "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE, "zh-CN");
        httpURLConnection.setRequestProperty("Referer", str);
        httpURLConnection.setRequestProperty("Charset", "UTF-8");
        httpURLConnection.setRequestProperty("Range", "bytes=" + j + "-");
        return httpURLConnection;
    }
}
