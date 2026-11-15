package com.cloud.hisavana.net.disklrucache.utils;

import android.util.Log;
import android.util.LruCache;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.sdk.commonutil.util.c;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;

public class SafeKeyUtils {

    private static final LruCache f20799a = new LruCache(1000);

    private static String a(ImageCacheURL imageCacheURL) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
            messageDigest.update(imageCacheURL.a());
            return DiskLruCacheUtil.j(messageDigest.digest());
        } catch (Exception e10) {
            c.netLog("calculateHexStringDigest: " + Log.getStackTraceString(e10));
            return "";
        }
    }

    public static String b(ImageCacheURL imageCacheURL) {
        String strA;
        LruCache lruCache = f20799a;
        synchronized (lruCache) {
            strA = (String) lruCache.get(imageCacheURL);
        }
        if (strA == null) {
            strA = a(imageCacheURL);
        }
        synchronized (lruCache) {
            lruCache.put(imageCacheURL, strA);
        }
        return strA;
    }
}
