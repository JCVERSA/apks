package org.apache.tools.ant.util;

import java.io.IOException;
import java.io.PipedInputStream;

public class i extends PipedInputStream {

    private org.apache.tools.ant.q f68426a;

    public void b(String str, int i10) {
        org.apache.tools.ant.q qVar = this.f68426a;
        if (qVar != null) {
            qVar.log(str, i10);
        } else if (i10 > 1) {
            System.out.println(str);
        } else {
            System.err.println(str);
        }
    }

    public void d(org.apache.tools.ant.q qVar) {
        this.f68426a = qVar;
    }

    @Override
    public synchronized int read() {
        int i10;
        try {
            i10 = super.read();
        } catch (IOException e10) {
            if ("write end dead".equalsIgnoreCase(e10.getMessage())) {
                int i11 = ((PipedInputStream) this).in;
                if (i11 > 0) {
                    int i12 = ((PipedInputStream) this).out;
                    byte[] bArr = ((PipedInputStream) this).buffer;
                    if (i12 < bArr.length && i12 > i11) {
                        ((PipedInputStream) this).out = i12 + 1;
                        i10 = bArr[i12] & 255;
                    }
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("error at LeadPipeInputStream.read():  ");
                stringBuffer.append(e10.getMessage());
                b(stringBuffer.toString(), 2);
            }
            i10 = -1;
        }
        return i10;
    }
}
