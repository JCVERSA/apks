package org.mozilla.javascript.tools.debugger;

import defpackage.rn6;

class RunProxy implements Runnable {
    static final int ENTER_INTERRUPT = 4;
    static final int LOAD_FILE = 2;
    static final int OPEN_FILE = 1;
    static final int UPDATE_SOURCE_TEXT = 3;
    String alertMessage;
    private SwingGui debugGui;
    String fileName;
    Dim.StackFrame lastFrame;
    Dim.SourceInfo sourceInfo;
    String text;
    String threadTitle;
    private int type;

    public RunProxy(SwingGui swingGui, int i) {
        this.debugGui = swingGui;
        this.type = i;
    }

    @Override
    public void run() {
        int i = this.type;
        if (i == 1) {
            try {
                this.debugGui.dim.compileScript(this.fileName, this.text);
                return;
            } catch (RuntimeException e) {
                rn6.a(this.debugGui, e.getMessage(), "Error Compiling " + this.fileName, 0);
                return;
            }
        }
        if (i == 2) {
            try {
                this.debugGui.dim.evalScript(this.fileName, this.text);
                return;
            } catch (RuntimeException e2) {
                rn6.a(this.debugGui, e2.getMessage(), "Run error for " + this.fileName, 0);
                return;
            }
        }
        if (i != 3) {
            if (i != 4) {
                throw new IllegalArgumentException(String.valueOf(this.type));
            }
            this.debugGui.enterInterruptImpl(this.lastFrame, this.threadTitle, this.alertMessage);
        } else {
            String strUrl = this.sourceInfo.url();
            if (this.debugGui.updateFileWindow(this.sourceInfo) || strUrl.equals("<stdin>")) {
                return;
            }
            this.debugGui.createFileWindow(this.sourceInfo, -1);
        }
    }
}
