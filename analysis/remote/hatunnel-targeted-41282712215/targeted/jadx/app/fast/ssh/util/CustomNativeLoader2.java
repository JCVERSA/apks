package app.fast.ssh.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import app.fast.ssh.ProtectedFastSSH;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class CustomNativeLoader2 {
    private static final String TAG = ProtectedFastSSH.s("㆑");

    private static String getNativeLibraryDir(Context context) {
        return context.getApplicationInfo().nativeLibraryDir;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private static boolean loadFromZip(Context context, String str, File file, String str2) throws Throwable {
        ZipFile zipFile;
        String strS = ProtectedFastSSH.s("\u318f");
        String strS2 = ProtectedFastSSH.s("㆐");
        ProtectedFastSSH.s("㆑");
        String strS3 = ProtectedFastSSH.s("㆒");
        String strS4 = ProtectedFastSSH.s("㆓");
        String strS5 = ProtectedFastSSH.s("㆔");
        InputStream inputStream = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            try {
                zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
                try {
                    ZipEntry entry = zipFile.getEntry(strS5 + str2 + strS2 + str + strS);
                    if (entry == null) {
                        entry = zipFile.getEntry(strS4 + str2 + strS2 + str + strS);
                        if (entry == null) {
                            throw new Exception(strS3 + str2 + strS2 + str);
                        }
                    }
                    InputStream inputStream2 = zipFile.getInputStream(entry);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream2.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        Thread.yield();
                        fileOutputStream.write(bArr, 0, i);
                    }
                    fileOutputStream.close();
                    file.setReadable(true, false);
                    file.setExecutable(true, false);
                    file.setWritable(true);
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Exception e) {
                            e.getMessage();
                        }
                    }
                    try {
                        zipFile.close();
                    } catch (Exception e2) {
                        e2.getMessage();
                    }
                    return true;
                } catch (Exception e3) {
                    e = e3;
                    e.getMessage();
                    if (0 != 0) {
                        try {
                            (objArr2 == true ? 1 : 0).close();
                        } catch (Exception e4) {
                            e4.getMessage();
                        }
                    }
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (Exception e5) {
                            e5.getMessage();
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e6) {
                        e6.getMessage();
                    }
                }
                if (0 != 0) {
                    throw th;
                }
                try {
                    (objArr == true ? 1 : 0).close();
                    throw th;
                } catch (Exception e7) {
                    e7.getMessage();
                    throw th;
                }
            }
        } catch (Exception e8) {
            e = e8;
            zipFile = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                inputStream.close();
            }
            if (0 != 0) {
                throw th;
            }
            (objArr == true ? 1 : 0).close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if (r0.canExecute() != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static File loadNativeBinary(Context context, String str, File file) {
        try {
            File file2 = new File(getNativeLibraryDir(context), str + ProtectedFastSSH.s("\u318f"));
            if (file2.exists()) {
                if (!file2.canExecute()) {
                    setExecutable(file2);
                }
                return file2;
            }
            if (file.exists()) {
                if (!file.canExecute()) {
                    setExecutable(file);
                    if (file.canExecute()) {
                    }
                }
            }
            return file;
            ArrayList<String> arrayList = new ArrayList();
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr != null) {
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2)) {
                        arrayList.add(str2);
                    }
                }
            }
            for (String strS : arrayList) {
                String property = System.getProperty(ProtectedFastSSH.s("㆕"));
                if (property != null && property.contains(ProtectedFastSSH.s("㆖"))) {
                    strS = ProtectedFastSSH.s("㆗");
                }
                if (loadFromZip(context, str, file, strS)) {
                    return file;
                }
            }
            return null;
        } catch (Throwable th) {
            ProtectedFastSSH.s("㆑");
            th.getMessage();
            return null;
        }
    }

    private static void setExecutable(File file) {
        file.setReadable(true);
        file.setExecutable(true);
        file.setWritable(false);
        file.setWritable(true, true);
    }
}
