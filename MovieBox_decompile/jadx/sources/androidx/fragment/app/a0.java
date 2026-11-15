package androidx.fragment.app;

import java.io.Writer;

final class a0 extends Writer {

    private final String f9114a;

    private StringBuilder f9115b = new StringBuilder(128);

    a0(String str) {
        this.f9114a = str;
    }

    private void d() {
        if (this.f9115b.length() > 0) {
            this.f9115b.toString();
            StringBuilder sb2 = this.f9115b;
            sb2.delete(0, sb2.length());
        }
    }

    @Override
    public void close() {
        d();
    }

    @Override
    public void flush() {
        d();
    }

    @Override
    public void write(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            char c10 = cArr[i10 + i12];
            if (c10 == '\n') {
                d();
            } else {
                this.f9115b.append(c10);
            }
        }
    }
}
