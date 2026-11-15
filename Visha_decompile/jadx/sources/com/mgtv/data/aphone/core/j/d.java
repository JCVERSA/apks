package com.mgtv.data.aphone.core.j;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class d {
    public static void a(File file, File file2, String str) throws Throwable {
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                try {
                    ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2), 1048576));
                    try {
                        a(file, zipOutputStream2, "");
                        zipOutputStream2.setComment(str);
                        zipOutputStream2.close();
                        zipOutputStream2.close();
                    } catch (IOException e) {
                        e = e;
                        zipOutputStream = zipOutputStream2;
                        e.printStackTrace();
                        if (zipOutputStream != null) {
                            zipOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        zipOutputStream = zipOutputStream2;
                        if (zipOutputStream != null) {
                            try {
                                zipOutputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void a(File file, ZipOutputStream zipOutputStream, String str) throws Throwable {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str.trim().length() == 0 ? "" : File.separator);
        sb.append(file.getName());
        String string = sb.toString();
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                try {
                    String str2 = new String(string.getBytes("8859_1"), "GB2312");
                    if (file.isDirectory()) {
                        for (File file2 : file.listFiles()) {
                            a(file2, zipOutputStream, str2);
                        }
                    } else {
                        if (!file.exists()) {
                            b.b(file);
                        }
                        byte[] bArr = new byte[1048576];
                        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file), 1048576);
                        try {
                            zipOutputStream.putNextEntry(new ZipEntry(str2));
                            while (true) {
                                int i = bufferedInputStream2.read(bArr);
                                if (i == -1) {
                                    break;
                                } else {
                                    zipOutputStream.write(bArr, 0, i);
                                }
                            }
                            bufferedInputStream2.close();
                            zipOutputStream.flush();
                            zipOutputStream.closeEntry();
                            bufferedInputStream = bufferedInputStream2;
                        } catch (IOException e) {
                            e = e;
                            bufferedInputStream = bufferedInputStream2;
                            e.printStackTrace();
                            if (bufferedInputStream == null) {
                                return;
                            } else {
                                bufferedInputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedInputStream = bufferedInputStream2;
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }
}
