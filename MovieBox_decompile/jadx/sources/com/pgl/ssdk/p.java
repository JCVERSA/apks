package com.pgl.ssdk;

import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

public abstract class p {
    public static o a(RandomAccessFile randomAccessFile, long j10, long j11) {
        return a(randomAccessFile.getChannel(), j10, j11);
    }

    public static o a(FileChannel fileChannel, long j10, long j11) {
        fileChannel.getClass();
        return new l(fileChannel, j10, j11);
    }
}
