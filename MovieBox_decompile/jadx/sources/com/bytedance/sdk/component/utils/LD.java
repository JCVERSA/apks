package com.bytedance.sdk.component.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class LD {
    public static List<File> Sj(String str, String str2) throws IOException {
        return Sj(str, str2, (String) null);
    }

    private static boolean sP(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!Sj(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static List<File> Sj(String str, String str2, String str3) throws IOException {
        return Sj(Sj(str), Sj(str2), str3);
    }

    public static List<File> Sj(File file, File file2, String str) throws IOException {
        if (file == null || file2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        try {
            if (sP(str)) {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (!name.contains("../") && !Sj(file2, arrayList, zipFile, zipEntryNextElement, name)) {
                        zipFile.close();
                        return arrayList;
                    }
                }
            } else {
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement2 = enumerationEntries.nextElement();
                    String name2 = zipEntryNextElement2.getName();
                    if (!name2.contains("../") && name2.contains(str) && !Sj(file2, arrayList, zipFile, zipEntryNextElement2, name2)) {
                        zipFile.close();
                        return arrayList;
                    }
                }
            }
            zipFile.close();
            return arrayList;
        } catch (Throwable th2) {
            zipFile.close();
            throw th2;
        }
    }

    private static boolean sP(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isWhitespace(str.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x005a  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0064  */
    private static boolean Sj(File file, List<File> list, ZipFile zipFile, ZipEntry zipEntry, String str) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        FileOutputStream fileOutputStream;
        BufferedInputStream bufferedInputStream;
        Throwable th2;
        File file2 = new File(file, str);
        list.add(file2);
        if (zipEntry.isDirectory()) {
            return Sj(file2);
        }
        if (!sP(file2)) {
            return false;
        }
        try {
            fileOutputStream = new FileOutputStream(file2);
            try {
                bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int i10 = bufferedInputStream.read(bArr);
                            if (i10 != -1) {
                                bufferedOutputStream.write(bArr, 0, i10);
                            } else {
                                bufferedInputStream.close();
                                bufferedOutputStream.close();
                                fileOutputStream.close();
                                return true;
                            }
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedOutputStream = null;
                    th2 = th;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th2;
                }
            } catch (Throwable th5) {
                th = th5;
                bufferedOutputStream = null;
                bufferedInputStream = null;
            }
        } catch (Throwable th6) {
            th = th6;
            bufferedOutputStream = null;
            fileOutputStream = null;
            bufferedInputStream = null;
        }
    }

    private static boolean Sj(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isDirectory();
        }
        return file.mkdirs();
    }

    private static File Sj(String str) {
        if (sP(str)) {
            return null;
        }
        return new File(str);
    }
}
