package v4;

import android.content.Context;
import android.util.Pair;
import com.airbnb.lottie.h;
import com.airbnb.lottie.network.FileExtension;
import com.airbnb.lottie.q0;
import com.airbnb.lottie.r;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;

public class g {

    private final f f73451a;

    private final e f73452b;

    static class a {

        static final int[] f73453a;

        static {
            int[] iArr = new int[FileExtension.values().length];
            f73453a = iArr;
            try {
                iArr[FileExtension.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73453a[FileExtension.GZIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g(f fVar, e eVar) {
        this.f73451a = fVar;
        this.f73452b = eVar;
    }

    private h a(Context context, String str, String str2) {
        f fVar;
        Pair pairA;
        q0 q0VarC;
        if (str2 == null || (fVar = this.f73451a) == null || (pairA = fVar.a(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) pairA.first;
        InputStream inputStream = (InputStream) pairA.second;
        int i10 = a.f73453a[fileExtension.ordinal()];
        if (i10 == 1) {
            q0VarC = r.C(context, new ZipInputStream(inputStream), str2);
        } else if (i10 != 2) {
            q0VarC = r.q(inputStream, str2);
        } else {
            try {
                q0VarC = r.q(new GZIPInputStream(inputStream), str2);
            } catch (IOException e10) {
                q0VarC = new q0((Throwable) e10);
            }
        }
        if (q0VarC.b() != null) {
            return (h) q0VarC.b();
        }
        return null;
    }

    private q0 b(Context context, String str, String str2) {
        x4.f.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                c cVarA = this.f73452b.a(str);
                if (!cVarA.isSuccessful()) {
                    q0 q0Var = new q0((Throwable) new IllegalArgumentException(cVarA.error()));
                    try {
                        cVarA.close();
                    } catch (IOException e10) {
                        x4.f.d("LottieFetchResult close failed ", e10);
                    }
                    return q0Var;
                }
                q0 q0VarE = e(context, str, cVarA.M(), cVarA.z(), str2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Completed fetch from network. Success: ");
                sb2.append(q0VarE.b() != null);
                x4.f.a(sb2.toString());
                try {
                    cVarA.close();
                } catch (IOException e11) {
                    x4.f.d("LottieFetchResult close failed ", e11);
                }
                return q0VarE;
            } catch (Exception e12) {
                q0 q0Var2 = new q0((Throwable) e12);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e13) {
                        x4.f.d("LottieFetchResult close failed ", e13);
                    }
                }
                return q0Var2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e14) {
                    x4.f.d("LottieFetchResult close failed ", e14);
                }
            }
            throw th2;
        }
    }

    private q0 d(String str, InputStream inputStream, String str2) {
        f fVar;
        return (str2 == null || (fVar = this.f73451a) == null) ? r.q(new GZIPInputStream(inputStream), null) : r.q(new GZIPInputStream(new FileInputStream(fVar.g(str, inputStream, FileExtension.GZIP))), str);
    }

    private q0 e(Context context, String str, InputStream inputStream, String str2, String str3) {
        q0 q0VarG;
        FileExtension fileExtension;
        f fVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            x4.f.a("Handling zip response.");
            FileExtension fileExtension2 = FileExtension.ZIP;
            q0VarG = g(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        } else if (str2.contains("application/gzip") || str2.contains("application/x-gzip") || str.split("\\?")[0].endsWith(".tgs")) {
            x4.f.a("Handling gzip response.");
            fileExtension = FileExtension.GZIP;
            q0VarG = d(str, inputStream, str3);
        } else {
            x4.f.a("Received json response.");
            fileExtension = FileExtension.JSON;
            q0VarG = f(str, inputStream, str3);
        }
        if (str3 != null && q0VarG.b() != null && (fVar = this.f73451a) != null) {
            fVar.f(str, fileExtension);
        }
        return q0VarG;
    }

    private q0 f(String str, InputStream inputStream, String str2) {
        f fVar;
        return (str2 == null || (fVar = this.f73451a) == null) ? r.q(inputStream, null) : r.q(new FileInputStream(fVar.g(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
    }

    private q0 g(Context context, String str, InputStream inputStream, String str2) {
        f fVar;
        return (str2 == null || (fVar = this.f73451a) == null) ? r.C(context, new ZipInputStream(inputStream), null) : r.C(context, new ZipInputStream(new FileInputStream(fVar.g(str, inputStream, FileExtension.ZIP))), str);
    }

    public q0 c(Context context, String str, String str2) {
        h hVarA = a(context, str, str2);
        if (hVarA != null) {
            return new q0(hVarA);
        }
        x4.f.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }
}
