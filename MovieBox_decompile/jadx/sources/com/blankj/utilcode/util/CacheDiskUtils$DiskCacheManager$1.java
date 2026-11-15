package com.blankj.utilcode.util;

import java.io.File;
import java.io.FilenameFilter;

class CacheDiskUtils$DiskCacheManager$1 implements Runnable {
    final e this$0;
    final File val$cacheDir;

    class a implements FilenameFilter {
        a() {
        }

        @Override
        public boolean accept(File file, String str) {
            return str.startsWith("cdu_");
        }
    }

    CacheDiskUtils$DiskCacheManager$1(e eVar, File file) {
        this.val$cacheDir = file;
    }

    @Override
    public void run() {
        File[] fileArrListFiles = this.val$cacheDir.listFiles(new a());
        if (fileArrListFiles != null) {
            int length = 0;
            int i10 = 0;
            for (File file : fileArrListFiles) {
                length = (int) (((long) length) + file.length());
                i10++;
                e.a(null).put(file, Long.valueOf(file.lastModified()));
            }
            e.b(null).getAndAdd(length);
            e.c(null).getAndAdd(i10);
        }
    }
}
