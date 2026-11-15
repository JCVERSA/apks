package dz;

import com.google.android.gms.gcm.Task;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.r;
import org.apache.commons.compress.archivers.zip.s;

public class b extends cz.b {

    private final byte[] f59207c;

    private final int f59208d;

    private final int f59209e;

    private boolean f59210f;

    private long f59211g;

    private long f59212h;

    private final InputStream f59213i;

    private a f59214j;

    private final r f59215k;

    final String f59216l;

    private Map f59217m;

    private final boolean f59218n;

    public b(InputStream inputStream) {
        this(inputStream, Task.EXTRAS_LIMIT_BYTES, 512);
    }

    private void S() {
        if (r()) {
            return;
        }
        long j10 = this.f59211g;
        if (j10 > 0) {
            int i10 = this.f59208d;
            if (j10 % ((long) i10) != 0) {
                f(ez.c.c(this.f59213i, (((j10 / ((long) i10)) + 1) * ((long) i10)) - j10));
            }
        }
    }

    private void T() throws IOException {
        boolean zMarkSupported = this.f59213i.markSupported();
        if (zMarkSupported) {
            this.f59213i.mark(this.f59208d);
        }
        try {
            if (s(x()) || !zMarkSupported) {
                return;
            }
            j(this.f59208d);
            this.f59213i.reset();
        } catch (Throwable th2) {
            if (zMarkSupported) {
                j(this.f59208d);
                this.f59213i.reset();
            }
            throw th2;
        }
    }

    private void k(Map map) {
        this.f59214j.C(map);
    }

    private void l() {
        long jH = h();
        int i10 = this.f59209e;
        long j10 = jH % ((long) i10);
        if (j10 > 0) {
            f(ez.c.c(this.f59213i, ((long) i10) - j10));
        }
    }

    private byte[] p() throws IOException {
        byte[] bArrX = x();
        y(s(bArrX));
        if (!q() || bArrX == null) {
            return bArrX;
        }
        T();
        l();
        return null;
    }

    private boolean r() {
        a aVar = this.f59214j;
        return aVar != null && aVar.h();
    }

    private void u() throws IOException {
        Map mapT = t(this);
        n();
        k(mapT);
    }

    private void v() {
        this.f59217m = t(this);
        n();
    }

    private void w() throws IOException {
        byte[] bArrP;
        if (this.f59214j.i()) {
            do {
                bArrP = p();
                if (bArrP == null) {
                    this.f59214j = null;
                    return;
                }
            } while (new c(bArrP).a());
        }
    }

    @Override
    public int available() {
        if (r()) {
            return 0;
        }
        long j10 = this.f59211g;
        long j11 = this.f59212h;
        if (j10 - j11 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (j10 - j11);
    }

    @Override
    public void close() throws IOException {
        this.f59213i.close();
    }

    protected byte[] m() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i10 = read(this.f59207c);
            if (i10 < 0) {
                break;
            }
            byteArrayOutputStream.write(this.f59207c, 0, i10);
        }
        n();
        if (this.f59214j == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        if (length == byteArray.length) {
            return byteArray;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 0, bArr, 0, length);
        return bArr;
    }

    @Override
    public void mark(int i10) {
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    public cz.a n() {
        return o();
    }

    public a o() throws IOException {
        if (q()) {
            return null;
        }
        if (this.f59214j != null) {
            ez.c.c(this, Long.MAX_VALUE);
            S();
        }
        byte[] bArrP = p();
        if (bArrP == null) {
            this.f59214j = null;
            return null;
        }
        try {
            a aVar = new a(bArrP, this.f59215k, this.f59218n);
            this.f59214j = aVar;
            this.f59212h = 0L;
            this.f59211g = aVar.g();
            if (this.f59214j.j()) {
                byte[] bArrM = m();
                if (bArrM == null) {
                    return null;
                }
                this.f59214j.w(this.f59215k.a(bArrM));
            }
            if (this.f59214j.k()) {
                byte[] bArrM2 = m();
                if (bArrM2 == null) {
                    return null;
                }
                this.f59214j.y(this.f59215k.a(bArrM2));
            }
            if (this.f59214j.l()) {
                v();
            }
            if (this.f59214j.n()) {
                u();
            } else if (!this.f59217m.isEmpty()) {
                k(this.f59217m);
            }
            if (this.f59214j.m()) {
                w();
            }
            this.f59211g = this.f59214j.g();
            return this.f59214j;
        } catch (IllegalArgumentException e10) {
            throw new IOException("Error detected parsing the header", e10);
        }
    }

    protected final boolean q() {
        return this.f59210f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (q() || r() || this.f59212h >= this.f59211g) {
            return -1;
        }
        if (this.f59214j == null) {
            throw new IllegalStateException("No current tar entry");
        }
        int iMin = Math.min(i11, available());
        int i12 = this.f59213i.read(bArr, i10, iMin);
        if (i12 != -1) {
            b(i12);
            this.f59212h += (long) i12;
        } else {
            if (iMin > 0) {
                throw new IOException("Truncated TAR archive");
            }
            y(true);
        }
        return i12;
    }

    @Override
    public synchronized void reset() {
    }

    protected boolean s(byte[] bArr) {
        return bArr == null || ez.a.a(bArr, this.f59208d);
    }

    @Override
    public long skip(long j10) throws IOException {
        if (j10 <= 0 || r()) {
            return 0L;
        }
        long jC = ez.c.c(this.f59213i, Math.min(j10, this.f59211g - this.f59212h));
        f(jC);
        this.f59212h += jC;
        return jC;
    }

    Map t(InputStream inputStream) throws IOException {
        int i10;
        int i11;
        HashMap map = new HashMap(this.f59217m);
        do {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                i10 = inputStream.read();
                if (i10 == -1) {
                    break;
                }
                i12++;
                if (i10 == 10) {
                    break;
                }
                if (i10 == 32) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        i11 = inputStream.read();
                        if (i11 == -1) {
                            break;
                        }
                        i12++;
                        if (i11 == 61) {
                            String string = byteArrayOutputStream.toString("UTF-8");
                            int i14 = i13 - i12;
                            if (i14 == 1) {
                                map.remove(string);
                                break;
                            }
                            byte[] bArr = new byte[i14];
                            int iA = ez.c.a(inputStream, bArr);
                            if (iA == i14) {
                                map.put(string, new String(bArr, 0, i14 - 1, "UTF-8"));
                                break;
                            }
                            throw new IOException("Failed to read Paxheader. Expected " + i14 + " bytes, read " + iA);
                        }
                        byteArrayOutputStream.write((byte) i11);
                    }
                    i10 = i11;
                    break;
                }
                i13 = (i13 * 10) + (i10 - 48);
            }
        } while (i10 != -1);
        return map;
    }

    protected byte[] x() {
        byte[] bArr = new byte[this.f59208d];
        int iA = ez.c.a(this.f59213i, bArr);
        b(iA);
        if (iA != this.f59208d) {
            return null;
        }
        return bArr;
    }

    protected final void y(boolean z10) {
        this.f59210f = z10;
    }

    public b(InputStream inputStream, int i10, int i11) {
        this(inputStream, i10, i11, null);
    }

    public b(InputStream inputStream, int i10, int i11, String str) {
        this(inputStream, i10, i11, str, false);
    }

    public b(InputStream inputStream, int i10, int i11, String str, boolean z10) {
        this.f59207c = new byte[256];
        this.f59217m = new HashMap();
        this.f59213i = inputStream;
        this.f59210f = false;
        this.f59216l = str;
        this.f59215k = s.a(str);
        this.f59208d = i11;
        this.f59209e = i10;
        this.f59218n = z10;
    }
}
