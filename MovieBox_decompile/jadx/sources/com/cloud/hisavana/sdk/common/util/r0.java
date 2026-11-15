package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.b4;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class r0 {
    /* JADX WARN: Code duplicated, block: B:60:0x00ef A[Catch: all -> 0x0074, IOException -> 0x0077, TryCatch #14 {IOException -> 0x0077, all -> 0x0074, blocks: (B:9:0x0028, B:11:0x002e, B:13:0x0038, B:16:0x0040, B:18:0x0046, B:20:0x0069, B:23:0x0070, B:28:0x007a, B:30:0x009d, B:33:0x00a4, B:35:0x00aa, B:47:0x00cf, B:60:0x00ef, B:61:0x00f2, B:55:0x00e5, B:67:0x0104, B:69:0x0114, B:71:0x011a, B:72:0x011d), top: B:119:0x0028 }] */
    public static boolean a(InputStream inputStream, String str) throws Throwable {
        ZipInputStream zipInputStream;
        FileOutputStream fileOutputStream;
        if (inputStream == null || TextUtils.isEmpty(str)) {
            return false;
        }
        String str2 = str + System.currentTimeMillis();
        ZipInputStream zipInputStream2 = null;
        FileOutputStream fileOutputStream2 = null;
        zipInputStream2 = null;
        try {
            try {
                zipInputStream = new ZipInputStream(inputStream);
                while (true) {
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            File file = new File(str2);
                            File file2 = new File(str);
                            if (!file.exists()) {
                                try {
                                    zipInputStream.close();
                                } catch (IOException e10) {
                                    b4.b().d("ZIP", Log.getStackTraceString(e10));
                                }
                                return false;
                            }
                            if (file2.exists()) {
                                m.a(file2);
                            }
                            file.renameTo(file2);
                            try {
                                zipInputStream.close();
                                return true;
                            } catch (IOException e11) {
                                b4.b().d("ZIP", Log.getStackTraceString(e11));
                                return true;
                            }
                        }
                        String name = nextEntry.getName();
                        if (!TextUtils.isEmpty(name) && !name.contains("../")) {
                            if (nextEntry.isDirectory()) {
                                File file3 = new File(str2 + File.separator + name);
                                String canonicalPath = file3.getCanonicalPath();
                                if (!TextUtils.isEmpty(canonicalPath) && !canonicalPath.contains("../")) {
                                    file3.mkdirs();
                                }
                            } else {
                                File file4 = new File(str2 + File.separator + name);
                                String canonicalPath2 = file4.getCanonicalPath();
                                if (!TextUtils.isEmpty(canonicalPath2) && !canonicalPath2.contains("../")) {
                                    if (!file4.exists()) {
                                        file4.getParentFile().mkdirs();
                                        file4.createNewFile();
                                    }
                                    try {
                                        fileOutputStream = new FileOutputStream(file4);
                                        try {
                                            byte[] bArr = new byte[1024];
                                            while (true) {
                                                int i10 = zipInputStream.read(bArr);
                                                if (i10 == -1) {
                                                    break;
                                                }
                                                fileOutputStream.write(bArr, 0, i10);
                                                fileOutputStream.flush();
                                            }
                                            fileOutputStream.close();
                                        } catch (Exception e12) {
                                            e = e12;
                                            try {
                                                b4.b().e("ZIP", Log.getStackTraceString(e));
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                fileOutputStream2 = fileOutputStream;
                                                fileOutputStream = fileOutputStream2;
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                        fileOutputStream = null;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        fileOutputStream = fileOutputStream2;
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        throw th;
                                    }
                                }
                            }
                        }
                        try {
                            zipInputStream.close();
                        } catch (IOException e14) {
                            b4.b().d("ZIP", Log.getStackTraceString(e14));
                        }
                        return false;
                    } catch (IOException e15) {
                        e = e15;
                        zipInputStream2 = zipInputStream;
                        b4.b().d("ZIP", Log.getStackTraceString(e));
                        if (zipInputStream2 != null) {
                            try {
                                zipInputStream2.close();
                            } catch (IOException e16) {
                                b4.b().d("ZIP", Log.getStackTraceString(e16));
                            }
                        }
                        return false;
                    } catch (Throwable th5) {
                        th = th5;
                        if (zipInputStream != null) {
                            try {
                                zipInputStream.close();
                            } catch (IOException e17) {
                                b4.b().d("ZIP", Log.getStackTraceString(e17));
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                zipInputStream = zipInputStream2;
            }
        } catch (IOException e18) {
            e = e18;
        }
    }

    public static boolean b(String str, String str2) {
        FileInputStream fileInputStream;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        try {
            fileInputStream = new FileInputStream(str);
            try {
                boolean zA = a(fileInputStream, str2);
                try {
                    fileInputStream.close();
                } catch (Exception e10) {
                    b4.b().e("ZIP", "decompressZipFolder: " + Log.getStackTraceString(e10));
                }
                return zA;
            } catch (Throwable th2) {
                th = th2;
                try {
                    b4.b().e("ZIP", "decompressZipFolder: " + Log.getStackTraceString(th));
                    return false;
                } finally {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e11) {
                            b4.b().e("ZIP", "decompressZipFolder: " + Log.getStackTraceString(e11));
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }
}
