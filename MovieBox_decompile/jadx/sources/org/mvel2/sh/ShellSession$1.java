package org.mvel2.sh;

import f00.d;
import java.io.InputStream;
import java.io.PrintStream;

class ShellSession$1 implements Runnable {
    final a this$0;
    final InputStream val$inStream;
    final a.C0844a val$runState;
    final PrintStream val$sysPrintStream;

    ShellSession$1(a aVar, InputStream inputStream, PrintStream printStream, a.C0844a c0844a) {
        this.this$0 = aVar;
        this.val$inStream = inputStream;
        this.val$sysPrintStream = printStream;
    }

    @Override
    public void run() {
        byte[] bArr = new byte[25];
        while (true) {
            try {
                int i10 = this.val$inStream.read(bArr);
                if (i10 <= 0) {
                    break;
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    this.val$sysPrintStream.print((char) bArr[i11]);
                }
                this.val$sysPrintStream.flush();
            } catch (Exception unused) {
                this.val$sysPrintStream.flush();
                if (this.this$0.f68854g) {
                    PrintStream printStreamAppend = this.this$0.f68856i.append((CharSequence) ">");
                    a aVar = this.this$0;
                    printStreamAppend.append((CharSequence) aVar.j((aVar.f68855h - 1) + (this.this$0.f68853f * 4)));
                    return;
                } else {
                    a aVar2 = this.this$0;
                    aVar2.f68855h = aVar2.f68857j = String.valueOf(d.b((String) aVar2.f68850c.get("$PROMPT"), this.this$0.f68849b)).length();
                    this.this$0.f68856i.append((CharSequence) this.this$0.f68857j);
                    return;
                }
            }
        }
        throw null;
    }
}
