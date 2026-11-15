package com.mq.mgmi.client.message.internal.websocket;

import defpackage.g6d;
import defpackage.w7d;
import java.io.IOException;
import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;

public class WebSocketReceiver implements Runnable {
    private static final String CLASS_NAME = "com.mq.mgmi.client.message.internal.websocket.WebSocketReceiver";
    private InputStream input;
    private final Object lifecycle;
    private g6d log;
    private PipedOutputStream pipedOutputStream;
    private Thread receiverThread;
    private volatile boolean receiving;
    private boolean running;
    private boolean stopping;

    public WebSocketReceiver(InputStream inputStream, PipedInputStream pipedInputStream) throws IOException {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", CLASS_NAME);
        this.running = false;
        this.stopping = false;
        this.lifecycle = new Object();
        this.receiverThread = null;
        this.input = inputStream;
        PipedOutputStream pipedOutputStream = new PipedOutputStream();
        this.pipedOutputStream = pipedOutputStream;
        pipedInputStream.connect(pipedOutputStream);
    }

    private void closeOutputStream() {
        try {
            this.pipedOutputStream.close();
        } catch (IOException unused) {
        }
    }

    public boolean isReceiving() {
        return this.receiving;
    }

    public boolean isRunning() {
        return this.running;
    }

    @Override
    public void run() {
        if (this.running && this.input != null) {
            throw null;
        }
    }

    public void start(String str) {
        throw null;
    }

    public void stop() {
        this.stopping = true;
        synchronized (this.lifecycle) {
            throw null;
        }
    }
}
