package org.mvel2.sh;

import java.io.OutputStream;
import java.io.PrintStream;

class ShellSession$2 implements Runnable {
    final a this$0;
    final OutputStream val$outStream;
    final Process val$p;
    final a.C0844a val$runState;
    final PrintStream val$sysPrintStream;

    ShellSession$2(a aVar, a.C0844a c0844a, OutputStream outputStream, Process process, PrintStream printStream) {
        this.this$0 = aVar;
        this.val$outStream = outputStream;
        this.val$p = process;
        this.val$sysPrintStream = printStream;
    }

    @Override
    public void run() {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    ShellSession$2.this.getClass();
                    throw null;
                } catch (Exception unused) {
                }
            }
        });
        thread.setPriority(1);
        thread.start();
        try {
            this.val$p.waitFor();
        } catch (InterruptedException unused) {
        }
        this.val$sysPrintStream.flush();
        throw null;
    }
}
