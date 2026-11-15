package org.apache.tools.ant.util;

import java.util.Enumeration;
import java.util.Vector;

public class Watchdog implements Runnable {
    public static final String ERROR_INVALID_TIMEOUT = "timeout less than 1.";
    private Vector observers = new Vector(1);
    private volatile boolean stopped = false;
    private long timeout;

    public Watchdog(long j10) {
        this.timeout = -1L;
        if (j10 < 1) {
            throw new IllegalArgumentException(ERROR_INVALID_TIMEOUT);
        }
        this.timeout = j10;
    }

    public void addTimeoutObserver(r rVar) {
        this.observers.addElement(rVar);
    }

    protected final void fireTimeoutOccured() {
        Enumeration enumerationElements = this.observers.elements();
        while (enumerationElements.hasMoreElements()) {
            ((r) enumerationElements.nextElement()).timeoutOccured(this);
        }
    }

    public void removeTimeoutObserver(r rVar) {
        this.observers.removeElement(rVar);
    }

    @Override
    public synchronized void run() {
        long jCurrentTimeMillis = System.currentTimeMillis() + this.timeout;
        while (!this.stopped) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (jCurrentTimeMillis <= jCurrentTimeMillis2) {
                break;
            } else {
                try {
                    wait(jCurrentTimeMillis - jCurrentTimeMillis2);
                } catch (InterruptedException unused) {
                }
            }
        }
        if (!this.stopped) {
            fireTimeoutOccured();
        }
    }

    public synchronized void start() {
        this.stopped = false;
        Thread thread = new Thread(this, "WATCHDOG");
        thread.setDaemon(true);
        thread.start();
    }

    public synchronized void stop() {
        this.stopped = true;
        notifyAll();
    }
}
