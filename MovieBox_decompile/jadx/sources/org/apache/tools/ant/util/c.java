package org.apache.tools.ant.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class c extends InputStream {

    private int f68392a = -1;

    private boolean f68393b = false;

    private File[] f68394c;

    private InputStream f68395d;

    private org.apache.tools.ant.q f68396e;

    public c(File[] fileArr) {
        this.f68394c = fileArr;
    }

    private void d() {
        d.b(this.f68395d);
        this.f68395d = null;
    }

    private void h(int i10) throws IOException {
        d();
        File[] fileArr = this.f68394c;
        if (fileArr == null || i10 >= fileArr.length) {
            this.f68393b = true;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Opening ");
        stringBuffer.append(this.f68394c[i10]);
        f(stringBuffer.toString(), 3);
        try {
            this.f68395d = new BufferedInputStream(new FileInputStream(this.f68394c[i10]));
        } catch (IOException e10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Failed to open ");
            stringBuffer2.append(this.f68394c[i10]);
            f(stringBuffer2.toString(), 0);
            throw e10;
        }
    }

    private int k() {
        InputStream inputStream;
        if (this.f68393b || (inputStream = this.f68395d) == null) {
            return -1;
        }
        return inputStream.read();
    }

    @Override
    public void close() {
        d();
        this.f68393b = true;
    }

    public void f(String str, int i10) {
        org.apache.tools.ant.q qVar = this.f68396e;
        if (qVar != null) {
            qVar.log(str, i10);
        } else if (i10 > 1) {
            System.out.println(str);
        } else {
            System.err.println(str);
        }
    }

    public void l(org.apache.tools.ant.q qVar) {
        this.f68396e = qVar;
    }

    @Override
    public int read() throws IOException {
        int iK = k();
        if (iK != -1 || this.f68393b) {
            return iK;
        }
        int i10 = this.f68392a + 1;
        this.f68392a = i10;
        h(i10);
        return k();
    }
}
