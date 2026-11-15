package mgtv.qt;

import defpackage.sjd;
import defpackage.y4d;
import defpackage.yqd;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;

public final class i implements yqd {
    public File a;

    public i(File file) {
        this.a = file;
    }

    public static File b(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream = null;
        if (y4d.i(str) || bArr == null) {
            return null;
        }
        File file = new File(str);
        g(file);
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    fileOutputStream2.write(bArr);
                    y4d.f(fileOutputStream2);
                } catch (Exception e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    y4d.f(fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    y4d.f(fileOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            return file;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void c(File file) {
        File[] fileArrListFiles;
        if (file != null) {
            try {
                if (!file.isDirectory()) {
                    file.delete();
                    return;
                }
                if (y4d.y(file.getAbsolutePath()) || (fileArrListFiles = file.listFiles()) == null) {
                    return;
                }
                if (fileArrListFiles.length <= 0) {
                    file.delete();
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    c(file2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void d(String str, String str2, boolean z) {
        j.a(new n(str, str2, z));
    }

    public static String e(File file) throws Throwable {
        if (!file.getAbsolutePath().contains("../") && file.exists()) {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = null;
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                String string = sb.toString();
                                y4d.f(bufferedReader2);
                                return string;
                            }
                            sb.append(line);
                            sb.append("\n");
                        } catch (IOException e) {
                            e = e;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            y4d.f(bufferedReader);
                            return "";
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            y4d.f(bufferedReader);
                            throw th;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.BufferedReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.Closeable[]] */
    public static boolean f(String str, String str2, boolean z) {
        int i;
        ?? r1 = 1;
        r1 = 1;
        r1 = 1;
        r1 = 1;
        if (str2.contains("../")) {
            return false;
        }
        if (!str.endsWith("\n")) {
            str = str + "\n";
        }
        BufferedWriter bufferedWriter = null;
        bufferedWriter = null;
        BufferedWriter bufferedWriter2 = null;
        bufferedWriter = null;
        try {
            try {
                File file = new File((String) str2);
                g(file);
                str2 = new BufferedReader(new StringReader(str));
                try {
                    BufferedWriter bufferedWriter3 = new BufferedWriter(new FileWriter(file, z));
                    try {
                        char[] cArr = new char[1024];
                        while (true) {
                            i = str2.read(cArr);
                            if (i == -1) {
                                break;
                            }
                            bufferedWriter3.write(cArr, 0, i);
                        }
                        bufferedWriter3.flush();
                        y4d.f(new Closeable[]{bufferedWriter3, str2});
                        bufferedWriter = i;
                        str2 = str2;
                    } catch (Exception e) {
                        e = e;
                        bufferedWriter2 = bufferedWriter3;
                        e.printStackTrace();
                        y4d.f(new Closeable[]{bufferedWriter2, str2});
                        r1 = 0;
                        bufferedWriter = bufferedWriter2;
                        str2 = str2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter3;
                        ?? r6 = new Closeable[2];
                        r6[0] = bufferedWriter;
                        r6[r1] = str2;
                        y4d.f(r6);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            str2 = 0;
        } catch (Throwable th3) {
            th = th3;
            str2 = 0;
        }
        return r1;
    }

    public static boolean g(File file) {
        File parentFile = file.getParentFile();
        if (parentFile.exists() || !parentFile.mkdirs()) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public final sjd a(InputStream inputStream) throws Throwable {
        sjd sjdVar = new sjd();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.a);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i);
                    }
                    fileOutputStream2.flush();
                    sjdVar.d(this.a);
                    y4d.f(fileOutputStream2);
                } catch (Exception e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    sjdVar.b(414);
                    sjdVar.d(e.getMessage());
                    File file = this.a;
                    if (file != null) {
                        file.delete();
                    }
                    y4d.f(fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    y4d.f(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        return sjdVar;
    }
}
