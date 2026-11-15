package com.transsion.cloudcore.cache;

import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import defpackage.chc;
import defpackage.el0;
import defpackage.hk1;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.se;
import defpackage.v6a;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.coroutines.d;

public final class CloudTaskFinishCacheManager {
    public static final CloudTaskFinishCacheManager a;
    public static final ConcurrentHashMap b;
    public static final ExecutorService c;
    public static final CloudTransferRecordManager d;
    public static Observer e;
    public static final MutableLiveData f;
    public static final MutableLiveData g;
    public static boolean h;
    public static final a i;
    public static final hk1 j;
    public static final nk1 k;

    public static final class a extends chc {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(CloudTaskFinishCacheManager cloudTaskFinishCacheManager) {
            super(cloudTaskFinishCacheManager);
            y45.j(cloudTaskFinishCacheManager, SerializableCookie.HOST);
        }

        @Override
        public void b(CloudTaskFinishCacheManager cloudTaskFinishCacheManager, boolean z) {
            y45.j(cloudTaskFinishCacheManager, "owner");
            LogUtils.v("InnerContentObserver execute");
            cloudTaskFinishCacheManager.f();
        }
    }

    public static final class b extends kotlin.coroutines.a implements hk1 {
        public b(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(d dVar, Throwable th) {
            LogUtils.l("Coroutine Exception: " + th.getMessage());
        }
    }

    static {
        CloudTaskFinishCacheManager cloudTaskFinishCacheManager = new CloudTaskFinishCacheManager();
        a = cloudTaskFinishCacheManager;
        b = new ConcurrentHashMap();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        y45.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        c = executorServiceNewSingleThreadExecutor;
        CloudTransferRecordManager cloudTransferRecordManager = CloudTransferRecordManager.getInstance();
        y45.i(cloudTransferRecordManager, "getInstance(...)");
        d = cloudTransferRecordManager;
        Boolean bool = Boolean.FALSE;
        f = new MutableLiveData(bool);
        g = new MutableLiveData(bool);
        i = new a(cloudTaskFinishCacheManager);
        b bVar = new b(hk1.w1);
        j = bVar;
        k = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(bVar));
        cloudTaskFinishCacheManager.l();
        cloudTaskFinishCacheManager.o();
        cloudTaskFinishCacheManager.q();
    }

    public static final void m() {
        try {
            a.e(d.getAllFinishTask());
        } catch (Exception e2) {
            LogUtils.l("CloudTaskFinishCacheManager", "Error initializing cache", e2);
        }
    }

    public static final void p(List list) {
        a.s(list);
    }

    public static final void t(List list) {
        try {
            a.e(list);
            LogUtils.i("CloudTaskFinishCacheManager", "Cache updated with " + b.size() + " finished tasks");
        } catch (Exception e2) {
            LogUtils.l("CloudTaskFinishCacheManager", "Error updating cache", e2);
        }
    }

    public final void e(List list) {
        if (list != null) {
            b.clear();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CloudTaskEntity cloudTaskEntity = (CloudTaskEntity) it.next();
                if (!TextUtils.isEmpty(cloudTaskEntity.cloudFileId)) {
                    ConcurrentHashMap concurrentHashMap = b;
                    if (concurrentHashMap.get(cloudTaskEntity.cloudFileId) == null) {
                        concurrentHashMap.put(cloudTaskEntity.cloudFileId, cloudTaskEntity);
                    }
                }
            }
        }
    }

    public final void f() {
        el0.d(k, mc2.b(), null, new CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1(null), 2, null);
    }

    public final boolean g() {
        return h;
    }

    public final int h() {
        return b.size();
    }

    public final Integer i(String str) {
        y45.j(str, "cloudFileId");
        CloudTaskEntity cloudTaskEntity = (CloudTaskEntity) b.get(str);
        if (TextUtils.isEmpty(str) || cloudTaskEntity == null || !cloudTaskEntity.isLocalFileExist) {
            return null;
        }
        LogUtils.v("localFileId: " + cloudTaskEntity.localFileId);
        return Integer.valueOf(cloudTaskEntity.localFileId);
    }

    public final String j(String str) {
        if (str == null) {
            return null;
        }
        CloudTaskEntity cloudTaskEntity = (CloudTaskEntity) b.get(str);
        if (TextUtils.isEmpty(str) || cloudTaskEntity == null || !cloudTaskEntity.isLocalFileExist) {
            return null;
        }
        return cloudTaskEntity.localFilePath;
    }

    public final MutableLiveData k() {
        return g;
    }

    public final void l() {
        c.execute(new Runnable() {
            @Override
            public final void run() {
                CloudTaskFinishCacheManager.m();
            }
        });
    }

    public final MutableLiveData n() {
        return f;
    }

    public final void o() {
        e = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                CloudTaskFinishCacheManager.p((List) obj);
            }
        };
        LiveData<List<CloudTaskEntity>> allFinishTaskLiveData = d.getAllFinishTaskLiveData();
        Observer<? super List<CloudTaskEntity>> observer = e;
        y45.g(observer);
        allFinishTaskLiveData.observeForever(observer);
    }

    public final void q() {
        se.a().getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, i);
    }

    public final void r(boolean z) {
        h = z;
    }

    public final void s(final List list) {
        c.execute(new Runnable() {
            @Override
            public final void run() {
                CloudTaskFinishCacheManager.t(list);
            }
        });
    }
}
