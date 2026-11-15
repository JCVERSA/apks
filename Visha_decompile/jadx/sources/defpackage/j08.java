package defpackage;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;

public class j08 extends BufferedWriter {
    public final int b;
    public char[] c;

    public j08(Writer writer) {
        super(writer);
        this.c = new char[64];
        String strD = u0a.d();
        this.b = strD != null ? strD.length() : 2;
    }

    public final void a(byte[] bArr) throws IOException {
        char[] cArr;
        int i;
        byte[] bArrA = f80.a(bArr);
        int length = 0;
        while (length < bArrA.length) {
            int i2 = 0;
            while (true) {
                cArr = this.c;
                if (i2 == cArr.length || (i = length + i2) >= bArrA.length) {
                    break;
                }
                cArr[i2] = (char) bArrA[i];
                i2++;
            }
            write(cArr, 0, i2);
            newLine();
            length += this.c.length;
        }
    }

    public void b(i08 i08Var) throws IOException {
        h08 h08VarA = i08Var.a();
        e(h08VarA.d());
        if (!h08VarA.c().isEmpty()) {
            Iterator it = h08VarA.c().iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                throw null;
            }
            newLine();
        }
        a(h08VarA.b());
        d(h08VarA.d());
    }

    public final void d(String str) throws IOException {
        write("-----END " + str + "-----");
        newLine();
    }

    public final void e(String str) throws IOException {
        write("-----BEGIN " + str + "-----");
        newLine();
    }
}
