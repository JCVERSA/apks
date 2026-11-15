package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.hisavana.common.constant.ComConstants;
import defpackage.m2j;
import defpackage.wd8;
import defpackage.y3i;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

@WorkerThread
final class zzig implements Runnable {
    final m2j zza;
    private final URL zzb;
    private final String zzc;
    private final y3i zzd;

    public zzig(m2j m2jVar, String str, URL url, byte[] bArr, Map map, y3i y3iVar, byte[] bArr2) {
        this.zza = m2jVar;
        wd8.f(str);
        wd8.l(url);
        wd8.l(y3iVar);
        this.zzb = url;
        this.zzd = y3iVar;
        this.zzc = str;
    }

    private final void zzb(final int i, final Exception exc, final byte[] bArr, final Map map) {
        this.zza.a.a().w(new Runnable() {
            @Override
            public final void run() {
                this.zza.zza(i, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x009f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.gms.measurement.internal.zzig] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override
    public final void run() throws Throwable {
        HttpURLConnection httpURLConnection;
        ?? r4;
        ?? r5;
        int responseCode;
        Throwable th;
        IOException e;
        InputStream inputStream;
        this.zza.f();
        try {
            m2j m2jVar = this.zza;
            URLConnection uRLConnectionOpenConnection = this.zzb.openConnection();
            if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setDefaultUseCaches(false);
            m2jVar.a.z();
            r4 = 60000;
            r5 = 60000;
            httpURLConnection.setConnectTimeout(ComConstants.defScheduleTime);
            m2jVar.a.z();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                responseCode = httpURLConnection.getResponseCode();
                try {
                    try {
                        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            inputStream = httpURLConnection.getInputStream();
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int i = inputStream.read(bArr);
                                    if (i <= 0) {
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        inputStream.close();
                                        httpURLConnection.disconnect();
                                        zzb(responseCode, null, byteArray, headerFields);
                                        return;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            inputStream = null;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        r5 = 0;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzb(responseCode, e, null, r5);
                    } catch (Throwable th4) {
                        th = th4;
                        r4 = 0;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzb(responseCode, null, null, r4);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    zzb(responseCode, e, null, r5);
                } catch (Throwable th5) {
                    th = th5;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    zzb(responseCode, null, null, r4);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
                r5 = 0;
                IOException iOException = e;
                responseCode = 0;
                e = iOException;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                zzb(responseCode, e, null, r5);
            } catch (Throwable th6) {
                th = th6;
                r4 = 0;
                Throwable th7 = th;
                responseCode = 0;
                th = th7;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                zzb(responseCode, null, null, r4);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            httpURLConnection = null;
            r5 = 0;
        } catch (Throwable th8) {
            th = th8;
            httpURLConnection = null;
            r4 = 0;
        }
    }

    public final void zza(int i, Exception exc, byte[] bArr, Map map) {
        y3i y3iVar = this.zzd;
        y3iVar.a.h(this.zzc, i, exc, bArr, map);
    }
}
