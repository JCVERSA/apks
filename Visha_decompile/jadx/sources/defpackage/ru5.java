package defpackage;

import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class ru5 {
    public static final a a = new a(null);
    public static final File b = new File(Utils.a().getFilesDir(), "lrc");

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void f(String str, String str2) {
            ru5.a.g(str, str2);
        }

        public final void b() {
            if (ru5.b.exists()) {
                return;
            }
            ru5.b.mkdirs();
        }

        public final String c(String str) {
            y45.j(str, "string");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Charset charset = StandardCharsets.UTF_8;
                y45.i(charset, "UTF_8");
                byte[] bytes = str.getBytes(charset);
                y45.i(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
                for (byte b : bArrDigest) {
                    int i = b & 255;
                    if (i < 16) {
                        sb.append("0");
                    }
                    sb.append(Integer.toHexString(i));
                }
                String string = sb.toString();
                y45.i(string, "toString(...)");
                return string;
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }

        public final String d(String str) {
            y45.j(str, "key");
            b();
            String strC = c(str);
            File file = new File(ru5.b, strC + ".txt");
            if (!file.exists()) {
                return "";
            }
            try {
                return dv3.d(file, null, 1, null);
            } catch (IOException e) {
                e.printStackTrace();
                return "";
            }
        }

        public final void e(final String str, final String str2, boolean z) {
            y45.j(str, "data");
            y45.j(str2, "key");
            if (z) {
                iia.a(new Runnable() {
                    @Override
                    public final void run() {
                        ru5.a.f(str, str2);
                    }
                });
            } else {
                g(str, str2);
            }
        }

        public final void g(String str, String str2) {
            b();
            String strC = c(str2);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(ru5.b, strC + ".txt"));
                try {
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, qv0.b);
                    try {
                        outputStreamWriter.write(str);
                        zfb zfbVar = zfb.a;
                        ly0.a(outputStreamWriter, null);
                        ly0.a(fileOutputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            ly0.a(outputStreamWriter, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        ly0.a(fileOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        public a() {
        }
    }

    public static final String b(String str) {
        return a.d(str);
    }

    public static final void c(String str, String str2, boolean z) {
        a.e(str, str2, z);
    }
}
