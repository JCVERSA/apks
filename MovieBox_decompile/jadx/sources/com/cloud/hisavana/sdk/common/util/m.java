package com.cloud.hisavana.sdk.common.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.b4;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class m {
    public static void a(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                file2.delete();
            } else if (file2.isDirectory()) {
                a(file2);
            }
        }
        file.delete();
    }

    public static String b(Context context) {
        File fileE = StorageUtils.e(context);
        return (fileE == null || !fileE.exists()) ? "" : fileE.getAbsolutePath();
    }

    public static byte[] c(File file) {
        if (file != null && file.exists()) {
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    return Files.readAllBytes(Paths.get(file.getAbsolutePath(), new String[0]));
                } catch (Exception e10) {
                    b4.b().w("ssp", "getDataFromFile failed, error=" + e10.getMessage());
                }
            } else {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[l.a(file.length())];
                        fileInputStream.read(bArr);
                        fileInputStream.close();
                        return bArr;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Exception e11) {
                    b4.b().w("ssp", "getDataFromFile failed, error=" + e11.getMessage());
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[SYNTHETIC] */
    public static String d(String str) throws Throwable {
        Throwable th2;
        Exception e10;
        FileReader fileReader;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        File file = new File(str);
        FileReader fileReader2 = null;
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        try {
            fileReader = new FileReader(file);
            try {
                try {
                    char[] cArr = new char[1024];
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        int i10 = fileReader.read(cArr);
                        if (i10 == -1) {
                            break;
                        }
                        stringBuffer.append(cArr, 0, i10);
                        th2 = th;
                        fileReader2 = fileReader;
                        if (fileReader2 != null) {
                            throw th2;
                        }
                        try {
                            fileReader2.close();
                            throw th2;
                        } catch (IOException e11) {
                            b4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e11));
                            throw th2;
                        }
                    }
                    if (stringBuffer.length() == 0) {
                        try {
                            fileReader.close();
                        } catch (IOException e12) {
                            b4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e12));
                        }
                        return null;
                    }
                    b4.b().d("ssp", c7.b.l() ? stringBuffer.toString() : "");
                    fileReader.close();
                    String string = stringBuffer.toString();
                    try {
                        fileReader.close();
                    } catch (IOException e13) {
                        b4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e13));
                    }
                    return string;
                } catch (Exception e14) {
                    e10 = e14;
                    b4.b().e("ssp", "readFile error: " + Log.getStackTraceString(e10));
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException e15) {
                            b4.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e15));
                        }
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                fileReader2 = fileReader;
            }
        } catch (Exception e16) {
            e10 = e16;
            fileReader = null;
        } catch (Throwable th4) {
            th2 = th4;
        }
        th2 = th3;
        fileReader2 = fileReader;
        if (fileReader2 != null) {
            throw th2;
        }
        fileReader2.close();
        throw th2;
    }

    public static Uri e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            if (Build.VERSION.SDK_INT <= 24) {
                return Uri.fromFile(file);
            }
            return FileProvider.getUriForFile(com.cloud.sdk.commonutil.util.e.a(), com.cloud.sdk.commonutil.util.e.a().getApplicationContext().getPackageName() + ".HisavanaFileProvider", file);
        } catch (Exception e10) {
            b4.b().e("ssp", Log.getStackTraceString(e10));
            return null;
        }
    }

    public static String f(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return "";
        }
        for (File file2 : fileArrListFiles) {
            if (file2 != null) {
                if (file2.isDirectory()) {
                    String strF = f(file2.getAbsolutePath());
                    if (!TextUtils.isEmpty(strF)) {
                        return strF;
                    }
                } else if (file2.getName().equals(com.vungle.ads.internal.b.AD_INDEX_FILE_NAME)) {
                    return file2.getAbsolutePath();
                }
            }
        }
        return "";
    }
}
