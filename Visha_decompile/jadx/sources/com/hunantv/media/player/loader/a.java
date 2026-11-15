package com.hunantv.media.player.loader;

import android.content.Context;
import android.os.Build;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.report.c.f;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class a {
    private static final String a = Build.CPU_ABI;

    public static File a(Context context) throws NullPointerException {
        return context.getDir("backup_lib", 0);
    }

    private static ZipEntry a(String str, ZipFile zipFile) {
        if (str != null && zipFile != null) {
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (zipEntryNextElement != null && zipEntryNextElement.getName() != null) {
                    String name = zipEntryNextElement.getName();
                    Locale locale = Locale.US;
                    if (name.toLowerCase(locale).endsWith(str.toLowerCase(locale))) {
                        return zipEntryNextElement;
                    }
                }
            }
        }
        return null;
    }

    public static void a(Context context, String str, String str2) throws UnsatisfiedLinkError {
        a(context, str, a, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Context context, String str, String str2, String str3) throws UnsatisfiedLinkError {
        if (str3 == null) {
            str3 = "";
        }
        byte[] bArr = new byte[8192];
        String strMapLibraryName = System.mapLibraryName(str);
        StringBuilder sb = new StringBuilder();
        sb.append(a(context).getAbsolutePath());
        char c = File.separatorChar;
        sb.append(c);
        sb.append(strMapLibraryName);
        File file = new File(sb.toString());
        String str4 = str3 + " BackupLibLoader load ";
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(new File(context.getApplicationInfo().sourceDir), 1);
                try {
                    ZipEntry entry = zipFile2.getEntry("lib" + c + str2 + c + strMapLibraryName);
                    if (entry == null) {
                        entry = a(strMapLibraryName, zipFile2);
                    }
                    InputStream inputStream = zipFile2.getInputStream(entry);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        while (true) {
                            try {
                                int i = inputStream.read(bArr);
                                if (i <= 0) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, i);
                                fileOutputStream.flush();
                            } catch (Exception e) {
                                e = e;
                                e = e;
                                throw new UnsatisfiedLinkError(str4 + " detail[" + e.getMessage() + "]");
                            } catch (Throwable th) {
                                th = th;
                                th = th;
                                throw new UnsatisfiedLinkError(str4 + " detail[" + th.getMessage() + "]");
                            }
                        }
                        fileOutputStream.close();
                        String str5 = str4 + "[" + file.getAbsolutePath() + "]";
                        if (!file.exists()) {
                            throw new UnsatisfiedLinkError(str5 + "failed not exist");
                        }
                        System.load(file.getAbsolutePath());
                        DebugLog.i("BackupLibLoader", "BackupLibLoader load success :" + str);
                        DebugLog.d("BackupLibLoader", "" + str5);
                        try {
                            f.a(inputStream);
                            f.a(null);
                            zipFile2.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    } catch (Exception e3) {
                        e = e3;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e4) {
                    e = e4;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                DebugLog.d("BackupLibLoader", "" + str4);
                try {
                    f.a(str);
                    f.a(str2);
                    if (0 != 0) {
                        zipFile.close();
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                throw th4;
            }
        } catch (Exception e6) {
            e = e6;
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
