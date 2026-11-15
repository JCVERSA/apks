package defpackage;

import java.io.IOException;
import java.io.Writer;

public class wrc extends Writer {
    public final Writer b;
    public final xrc c;

    public wrc(xrc xrcVar, Writer writer) {
        this.c = xrcVar;
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
            this.b.write(xrc.e, 0, 6);
            return;
        }
        if (i == 60) {
            this.b.write(xrc.b, 0, 4);
            return;
        }
        if (i == 62) {
            this.b.write(xrc.c, 0, 4);
            return;
        }
        if (i == 38) {
            this.b.write(xrc.d, 0, 5);
        } else if (i != 39) {
            this.b.write(i);
        } else {
            this.b.write(xrc.f, 0, 6);
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
                this.b.write(xrc.e, 0, 6);
            } else if (c == '<') {
                this.b.write(cArr, i4, i - i4);
                this.b.write(xrc.b, 0, 4);
            } else if (c == '>') {
                this.b.write(cArr, i4, i - i4);
                this.b.write(xrc.c, 0, 4);
            } else if (c != '&') {
                if (c == '\'') {
                    this.b.write(cArr, i4, i - i4);
                    this.b.write(xrc.f, 0, 6);
                }
                i++;
            } else {
                this.b.write(cArr, i4, i - i4);
                this.b.write(xrc.d, 0, 5);
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
