package defpackage;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.h;
import com.lzy.okgo.model.HttpHeaders;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;

public abstract class zu3 {
    public static final String a = System.getProperty("line.separator");

    public interface a {
        boolean a(File file, File file2);
    }

    public static List A(File file, FileFilter fileFilter) {
        return B(file, fileFilter, false, null);
    }

    public static List B(File file, FileFilter fileFilter, boolean z, Comparator comparator) {
        List listD = D(file, fileFilter, z);
        if (comparator != null) {
            Collections.sort(listD, comparator);
        }
        return listD;
    }

    public static List C(String str, FileFilter fileFilter) {
        return A(m(str), fileFilter);
    }

    public static List D(File file, FileFilter fileFilter, boolean z) {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        if (v(file) && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (fileFilter.accept(file2)) {
                    arrayList.add(file2);
                }
                if (z && file2.isDirectory()) {
                    arrayList.addAll(D(file2, fileFilter, true));
                }
            }
        }
        return arrayList;
    }

    public static boolean E(File file, File file2, a aVar) {
        if (file == null || file2 == null || file.equals(file2) || !c(file2)) {
            return false;
        }
        return F(file, file2, null);
    }

    public static boolean F(File file, File file2, a aVar) {
        return a(file, file2, aVar, true);
    }

    public static boolean G(File file, String str) {
        if (file == null || !file.exists() || h.D(str)) {
            return false;
        }
        if (str.equals(file.getName())) {
            return true;
        }
        File file2 = new File(file.getParent() + File.separator + str);
        return !file2.exists() && file.renameTo(file2);
    }

    public static boolean a(File file, File file2, a aVar, boolean z) {
        if (file == null || file2 == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(file.getPath());
        String str = File.separator;
        sb.append(str);
        String string = sb.toString();
        String str2 = file2.getPath() + str;
        if (str2.contains(string) || !file.exists() || !file.isDirectory() || !c(file2)) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                File file4 = new File(str2 + file3.getName());
                if (file3.isFile()) {
                    if (!b(file3, file4, aVar, z)) {
                        return false;
                    }
                } else if (file3.isDirectory() && !a(file3, file4, aVar, z)) {
                    return false;
                }
            }
        }
        return !z || i(file);
    }

    public static boolean b(File file, File file2, a aVar, boolean z) {
        if (file != null && file2 != null && !file.equals(file2) && file.exists() && file.isFile()) {
            if (file2.exists()) {
                if (aVar != null && !aVar.a(file, file2)) {
                    return true;
                }
                if (!file2.delete()) {
                    return false;
                }
            }
            if (!c(file2.getParentFile())) {
                return false;
            }
            try {
                if (h.O(file2.getAbsolutePath(), new FileInputStream(file))) {
                    return !z || j(file);
                }
                return false;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static boolean c(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean d(String str) {
        return c(m(str));
    }

    public static boolean e(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return file.isFile();
        }
        if (!c(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean f(String str) {
        return e(m(str));
    }

    public static boolean g(File file) {
        if (file == null) {
            return false;
        }
        return file.isDirectory() ? i(file) : j(file);
    }

    public static boolean h(String str) {
        return g(m(str));
    }

    public static boolean i(File file) {
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    if (!file2.delete()) {
                        return false;
                    }
                } else if (file2.isDirectory() && !i(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static boolean j(File file) {
        return file != null && (!file.exists() || (file.isFile() && file.delete()));
    }

    public static String k(File file) {
        return file == null ? "" : l(file.getAbsolutePath());
    }

    public static String l(String str) {
        int iLastIndexOf;
        return (h.D(str) || (iLastIndexOf = str.lastIndexOf(File.separator)) == -1) ? "" : str.substring(0, iLastIndexOf + 1);
    }

    public static File m(String str) {
        if (h.D(str)) {
            return null;
        }
        return new File(str);
    }

    public static String n(String str) {
        if (h.D(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || str.lastIndexOf(File.separator) >= iLastIndexOf) ? "" : str.substring(iLastIndexOf + 1);
    }

    public static long o(File file) {
        if (w(file)) {
            return file.length();
        }
        return -1L;
    }

    public static long p(String str) {
        if (str.matches("[a-zA-z]+://[^\\s]*")) {
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                httpsURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
                httpsURLConnection.connect();
                if (httpsURLConnection.getResponseCode() == 200) {
                    return httpsURLConnection.getContentLength();
                }
                return -1L;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return o(m(str));
    }

    /* JADX WARN: Code duplicated, block: B:52:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0033: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:19:0x0033 */
    public static byte[] q(File file) throws Throwable {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            if (file == null) {
                return null;
            }
            try {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, MessageDigest.getInstance("MD5"));
                        try {
                            while (digestInputStream.read(new byte[262144]) > 0) {
                            }
                            byte[] bArrDigest = digestInputStream.getMessageDigest().digest();
                            fileInputStream.close();
                            try {
                                digestInputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            return bArrDigest;
                        } catch (Throwable th) {
                            th = th;
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException | NoSuchAlgorithmException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (0 != 0) {
                        try {
                            inputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (IOException | NoSuchAlgorithmException e4) {
                e = e4;
                e.printStackTrace();
                if (0 != 0) {
                    inputStream2.close();
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStream2 = inputStream;
        }
    }

    public static String r(File file) {
        return h.b(q(file));
    }

    public static String s(String str) {
        return r(h.D(str) ? null : new File(str));
    }

    public static String t(String str) {
        if (h.D(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(File.separator);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }

    public static String u(String str) {
        if (h.D(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        int iLastIndexOf2 = str.lastIndexOf(File.separator);
        if (iLastIndexOf2 == -1) {
            return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
        }
        return (iLastIndexOf == -1 || iLastIndexOf2 > iLastIndexOf) ? str.substring(iLastIndexOf2 + 1) : str.substring(iLastIndexOf2 + 1, iLastIndexOf);
    }

    public static boolean v(File file) {
        return file != null && file.exists() && file.isDirectory();
    }

    public static boolean w(File file) {
        return file != null && file.exists() && file.isFile();
    }

    public static boolean x(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            return true;
        }
        return y(file.getAbsolutePath());
    }

    public static boolean y(String str) {
        File fileM = m(str);
        if (fileM == null) {
            return false;
        }
        if (fileM.exists()) {
            return true;
        }
        return z(str);
    }

    public static boolean z(String str) {
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = Utils.a().getContentResolver().openAssetFileDescriptor(Uri.parse(str), "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                return false;
            }
            try {
                assetFileDescriptorOpenAssetFileDescriptor.close();
                return true;
            } catch (IOException unused) {
                return true;
            }
        } catch (FileNotFoundException unused2) {
            return false;
        }
    }
}
