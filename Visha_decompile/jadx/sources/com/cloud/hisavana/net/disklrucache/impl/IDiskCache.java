package com.cloud.hisavana.net.disklrucache.impl;

import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import java.io.File;
import java.io.InputStream;
import okhttp3.Response;

public interface IDiskCache {

    public interface Factory {
    }

    public interface Provider {
    }

    String a(ImageCacheURL imageCacheURL, byte[] bArr);

    boolean b(String str);

    void c(ImageCacheURL imageCacheURL);

    File d(ImageCacheURL imageCacheURL);

    String e(ImageCacheURL imageCacheURL, Response response);

    String f(ImageCacheURL imageCacheURL, InputStream inputStream);
}
