package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class zme implements yle {
    public final yme c;
    public final Map a = new LinkedHashMap(16, 0.75f, true);
    public long b = 0;
    public final int d = 20971520;

    public zme(yme ymeVar, int i) {
        this.c = ymeVar;
    }

    public static int c(InputStream inputStream) {
        return (l(inputStream) << 24) | l(inputStream) | (l(inputStream) << 8) | (l(inputStream) << 16);
    }

    public static long d(InputStream inputStream) {
        return (((long) l(inputStream)) & 255) | ((((long) l(inputStream)) & 255) << 8) | ((((long) l(inputStream)) & 255) << 16) | ((((long) l(inputStream)) & 255) << 24) | ((((long) l(inputStream)) & 255) << 32) | ((((long) l(inputStream)) & 255) << 40) | ((((long) l(inputStream)) & 255) << 48) | ((((long) l(inputStream)) & 255) << 56);
    }

    public static String f(xme xmeVar) {
        return new String(k(xmeVar, d(xmeVar)), "UTF-8");
    }

    public static void h(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void i(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void j(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        i(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    public static byte[] k(xme xmeVar, long j) throws IOException {
        long jB = xmeVar.b();
        if (j >= 0 && j <= jB) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(xmeVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + jB);
    }

    public static int l(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    public static final String o(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    @Override
    public final synchronized void a(String str, boolean z) {
        xle xleVarZza = zza(str);
        if (xleVarZza != null) {
            xleVarZza.f = 0L;
            xleVarZza.e = 0L;
            b(str, xleVarZza);
        }
    }

    @Override
    public final synchronized void b(String str, xle xleVar) {
        try {
            long j = this.b;
            int length = xleVar.a.length;
            long j2 = j + ((long) length);
            int i = this.d;
            if (j2 <= i || length <= i * 0.9f) {
                File fileE = e(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileE));
                    wme wmeVar = new wme(str, xleVar);
                    try {
                        h(bufferedOutputStream, 538247942);
                        j(bufferedOutputStream, wmeVar.b);
                        String str2 = wmeVar.c;
                        if (str2 == null) {
                            str2 = "";
                        }
                        j(bufferedOutputStream, str2);
                        i(bufferedOutputStream, wmeVar.d);
                        i(bufferedOutputStream, wmeVar.e);
                        i(bufferedOutputStream, wmeVar.f);
                        i(bufferedOutputStream, wmeVar.g);
                        List<dme> list = wmeVar.h;
                        if (list != null) {
                            h(bufferedOutputStream, list.size());
                            for (dme dmeVar : list) {
                                j(bufferedOutputStream, dmeVar.a());
                                j(bufferedOutputStream, dmeVar.b());
                            }
                        } else {
                            h(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(xleVar.a);
                        bufferedOutputStream.close();
                        wmeVar.a = fileE.length();
                        m(str, wmeVar);
                        long j3 = this.b;
                        int i2 = this.d;
                        if (j3 >= i2) {
                            if (nme.b) {
                                nme.d("Pruning old cache entries.", new Object[0]);
                            }
                            long j4 = this.b;
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator it = this.a.entrySet().iterator();
                            int i3 = 0;
                            while (it.hasNext()) {
                                wme wmeVar2 = (wme) ((Map.Entry) it.next()).getValue();
                                String str3 = wmeVar2.b;
                                if (e(str3).delete()) {
                                    this.b -= wmeVar2.a;
                                } else {
                                    nme.a("Could not delete cache entry for key=%s, filename=%s", str3, o(str3));
                                }
                                it.remove();
                                i3++;
                                if (this.b < i2 * 0.9f) {
                                    break;
                                }
                            }
                            if (nme.b) {
                                nme.d("pruned %d files, %d bytes, %d ms", Integer.valueOf(i3), Long.valueOf(this.b - j4), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
                            }
                        }
                    } catch (IOException e) {
                        nme.a("%s", e.toString());
                        bufferedOutputStream.close();
                        nme.a("Failed to write header for %s", fileE.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused) {
                    if (!fileE.delete()) {
                        nme.a("Could not clean up file %s", fileE.getAbsolutePath());
                    }
                    if (!this.c.zza().exists()) {
                        nme.a("Re-initializing cache after external clearing.", new Object[0]);
                        this.a.clear();
                        this.b = 0L;
                        zzb();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final File e(String str) {
        return new File(this.c.zza(), o(str));
    }

    public final synchronized void g(String str) {
        boolean zDelete = e(str).delete();
        n(str);
        if (zDelete) {
            return;
        }
        nme.a("Could not delete cache entry for key=%s, filename=%s", str, o(str));
    }

    public final void m(String str, wme wmeVar) {
        Map map = this.a;
        if (map.containsKey(str)) {
            this.b += wmeVar.a - ((wme) map.get(str)).a;
        } else {
            this.b += wmeVar.a;
        }
        map.put(str, wmeVar);
    }

    public final void n(String str) {
        wme wmeVar = (wme) this.a.remove(str);
        if (wmeVar != null) {
            this.b -= wmeVar.a;
        }
    }

    @Override
    public final synchronized xle zza(String str) {
        wme wmeVar = (wme) this.a.get(str);
        if (wmeVar == null) {
            return null;
        }
        File fileE = e(str);
        try {
            xme xmeVar = new xme(new BufferedInputStream(new FileInputStream(fileE)), fileE.length());
            try {
                String str2 = wme.a(xmeVar).b;
                if (!TextUtils.equals(str, str2)) {
                    nme.a("%s: key=%s, found=%s", fileE.getAbsolutePath(), str, str2);
                    n(str);
                    xmeVar.close();
                    return null;
                }
                byte[] bArrK = k(xmeVar, xmeVar.b());
                xle xleVar = new xle();
                xleVar.a = bArrK;
                xleVar.b = wmeVar.c;
                xleVar.c = wmeVar.d;
                xleVar.d = wmeVar.e;
                xleVar.e = wmeVar.f;
                xleVar.f = wmeVar.g;
                List<dme> list = wmeVar.h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (dme dmeVar : list) {
                    treeMap.put(dmeVar.a(), dmeVar.b());
                }
                xleVar.g = treeMap;
                xleVar.h = Collections.unmodifiableList(list);
                xmeVar.close();
                return xleVar;
            } catch (Throwable th) {
                xmeVar.close();
                throw th;
            }
        } catch (IOException e) {
            nme.a("%s: %s", fileE.getAbsolutePath(), e.toString());
            g(str);
            return null;
        }
    }

    @Override
    public final synchronized void zzb() {
        File fileZza = this.c.zza();
        if (fileZza.exists()) {
            File[] fileArrListFiles = fileZza.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    try {
                        long length = file.length();
                        xme xmeVar = new xme(new BufferedInputStream(new FileInputStream(file)), length);
                        try {
                            wme wmeVarA = wme.a(xmeVar);
                            wmeVarA.a = length;
                            m(wmeVarA.b, wmeVarA);
                            xmeVar.close();
                        } catch (Throwable th) {
                            xmeVar.close();
                            throw th;
                        }
                    } catch (IOException unused) {
                        file.delete();
                    }
                }
            }
        } else if (!fileZza.mkdirs()) {
            nme.b("Unable to create cache dir %s", fileZza.getAbsolutePath());
        }
    }

    public zme(File file, int i) {
        this.c = new vme(this, file);
    }
}
