package com.transsion.transfer.androidasync.util;

import java.io.File;
import java.util.Comparator;

public abstract class FileCache {

    class AnonymousClass1 implements Comparator<File> {
        final FileCache this$0;

        AnonymousClass1(FileCache fileCache) {
        }

        @Override
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified();
            long jLastModified2 = file2.lastModified();
            if (jLastModified < jLastModified2) {
                return -1;
            }
            return jLastModified2 > jLastModified ? 1 : 0;
        }
    }

    class AnonymousClass2 extends Thread {
        final FileCache this$0;

        AnonymousClass2(FileCache fileCache) {
        }

        @Override
        public void run() {
            throw null;
        }
    }
}
