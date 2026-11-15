package defpackage;

import android.text.TextUtils;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.dbhelpder.VideoCloudCacheHelper;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class fpb {
    public static final fpb a;
    public static final ConcurrentHashMap b;
    public static final ExecutorService c;
    public static final apb d;
    public static Observer e;

    static {
        fpb fpbVar = new fpb();
        a = fpbVar;
        b = new ConcurrentHashMap();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        y45.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        c = executorServiceNewSingleThreadExecutor;
        d = CloudTaskDatabase.getInstance().videoCloudCacheDao();
        fpbVar.f();
        fpbVar.i();
    }

    public static final void g() {
        try {
            apb apbVar = d;
            List<VideoCloudCache> videoCloud = apbVar != null ? apbVar.getVideoCloud() : null;
            if (videoCloud != null) {
                for (VideoCloudCache videoCloudCache : videoCloud) {
                    if (!TextUtils.isEmpty(videoCloudCache.getFileId())) {
                        b.put(videoCloudCache.getFileId(), videoCloudCache);
                    }
                }
                LogUtils.i("VideoCloudCacheManager", "Cache initialized with " + b.size() + " video cloud cache items");
            }
        } catch (Exception e2) {
            LogUtils.l("VideoCloudCacheManager", "Error initializing cache", e2);
        }
    }

    public static final void j(List list) {
        a.k(list);
    }

    public static final void l(List list) {
        try {
            b.clear();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    VideoCloudCache videoCloudCache = (VideoCloudCache) it.next();
                    if (!TextUtils.isEmpty(videoCloudCache.getFileId())) {
                        videoCloudCache.setPlayDuration(Long.valueOf(CloudVideoPlayInfoManager.a.t("fileId")));
                        b.put(videoCloudCache.getFileId(), videoCloudCache);
                    }
                }
            }
            ConcurrentHashMap concurrentHashMap = b;
            VideoCloudCacheHelper.h(concurrentHashMap);
            LogUtils.i("VideoCloudCacheManager", "Cache updated with " + concurrentHashMap.size() + " video cloud cache items");
        } catch (Exception e2) {
            LogUtils.l("VideoCloudCacheManager", "Error updating cache", e2);
        }
    }

    public final int d() {
        return b.size();
    }

    public final VideoCloudCache e(String str) {
        y45.j(str, "fileId");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (VideoCloudCache) b.get(str);
    }

    public final void f() {
        c.execute(new Runnable() {
            @Override
            public final void run() {
                fpb.g();
            }
        });
    }

    public final boolean h(String str) {
        y45.j(str, "fileId");
        return e(str) != null;
    }

    public final void i() {
        LiveData<List<VideoCloudCache>> videoCloudLiveData;
        e = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                fpb.j((List) obj);
            }
        };
        apb apbVar = d;
        if (apbVar == null || (videoCloudLiveData = apbVar.getVideoCloudLiveData()) == null) {
            return;
        }
        Observer<? super List<VideoCloudCache>> observer = e;
        y45.g(observer);
        videoCloudLiveData.observeForever(observer);
    }

    public final void k(final List list) {
        c.execute(new Runnable() {
            @Override
            public final void run() {
                fpb.l(list);
            }
        });
    }
}
