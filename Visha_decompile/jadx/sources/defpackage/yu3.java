package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.cloud.hisavana.net.utils.StorageUtils;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public abstract class yu3 {
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
        File fileF = StorageUtils.f(context);
        return (fileF == null || !fileF.exists()) ? "" : fileF.getAbsolutePath();
    }

    public static byte[] c(File file) {
        if (file != null && file.exists()) {
            try {
                return Files.readAllBytes(Paths.get(file.getAbsolutePath(), new String[0]));
            } catch (Exception e) {
                ikd.b().w("ssp", "getDataFromFile failed, error=" + e.getMessage());
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[SYNTHETIC] */
    public static String d(String str) throws Throwable {
        Throwable th;
        Exception e;
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
                        int i = fileReader.read(cArr);
                        if (i == -1) {
                            break;
                        }
                        stringBuffer.append(cArr, 0, i);
                        th = th;
                        fileReader2 = fileReader;
                        if (fileReader2 != null) {
                            throw th;
                        }
                        try {
                            fileReader2.close();
                            throw th;
                        } catch (IOException e2) {
                            ikd.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e2));
                            throw th;
                        }
                    }
                    if (stringBuffer.length() == 0) {
                        try {
                            fileReader.close();
                        } catch (IOException e3) {
                            ikd.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e3));
                        }
                        return null;
                    }
                    ikd.b().d("ssp", r6.p() ? stringBuffer.toString() : "");
                    fileReader.close();
                    String string = stringBuffer.toString();
                    try {
                        fileReader.close();
                    } catch (IOException e4) {
                        ikd.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e4));
                    }
                    return string;
                } catch (Exception e5) {
                    e = e5;
                    ikd.b().e("ssp", "readFile error: " + Log.getStackTraceString(e));
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException e6) {
                            ikd.b().w("ssp", "readFile close error: " + Log.getStackTraceString(e6));
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                fileReader2 = fileReader;
            }
        } catch (Exception e7) {
            e = e7;
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
        th = th2;
        fileReader2 = fileReader;
        if (fileReader2 != null) {
            throw th;
        }
        fileReader2.close();
        throw th;
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
            return FileProvider.getUriForFile(ul4.a(), ul4.a().getApplicationContext().getPackageName() + ".HisavanaFileProvider", file);
        } catch (Exception e) {
            ikd.b().e("ssp", Log.getStackTraceString(e));
            return null;
        }
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static String g(String str) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return "";
        }
        for (File file2 : fileArrListFiles) {
            if (file2 != null) {
                if (file2.isDirectory()) {
                    String strG = g(file2.getAbsolutePath());
                    if (!TextUtils.isEmpty(strG)) {
                        return strG;
                    }
                } else if (file2.getName().equals("index.html")) {
                    return file2.getAbsolutePath();
                }
            }
        }
        return "";
    }
}
