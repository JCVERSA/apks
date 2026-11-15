package org.apache.tools.ant.taskdefs;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.util.Watchdog;
import org.apache.tools.ant.util.r;

public class i implements r {

    private Process f68228a;

    private volatile boolean f68229b = false;

    private Exception f68230c = null;

    private volatile boolean f68231d = false;

    private Watchdog f68232e;

    public i(long j10) {
        Watchdog watchdog = new Watchdog(j10);
        this.f68232e = watchdog;
        watchdog.addTimeoutObserver(this);
    }

    public synchronized void a() {
        if (this.f68230c != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Exception in ExecuteWatchdog.run: ");
            stringBuffer.append(this.f68230c.getMessage());
            throw new BuildException(stringBuffer.toString(), this.f68230c);
        }
    }

    protected synchronized void b() {
        this.f68229b = false;
        this.f68228a = null;
    }

    public boolean c() {
        return this.f68231d;
    }

    public synchronized void d(Process process) {
        try {
            if (process == null) {
                throw new NullPointerException("process is null.");
            }
            if (this.f68228a != null) {
                throw new IllegalStateException("Already running.");
            }
            this.f68230c = null;
            this.f68231d = false;
            this.f68229b = true;
            this.f68228a = process;
            this.f68232e.start();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void e() {
        this.f68232e.stop();
        b();
    }

    @Override
    public synchronized void timeoutOccured(Watchdog watchdog) {
        try {
            try {
                try {
                    this.f68228a.exitValue();
                } catch (IllegalThreadStateException unused) {
                    if (this.f68229b) {
                        this.f68231d = true;
                        this.f68228a.destroy();
                    }
                }
            } catch (Exception e10) {
                this.f68230c = e10;
            }
            b();
        } catch (Throwable th2) {
            b();
            throw th2;
        }
    }
}
