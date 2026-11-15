package com.transsion.http.impl;

class d implements Runnable {

    final String f44599a;

    final String f44600b;

    final DownloadCallback f44601c;

    d(DownloadCallback downloadCallback, String str, String str2) {
        this.f44601c = downloadCallback;
        this.f44599a = str;
        this.f44600b = str2;
    }

    @Override
    public void run() {
        this.f44601c.x(this.f44599a, this.f44600b);
    }
}
