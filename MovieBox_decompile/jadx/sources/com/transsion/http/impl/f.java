package com.transsion.http.impl;

class f implements Runnable {

    final String f44605a;

    final long f44606b;

    final long f44607c;

    final DownloadCallback f44608d;

    f(DownloadCallback downloadCallback, String str, long j10, long j11) {
        this.f44608d = downloadCallback;
        this.f44605a = str;
        this.f44606b = j10;
        this.f44607c = j11;
    }

    @Override
    public void run() {
        this.f44608d.z(this.f44605a, this.f44606b, this.f44607c);
    }
}
