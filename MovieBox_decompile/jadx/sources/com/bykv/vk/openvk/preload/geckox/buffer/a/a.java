package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.IOException;

public final class a {

    public String f20016a;

    public String f20017b;

    public String f20018c;

    public String f20019d;

    public String f20020e;

    public String f20021f;

    public int f20022g;

    public static com.bykv.vk.openvk.preload.geckox.buffer.a a(File file, long j10) throws IOException {
        com.bykv.vk.openvk.preload.geckox.buffer.a aVarB = b(file, j10);
        GeckoLogger.d("gecko-debug-tag", "buffer type:" + aVarB.getClass());
        return aVarB;
    }

    private static com.bykv.vk.openvk.preload.geckox.buffer.a b(File file, long j10) throws IOException {
        if (j10 <= 0) {
            try {
                return new b(file);
            } catch (Exception e10) {
                throw new IOException("create FileBuffer failed! file:" + file.getAbsolutePath() + " caused by:" + e10.getMessage(), e10);
            }
        }
        try {
            return new c(j10, file);
        } catch (Exception e11) {
            throw new RuntimeException("create random access file failed! file:" + file.getAbsolutePath() + " caused by:" + e11.getMessage(), e11);
        }
    }
}
