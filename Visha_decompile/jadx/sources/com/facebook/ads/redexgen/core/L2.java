package com.facebook.ads.redexgen.core;

import java.io.File;
import java.util.Comparator;

public final class L2 implements Comparator<File> {
    public L2() {
    }

    private int A00(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    @Override
    public final int compare(File file, File file2) {
        return A00(file.lastModified(), file2.lastModified());
    }
}
