package com.cloud.hisavana.net.disklrucache.utils;

import android.util.Log;
import android.util.LruCache;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import defpackage.ja1;
import java.security.MessageDigest;

public class SafeKeyUtils {
    public static final LruCache a = new LruCache(1000);

    public static String a(ImageCacheURL imageCacheURL) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(imageCacheURL.a());
            return DiskLruCacheUtil.j(messageDigest.digest());
        } catch (Exception e) {
            ja1.netLog("calculateHexStringDigest: " + Log.getStackTraceString(e));
            return "";
        }
    }

    public static String b(ImageCacheURL imageCacheURL) {
        String strA;
        LruCache lruCache = a;
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
