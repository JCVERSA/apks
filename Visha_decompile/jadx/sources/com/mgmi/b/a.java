package com.mgmi.b;

import android.content.Context;
import android.os.Process;
import defpackage.i4d;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class a {
    private static Map<String, a> a = new HashMap();
    private C0165a b;

    public class C0165a {
        protected File a;
        private final AtomicLong c;
        private final AtomicInteger d;
        private final long e;
        private final int f;
        private final Map<File, Long> g;

        private C0165a(File file, long j, int i) {
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
            i4d.a().b(new Runnable() {
                @Override
                public void run() {
                    File[] fileArrListFiles = C0165a.this.a.listFiles();
                    if (fileArrListFiles != null) {
                        int iB = 0;
                        int i = 0;
                        for (File file : fileArrListFiles) {
                            iB = (int) (((long) iB) + C0165a.this.b(file));
                            i++;
                            C0165a.this.g.put(file, Long.valueOf(file.lastModified()));
                        }
                        C0165a.this.c.set(iB);
                        C0165a.this.d.set(i);
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
                this.c.addAndGet(-b());
                iAddAndGet = this.d.addAndGet(-1);
            }
            this.d.addAndGet(1);
            long jB = b(file);
            long jAddAndGet = this.c.get();
            while (jAddAndGet + jB > this.e) {
                jAddAndGet = this.c.addAndGet(-b());
            }
            this.c.addAndGet(jB);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long lValueOf = Long.valueOf(jCurrentTimeMillis);
            file.setLastModified(jCurrentTimeMillis);
            this.g.put(file, lValueOf);
        }

        private long b() {
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
            return (str == null || !b(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        public static String[] c(byte[] bArr) {
            if (b(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }

        public static boolean a(byte[] bArr) {
            String[] strArrC = c(bArr);
            if (strArrC != null && strArrC.length == 2) {
                String strSubstring = strArrC[0];
                while (strSubstring.startsWith("0")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(strSubstring).longValue() + (Long.valueOf(strArrC[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        public static boolean b(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
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
    }

    private a(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.b = new C0165a(file, j, i);
            return;
        }
        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
    }

    public static a a(Context context, String str) {
        return a(new File(context.getFilesDir(), str), 100000000L, Integer.MAX_VALUE);
    }

    public boolean b(String str) {
        return this.b.c(str);
    }

    public static a a(File file, long j, int i) {
        a aVar = a.get(file.getAbsoluteFile() + a());
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(file, j, i);
        a.put(file.getAbsolutePath() + a(), aVar2);
        return aVar2;
    }

    private static String a() {
        return "_" + Process.myPid();
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
                b(str);
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
}
