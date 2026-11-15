package org.apache.tools.ant.taskdefs;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.PrintWriter;
import org.apache.tools.ant.u;

public class Exec extends u {

    protected PrintWriter f68168g = null;

    private boolean f68169h = false;

    class StreamPumper extends Thread {
        private static final int SLEEP_TIME = 5;
        private BufferedReader din;
        private boolean endOfStream = false;
        private int messageLevel;

        public StreamPumper(InputStream inputStream, int i10) {
            this.din = new BufferedReader(new InputStreamReader(inputStream));
            this.messageLevel = i10;
        }

        public void pumpStream() throws IOException {
            if (this.endOfStream) {
                return;
            }
            String line = this.din.readLine();
            if (line != null) {
                Exec.this.u(line, this.messageLevel);
            } else {
                this.endOfStream = true;
            }
        }

        @Override
        public void run() {
            while (!this.endOfStream) {
                try {
                    try {
                        pumpStream();
                        Thread.sleep(5L);
                    } catch (IOException unused) {
                        return;
                    }
                } catch (InterruptedException unused2) {
                }
            }
            this.din.close();
        }
    }

    public Exec() {
        PrintStream printStream = System.err;
        printStream.println("As of Ant 1.2 released in October 2000, the Exec class");
        printStream.println("is considered to be dead code by the Ant developers and is unmaintained.");
        printStream.println("Don't use it!");
    }

    protected void u(String str, int i10) {
        PrintWriter printWriter = this.f68168g;
        if (printWriter == null) {
            log(str, i10);
        } else {
            printWriter.println(str);
        }
    }
}
