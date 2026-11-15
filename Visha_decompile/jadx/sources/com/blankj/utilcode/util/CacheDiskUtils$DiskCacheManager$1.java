package com.blankj.utilcode.util;

import defpackage.lp0;
import java.io.File;
import java.io.FilenameFilter;

class CacheDiskUtils$DiskCacheManager$1 implements Runnable {
    final lp0 this$0;
    final File val$cacheDir;

    public class a implements FilenameFilter {
        public a() {
        }

        @Override
        public boolean accept(File file, String str) {
            return str.startsWith("cdu_");
        }
    }

    public CacheDiskUtils$DiskCacheManager$1(lp0 lp0Var, File file) {
        this.val$cacheDir = file;
    }

    @Override
    public void run() {
        File[] fileArrListFiles = this.val$cacheDir.listFiles(new a());
        if (fileArrListFiles != null) {
            int length = 0;
            int i = 0;
            for (File file : fileArrListFiles) {
                length = (int) (((long) length) + file.length());
                i++;
                lp0.a(null).put(file, Long.valueOf(file.lastModified()));
            }
            lp0.b(null).getAndAdd(length);
            lp0.c(null).getAndAdd(i);
        }
    }
}
