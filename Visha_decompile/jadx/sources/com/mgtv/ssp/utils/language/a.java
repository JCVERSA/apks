package com.mgtv.ssp.utils.language;

import android.content.Context;
import android.os.Process;
import com.hunantv.imgo.util.ThreadManager;
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

public class a {
    private static Map<String, a> a = new HashMap();
    private C0185a b;

    public class C0185a {
        protected File a;
        private final AtomicLong c;
        private final AtomicInteger d;
        private final long e;
        private final int f;
        private final Map<File, Long> g;

        private C0185a(File file, long j, int i) {
            this.g = Collections.synchronizedMap(new HashMap());
            this.a = file;
            this.e = j;
            this.f = i;
            this.c = new AtomicLong();
            this.d = new AtomicInteger();
            a();
        }

        public boolean c(String str) {
            return a(str).delete();
        }

        private void a() {
            ThreadManager.execute(new Runnable() {
                @Override
                public void run() {
                    File[] fileArrListFiles = C0185a.this.a.listFiles();
                    if (fileArrListFiles != null) {
                        int iB = 0;
                        int i = 0;
                        for (File file : fileArrListFiles) {
                            iB = (int) (((long) iB) + C0185a.this.b(file));
                            i++;
                            C0185a.this.g.put(file, Long.valueOf(file.lastModified()));
                        }
                        C0185a.this.c.set(iB);
                        C0185a.this.d.set(i);
                    }
                }
            });
        }

        public File b(String str) {
            return new File(this.a, str.hashCode() + "");
        }

        public void a(File file) {
            int iAddAndGet = this.d.get();
            while (iAddAndGet + 1 > this.f) {
                this.c.addAndGet(-c());
                iAddAndGet = this.d.addAndGet(-1);
            }
            this.d.addAndGet(1);
            long jB = b(file);
            long jAddAndGet = this.c.get();
            while (jAddAndGet + jB > this.e) {
                jAddAndGet = this.c.addAndGet(-c());
            }
            this.c.addAndGet(jB);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long lValueOf = Long.valueOf(jCurrentTimeMillis);
            file.setLastModified(jCurrentTimeMillis);
            this.g.put(file, lValueOf);
        }

        public void b() {
            this.g.clear();
            this.c.set(0L);
            File[] fileArrListFiles = this.a.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    file.delete();
                }
            }
        }

        private long c() {
            File key;
            if (this.g.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> setEntrySet = this.g.entrySet();
            synchronized (this.g) {
                try {
                    key = null;
                    Long value = null;
                    for (Map.Entry<File, Long> entry : setEntrySet) {
                        if (key == null) {
                            key = entry.getKey();
                            value = entry.getValue();
                        } else {
                            Long value2 = entry.getValue();
                            if (value2.longValue() < value.longValue()) {
                                key = entry.getKey();
                                value = value2;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            long jB = b(key);
            if (key.delete()) {
                this.g.remove(key);
            }
            return jB;
        }

        public long b(File file) {
            return file.length();
        }

        public File a(String str) {
            File fileB = b(str);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long lValueOf = Long.valueOf(jCurrentTimeMillis);
            fileB.setLastModified(jCurrentTimeMillis);
            this.g.put(fileB, lValueOf);
            return fileB;
        }
    }

    public static class b {
        public static boolean a(String str) {
            return a(str.getBytes());
        }

        public static String b(String str) {
            return (str == null || !c(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        public static boolean c(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        public static String[] d(byte[] bArr) {
            if (c(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }

        public static boolean a(byte[] bArr) {
            String[] strArrD = d(bArr);
            if (strArrD != null && strArrD.length == 2) {
                String strSubstring = strArrD[0];
                while (strSubstring.startsWith("0")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(strSubstring).longValue() + (Long.valueOf(strArrD[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        public static byte[] b(byte[] bArr) {
            return c(bArr) ? a(bArr, a(bArr, ' ') + 1, bArr.length) : bArr;
        }

        public static byte[] a(int i, byte[] bArr) {
            byte[] bytes = a(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        public static int a(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        public static byte[] a(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        public static String a(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + "-" + i + ' ';
        }
    }

    private a(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.b = new C0185a(file, j, i);
            return;
        }
        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
    }

    private static String b() {
        return "_" + Process.myPid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public Object c(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? B = b(str);
        try {
            if (B == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(B);
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
                    B = 0;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    if (B == 0) {
                        throw th;
                    }
                    try {
                        B.close();
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
                B = 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public boolean d(String str) {
        return this.b.c(str);
    }

    public static a a(Context context, String str) {
        return a(new File(context.getFilesDir(), str), 100000000L, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0033: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:16:0x0033 */
    public byte[] b(String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        try {
            try {
                File fileA = this.b.a(str);
                if (!fileA.exists()) {
                    return null;
                }
                randomAccessFile = new RandomAccessFile(fileA, "r");
                try {
                    byte[] bArr = new byte[(int) randomAccessFile.length()];
                    randomAccessFile.read(bArr);
                    if (b.a(bArr)) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        d(str);
                        return null;
                    }
                    byte[] bArrB = b.b(bArr);
                    try {
                        randomAccessFile.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return bArrB;
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

    public static a a(File file, long j, int i) {
        a aVar = a.get(file.getAbsoluteFile() + b());
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(file, j, i);
        a.put(file.getAbsolutePath() + b(), aVar2);
        return aVar2;
    }

    public void a(String str, String str2) throws Throwable {
        File fileB = this.b.b(str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(fileB), 1024);
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
                    this.b.a(fileB);
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
            }
            this.b.a(fileB);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public void b(String str, Serializable serializable, int i) throws Throwable {
        ?? r0 = 0;
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(serializable);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    r0 = -1;
                    if (i != -1) {
                        a(str, byteArray, i);
                    } else {
                        a(str, byteArray);
                    }
                    objectOutputStream2.close();
                } catch (Exception e) {
                    e = e;
                    objectOutputStream = objectOutputStream2;
                    e.printStackTrace();
                    objectOutputStream.close();
                    r0 = objectOutputStream;
                } catch (Throwable th) {
                    th = th;
                    r0 = objectOutputStream2;
                    try {
                        r0.close();
                    } catch (IOException unused) {
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (IOException unused2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
    public String a(String str) throws Throwable {
        BufferedReader bufferedReader;
        File fileA = this.b.a(str);
        ?? Exists = fileA.exists();
        ?? r2 = 0;
        try {
            if (Exists == 0) {
                return null;
            }
            try {
                bufferedReader = new BufferedReader(new FileReader(fileA));
                String str2 = "";
                while (true) {
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
                }
                if (!b.a(str2)) {
                    String strB = b.b(str2);
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    return strB;
                }
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                d(str);
                return null;
            } catch (IOException e5) {
                e = e5;
                bufferedReader = null;
            } catch (Throwable th) {
                th = th;
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r2 = Exists;
        }
    }

    public void a(String str, byte[] bArr) throws Throwable {
        File fileB = this.b.b(str);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileB);
                try {
                    fileOutputStream2.write(bArr);
                    try {
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                    } catch (IOException e) {
                        e = e;
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        }
                    }
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
                    this.b.a(fileB);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e5) {
            e = e5;
        }
        this.b.a(fileB);
    }

    public void a(String str, byte[] bArr, int i) throws Throwable {
        a(str, b.a(i, bArr));
    }

    public void a(String str, Serializable serializable) throws Throwable {
        a(str, serializable, -1);
    }

    public void a(final String str, final Serializable serializable, final int i) throws Throwable {
        if (ThreadManager.checkMainThread()) {
            ThreadManager.execute(new Runnable() {
                @Override
                public void run() throws Throwable {
                    a.this.b(str, serializable, i);
                }
            });
        } else {
            b(str, serializable, i);
        }
    }

    public void a() {
        this.b.b();
    }
}
