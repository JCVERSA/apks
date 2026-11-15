package com.google.android.gms.internal.ads;

import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.a4;
import defpackage.aye;
import defpackage.azh;
import defpackage.chf;
import defpackage.cye;
import defpackage.fy0;
import defpackage.gzh;
import defpackage.qxe;
import defpackage.qyh;
import defpackage.ryh;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class a4 extends z3 {
    public static final Set g = Collections.synchronizedSet(new HashSet());
    public static final DecimalFormat h = new DecimalFormat("#,###");
    public File e;
    public boolean f;

    public a4(chf chfVar) {
        super(chfVar);
        File cacheDir = this.b.getCacheDir();
        if (cacheDir == null) {
            int i = zze.zza;
            zzo.zzj("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(ryh.a(qyh.a(), cacheDir, "admobVideoStreams"));
        this.e = file;
        if (!file.isDirectory() && !this.e.mkdirs()) {
            String strValueOf = String.valueOf(this.e.getAbsolutePath());
            int i2 = zze.zza;
            zzo.zzj("Could not create preload cache directory at ".concat(strValueOf));
            this.e = null;
            return;
        }
        if (this.e.setReadable(true, false) && this.e.setExecutable(true, false)) {
            return;
        }
        String strValueOf2 = String.valueOf(this.e.getAbsolutePath());
        int i3 = zze.zza;
        zzo.zzj("Could not set cache file permissions at ".concat(strValueOf2));
        this.e = null;
    }

    @Override
    public final void b() {
        this.f = true;
    }

    /* JADX WARN: Code duplicated, block: B:145:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:149:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:150:0x03f1  */
    /* JADX WARN: Instruction removed from duplicated block: B:149:0x03d5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:150:0x03f1, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean n(final String str) {
        int i;
        String str2;
        String str3;
        FileOutputStream fileOutputStream;
        String str4;
        String str5;
        int i2;
        int responseCode;
        String str6;
        boolean zDelete;
        FileOutputStream fileOutputStream2 = null;
        if (this.e == null) {
            c(str, null, "noCacheDir", null);
            return false;
        }
        do {
            File file = this.e;
            if (file == null) {
                i = 0;
            } else {
                i = 0;
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().endsWith(".done")) {
                        i++;
                    }
                }
            }
            if (i <= ((Integer) zzbd.zzc().b(cye.r)).intValue()) {
                File file3 = new File(ryh.a(qyh.a(), this.e, zzf.zzg(str)));
                File fileS = s(file3);
                if (file3.isFile() && fileS.isFile()) {
                    int length = (int) file3.length();
                    String strValueOf = String.valueOf(str);
                    int i3 = zze.zza;
                    zzo.zze("Stream cache hit at ".concat(strValueOf));
                    d(str, file3.getAbsolutePath(), length);
                    return true;
                }
                String strValueOf2 = String.valueOf(this.e.getAbsolutePath());
                String strValueOf3 = String.valueOf(str);
                Set set = g;
                String strConcat = strValueOf2.concat(strValueOf3);
                synchronized (set) {
                    try {
                        if (set.contains(strConcat)) {
                            int i4 = zze.zza;
                            zzo.zzj("Stream cache already in progress at " + str);
                            c(str, file3.getAbsolutePath(), "inProgress", null);
                            return false;
                        }
                        set.add(strConcat);
                        String str7 = "error";
                        try {
                            HttpURLConnection httpURLConnectionN = azh.b().n(new gzh() {
                                @Override
                                public final URLConnection zza() throws IOException {
                                    Set set2 = a4.g;
                                    zzv.zzx();
                                    int iIntValue = ((Integer) zzbd.zzc().b(cye.P)).intValue();
                                    URL url = new URL(str);
                                    int i5 = 0;
                                    while (true) {
                                        i5++;
                                        if (i5 > 20) {
                                            throw new IOException("Too many redirects (20)");
                                        }
                                        int i6 = xyh.a;
                                        URLConnection uRLConnectionOpenConnection = url.openConnection();
                                        uRLConnectionOpenConnection.setConnectTimeout(iIntValue);
                                        uRLConnectionOpenConnection.setReadTimeout(iIntValue);
                                        if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                                            throw new IOException("Invalid protocol.");
                                        }
                                        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                                        zzl zzlVar = new zzl(null);
                                        zzlVar.zzc(httpURLConnection, null);
                                        httpURLConnection.setInstanceFollowRedirects(false);
                                        int responseCode2 = httpURLConnection.getResponseCode();
                                        zzlVar.zze(httpURLConnection, responseCode2);
                                        if (responseCode2 / 100 != 3) {
                                            return httpURLConnection;
                                        }
                                        String headerField = httpURLConnection.getHeaderField("Location");
                                        if (headerField == null) {
                                            throw new IOException("Missing Location header in redirect");
                                        }
                                        URL url2 = new URL(url, headerField);
                                        String protocol = url2.getProtocol();
                                        if (protocol == null) {
                                            throw new IOException("Protocol is null");
                                        }
                                        if (!protocol.equals(ProxyConfig.MATCH_HTTP) && !protocol.equals(ProxyConfig.MATCH_HTTPS)) {
                                            throw new IOException("Unsupported scheme: ".concat(protocol));
                                        }
                                        String strConcat2 = "Redirecting to ".concat(headerField);
                                        int i7 = zze.zza;
                                        zzo.zze(strConcat2);
                                        httpURLConnection.disconnect();
                                        url = url2;
                                    }
                                }
                            }, 265, -1);
                            if (httpURLConnectionN == null || (responseCode = httpURLConnectionN.getResponseCode()) < 400) {
                                int contentLength = httpURLConnectionN.getContentLength();
                                if (contentLength < 0) {
                                    int i5 = zze.zza;
                                    zzo.zzj("Stream cache aborted, missing content-length header at " + str);
                                    c(str, file3.getAbsolutePath(), "contentLengthMissing", null);
                                    set.remove(strConcat);
                                    return false;
                                }
                                DecimalFormat decimalFormat = h;
                                String str8 = decimalFormat.format(contentLength);
                                int iIntValue = ((Integer) zzbd.zzc().b(cye.s)).intValue();
                                if (contentLength > iIntValue) {
                                    int i6 = zze.zza;
                                    zzo.zzj("Content length " + str8 + " exceeds limit at " + str);
                                    c(str, file3.getAbsolutePath(), "sizeExceeded", "File too big for full file cache. Size: " + str8);
                                    set.remove(strConcat);
                                    return false;
                                }
                                int i7 = zze.zza;
                                zzo.zze("Caching " + str8 + " bytes from " + str);
                                ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(httpURLConnectionN.getInputStream());
                                FileOutputStream fileOutputStream3 = new FileOutputStream(file3);
                                try {
                                    FileChannel channel = fileOutputStream3.getChannel();
                                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1048576);
                                    fy0 fy0VarZzC = zzv.zzC();
                                    long jCurrentTimeMillis = fy0VarZzC.currentTimeMillis();
                                    zzbx zzbxVar = new zzbx(((Long) zzbd.zzc().b(cye.O)).longValue());
                                    qxe qxeVar = cye.N;
                                    aye ayeVarZzc = zzbd.zzc();
                                    long jLongValue = ((Long) ayeVarZzc.b(qxeVar)).longValue();
                                    fileOutputStream = fileOutputStream3;
                                    int i8 = 0;
                                    while (true) {
                                        try {
                                            int i9 = readableByteChannelNewChannel.read(byteBufferAllocate);
                                            if (i9 >= 0) {
                                                int i10 = i8 + i9;
                                                try {
                                                    try {
                                                        if (i10 > iIntValue) {
                                                            String str9 = "File too big for full file cache. Size: " + Integer.toString(i10);
                                                            throw new IOException("stream cache file size limit exceeded");
                                                        }
                                                        try {
                                                            byteBufferAllocate.flip();
                                                            while (channel.write(byteBufferAllocate) > 0) {
                                                            }
                                                            byteBufferAllocate.clear();
                                                            if (fy0VarZzC.currentTimeMillis() - jCurrentTimeMillis > 1000 * jLongValue) {
                                                                String str10 = "Timeout exceeded. Limit: " + Long.toString(jLongValue) + " sec";
                                                                throw new IOException("stream cache time limit exceeded");
                                                            }
                                                            ByteBuffer byteBuffer = byteBufferAllocate;
                                                            if (this.f) {
                                                                throw new IOException("abort requested");
                                                            }
                                                            if (zzbxVar.zzb()) {
                                                                str4 = str7;
                                                                i2 = i10;
                                                                str5 = strConcat;
                                                                try {
                                                                    zzf.zza.post(new zzccm(this, str, file3.getAbsolutePath(), i2, contentLength, false));
                                                                } catch (IOException | RuntimeException e) {
                                                                    e = e;
                                                                }
                                                            } else {
                                                                i2 = i10;
                                                                str5 = strConcat;
                                                                str4 = str7;
                                                            }
                                                            decimalFormat = decimalFormat;
                                                            byteBufferAllocate = byteBuffer;
                                                            iIntValue = iIntValue;
                                                            zzbxVar = zzbxVar;
                                                            str7 = str4;
                                                            channel = channel;
                                                            i8 = i2;
                                                            readableByteChannelNewChannel = readableByteChannelNewChannel;
                                                            strConcat = str5;
                                                            contentLength = contentLength;
                                                        } catch (IOException | RuntimeException e2) {
                                                            e = e2;
                                                            str5 = strConcat;
                                                            str4 = str7;
                                                        }
                                                    } catch (IOException | RuntimeException e3) {
                                                        e = e3;
                                                        fileOutputStream2 = fileOutputStream;
                                                        str2 = str5;
                                                    }
                                                } catch (IOException | RuntimeException e4) {
                                                    e = e4;
                                                    str3 = ayeVarZzc;
                                                    fileOutputStream2 = fileOutputStream;
                                                    str2 = str5;
                                                }
                                            } else {
                                                str5 = strConcat;
                                                str4 = str7;
                                                DecimalFormat decimalFormat2 = decimalFormat;
                                                fileOutputStream.close();
                                                if (zzo.zzm(3)) {
                                                    zzo.zze("Preloaded " + decimalFormat2.format(i8) + " bytes from " + str);
                                                }
                                                file3.setReadable(true, false);
                                                if (fileS.isFile()) {
                                                    fileS.setLastModified(System.currentTimeMillis());
                                                } else {
                                                    try {
                                                        fileS.createNewFile();
                                                    } catch (IOException unused) {
                                                    }
                                                }
                                                d(str, file3.getAbsolutePath(), i8);
                                                str2 = str5;
                                                try {
                                                    g.remove(str2);
                                                    return true;
                                                } catch (IOException | RuntimeException e5) {
                                                    e = e5;
                                                }
                                            }
                                            e = e;
                                            str2 = str5;
                                        } catch (IOException | RuntimeException e6) {
                                            e = e6;
                                            str2 = strConcat;
                                            str4 = str7;
                                        }
                                        fileOutputStream2 = fileOutputStream;
                                        str7 = str4;
                                        str3 = 0;
                                    }
                                } catch (IOException | RuntimeException e7) {
                                    e = e7;
                                    fileOutputStream = fileOutputStream3;
                                }
                            } else {
                                str7 = "badUrl";
                                try {
                                    String str11 = "HTTP request failed. Code: " + Integer.toString(responseCode);
                                    try {
                                        throw new IOException("HTTP status code " + responseCode + " at " + str);
                                    } catch (IOException | RuntimeException e8) {
                                        e = e8;
                                        str6 = str11;
                                        str2 = strConcat;
                                        str3 = str6;
                                        if (e instanceof RuntimeException) {
                                            zzv.zzp().x(e, "VideoStreamFullFileCache.preload");
                                        }
                                        fileOutputStream2.close();
                                        if (this.f) {
                                            int i11 = zze.zza;
                                            zzo.zzi("Preload aborted for URL \"" + str + "\"");
                                        } else {
                                            int i12 = zze.zza;
                                            zzo.zzk("Preload failed for URL \"" + str + "\"", e);
                                        }
                                        if (file3.exists()) {
                                            zzo.zzj("Could not delete partial cache file at ".concat(String.valueOf(file3.getAbsolutePath())));
                                        }
                                        c(str, file3.getAbsolutePath(), str7, str3);
                                        g.remove(str2);
                                        return false;
                                    }
                                } catch (IOException | RuntimeException e9) {
                                    e = e9;
                                    str6 = null;
                                }
                            }
                        } catch (IOException | RuntimeException e10) {
                            e = e10;
                            str2 = strConcat;
                            str7 = "error";
                            str3 = 0;
                            fileOutputStream2 = null;
                        }
                        if (e instanceof RuntimeException) {
                            zzv.zzp().x(e, "VideoStreamFullFileCache.preload");
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException | NullPointerException unused2) {
                        }
                        if (this.f) {
                            int i13 = zze.zza;
                            zzo.zzi("Preload aborted for URL \"" + str + "\"");
                        } else {
                            int i14 = zze.zza;
                            zzo.zzk("Preload failed for URL \"" + str + "\"", e);
                        }
                        if (file3.exists() && !file3.delete()) {
                            zzo.zzj("Could not delete partial cache file at ".concat(String.valueOf(file3.getAbsolutePath())));
                        }
                        c(str, file3.getAbsolutePath(), str7, str3);
                        g.remove(str2);
                        return false;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            File file4 = this.e;
            if (file4 == null) {
                break;
            }
            long j = Long.MAX_VALUE;
            File file5 = null;
            for (File file6 : file4.listFiles()) {
                if (!file6.getName().endsWith(".done")) {
                    long jLastModified = file6.lastModified();
                    if (jLastModified < j) {
                        file5 = file6;
                        j = jLastModified;
                    }
                }
            }
            if (file5 != null) {
                zDelete = file5.delete();
                File fileS2 = s(file5);
                if (fileS2.isFile()) {
                    zDelete &= fileS2.delete();
                }
            } else {
                zDelete = false;
            }
        } while (zDelete);
        int i15 = zze.zza;
        zzo.zzj("Unable to expire stream cache");
        c(str, null, "expireFailed", null);
        return false;
    }

    public final File s(File file) {
        return new File(ryh.a(qyh.a(), this.e, String.valueOf(file.getName()).concat(".done")));
    }
}
