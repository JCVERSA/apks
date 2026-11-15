package javassist.util;

import defpackage.zr4;
import java.io.PrintStream;

class HotSwapper$1 extends Thread {
    final zr4 this$0;

    public HotSwapper$1(zr4 zr4Var) {
    }

    private void errorMsg(Throwable th) {
        PrintStream printStream = System.err;
        printStream.print("Exception in thread \"HotSwap\" ");
        th.printStackTrace(printStream);
    }

    @Override
    public void run() {
        try {
            throw null;
        } catch (Throwable th) {
            errorMsg(th);
        }
    }
}
