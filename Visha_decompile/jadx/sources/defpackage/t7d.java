package defpackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public abstract class t7d {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public static void a(String str, String str2) throws Throwable {
        boolean zHasMoreElements;
        ?? r0 = 0;
        ZipFile zipFile = null;
        try {
            try {
                try {
                    ZipFile zipFile2 = new ZipFile(str);
                    try {
                        Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                        while (true) {
                            zHasMoreElements = enumerationEntries.hasMoreElements();
                            if (!zHasMoreElements) {
                                break;
                            }
                            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                            if (zipEntryNextElement.isDirectory()) {
                                new File(str2 + "/" + zipEntryNextElement.getName()).mkdirs();
                            } else {
                                File file = new File(str2 + "/" + zipEntryNextElement.getName());
                                if (!file.getParentFile().exists()) {
                                    file.getParentFile().mkdirs();
                                }
                                file.createNewFile();
                                InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                byte[] bArr = new byte[2048];
                                while (true) {
                                    int i = inputStream.read(bArr);
                                    if (i == -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr, 0, i);
                                    }
                                }
                                inputStream.close();
                            }
                        }
                        zipFile2.close();
                        r0 = zHasMoreElements;
                    } catch (IOException e) {
                        e = e;
                        zipFile = zipFile2;
                        e.printStackTrace();
                        r0 = zipFile;
                        if (zipFile != null) {
                            zipFile.close();
                            r0 = zipFile;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r0 = zipFile2;
                        if (r0 != 0) {
                            try {
                                r0.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException unused2) {
        }
    }
}
