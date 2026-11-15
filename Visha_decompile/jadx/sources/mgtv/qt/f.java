package mgtv.qt;

import android.content.Context;
import android.os.Process;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class f {
    public static Map b = new HashMap();
    public static boolean c = true;
    public a a;

    public class a {
        public final AtomicLong a;
        public final AtomicInteger b;
        public final long c;
        public final int d;
        public final Map e;
        public File f;

        public a(f fVar, File file, byte b) {
            this(file);
        }

        public static void e(a aVar, File file) {
            int iAddAndGet = aVar.b.get();
            while (iAddAndGet + 1 > Integer.MAX_VALUE) {
                aVar.a.addAndGet(-aVar.a());
                iAddAndGet = aVar.b.addAndGet(-1);
            }
            aVar.b.addAndGet(1);
            long length = file.length();
            long jAddAndGet = aVar.a.get();
            while (jAddAndGet + length > 50000000) {
                jAddAndGet = aVar.a.addAndGet(-aVar.a());
            }
            aVar.a.addAndGet(length);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long lValueOf = Long.valueOf(jCurrentTimeMillis);
            file.setLastModified(jCurrentTimeMillis);
            aVar.e.put(file, lValueOf);
        }

        public static boolean j(a aVar, String str) {
            return aVar.b(str).delete();
        }

        public final long a() {
            File file;
            if (this.e.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry> setEntrySet = this.e.entrySet();
            synchronized (this.e) {
                try {
                    file = null;
                    Long l = null;
                    for (Map.Entry entry : setEntrySet) {
                        if (file == null) {
                            file = (File) entry.getKey();
                            l = (Long) entry.getValue();
                        } else {
                            Long l2 = (Long) entry.getValue();
                            if (l2.longValue() < l.longValue()) {
                                file = (File) entry.getKey();
                                l = l2;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            long length = file.length();
            if (file.delete()) {
                this.e.remove(file);
            }
            return length;
        }

        public final File b(String str) {
            File fileF = f(str);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long lValueOf = Long.valueOf(jCurrentTimeMillis);
            fileF.setLastModified(jCurrentTimeMillis);
            this.e.put(fileF, lValueOf);
            return fileF;
        }

        public final File f(String str) {
            if (this.f.getAbsolutePath().contains("../")) {
                return null;
            }
            return new File(this.f, String.valueOf(str.hashCode()));
        }

        public a(File file) {
            this.e = Collections.synchronizedMap(new HashMap());
            this.f = file;
            this.c = 50000000L;
            this.d = Integer.MAX_VALUE;
            this.a = new AtomicLong();
            this.b = new AtomicInteger();
            new Thread(new as(this)).start();
        }
    }

    public static class b {
        public static boolean a(String str) {
            return f(str.getBytes());
        }

        public static byte[] c(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        public static String d(String str) {
            return (str == null || !g(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        public static byte[] e(byte[] bArr) {
            return g(bArr) ? c(bArr, h(bArr) + 1, bArr.length) : bArr;
        }

        public static boolean f(byte[] bArr) {
            String[] strArr = g(bArr) ? new String[]{new String(c(bArr, 0, 13)), new String(c(bArr, 14, h(bArr)))} : null;
            if (strArr != null) {
                String strSubstring = strArr[0];
                while (strSubstring.startsWith("0")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(strSubstring).longValue() + (Long.valueOf(strArr[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        public static boolean g(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && h(bArr) > 14;
        }

        public static int h(byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == 32) {
                    return i;
                }
            }
            return -1;
        }
    }

    public f(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        this.a = new a(this, file, (byte) 0);
    }

    public static String a() {
        return "_" + Process.myPid();
    }

    public static f c(Context context) {
        File file = new File(context.getCacheDir(), "QCahe");
        f fVar = (f) b.get(file.getAbsoluteFile() + a());
        if (fVar != null) {
            return fVar;
        }
        f fVar2 = new f(file);
        b.put(file.getAbsolutePath() + a(), fVar2);
        return fVar2;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final String b(String str) throws Throwable {
        BufferedReader bufferedReader;
        File fileB = this.a.b(str);
        BufferedReader bufferedReader2 = null;
        if (!fileB.exists()) {
            return null;
        }
        try {
            if (fileB.getAbsolutePath().contains("../")) {
                return null;
            }
            bufferedReader = new BufferedReader(new FileReader(fileB));
            String str2 = "";
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        str2 = str2 + line;
                    } catch (IOException e) {
                        e = e;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                }
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
            if (b.a(str2)) {
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                h(str);
                return null;
            }
            String strD = b.d(str2);
            try {
                bufferedReader.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return strD;
            th = th;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            throw th;
        } catch (IOException e6) {
            e = e6;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
        e.printStackTrace();
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        return null;
    }

    public final void d(String str, Serializable serializable) throws Throwable {
        a aVar;
        ObjectOutputStream objectOutputStream = null;
        fileOutputStream = null;
        FileOutputStream fileOutputStream = null;
        objectOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream2.writeObject(serializable);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                File fileF = this.a.f(str);
                if (!fileF.exists()) {
                    fileF.getParentFile().mkdirs();
                }
                try {
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(fileF);
                        try {
                            fileOutputStream2.write(byteArray);
                            try {
                                fileOutputStream2.flush();
                                fileOutputStream2.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            aVar = this.a;
                        } catch (Exception e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            aVar = this.a;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.flush();
                                    fileOutputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            a.e(this.a, fileF);
                            throw th;
                        }
                    } catch (Exception e5) {
                        e = e5;
                    }
                    a.e(aVar, fileF);
                    try {
                        objectOutputStream2.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e6) {
                e = e6;
                objectOutputStream = objectOutputStream2;
                e.printStackTrace();
                try {
                    if (!c && objectOutputStream == null) {
                        throw new AssertionError();
                    }
                    objectOutputStream.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th3) {
                th = th3;
                objectOutputStream = objectOutputStream2;
                try {
                    if (!c && objectOutputStream == null) {
                        throw new AssertionError();
                    }
                    objectOutputStream.close();
                    throw th;
                } catch (IOException unused3) {
                }
            }
        } catch (Exception e7) {
            e = e7;
        }
    }

    public final void e(String str, String str2) throws Throwable {
        File fileF = this.a.f(str);
        if (!fileF.exists()) {
            fileF.getParentFile().mkdirs();
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(fileF), 1024);
                try {
                    bufferedWriter2.write(str2);
                    try {
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                    } catch (IOException e) {
                        e = e;
                        e.printStackTrace();
                    }
                } catch (IOException e2) {
                    e = e2;
                    bufferedWriter = bufferedWriter2;
                    e.printStackTrace();
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.flush();
                            bufferedWriter.close();
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.flush();
                            bufferedWriter.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    a.e(this.a, fileF);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
        a.e(this.a, fileF);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final Object f(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? G = g(str);
        try {
            if (G == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(G);
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object object = objectInputStream.readObject();
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        return object;
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Exception e6) {
                    e = e6;
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    G = 0;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    if (G == 0) {
                        throw th;
                    }
                    try {
                        G.close();
                        throw th;
                    } catch (IOException e8) {
                        e8.printStackTrace();
                        throw th;
                    }
                }
            } catch (Exception e9) {
                e = e9;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                byteArrayInputStream = null;
                th = th2;
                G = 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0033: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:16:0x0033 */
    public final byte[] g(String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        try {
            try {
                File fileB = this.a.b(str);
                if (!fileB.exists()) {
                    return null;
                }
                randomAccessFile = new RandomAccessFile(fileB, "r");
                try {
                    byte[] bArr = new byte[(int) randomAccessFile.length()];
                    randomAccessFile.read(bArr);
                    if (b.f(bArr)) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        h(str);
                        return null;
                    }
                    byte[] bArrE = b.e(bArr);
                    try {
                        randomAccessFile.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return bArrE;
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th) {
                th = th;
                randomAccessFile3 = randomAccessFile2;
                if (randomAccessFile3 != null) {
                    try {
                        randomAccessFile3.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            if (randomAccessFile3 != null) {
                randomAccessFile3.close();
            }
            throw th;
        }
        e.printStackTrace();
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
        }
        return null;
    }

    public final boolean h(String str) {
        return a.j(this.a, str);
    }
}
