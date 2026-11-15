package com.bykv.vk.openvk.preload.geckox.f.a;

import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class b extends a {
    public b(File file) {
        super(file);
    }

    @Override
    protected final InputStream a(File file, String str) throws IOException {
        GeckoLogger.d("gecko-debug-tag", "MyArchiveFileLoader, file:", new File(str).getCanonicalPath());
        return null;
    }

    @Override
    protected final boolean b(File file, String str) throws IOException {
        new File(str).getCanonicalPath();
        return false;
    }
}
