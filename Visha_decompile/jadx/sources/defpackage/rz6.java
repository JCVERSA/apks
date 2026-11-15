package defpackage;

import android.content.Context;
import android.util.Pair;
import com.airbnb.lottie.network.FileExtension;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;

public class rz6 {
    public final oz6 a;
    public final gt5 b;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[FileExtension.values().length];
            a = iArr;
            try {
                iArr[FileExtension.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[FileExtension.GZIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public rz6(oz6 oz6Var, gt5 gt5Var) {
        this.a = oz6Var;
        this.b = gt5Var;
    }

    public final ur5 a(Context context, String str, String str2) {
        oz6 oz6Var;
        Pair pairA;
        jt5 jt5VarE;
        if (str2 == null || (oz6Var = this.a) == null || (pairA = oz6Var.a(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) pairA.first;
        InputStream inputStream = (InputStream) pairA.second;
        int i = a.a[fileExtension.ordinal()];
        if (i == 1) {
            jt5VarE = fs5.E(context, new ZipInputStream(inputStream), str2);
        } else if (i != 2) {
            jt5VarE = fs5.q(inputStream, str2);
        } else {
            try {
                jt5VarE = fs5.q(new GZIPInputStream(inputStream), str2);
            } catch (IOException e) {
                jt5VarE = new jt5((Throwable) e);
            }
        }
        if (jt5VarE.b() != null) {
            return (ur5) jt5VarE.b();
        }
        return null;
    }

    public final jt5 b(Context context, String str, String str2) {
        mq5.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                at5 at5VarA = this.b.a(str);
                if (!at5VarA.isSuccessful()) {
                    jt5 jt5Var = new jt5((Throwable) new IllegalArgumentException(at5VarA.error()));
                    try {
                        at5VarA.close();
                    } catch (IOException e) {
                        mq5.d("LottieFetchResult close failed ", e);
                    }
                    return jt5Var;
                }
                jt5 jt5VarE = e(context, str, at5VarA.A(), at5VarA.z(), str2);
                StringBuilder sb = new StringBuilder();
                sb.append("Completed fetch from network. Success: ");
                sb.append(jt5VarE.b() != null);
                mq5.a(sb.toString());
                try {
                    at5VarA.close();
                } catch (IOException e2) {
                    mq5.d("LottieFetchResult close failed ", e2);
                }
                return jt5VarE;
            } catch (Exception e3) {
                jt5 jt5Var2 = new jt5((Throwable) e3);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e4) {
                        mq5.d("LottieFetchResult close failed ", e4);
                    }
                }
                return jt5Var2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e5) {
                    mq5.d("LottieFetchResult close failed ", e5);
                }
            }
            throw th;
        }
    }

    public jt5 c(Context context, String str, String str2) {
        ur5 ur5VarA = a(context, str, str2);
        if (ur5VarA != null) {
            return new jt5(ur5VarA);
        }
        mq5.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }

    public final jt5 d(String str, InputStream inputStream, String str2) {
        oz6 oz6Var;
        return (str2 == null || (oz6Var = this.a) == null) ? fs5.q(new GZIPInputStream(inputStream), null) : fs5.q(new GZIPInputStream(new FileInputStream(oz6Var.g(str, inputStream, FileExtension.GZIP))), str);
    }

    public final jt5 e(Context context, String str, InputStream inputStream, String str2, String str3) {
        jt5 jt5VarG;
        FileExtension fileExtension;
        oz6 oz6Var;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            mq5.a("Handling zip response.");
            FileExtension fileExtension2 = FileExtension.ZIP;
            jt5VarG = g(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        } else if (str2.contains("application/gzip") || str2.contains("application/x-gzip") || str.split("\\?")[0].endsWith(".tgs")) {
            mq5.a("Handling gzip response.");
            fileExtension = FileExtension.GZIP;
            jt5VarG = d(str, inputStream, str3);
        } else {
            mq5.a("Received json response.");
            fileExtension = FileExtension.JSON;
            jt5VarG = f(str, inputStream, str3);
        }
        if (str3 != null && jt5VarG.b() != null && (oz6Var = this.a) != null) {
            oz6Var.f(str, fileExtension);
        }
        return jt5VarG;
    }

    public final jt5 f(String str, InputStream inputStream, String str2) {
        oz6 oz6Var;
        return (str2 == null || (oz6Var = this.a) == null) ? fs5.q(inputStream, null) : fs5.q(new FileInputStream(oz6Var.g(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
    }

    public final jt5 g(Context context, String str, InputStream inputStream, String str2) {
        oz6 oz6Var;
        return (str2 == null || (oz6Var = this.a) == null) ? fs5.E(context, new ZipInputStream(inputStream), null) : fs5.E(context, new ZipInputStream(new FileInputStream(oz6Var.g(str, inputStream, FileExtension.ZIP))), str);
    }
}
