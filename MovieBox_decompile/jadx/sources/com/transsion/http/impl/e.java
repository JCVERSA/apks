package com.transsion.http.impl;

import java.io.File;

class e implements Runnable {

    final String f44602a;

    final File f44603b;

    final DownloadCallback f44604c;

    e(DownloadCallback downloadCallback, String str, File file) {
        this.f44604c = downloadCallback;
        this.f44602a = str;
        this.f44603b = file;
    }

    @Override
    public void run() {
        this.f44604c.B(this.f44602a, this.f44603b);
    }
}
