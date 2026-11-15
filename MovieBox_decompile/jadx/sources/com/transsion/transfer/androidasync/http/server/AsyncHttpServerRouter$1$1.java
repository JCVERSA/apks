package com.transsion.transfer.androidasync.http.server;

import java.io.File;
import java.util.Comparator;

class AsyncHttpServerRouter$1$1 implements Comparator<File> {
    final m this$1;

    AsyncHttpServerRouter$1$1(m mVar) {
    }

    @Override
    public int compare(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }
}
