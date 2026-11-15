package org.mozilla.javascript.tools.shell;

class ConsoleWrite implements Runnable {
    private String str;
    private ConsoleTextArea textArea;

    public ConsoleWrite(ConsoleTextArea consoleTextArea, String str) {
        this.textArea = consoleTextArea;
        this.str = str;
    }

    @Override
    public void run() {
        this.textArea.write(this.str);
    }
}
