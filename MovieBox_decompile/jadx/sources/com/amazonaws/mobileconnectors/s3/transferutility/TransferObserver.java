package com.amazonaws.mobileconnectors.s3.transferutility;

import java.io.File;

public class TransferObserver {

    private final int f17853a;

    private final TransferDBUtil f17854b;

    private String f17855c;

    private String f17856d;

    private long f17857e;

    private long f17858f;

    private TransferState f17859g;

    private String f17860h;

    private TransferListener f17861i;

    private TransferStatusListener f17862j;

    TransferObserver(int i10, TransferDBUtil transferDBUtil, String str, String str2, File file) {
        this.f17853a = i10;
        this.f17854b = transferDBUtil;
        this.f17855c = str;
        this.f17856d = str2;
        this.f17860h = file.getAbsolutePath();
        this.f17857e = file.length();
        this.f17859g = TransferState.WAITING;
    }

    public void d() {
        synchronized (this) {
            try {
                TransferListener transferListener = this.f17861i;
                if (transferListener != null) {
                    TransferStatusUpdater.j(this.f17853a, transferListener);
                    this.f17861i = null;
                }
                TransferStatusListener transferStatusListener = this.f17862j;
                if (transferStatusListener != null) {
                    TransferStatusUpdater.j(this.f17853a, transferStatusListener);
                    this.f17862j = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String e() {
        return this.f17855c;
    }

    public int f() {
        return this.f17853a;
    }

    public void g(TransferListener transferListener) {
        if (transferListener != null) {
            synchronized (this) {
                d();
                TransferStatusListener transferStatusListener = new TransferStatusListener();
                this.f17862j = transferStatusListener;
                TransferStatusUpdater.g(this.f17853a, transferStatusListener);
                this.f17861i = transferListener;
                TransferStatusUpdater.g(this.f17853a, transferListener);
            }
        }
    }

    public String toString() {
        return "TransferObserver{id=" + this.f17853a + ", bucket='" + this.f17855c + "', key='" + this.f17856d + "', bytesTotal=" + this.f17857e + ", bytesTransferred=" + this.f17858f + ", transferState=" + this.f17859g + ", filePath='" + this.f17860h + "'}";
    }

    TransferObserver(int i10, TransferDBUtil transferDBUtil, String str, String str2, File file, TransferListener transferListener) {
        this(i10, transferDBUtil, str, str2, file);
        g(transferListener);
    }

    private class TransferStatusListener implements TransferListener {
        private TransferStatusListener() {
        }

        @Override
        public void a(int i10, TransferState transferState) {
            TransferObserver.this.f17859g = transferState;
        }

        @Override
        public void b(int i10, long j10, long j11) {
            TransferObserver.this.f17858f = j10;
            TransferObserver.this.f17857e = j11;
        }

        @Override
        public void c(int i10, Exception exc) {
        }
    }
}
