package org.apache.tools.ant.taskdefs;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class StreamPumper implements Runnable {
    private static final int SMALL_BUFFER_SIZE = 128;
    private boolean autoflush;
    private int bufferSize;
    private boolean closeWhenExhausted;
    private Exception exception;
    private volatile boolean finish;
    private volatile boolean finished;

    private InputStream f68179is;

    private OutputStream f68180os;
    private boolean started;

    public StreamPumper(InputStream inputStream, OutputStream outputStream, boolean z10) {
        this.autoflush = false;
        this.exception = null;
        this.bufferSize = 128;
        this.started = false;
        this.f68179is = inputStream;
        this.f68180os = outputStream;
        this.closeWhenExhausted = z10;
    }

    public synchronized int getBufferSize() {
        return this.bufferSize;
    }

    public synchronized Exception getException() {
        return this.exception;
    }

    public boolean isFinished() {
        return this.finished;
    }

    @Override
    public void run() {
        synchronized (this) {
            this.started = true;
        }
        this.finished = false;
        this.finish = false;
        byte[] bArr = new byte[this.bufferSize];
        while (true) {
            try {
                try {
                    int i10 = this.f68179is.read(bArr);
                    if (i10 <= 0 || this.finish) {
                        break;
                    }
                    this.f68180os.write(bArr, 0, i10);
                    if (this.autoflush) {
                        this.f68180os.flush();
                    }
                } catch (Exception e10) {
                    synchronized (this) {
                        this.exception = e10;
                        if (this.closeWhenExhausted) {
                            try {
                                this.f68180os.close();
                            } catch (IOException unused) {
                            }
                        }
                        this.finished = true;
                        synchronized (this) {
                            notifyAll();
                            return;
                        }
                    }
                }
            } catch (Throwable th2) {
                if (this.closeWhenExhausted) {
                    try {
                        this.f68180os.close();
                    } catch (IOException unused2) {
                    }
                }
                this.finished = true;
                synchronized (this) {
                    notifyAll();
                    throw th2;
                }
            }
        }
        this.f68180os.flush();
        if (this.closeWhenExhausted) {
            try {
                this.f68180os.close();
            } catch (IOException unused3) {
            }
        }
        this.finished = true;
        synchronized (this) {
            notifyAll();
        }
    }

    void setAutoflush(boolean z10) {
        this.autoflush = z10;
    }

    public synchronized void setBufferSize(int i10) {
        if (this.started) {
            throw new IllegalStateException("Cannot set buffer size on a running StreamPumper");
        }
        this.bufferSize = i10;
    }

    synchronized void stop() {
        this.finish = true;
        notifyAll();
    }

    public synchronized void waitFor() throws InterruptedException {
        while (!isFinished()) {
            wait();
        }
    }

    public StreamPumper(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, false);
    }
}
