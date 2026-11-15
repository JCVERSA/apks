package defpackage;

import android.os.Environment;
import android.text.TextUtils;
import com.transsion.videodownloader.model.MultiRangeInfo;
import com.transsion.videodownloader.model.Video;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.util.regex.Pattern;

public abstract class frb {
    public static final String a;
    public static File b;
    public static final String c;
    public static final Object d;
    public static File e;
    public static rqb f;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("VishaPlayer");
        String str = File.separator;
        sb.append(str);
        sb.append("Video");
        String string = sb.toString();
        a = string;
        b = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        c = b.getName() + str + string + str;
        d = new Object();
        e = new File(b, string);
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b2)));
        }
        return stringBuffer.toString();
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e2) {
                eq5.d("VideoDownloadUtils", "VideoProxyCacheUtils close " + closeable + " failed, exception = " + e2);
            }
        }
    }

    public static String c(String str) {
        try {
            String strA = a(MessageDigest.getInstance("MD5").digest(str.getBytes()));
            if (strA.length() > 12) {
                strA = strA.substring(strA.length() - 12);
            }
            return "visha_hls_" + strA;
        } catch (Exception e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static rqb d() {
        return f;
    }

    public static String e(float f2) {
        return new DecimalFormat("###.00").format(f2) + "%";
    }

    public static String f(String str) {
        int iLastIndexOf;
        return (!TextUtils.isEmpty(str) && (iLastIndexOf = str.lastIndexOf(46)) >= 0 && iLastIndexOf < str.length()) ? str.substring(iLastIndexOf) : "";
    }

    public static boolean g(char c2) {
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(c2);
        return unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlockOf == Character.UnicodeBlock.GENERAL_PUNCTUATION || unicodeBlockOf == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeBlockOf == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS;
    }

    public static boolean h(float f2, float f3) {
        return Math.abs(f2 - f3) < 0.01f;
    }

    public static boolean i(String str) {
        return !TextUtils.isEmpty(str) && (str.contains(Video.Mime.MIME_TYPE_M3U8_1) || str.contains(Video.Mime.MIME_TYPE_M3U8_2) || str.contains(Video.Mime.MIME_TYPE_M3U8_3) || str.contains(Video.Mime.MIME_TYPE_M3U8_4));
    }

    public static boolean j(String str) {
        char[] charArray = Pattern.compile("\\s*|t*|r*|n*").matcher(str).replaceAll("").replaceAll("\\p{P}", "").trim().toCharArray();
        float length = charArray.length;
        float f2 = 0.0f;
        for (char c2 : charArray) {
            if (!Character.isLetterOrDigit(c2) && !g(c2)) {
                f2 += 1.0f;
            }
        }
        return length > 0.0f && ((double) (f2 / length)) > 0.4d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    public static MultiRangeInfo k(File file) throws Throwable {
        ?? sb = new StringBuilder();
        sb.append("readVideoCacheInfo : dir=");
        ?? absolutePath = file.getAbsolutePath();
        sb.append(absolutePath);
        eq5.c("VideoDownloadUtils", sb.toString());
        File file2 = new File(file, "range.info");
        ?? r1 = 0;
        try {
            if (!file2.exists()) {
                eq5.c("VideoDownloadUtils", "readProxyCacheInfo failed, file not exist.");
                return null;
            }
            try {
                try {
                    synchronized (d) {
                        try {
                            ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file2));
                            MultiRangeInfo multiRangeInfo = (MultiRangeInfo) objectInputStream.readObject();
                            b(objectInputStream);
                            return multiRangeInfo;
                        } catch (Throwable th) {
                            th = th;
                            absolutePath = 0;
                            try {
                                throw th;
                            } catch (Exception e2) {
                                e = e2;
                                eq5.d("VideoDownloadUtils", "readVideoCacheInfo failed, exception=" + e.getMessage());
                                b(absolutePath);
                                return null;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
                absolutePath = 0;
            } catch (Throwable th3) {
                th = th3;
                b(r1);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            r1 = absolutePath;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0020 */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0021, code lost:
    
        r4 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void l(MultiRangeInfo multiRangeInfo, File file) {
        File file2 = new File(file, "range.info");
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                synchronized (d) {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(file2));
                    try {
                        objectOutputStream2.writeObject(multiRangeInfo);
                        b(objectOutputStream2);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = objectOutputStream2;
                        while (true) {
                            break;
                        }
                        throw th;
                    }
                }
                while (true) {
                    break;
                    break;
                }
                throw th;
            } catch (Exception e2) {
                e2.printStackTrace();
                eq5.d("VideoDownloadUtils", "saveVideoCacheInfo failed, exception=" + e2.getMessage());
                b(objectOutputStream);
            }
        } catch (Throwable th2) {
            b(objectOutputStream);
            throw th2;
        }
    }

    public static void m(rqb rqbVar) {
        f = rqbVar;
    }
}
