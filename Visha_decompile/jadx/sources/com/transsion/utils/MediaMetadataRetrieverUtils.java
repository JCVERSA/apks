package com.transsion.utils;

import android.os.Looper;
import android.util.Log;
import com.transsion.tranplayer.MediaMetadataRetriever;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public abstract class MediaMetadataRetrieverUtils {
    public static final Map a = Collections.synchronizedMap(new LinkedHashMap<String, a>(16, 0.75f, true) {
        @Override
        public boolean removeEldestEntry(Map.Entry<String, a> entry) {
            return size() > 512;
        }
    });

    public static class a {
        public int a;
        public String b;

        public String toString() {
            return "MediaMetadataInfo{duration=" + this.a + ", resolution=" + this.b + '}';
        }
    }

    public static a a(String str, int i) throws Throwable {
        String str2 = str + "/" + i;
        Map map = a;
        a aVar = (a) map.get(str2);
        if (aVar != null) {
            return aVar;
        }
        a aVarB = b(str);
        if (aVarB != null) {
            map.put(str2, aVarB);
        }
        return aVarB;
    }

    public static a b(String str) throws Throwable {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot retrieverMediaMetadataInfo on the main thread since it may potentially lock the UI for a long period of time.");
        }
        a aVar = new a();
        MediaMetadataRetriever mediaMetadataRetriever = null;
        try {
            try {
                MediaMetadataRetriever mediaMetadataRetriever2 = new MediaMetadataRetriever();
                try {
                    mediaMetadataRetriever2.setDataSource(str);
                    String strExtractMetadata = mediaMetadataRetriever2.extractMetadata(9);
                    String strExtractMetadata2 = mediaMetadataRetriever2.extractMetadata(18);
                    String strExtractMetadata3 = mediaMetadataRetriever2.extractMetadata(19);
                    aVar.a = Integer.parseInt(strExtractMetadata);
                    aVar.b = strExtractMetadata2 + "x" + strExtractMetadata3;
                    try {
                        mediaMetadataRetriever2.releaseRetriever();
                    } catch (Exception e) {
                        Log.e("MediaMetadataRetrieverUtils", "releaseRetriever error " + e);
                    }
                    return aVar;
                } catch (Exception e2) {
                    e = e2;
                    mediaMetadataRetriever = mediaMetadataRetriever2;
                    Log.e("MediaMetadataRetrieverUtils", "retrieverMediaMetadataInfo " + e);
                    if (mediaMetadataRetriever != null) {
                        try {
                            mediaMetadataRetriever.releaseRetriever();
                        } catch (Exception e3) {
                            Log.e("MediaMetadataRetrieverUtils", "releaseRetriever error " + e3);
                        }
                    }
                    return aVar;
                } catch (Throwable th) {
                    th = th;
                    mediaMetadataRetriever = mediaMetadataRetriever2;
                    if (mediaMetadataRetriever != null) {
                        try {
                            mediaMetadataRetriever.releaseRetriever();
                        } catch (Exception e4) {
                            Log.e("MediaMetadataRetrieverUtils", "releaseRetriever error " + e4);
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
