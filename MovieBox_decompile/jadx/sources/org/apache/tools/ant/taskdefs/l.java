package org.apache.tools.ant.taskdefs;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class l implements h {

    private Thread f68246a;

    private Thread f68247b;

    private StreamPumper f68248c;

    private OutputStream f68249d;

    private OutputStream f68250e;

    private InputStream f68251f;

    public l(OutputStream outputStream, OutputStream outputStream2, InputStream inputStream) {
        this.f68249d = outputStream;
        this.f68250e = outputStream2;
        this.f68251f = inputStream;
    }

    @Override
    public void a(InputStream inputStream) {
        OutputStream outputStream = this.f68250e;
        if (outputStream != null) {
            e(inputStream, outputStream);
        }
    }

    @Override
    public void b(OutputStream outputStream) {
        InputStream inputStream = this.f68251f;
        if (inputStream != null) {
            this.f68248c = d(inputStream, outputStream, true);
        } else {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override
    public void c(InputStream inputStream) {
        f(inputStream, this.f68249d);
    }

    StreamPumper d(InputStream inputStream, OutputStream outputStream, boolean z10) {
        StreamPumper streamPumper = new StreamPumper(inputStream, outputStream, z10);
        streamPumper.setAutoflush(true);
        return streamPumper;
    }

    protected void e(InputStream inputStream, OutputStream outputStream) {
        this.f68247b = g(inputStream, outputStream);
    }

    protected void f(InputStream inputStream, OutputStream outputStream) {
        this.f68246a = g(inputStream, outputStream);
    }

    protected Thread g(InputStream inputStream, OutputStream outputStream) {
        return h(inputStream, outputStream, false);
    }

    protected Thread h(InputStream inputStream, OutputStream outputStream, boolean z10) {
        Thread thread = new Thread(new StreamPumper(inputStream, outputStream, z10));
        thread.setDaemon(true);
        return thread;
    }

    @Override
    public void start() {
        this.f68246a.start();
        this.f68247b.start();
        if (this.f68248c != null) {
            Thread thread = new Thread(this.f68248c);
            thread.setDaemon(true);
            thread.start();
        }
    }

    @Override
    public void stop() {
        try {
            this.f68246a.join();
        } catch (InterruptedException unused) {
        }
        try {
            this.f68247b.join();
        } catch (InterruptedException unused2) {
        }
        StreamPumper streamPumper = this.f68248c;
        if (streamPumper != null) {
            streamPumper.stop();
        }
        try {
            this.f68250e.flush();
        } catch (IOException unused3) {
        }
        try {
            this.f68249d.flush();
        } catch (IOException unused4) {
        }
    }

    public l(OutputStream outputStream, OutputStream outputStream2) {
        this(outputStream, outputStream2, null);
    }

    public l(OutputStream outputStream) {
        this(outputStream, outputStream);
    }

    public l() {
        this(System.out, System.err);
    }
}
