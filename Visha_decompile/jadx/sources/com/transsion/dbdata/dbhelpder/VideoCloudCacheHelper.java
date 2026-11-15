package com.transsion.dbdata.dbhelpder;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.mimedia.MIMediaConstants;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.fi1;
import defpackage.ns9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class VideoCloudCacheHelper {
    public static b b;
    public static final Map a = new ConcurrentHashMap();
    public static final List c = new ArrayList();

    public static class a {
        public String a = "";
    }

    public interface b {
        MediaItem a(String str);

        a b(String str);
    }

    public static ArrayList a() {
        ArrayList arrayList = new ArrayList();
        String cache = CacheManager.getInstance().getCache(MIMediaConstants.RECENT_PLAY_LIST_CACHE);
        List<VideoCloudData> list = !TextUtils.isEmpty(cache) ? (List) fi1.c(cache, new TypeToken<List<VideoCloudData>>() {
        }.getType()) : null;
        if (list != null) {
            for (VideoCloudData videoCloudData : list) {
                Log.d("VideoCloudCacheHelper", "getCloudRecentList: cache.getIsRecentData() = " + cache);
                arrayList.add(videoCloudData.getDataType() == 2 ? MIMediaDataUtils.INSTANCE.buildMediaItemForRecent(videoCloudData) : videoCloudData.toMediaItem());
            }
        }
        return arrayList;
    }

    public static a b(String str) {
        b bVar = b;
        return bVar != null ? bVar.b(str) : new a();
    }

    public static MediaItem c(String str) {
        VideoCloudCache videoCloudCache = (VideoCloudCache) a.get(str);
        if (videoCloudCache == null) {
            return b.a(str);
        }
        MediaItem mediaItem = videoCloudCache.toMediaItem();
        mediaItem.uri = Uri.parse(b(str).a);
        return mediaItem;
    }

    public static ArrayList d(String str) {
        MediaItem mediaItemA = b.a(str);
        if (mediaItemA != null && mediaItemA.isKtFile) {
            return new ArrayList(Collections.singletonList(mediaItemA));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = a.values().iterator();
        while (it.hasNext()) {
            arrayList.add(((VideoCloudCache) it.next()).toMediaItem());
        }
        return i(arrayList);
    }

    public static VideoCloudCache e(String str) {
        return (VideoCloudCache) a.get(str);
    }

    public static void f(b bVar) {
        if (b == null) {
            b = bVar;
        }
    }

    public static void g(List list) {
        List list2 = c;
        list2.clear();
        list2.addAll(list);
    }

    public static void h(ConcurrentHashMap concurrentHashMap) {
        Map map = a;
        map.clear();
        map.putAll(concurrentHashMap);
    }

    public static ArrayList i(ArrayList arrayList) {
        if (arrayList != null) {
            try {
                if (!arrayList.isEmpty()) {
                    LogUtils.j("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: start sorting " + arrayList.size() + " items with CLOUD_FILE_SORT_LIST size: " + c.size());
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    HashMap map = new HashMap();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        MediaItem mediaItem = (MediaItem) it.next();
                        map.put(mediaItem.data, mediaItem);
                    }
                    List<String> list = c;
                    HashSet hashSet = new HashSet(list);
                    for (String str : list) {
                        MediaItem mediaItem2 = (MediaItem) map.get(str);
                        if (mediaItem2 != null) {
                            arrayList2.add(mediaItem2);
                            LogUtils.j("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: matched item with fileId: " + str);
                        }
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        MediaItem mediaItem3 = (MediaItem) it2.next();
                        if (!hashSet.contains(mediaItem3.data)) {
                            arrayList3.add(mediaItem3);
                        }
                    }
                    LogUtils.j("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: matched items: " + arrayList2.size() + ", unmatched items: " + arrayList3.size());
                    if (!arrayList3.isEmpty()) {
                        ns9.sortMediaItem(arrayList3);
                        arrayList2.addAll(arrayList3);
                        LogUtils.j("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: sorted and added unmatched items");
                    }
                    LogUtils.j("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: final result size: " + arrayList2.size());
                    return arrayList2;
                }
            } catch (Exception e) {
                LogUtils.m("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: error occurred - " + e.getMessage());
                return (ArrayList) ns9.sortMediaItem(arrayList);
            }
        }
        LogUtils.j("VideoCloudCacheHelper", "sortMediaItemsByCloudFileList: mediaItems is null or empty");
        return arrayList;
    }
}
