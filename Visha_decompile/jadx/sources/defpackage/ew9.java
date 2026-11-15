package defpackage;

import freemarker.template.TemplateModelException;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;
import org.apache.commons.lang3.CharUtils;

public class ew9 implements pga {
    public static final ew9 c = new ew9();
    public int b;

    public static class a extends Writer {
        public final Writer b;
        public final char[] c;
        public final boolean d;
        public int e = 0;
        public boolean f = true;
        public int g = 0;

        public a(Writer writer, int i, boolean z) {
            this.b = writer;
            this.d = z;
            this.c = new char[i];
        }

        public final void b() throws IOException {
            this.b.write(this.c, 0, this.e);
            this.e = 0;
        }

        @Override
        public void close() throws IOException {
            b();
        }

        public final void d(char c) {
            int i = this.g;
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                if (c == '\n') {
                    this.g = 5;
                    return;
                } else {
                    this.g = 4;
                    return;
                }
            }
            if (c == '\r') {
                this.g = 3;
            } else if (c == '\n') {
                this.g = 6;
            }
        }

        public final void e(char[] cArr, int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                char c = cArr[i];
                if (Character.isWhitespace(c)) {
                    this.f = true;
                    d(c);
                } else if (this.f) {
                    this.f = false;
                    g();
                    char[] cArr2 = this.c;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    cArr2[i4] = c;
                } else {
                    char[] cArr3 = this.c;
                    int i5 = this.e;
                    this.e = i5 + 1;
                    cArr3[i5] = c;
                }
                i++;
            }
        }

        @Override
        public void flush() throws IOException {
            b();
            this.b.flush();
        }

        public final void g() {
            switch (this.g) {
                case 1:
                case 2:
                    char[] cArr = this.c;
                    int i = this.e;
                    this.e = i + 1;
                    cArr[i] = ' ';
                    break;
                case 3:
                case 4:
                    char[] cArr2 = this.c;
                    int i2 = this.e;
                    this.e = i2 + 1;
                    cArr2[i2] = CharUtils.CR;
                    break;
                case 5:
                    char[] cArr3 = this.c;
                    int i3 = this.e;
                    this.e = i3 + 1;
                    cArr3[i3] = CharUtils.CR;
                case 6:
                    char[] cArr4 = this.c;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    cArr4[i4] = '\n';
                    break;
            }
            this.g = this.d ? 1 : 2;
        }

        @Override
        public void write(char[] cArr, int i, int i2) throws IOException {
            while (true) {
                int length = (this.c.length - this.e) - 2;
                if (length >= i2) {
                    e(cArr, i, i2);
                    return;
                } else if (length <= 0) {
                    b();
                } else {
                    e(cArr, i, length);
                    b();
                    i += length;
                    i2 -= length;
                }
            }
        }
    }

    public ew9() {
        this(2048);
    }

    @Override
    public Writer h(Writer writer, Map map) throws TemplateModelException {
        int iIntValue = this.b;
        boolean asBoolean = false;
        if (map != null) {
            try {
                hga hgaVar = (hga) map.get("buffer_size");
                if (hgaVar != null) {
                    iIntValue = hgaVar.getAsNumber().intValue();
                }
                try {
                    freemarker.template.a aVar = (freemarker.template.a) map.get("single_line");
                    if (aVar != null) {
                        asBoolean = aVar.getAsBoolean();
                    }
                } catch (ClassCastException unused) {
                    throw new TemplateModelException("Expecting boolean argument to single_line");
                }
            } catch (ClassCastException unused2) {
                throw new TemplateModelException("Expecting numerical argument to buffer_size");
            }
        }
        return new a(writer, iIntValue, asBoolean);
    }

    public ew9(int i) {
        this.b = i;
    }
}
