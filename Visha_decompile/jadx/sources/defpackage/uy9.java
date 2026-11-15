package defpackage;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

public abstract class uy9 {
    public static int a(InputStream inputStream) {
        if (inputStream instanceof cl5) {
            return ((cl5) inputStream).b();
        }
        if (inputStream instanceof f1) {
            return ((f1) inputStream).k();
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException unused) {
            }
        }
        long jMaxMemory = Runtime.getRuntime().maxMemory();
        if (jMaxMemory > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jMaxMemory;
    }
}
