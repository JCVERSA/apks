package n0;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;

public final class h extends Reader {

    public final Reader f1256a;

    public final char[] f1257b;

    public int f1258c;

    public int f1259d;

    public boolean f1260e;

    public boolean f1261f;

    public h(InputStreamReader inputStreamReader) {
        super(inputStreamReader);
        this.f1260e = false;
        this.f1261f = false;
        this.f1256a = inputStreamReader;
        this.f1257b = new char[8192];
        this.f1258c = 0;
        this.f1259d = 0;
    }

    public final void a() throws IOException {
        int i2;
        do {
            char[] cArr = this.f1257b;
            i2 = this.f1256a.read(cArr, 0, cArr.length);
        } while (i2 == 0);
        if (i2 > 0) {
            this.f1258c = i2;
            this.f1259d = 0;
        }
    }

    public final int b(char[] cArr, int i2, int i3) throws IOException {
        if (this.f1259d >= this.f1258c) {
            a();
            if (this.f1259d >= this.f1258c) {
                return -1;
            }
        }
        boolean z2 = this.f1260e;
        char[] cArr2 = this.f1257b;
        if (z2) {
            this.f1260e = false;
            int i4 = this.f1259d;
            if (cArr2[i4] == '\n') {
                int i5 = i4 + 1;
                this.f1259d = i5;
                if (i5 >= this.f1258c) {
                    a();
                    if (this.f1259d >= this.f1258c) {
                        return -1;
                    }
                }
            }
        }
        int iMin = Math.min(i3, this.f1258c - this.f1259d);
        System.arraycopy(cArr2, this.f1259d, cArr, i2, iMin);
        this.f1259d += iMin;
        return iMin;
    }

    public final boolean c(StringBuilder sb) {
        int length = sb.length();
        synchronized (((Reader) this).lock) {
            while (true) {
                boolean z2 = false;
                if (this.f1259d >= this.f1258c) {
                    a();
                    if (this.f1259d >= this.f1258c) {
                        return sb.length() > length;
                    }
                }
                if (this.f1260e) {
                    char[] cArr = this.f1257b;
                    int i2 = this.f1259d;
                    if (cArr[i2] == '\n') {
                        this.f1259d = i2 + 1;
                    }
                }
                this.f1260e = false;
                int i3 = this.f1259d;
                char c2 = 0;
                while (i3 < this.f1258c) {
                    c2 = this.f1257b[i3];
                    if (c2 != '\n' && c2 != '\r') {
                        i3++;
                    }
                    z2 = true;
                }
                int i4 = this.f1259d;
                this.f1259d = i3;
                if (z2) {
                    sb.append(this.f1257b, i4, i3 - i4);
                    sb.append('\n');
                    this.f1259d++;
                    if (c2 == '\r') {
                        this.f1260e = true;
                        this.f1261f = true;
                    }
                    return true;
                }
                sb.append(this.f1257b, i4, i3 - i4);
            }
        }
    }

    @Override
    public final void close() {
        synchronized (((Reader) this).lock) {
            e.d(this.f1256a);
        }
    }

    @Override
    public final int read(char[] cArr, int i2, int i3) {
        int i4;
        synchronized (((Reader) this).lock) {
            if (i2 >= 0) {
                if (i2 <= cArr.length && i3 >= 0 && (i4 = i2 + i3) <= cArr.length && i4 >= 0) {
                    if (i3 == 0) {
                        return 0;
                    }
                    int iB = b(cArr, i2, i3);
                    if (iB <= 0) {
                        return iB;
                    }
                    while (iB < i3 && this.f1256a.ready()) {
                        int iB2 = b(cArr, i2 + iB, i3 - iB);
                        if (iB2 <= 0) {
                            break;
                        }
                        iB += iB2;
                    }
                    return iB;
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }
}
