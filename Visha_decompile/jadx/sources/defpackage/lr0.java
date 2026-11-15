package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import java.io.IOException;
import java.io.Writer;

public class lr0 extends Writer {
    public final StringBuffer b;
    public final Writer c;
    public final boolean d;
    public final Environment e;
    public final String f;
    public final boolean g;
    public final zfa h;
    public final mr0 i;

    public lr0(mr0 mr0Var, StringBuffer stringBuffer, Writer writer, boolean z, Environment environment, String str, boolean z2, zfa zfaVar) {
        this.i = mr0Var;
        this.b = stringBuffer;
        this.c = writer;
        this.d = z;
        this.e = environment;
        this.f = str;
        this.g = z2;
        this.h = zfaVar;
    }

    @Override
    public void close() throws IOException {
        SimpleScalar simpleScalar = new SimpleScalar(this.b.toString());
        try {
            if (this.d) {
                this.e.Q1(this.f, simpleScalar);
                return;
            }
            if (this.g) {
                this.e.O1(this.f, simpleScalar);
                return;
            }
            zfa zfaVar = this.h;
            if (zfaVar == null) {
                this.e.T1(this.f, simpleScalar);
            } else {
                ((Environment.Namespace) zfaVar).put(this.f, simpleScalar);
            }
        } catch (IllegalStateException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Could not set variable ");
            stringBuffer.append(this.f);
            stringBuffer.append(": ");
            stringBuffer.append(e.getMessage());
            throw new IOException(stringBuffer.toString());
        }
    }

    @Override
    public void flush() throws IOException {
        this.c.flush();
    }

    @Override
    public void write(char[] cArr, int i, int i2) {
        this.b.append(cArr, i, i2);
    }
}
