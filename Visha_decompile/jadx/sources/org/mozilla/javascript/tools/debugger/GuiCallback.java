package org.mozilla.javascript.tools.debugger;

public interface GuiCallback {
    void dispatchNextGuiEvent() throws InterruptedException;

    void enterInterrupt(Dim.StackFrame stackFrame, String str, String str2);

    boolean isGuiEventThread();

    void updateSourceText(Dim.SourceInfo sourceInfo);
}
