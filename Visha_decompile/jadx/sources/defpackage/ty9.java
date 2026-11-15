package defpackage;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;

public final class ty9 {
    public static final a e = new a(null);
    public static final Regex f = new Regex("\\r?\\n");
    public final InputStream a;
    public int b;
    public int c;
    public e74 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public ty9(InputStream inputStream, int i, int i2, e74 e74Var) {
        y45.j(inputStream, "inputStream");
        this.a = inputStream;
        this.b = i;
        this.c = i2;
        this.d = e74Var;
    }

    public final String a() {
        String strB = this.c == -1 ? b() : d();
        e74 e74Var = this.d;
        if (e74Var != null) {
            List<String> listSplit = f.split(strB, 0);
            List arrayList = new ArrayList();
            for (Object obj : listSplit) {
                if (((Boolean) e74Var.invoke(obj)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
            int i = this.b;
            if (i != -1) {
                arrayList = i81.V0(arrayList, i);
            }
            String strY0 = i81.y0(arrayList, "\n", null, null, 0, null, null, 62, null);
            if (strY0 != null) {
                return strY0;
            }
        }
        return this.b == -1 ? strB : i81.y0(i81.V0(f.split(strB, 0), this.b), "\n", null, null, 0, null, null, 62, null);
    }

    public final String b() {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.a, qv0.b), 8192);
        try {
            String strC = mha.c(bufferedReader);
            ly0.a(bufferedReader, null);
            return strC;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(bufferedReader, th);
                throw th2;
            }
        }
    }

    public final int c(InputStream inputStream, byte[] bArr, long j) {
        int i;
        int i2 = 0;
        while (System.currentTimeMillis() < j && i2 < bArr.length && (i = inputStream.read(bArr, i2, Math.min(this.a.available(), bArr.length - i2))) != -1) {
            i2 += i;
        }
        return i2;
    }

    public final String d() {
        long jCurrentTimeMillis = System.currentTimeMillis() + ((long) this.c);
        InputStream inputStream = this.a;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int iC = c(inputStream, bArr, jCurrentTimeMillis);
                if (iC == -1) {
                    String string = byteArrayOutputStream.toString();
                    ly0.a(inputStream, null);
                    y45.i(string, "inputStream.use { input …tput.toString()\n        }");
                    return string;
                }
                byteArrayOutputStream.write(bArr, 0, iC);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(inputStream, th);
                throw th2;
            }
        }
    }

    public final ty9 e(e74 e74Var) {
        this.d = e74Var;
        return this;
    }

    public final ty9 f(int i) {
        this.b = i;
        return this;
    }

    public final ty9 g(int i) {
        this.c = i;
        return this;
    }

    public ty9(InputStream inputStream, int i, int i2, e74 e74Var, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(inputStream, (i3 & 2) != 0 ? -1 : i, (i3 & 4) != 0 ? -1 : i2, (i3 & 8) != 0 ? null : e74Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ty9(String str) {
        this(new File(str));
        y45.j(str, "filename");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ty9(File file) {
        this(new FileInputStream(file), 0, 0, null, 14, null);
        y45.j(file, "file");
    }
}
