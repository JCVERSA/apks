package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import androidx.documentfile.provider.DocumentFile;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.videodownloader.model.Video;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okhttp3.ResponseBody;
import org.apache.commons.io.IOUtils;

public abstract class av3 {
    public static final String[] a;
    public static final String[] b;
    public static final LruCache c;
    public static final LruCache d;
    public static final r6a e;
    public static final r6a f;
    public static final Pattern g;
    public static final LruCache h;

    static {
        String[] strArr = {".flac", ".alac", ".adts", ".aifc", ".aiff", ".mpga", ".opus", ".3ga", ".a52", ".aac", ".ac3", ".adt", ".aif", ".amr", ".aob", ".ape", ".awb", ".caf", ".dts", ".it", ".m4a", ".m4b", ".m4p", ".mid", ".mka", ".mlp", ".mod", ".mpa", ".mp1", ".mp2", ".mp3", ".mpc", ".oga", ".ogg", ".oma", ".ra", ".ram", ".rmi", ".s3m", ".spx", ".tta", ".voc", ".vqf", ".w64", ".wav", ".wma", ".wv", ".xa", ".xm"};
        a = strArr;
        String[] strArr2 = {".mpeg1", ".mpeg2", ".mpeg4", ".3gpp", ".divx", ".h264", ".ismv", ".m2ts", ".mp2v", ".mp4v", ".mpeg", ".mpv2", ".xesc", ".3g2", Video.SUFFIX.SUFFIX_3GP, ".amv", ".asf", ".avi", ".drc", ".f4v", ".flv", ".gvi", ".gxf", ".iso", ".m1v", ".m2v", ".m2t", ".m4v", Video.SUFFIX.SUFFIX_MKV, Video.SUFFIX.SUFFIX_MOV, Video.SUFFIX.SUFFIX_MP4, ".mpe", ".mpg", ".mts", ".mtv", ".mxf", ".mxg", ".nsv", ".nut", ".nuv", ".ogm", ".ogv", ".ogx", ".ogg", ".rec", ".rmvb", ".tod", ".tts", ".vob", ".vro", Video.SUFFIX.SUFFIX_WEBM, ".wmv", ".wtv", ".asx", ".dv", ".ps", ".rm", ".ts", ".wm"};
        b = strArr2;
        c = new LruCache(200);
        d = new LruCache(150);
        e = new r6a(strArr);
        f = new r6a(strArr2);
        g = Pattern.compile("^[\\w-]+/[\\w.-]+$");
        h = new LruCache(100);
    }

    public static List A(DocumentFile documentFile, boolean z) {
        DocumentFile[] documentFileArrListFiles;
        ArrayList arrayList = new ArrayList();
        if (documentFile != null && documentFile.exists() && documentFile.isDirectory() && (documentFileArrListFiles = documentFile.listFiles()) != null && documentFileArrListFiles.length > 0) {
            for (DocumentFile documentFile2 : documentFileArrListFiles) {
                if (documentFile2 != null) {
                    if (documentFile2.isFile()) {
                        arrayList.add(documentFile2);
                    } else if (z) {
                        arrayList.addAll(A(documentFile2, true));
                    }
                }
            }
        }
        return arrayList;
    }

    public static List B(File file, boolean z, String str) {
        File[] fileArrListFiles;
        if (str != null && !str.trim().isEmpty() && file.getPath().contains(str)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        if (w(file) && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                if (file2 != null) {
                    if (file2.isFile()) {
                        arrayList.add(file2);
                    } else if (z) {
                        arrayList.addAll(B(file2, true, str));
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00cd */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String C(String str, String str2, boolean z) throws Throwable {
        String str3;
        new File(str2).mkdirs();
        File file = null;
        absolutePath = null;
        String absolutePath = null;
        file = null;
        file = null;
        file = null;
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream));
                    try {
                        File file2 = new File(str);
                        try {
                            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                                String strReplace = nextEntry.getName().replace(IOUtils.DIR_SEPARATOR_UNIX, ' ');
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                byte[] bArr = new byte[1024];
                                if (!strReplace.endsWith(".nfo")) {
                                    File file3 = new File(str2, strReplace);
                                    absolutePath = file3.getAbsolutePath();
                                    if (!file3.getCanonicalPath().startsWith(str2)) {
                                        throw new IOException("Entry is outside of the target dir: " + nextEntry.getName());
                                    }
                                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                    for (int i = zipInputStream.read(bArr); i != -1; i = zipInputStream.read(bArr)) {
                                        try {
                                            byteArrayOutputStream.write(bArr, 0, i);
                                            fileOutputStream.write(byteArrayOutputStream.toByteArray());
                                            byteArrayOutputStream.reset();
                                        } catch (Throwable th) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                            }
                                            throw th;
                                        }
                                    }
                                    fileOutputStream.close();
                                    zipInputStream.closeEntry();
                                    break;
                                }
                                zipInputStream.closeEntry();
                            }
                            try {
                                zipInputStream.close();
                                try {
                                    fileInputStream.close();
                                    if (!z) {
                                        return absolutePath;
                                    }
                                    file2.delete();
                                    return absolutePath;
                                } catch (Exception e2) {
                                    e = e2;
                                    str3 = absolutePath;
                                    file = file2;
                                    e.printStackTrace();
                                    LogUtils.i("FileUtils", "down-subtitle--->error--->unpack=" + e.getMessage());
                                    if (file != null) {
                                        file.delete();
                                    }
                                    return str3;
                                } catch (Throwable th3) {
                                    th = th3;
                                    file = file2;
                                    if (file != null && z) {
                                        file.delete();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                str3 = absolutePath;
                                file = file2;
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th5) {
                                    try {
                                        th.addSuppressed(th5);
                                    } catch (Exception e3) {
                                        e = e3;
                                        e.printStackTrace();
                                        LogUtils.i("FileUtils", "down-subtitle--->error--->unpack=" + e.getMessage());
                                        if (file != null && z) {
                                            file.delete();
                                        }
                                        return str3;
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            str3 = absolutePath;
                            file = file2;
                            try {
                                zipInputStream.close();
                            } catch (Throwable th7) {
                                th.addSuppressed(th7);
                            }
                            throw th;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        str3 = null;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    str3 = null;
                }
            } catch (Exception e4) {
                e = e4;
                str3 = null;
            }
        } catch (Throwable th10) {
            th = th10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public static void D(File file, InputStream inputStream, long j, sz2 sz2Var) throws Throwable {
        sz2Var.onStart();
        if (!file.exists()) {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdir();
            }
            try {
                file.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
                sz2Var.onFail("createNewFile IOException");
            }
        }
        ?? r0 = 0;
        r0 = 0;
        r0 = 0;
        try {
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                r0 = 8192;
                try {
                    byte[] bArr = new byte[8192];
                    long j2 = 0;
                    while (true) {
                        int i = inputStream.read(bArr, 0, 8192);
                        if (i == -1) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, i);
                        j2 += (long) i;
                        sz2Var.b((int) ((100 * j2) / j));
                    }
                    sz2Var.a(file.getAbsolutePath());
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    bufferedOutputStream.close();
                } catch (IOException e4) {
                    e = e4;
                    r0 = bufferedOutputStream;
                    e.printStackTrace();
                    file.delete();
                    sz2Var.onFail("IOException");
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    if (r0 != 0) {
                        r0.close();
                        r0 = r0;
                    }
                } catch (Throwable th) {
                    th = th;
                    r0 = bufferedOutputStream;
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    if (r0 == 0) {
                        throw th;
                    }
                    try {
                        r0.close();
                        throw th;
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException e8) {
                e8.printStackTrace();
            }
        } catch (IOException e9) {
            e = e9;
        }
    }

    public static void E(String str, gu8 gu8Var, sz2 sz2Var) throws Throwable {
        D(new File(str), ((ResponseBody) gu8Var.a()).byteStream(), ((ResponseBody) gu8Var.a()).contentLength(), sz2Var);
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return String.valueOf(System.currentTimeMillis());
        }
        String strTrim = h(g(str)).trim();
        return strTrim.length() > 200 ? strTrim.substring(0, 200) : strTrim;
    }

    public static String b(String str, String str2) {
        return str + new SimpleDateFormat("_yyyyMMdd_HHmmss").format(new Date(System.currentTimeMillis())) + str2;
    }

    public static boolean c(File file, boolean z) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file.getPath().replace(".gz", ""));
                d(fileInputStream, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (z) {
                    file.delete();
                }
                fileInputStream.close();
                return true;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            com.transsion.core.log.LogUtils.e("FileUtils", "decompress:" + e2.getMessage());
            return false;
        }
    }

    public static boolean d(InputStream inputStream, OutputStream outputStream) {
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = gZIPInputStream.read(bArr, 0, 1024);
                if (i == -1) {
                    gZIPInputStream.close();
                    return true;
                }
                outputStream.write(bArr, 0, i);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            com.transsion.core.log.LogUtils.e("FileUtils", "decompress:" + e2.getMessage());
            return false;
        }
    }

    public static boolean e(String str) {
        return f(str, true);
    }

    public static boolean f(String str, boolean z) {
        return c(new File(str), z);
    }

    public static String g(String str) {
        return str.replaceAll("[^\\p{L}\\p{M}\\p{N}\\p{P}\\p{Z}\\p{Cf}\\p{Cs}\\s]", "#");
    }

    public static String h(String str) {
        String strReplaceAll = Pattern.compile("[\\s\\\\/:\\*\\?\\\"<>\\|]").matcher(str).replaceAll("_");
        return !r0a.g(strReplaceAll) ? strReplaceAll.replace("\u202e", "_") : strReplaceAll;
    }

    public static String i(String str) {
        String strReplaceAll = Pattern.compile("[\\s\\\\/:\\*\\?\\\"<>\\|]").matcher(str).replaceAll(" ");
        if (!r0a.g(strReplaceAll)) {
            strReplaceAll = strReplaceAll.replace("\u202e", " ");
        }
        return !r0a.g(strReplaceAll) ? strReplaceAll.trim() : strReplaceAll;
    }

    public static String j(String str) {
        String lowerCase = "Unknown";
        if (str != null && !str.trim().isEmpty()) {
            String strTrim = str.trim();
            String str2 = (String) h.get(strTrim);
            if (str2 != null) {
                return str2;
            }
            try {
                if (g.matcher(strTrim).matches()) {
                    lowerCase = (strTrim.startsWith("video/") || strTrim.startsWith("audio/")) ? strTrim.substring(6).toLowerCase() : strTrim;
                }
            } catch (Exception e2) {
                vmb.d("FileUtils", "Error formatting MIME type: " + strTrim, e2);
            }
            h.put(strTrim, lowerCase);
        }
        return lowerCase;
    }

    public static String k(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : hk3.d) {
            if (str.toLowerCase().endsWith(str2)) {
                return k(str.substring(0, str.length() - str2.length()));
            }
        }
        return str;
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = (String) c.get(str);
        if (str2 != null) {
            return str2;
        }
        String lowerCase = str.toLowerCase();
        int length = str.length();
        int i = length;
        int i2 = 0;
        while (i > 0) {
            int iA = e.a(lowerCase, i);
            if (iA == 0) {
                break;
            }
            i2 += iA;
            i -= iA;
        }
        String strSubstring = i2 > 0 ? str.substring(0, length - i2) : str;
        c.put(str, strSubstring);
        return strSubstring;
    }

    public static String m(File file) {
        String lowerCase = file.getName().toLowerCase();
        int iLastIndexOf = lowerCase.lastIndexOf(Consts.DOT);
        return iLastIndexOf == -1 ? "" : lowerCase.substring(iLastIndexOf + 1);
    }

    public static final String n(String str) {
        if (str == null) {
            return null;
        }
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.getName();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static String o(String str) {
        return p(str).substring(str.lastIndexOf(Consts.DOT) + 1);
    }

    public static String p(String str) {
        int iLastIndexOf;
        return (TextUtils.isEmpty(str) || (iLastIndexOf = str.lastIndexOf(File.separator)) == -1) ? "" : str.substring(iLastIndexOf);
    }

    public static String q(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(47);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }

    public static int r() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault());
    }

    public static String s(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : hk3.a) {
            if (str.toLowerCase().endsWith(str2)) {
                return k(str.substring(0, str.length() - str2.length()));
            }
        }
        return str;
    }

    public static String t(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = (String) d.get(str);
        if (str2 != null) {
            return str2;
        }
        String lowerCase = str.toLowerCase();
        int length = str.length();
        int i = length;
        int i2 = 0;
        while (i > 0) {
            int iA = f.a(lowerCase, i);
            if (iA == 0) {
                break;
            }
            i2 += iA;
            i -= iA;
        }
        if (i2 > 0) {
            String strSubstring = lowerCase.substring(0, i);
            while (i > 0) {
                int iA2 = e.a(strSubstring, i);
                if (iA2 == 0) {
                    break;
                }
                i2 += iA2;
                i -= iA2;
            }
        }
        String strSubstring2 = i2 > 0 ? str.substring(0, length - i2) : str;
        d.put(str, strSubstring2);
        return strSubstring2;
    }

    public static String u(String str) {
        int iLastIndexOf;
        return (str == null || str.isEmpty() || (iLastIndexOf = str.lastIndexOf(47)) <= 0) ? "" : str.substring(0, iLastIndexOf);
    }

    public static File v(Context context) {
        return new File(context.getExternalCacheDir(), "video-cache");
    }

    public static boolean w(File file) {
        return file != null && file.exists() && file.isDirectory();
    }

    public static boolean x(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.isFile() && file.exists();
    }

    public static boolean y(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        return lowerCase.contains("jpg") || lowerCase.contains("bmp") || lowerCase.contains("gif") || lowerCase.contains("png") || lowerCase.contains("gif") || lowerCase.contains("apng") || lowerCase.contains("webp") || lowerCase.contains("svg") || lowerCase.contains("psd") || lowerCase.contains("tif") || lowerCase.contains("pcx") || lowerCase.contains("tga") || lowerCase.contains("exif") || lowerCase.contains("fpx") || lowerCase.contains("cdr") || lowerCase.contains("pcd") || lowerCase.contains("dxf") || lowerCase.contains("ufo") || lowerCase.contains("eps") || lowerCase.contains("ai") || lowerCase.contains("raw") || lowerCase.contains("WMF") || lowerCase.contains("avif");
    }

    public static boolean z() {
        return r() == 1;
    }
}
