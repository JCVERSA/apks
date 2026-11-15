package tb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;

class h implements c {

    private static final Charset f72648d = Charset.forName("UTF-8");

    private final File f72649a;

    private final int f72650b;

    private g f72651c;

    class a implements g.d {

        final byte[] f72652a;

        final int[] f72653b;

        a(byte[] bArr, int[] iArr) {
            this.f72652a = bArr;
            this.f72653b = iArr;
        }

        @Override
        public void read(InputStream inputStream, int i10) throws IOException {
            try {
                inputStream.read(this.f72652a, this.f72653b[0], i10);
                int[] iArr = this.f72653b;
                iArr[0] = iArr[0] + i10;
            } finally {
                inputStream.close();
            }
        }
    }

    private static class b {

        public final byte[] f72655a;

        public final int f72656b;

        b(byte[] bArr, int i10) {
            this.f72655a = bArr;
            this.f72656b = i10;
        }
    }

    h(File file, int i10) {
        this.f72649a = file;
        this.f72650b = i10;
    }

    private void f(long j10, String str) {
        if (this.f72651c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i10 = this.f72650b / 4;
            if (str.length() > i10) {
                str = "..." + str.substring(str.length() - i10);
            }
            this.f72651c.j(String.format(Locale.US, "%d %s%n", Long.valueOf(j10), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f72648d));
            while (!this.f72651c.p() && this.f72651c.T() > this.f72650b) {
                this.f72651c.w();
            }
        } catch (IOException e10) {
            qb.g.f().e("There was a problem writing to the Crashlytics log.", e10);
        }
    }

    private b g() {
        if (!this.f72649a.exists()) {
            return null;
        }
        h();
        g gVar = this.f72651c;
        if (gVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[gVar.T()];
        try {
            this.f72651c.n(new a(bArr, iArr));
        } catch (IOException e10) {
            qb.g.f().e("A problem occurred while reading the Crashlytics log file.", e10);
        }
        return new b(bArr, iArr[0]);
    }

    private void h() {
        if (this.f72651c == null) {
            try {
                this.f72651c = new g(this.f72649a);
            } catch (IOException e10) {
                qb.g.f().e("Could not open log file: " + this.f72649a, e10);
            }
        }
    }

    @Override
    public void a() {
        CommonUtils.f(this.f72651c, "There was a problem closing the Crashlytics log file.");
        this.f72651c = null;
    }

    @Override
    public String b() {
        byte[] bArrC = c();
        if (bArrC != null) {
            return new String(bArrC, f72648d);
        }
        return null;
    }

    @Override
    public byte[] c() {
        b bVarG = g();
        if (bVarG == null) {
            return null;
        }
        int i10 = bVarG.f72656b;
        byte[] bArr = new byte[i10];
        System.arraycopy(bVarG.f72655a, 0, bArr, 0, i10);
        return bArr;
    }

    @Override
    public void d() {
        a();
        this.f72649a.delete();
    }

    @Override
    public void e(long j10, String str) {
        h();
        f(j10, str);
    }
}
