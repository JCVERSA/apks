package defpackage;

import java.io.IOException;
import java.io.Writer;

public class as4 extends Writer {
    public final Writer b;
    public final bs4 c;

    public as4(bs4 bs4Var, Writer writer) {
        this.c = bs4Var;
        this.b = writer;
    }

    @Override
    public void close() {
    }

    @Override
    public void flush() throws IOException {
        this.b.flush();
    }

    @Override
    public void write(int i) throws IOException {
        if (i == 34) {
            this.b.write(bs4.e, 0, 6);
            return;
        }
        if (i == 38) {
            this.b.write(bs4.d, 0, 5);
            return;
        }
        if (i == 60) {
            this.b.write(bs4.b, 0, 4);
        } else if (i != 62) {
            this.b.write(i);
        } else {
            this.b.write(bs4.c, 0, 4);
        }
    }

    @Override
    public void write(char[] cArr, int i, int i2) throws IOException {
        int i3 = i2 + i;
        int i4 = i;
        while (i < i3) {
            char c = cArr[i];
            if (c == '\"') {
                this.b.write(cArr, i4, i - i4);
                this.b.write(bs4.e, 0, 6);
            } else if (c == '&') {
                this.b.write(cArr, i4, i - i4);
                this.b.write(bs4.d, 0, 5);
            } else if (c != '<') {
                if (c == '>') {
                    this.b.write(cArr, i4, i - i4);
                    this.b.write(bs4.c, 0, 4);
                }
                i++;
            } else {
                this.b.write(cArr, i4, i - i4);
                this.b.write(bs4.b, 0, 4);
            }
            i4 = i + 1;
            i++;
        }
        int i5 = i3 - i4;
        if (i5 > 0) {
            this.b.write(cArr, i4, i5);
        }
    }
}
