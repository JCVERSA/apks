package com.bykv.vk.openvk.preload.geckox.utils;

import java.io.File;
import java.io.FileFilter;

public final class g {
    public static Long a(File file) {
        File[] fileArrListFiles = file.listFiles(new FileFilter() {
            @Override
            public final boolean accept(File file2) {
                return file2.isDirectory();
            }
        });
        Long l10 = null;
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                try {
                    Long lValueOf = Long.valueOf(file2.getName());
                    long jLongValue = lValueOf.longValue();
                    if (l10 == null || jLongValue > l10.longValue()) {
                        l10 = lValueOf;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return l10;
    }
}
