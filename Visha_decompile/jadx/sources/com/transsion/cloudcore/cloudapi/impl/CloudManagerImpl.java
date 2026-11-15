package com.transsion.cloudcore.cloudapi.impl;

import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.cloud_drive.base.api.model.FileVideoPlayInfo;
import com.transsion.cloud_drive.base.api.model.FileVideoPlayInfoResult;
import com.transsion.cloud_drive.base.api.model.FileVideoTemplate;
import com.transsion.cloud_drive.base.api.model.FreeSpaceResponse;
import com.transsion.cloud_drive.base.api.model.ReceiveFreeSpaceResponse;
import com.transsion.cloud_drive.base.api.model.ShareFileVideoPlayInfoResult;
import com.transsion.cloud_drive.base.api.request.MccMap;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.cloudapi.impl.CloudManagerImpl;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.dbdata.beans.VideoCloudData;
import defpackage.apb;
import defpackage.az8;
import defpackage.e74;
import defpackage.el0;
import defpackage.eu9;
import defpackage.hk1;
import defpackage.jn9;
import defpackage.mc2;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.s74;
import defpackage.u74;
import defpackage.v6a;
import defpackage.xm9;
import defpackage.xy0;
import defpackage.y45;
import defpackage.zm9;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class CloudManagerImpl implements xy0 {
    public static volatile CloudManagerImpl h;
    public final Context a;
    public mq3 b;
    public eu9 c;
    public apb d;
    public final hk1 e;
    public final nk1 f;
    public static final a g = new a(null);
    public static long i = az8.a().c("key_cloud_last_config_time", 0);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CloudManagerImpl a(Context context) {
            y45.j(context, "context");
            CloudManagerImpl cloudManagerImpl = CloudManagerImpl.h;
            if (cloudManagerImpl == null) {
                synchronized (this) {
                    cloudManagerImpl = CloudManagerImpl.h;
                    if (cloudManagerImpl == null) {
                        Context applicationContext = context.getApplicationContext();
                        y45.i(applicationContext, "getApplicationContext(...)");
                        cloudManagerImpl = new CloudManagerImpl(applicationContext);
                        CloudManagerImpl.h = cloudManagerImpl;
                    }
                }
            }
            return cloudManagerImpl;
        }

        public a() {
        }
    }

    public static final class b extends kotlin.coroutines.a implements hk1 {
        public b(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(d dVar, Throwable th) {
            Log.e("CloudManagerImpl", "Coroutine Exception: " + th.getMessage());
        }
    }

    public CloudManagerImpl(Context context) {
        y45.j(context, "context");
        this.a = context;
        b bVar = new b(hk1.w1);
        this.e = bVar;
        this.f = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(bVar));
        com.transsion.cloudcore.cloudapi.impl.a aVar = com.transsion.cloudcore.cloudapi.impl.a.a;
        this.b = aVar.d().c();
        this.c = aVar.d().d();
        this.d = CloudTaskDatabase.getInstance().videoCloudCacheDao();
    }

    public static final void A(String str, CloudManagerImpl cloudManagerImpl, zm9 zm9Var) {
        y45.j(zm9Var, "emitter");
        try {
            if (str.length() == 0) {
                zm9Var.onError(new IllegalArgumentException("File ID cannot be null or empty"));
                return;
            }
            mq3 mq3Var = cloudManagerImpl.b;
            ApiResponse apiResponseB = mq3Var != null ? mq3.a.b(mq3Var, str, null, null, 6, null) : null;
            if (apiResponseB == null) {
                if (zm9Var.isDisposed()) {
                    return;
                }
                zm9Var.onError(new RuntimeException("FileManager is null"));
                return;
            }
            if (apiResponseB instanceof ApiResponse.Success) {
                ApiResponse.Success success = (ApiResponse.Success) apiResponseB;
                if (zm9Var.isDisposed() || success.getData() == null) {
                    zm9Var.onError(new RuntimeException("API Error: " + apiResponseB));
                } else {
                    Object data = success.getData();
                    y45.g(data);
                    zm9Var.onSuccess(data);
                }
            }
            if (apiResponseB instanceof ApiResponse.Failure.Error) {
                ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseB;
                if (!zm9Var.isDisposed()) {
                    zm9Var.onError(new RuntimeException(error.getMessage()));
                }
                cloudManagerImpl.x(error.getErrorCode());
            }
            if (apiResponseB instanceof ApiResponse.Failure.Exception) {
                ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseB;
                if (zm9Var.isDisposed()) {
                    return;
                }
                zm9Var.onError(new RuntimeException(exception.getMessage()));
            }
        } catch (Exception e) {
            if (zm9Var.isDisposed()) {
                return;
            }
            zm9Var.onError(e);
        }
    }

    public static final void C(String str, CloudManagerImpl cloudManagerImpl, FileShareInfo fileShareInfo, zm9 zm9Var) {
        y45.j(zm9Var, "emitter");
        try {
            if (str.length() == 0) {
                zm9Var.onError(new IllegalArgumentException("File ID cannot be null or empty"));
                return;
            }
            mq3 mq3Var = cloudManagerImpl.b;
            ApiResponse apiResponseE = mq3Var != null ? mq3.a.e(mq3Var, fileShareInfo.getShareToken(), fileShareInfo.getShareId(), str, null, 86400L, null, 40, null) : null;
            if (apiResponseE == null) {
                if (zm9Var.isDisposed()) {
                    return;
                }
                zm9Var.onError(new RuntimeException("FileManager is null"));
                return;
            }
            if (apiResponseE instanceof ApiResponse.Success) {
                ApiResponse.Success success = (ApiResponse.Success) apiResponseE;
                if (zm9Var.isDisposed() || success.getData() == null) {
                    zm9Var.onError(new RuntimeException("API Error: " + apiResponseE));
                } else {
                    Object data = success.getData();
                    y45.g(data);
                    FileVideoPlayInfo playInfo = ((ShareFileVideoPlayInfoResult) data).getPlayInfo();
                    Object data2 = success.getData();
                    y45.g(data2);
                    List<FileVideoTemplate> templateList = ((ShareFileVideoPlayInfoResult) data2).getPlayInfo().getTemplateList();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : templateList) {
                        if (y45.e("finished", ((FileVideoTemplate) obj).getStatus())) {
                            arrayList.add(obj);
                        }
                    }
                    playInfo.setTemplateList(arrayList);
                    Object data3 = success.getData();
                    y45.g(data3);
                    String fileId = ((ShareFileVideoPlayInfoResult) data3).getFileId();
                    Object data4 = success.getData();
                    y45.g(data4);
                    zm9Var.onSuccess(new FileVideoPlayInfoResult(fileId, ((ShareFileVideoPlayInfoResult) data4).getPlayInfo()));
                }
            }
            if (apiResponseE instanceof ApiResponse.Failure.Error) {
                ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseE;
                if (!zm9Var.isDisposed()) {
                    zm9Var.onError(new RuntimeException(error.getMessage()));
                }
                cloudManagerImpl.x(error.getErrorCode());
            }
            if (apiResponseE instanceof ApiResponse.Failure.Exception) {
                ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseE;
                if (zm9Var.isDisposed()) {
                    return;
                }
                zm9Var.onError(new RuntimeException(exception.getMessage()));
            }
        } catch (Exception e) {
            if (zm9Var.isDisposed()) {
                return;
            }
            zm9Var.onError(e);
        }
    }

    public static final void D(String str, CloudManagerImpl cloudManagerImpl, zm9 zm9Var) {
        y45.j(zm9Var, "emitter");
        try {
            if (str.length() == 0) {
                zm9Var.onError(new IllegalArgumentException("File ID cannot be null or empty"));
                return;
            }
            mq3 mq3Var = cloudManagerImpl.b;
            ApiResponse apiResponseF = mq3Var != null ? mq3.a.f(mq3Var, str, null, 86400L, 2, null) : null;
            if (apiResponseF == null) {
                if (zm9Var.isDisposed()) {
                    return;
                }
                zm9Var.onError(new RuntimeException("FileManager is null"));
                return;
            }
            if (apiResponseF instanceof ApiResponse.Success) {
                ApiResponse.Success success = (ApiResponse.Success) apiResponseF;
                if (zm9Var.isDisposed() || success.getData() == null) {
                    zm9Var.onError(new RuntimeException("API Error: " + apiResponseF));
                } else {
                    Object data = success.getData();
                    y45.g(data);
                    FileVideoPlayInfo playInfo = ((FileVideoPlayInfoResult) data).getPlayInfo();
                    Object data2 = success.getData();
                    y45.g(data2);
                    List<FileVideoTemplate> templateList = ((FileVideoPlayInfoResult) data2).getPlayInfo().getTemplateList();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : templateList) {
                        if (y45.e("finished", ((FileVideoTemplate) obj).getStatus())) {
                            arrayList.add(obj);
                        }
                    }
                    playInfo.setTemplateList(arrayList);
                    Object data3 = success.getData();
                    y45.g(data3);
                    zm9Var.onSuccess(data3);
                }
            }
            if (apiResponseF instanceof ApiResponse.Failure.Error) {
                ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseF;
                if (!zm9Var.isDisposed()) {
                    zm9Var.onError(new RuntimeException(error.getMessage()));
                }
                cloudManagerImpl.x(error.getErrorCode());
            }
            if (apiResponseF instanceof ApiResponse.Failure.Exception) {
                ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseF;
                if (zm9Var.isDisposed()) {
                    return;
                }
                zm9Var.onError(new RuntimeException(exception.getMessage()));
            }
        } catch (Exception e) {
            if (zm9Var.isDisposed()) {
                return;
            }
            zm9Var.onError(e);
        }
    }

    public static final void y() {
        CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
        T value = cloudTaskFinishCacheManager.k().getValue();
        Boolean bool = Boolean.TRUE;
        if (y45.e(value, bool)) {
            return;
        }
        cloudTaskFinishCacheManager.k().setValue(bool);
    }

    public final nk1 B() {
        return this.f;
    }

    @Override
    public void a(MccMap mccMap, e74 e74Var) {
        y45.j(e74Var, "callback");
        eu9 eu9Var = this.c;
        ApiResponse apiResponseB = eu9Var != null ? eu9Var.b(mccMap) : null;
        if (apiResponseB != null) {
            if (apiResponseB instanceof ApiResponse.Success) {
                ApiResponse.Success success = (ApiResponse.Success) apiResponseB;
                ReceiveFreeSpaceResponse receiveFreeSpaceResponse = (ReceiveFreeSpaceResponse) success.getData();
                Log.d("CloudManagerImpl", "requestReceiveFreeSpace onSuccess " + (receiveFreeSpaceResponse != null ? Long.valueOf(receiveFreeSpaceResponse.getCloudSpaceSize()) : null));
                e74Var.invoke(success.getData());
            }
            if (apiResponseB instanceof ApiResponse.Failure.Error) {
                Log.d("CloudManagerImpl", "requestReceiveFreeSpace onError");
                e74Var.invoke(null);
            }
            if (apiResponseB instanceof ApiResponse.Failure.Exception) {
                Log.d("CloudManagerImpl", "requestReceiveFreeSpace onException");
                e74Var.invoke(null);
            }
        }
    }

    @Override
    public xm9 b(final String str) {
        y45.j(str, "fileId");
        xm9 xm9VarD = xm9.d(new jn9() {
            @Override
            public final void subscribe(zm9 zm9Var) {
                CloudManagerImpl.A(str, this, zm9Var);
            }
        });
        y45.i(xm9VarD, "create(...)");
        return xm9VarD;
    }

    @Override
    public void c(u74 u74Var) {
        y45.j(u74Var, "callback");
        eu9 eu9Var = this.c;
        ApiResponse apiResponseC = eu9Var != null ? eu9Var.c() : null;
        if (apiResponseC != null) {
            if (apiResponseC instanceof ApiResponse.Success) {
                Log.d("CloudManagerImpl", "getCloudStorageInfo onSuccess");
                u74Var.invoke(Boolean.TRUE, ((ApiResponse.Success) apiResponseC).getData(), null);
            }
            if (apiResponseC instanceof ApiResponse.Failure.Error) {
                ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseC;
                Log.d("CloudManagerImpl", "getCloudStorageInfo onError errorCode = " + error.getErrorCode() + ",msg = " + error.getMessage());
                u74Var.invoke(Boolean.FALSE, null, Integer.valueOf(error.getErrorCode()));
            }
            if (apiResponseC instanceof ApiResponse.Failure.Exception) {
                Log.d("CloudManagerImpl", "getCloudStorageInfo onException");
                u74Var.invoke(Boolean.FALSE, null, null);
            }
        }
    }

    @Override
    public void d(String str, e74 e74Var) {
        y45.j(e74Var, "callback");
        if (str != null) {
            mq3 mq3Var = this.b;
            ApiResponse apiResponseDelete = mq3Var != null ? mq3Var.delete(str) : null;
            if (apiResponseDelete != null) {
                if (apiResponseDelete instanceof ApiResponse.Success) {
                    e74Var.invoke(Boolean.TRUE);
                }
                if (apiResponseDelete instanceof ApiResponse.Failure.Error) {
                    e74Var.invoke(Boolean.FALSE);
                }
                if (apiResponseDelete instanceof ApiResponse.Failure.Exception) {
                    e74Var.invoke(Boolean.FALSE);
                }
            }
        }
    }

    @Override
    public void e(VideoCloudData videoCloudData, String str, s74 s74Var) {
        y45.j(s74Var, "callback");
        if (videoCloudData == null || str == null) {
            s74Var.invoke(Boolean.FALSE, null);
            return;
        }
        mq3 mq3Var = this.b;
        ApiResponse apiResponseN = mq3Var != null ? mq3Var.n(videoCloudData.getFileId(), str) : null;
        if (apiResponseN != null) {
            if (apiResponseN instanceof ApiResponse.Success) {
                s74Var.invoke(Boolean.TRUE, ((ApiResponse.Success) apiResponseN).getData());
            }
            if (apiResponseN instanceof ApiResponse.Failure.Error) {
                s74Var.invoke(Boolean.FALSE, null);
                x(((ApiResponse.Failure.Error) apiResponseN).getErrorCode());
            }
            if (apiResponseN instanceof ApiResponse.Failure.Exception) {
                s74Var.invoke(Boolean.FALSE, null);
            }
        }
    }

    @Override
    public xm9 f(final String str, final FileShareInfo fileShareInfo) {
        y45.j(str, "fileId");
        y45.j(fileShareInfo, "fileShareInfo");
        xm9 xm9VarD = xm9.d(new jn9() {
            @Override
            public final void subscribe(zm9 zm9Var) {
                CloudManagerImpl.C(str, this, fileShareInfo, zm9Var);
            }
        });
        y45.i(xm9VarD, "create(...)");
        return xm9VarD;
    }

    @Override
    public long g() {
        return i;
    }

    @Override
    public void h(MccMap mccMap, e74 e74Var) {
        FreeSpaceResponse freeSpaceResponse;
        y45.j(e74Var, "callback");
        eu9 eu9Var = this.c;
        ApiResponse apiResponseA = eu9Var != null ? eu9Var.a(mccMap) : null;
        if (apiResponseA != null) {
            if (apiResponseA instanceof ApiResponse.Success) {
                ApiResponse.Success success = (ApiResponse.Success) apiResponseA;
                FreeSpaceResponse freeSpaceResponse2 = (FreeSpaceResponse) success.getData();
                Long lValueOf = freeSpaceResponse2 != null ? Long.valueOf(freeSpaceResponse2.getCloudSpaceSize()) : null;
                FreeSpaceResponse freeSpaceResponse3 = (FreeSpaceResponse) success.getData();
                Log.d("CloudManagerImpl", "getFreeSpaceInfo onSuccess " + lValueOf + StringUtils.COMMA + (freeSpaceResponse3 != null ? Integer.valueOf(freeSpaceResponse3.getEffectiveDays()) : null));
                if (success.getData() == null || ((freeSpaceResponse = (FreeSpaceResponse) success.getData()) != null && freeSpaceResponse.getCloudSpaceSize() == 0)) {
                    e74Var.invoke(null);
                } else {
                    e74Var.invoke(success.getData());
                }
            }
            if (apiResponseA instanceof ApiResponse.Failure.Error) {
                Log.d("CloudManagerImpl", "getFreeSpaceInfo onError");
                e74Var.invoke(null);
            }
            if (apiResponseA instanceof ApiResponse.Failure.Exception) {
                Log.d("CloudManagerImpl", "getFreeSpaceInfo onException");
                e74Var.invoke(null);
            }
        }
    }

    @Override
    public void i(String str, String str2, s74 s74Var) {
        y45.j(s74Var, "callback");
        if (str == null || str2 == null) {
            s74Var.invoke(Boolean.FALSE, null);
            return;
        }
        mq3 mq3Var = this.b;
        ApiResponse apiResponseN = mq3Var != null ? mq3Var.n(str, str2) : null;
        if (apiResponseN != null) {
            if (apiResponseN instanceof ApiResponse.Success) {
                s74Var.invoke(Boolean.TRUE, ((ApiResponse.Success) apiResponseN).getData());
            }
            if (apiResponseN instanceof ApiResponse.Failure.Error) {
                s74Var.invoke(Boolean.FALSE, null);
            }
            if (apiResponseN instanceof ApiResponse.Failure.Exception) {
                s74Var.invoke(Boolean.FALSE, null);
            }
        }
    }

    @Override
    public List j(List list) {
        Object data = null;
        if (list != null) {
            mq3 mq3Var = this.b;
            ApiResponse apiResponseI = mq3Var != null ? mq3Var.i(list, 200, 200) : null;
            if (apiResponseI != null) {
                data = apiResponseI instanceof ApiResponse.Success ? ((ApiResponse.Success) apiResponseI).getData() : null;
                if (apiResponseI instanceof ApiResponse.Failure.Error) {
                    x(((ApiResponse.Failure.Error) apiResponseI).getErrorCode());
                }
                if (apiResponseI instanceof ApiResponse.Failure.Exception) {
                }
            }
        }
        return (List) data;
    }

    @Override
    public void k(List list, e74 e74Var) {
        y45.j(e74Var, "callback");
        z(list, e74Var);
    }

    @Override
    public xm9 l(final String str) {
        y45.j(str, "fileId");
        xm9 xm9VarD = xm9.d(new jn9() {
            @Override
            public final void subscribe(zm9 zm9Var) {
                CloudManagerImpl.D(str, this, zm9Var);
            }
        });
        y45.i(xm9VarD, "create(...)");
        return xm9VarD;
    }

    @Override
    public void m(VideoCloudData videoCloudData, e74 e74Var) {
        String fileId;
        y45.j(e74Var, "callback");
        if (videoCloudData == null || (fileId = videoCloudData.getFileId()) == null) {
            return;
        }
        mq3 mq3Var = this.b;
        ApiResponse apiResponseDelete = mq3Var != null ? mq3Var.delete(fileId) : null;
        if (apiResponseDelete != null) {
            if (apiResponseDelete instanceof ApiResponse.Success) {
                e74Var.invoke(Boolean.TRUE);
            }
            if (apiResponseDelete instanceof ApiResponse.Failure.Error) {
                e74Var.invoke(Boolean.FALSE);
                x(((ApiResponse.Failure.Error) apiResponseDelete).getErrorCode());
            }
            if (apiResponseDelete instanceof ApiResponse.Failure.Exception) {
                e74Var.invoke(Boolean.FALSE);
            }
        }
    }

    @Override
    public void n(s74 s74Var) {
        y45.j(s74Var, "callback");
        i = System.currentTimeMillis();
        az8.a().g("key_cloud_last_config_time", i);
        mq3 mq3Var = this.b;
        ApiResponse config = mq3Var != null ? mq3Var.getConfig() : null;
        if (config != null) {
            if (config instanceof ApiResponse.Success) {
                Log.d("CloudManagerImpl", "getConfig onSuccess");
                s74Var.invoke(Boolean.TRUE, null);
            }
            if (config instanceof ApiResponse.Failure.Error) {
                ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) config;
                Log.d("CloudManagerImpl", "getConfig onError errorCode = " + error.getErrorCode() + ",msg = " + error.getMessage());
                s74Var.invoke(Boolean.FALSE, Integer.valueOf(error.getErrorCode()));
            }
            if (config instanceof ApiResponse.Failure.Exception) {
                Log.d("CloudManagerImpl", "getConfig onException");
                s74Var.invoke(Boolean.FALSE, null);
            }
        }
    }

    public final void x(int i2) {
        if (i2 == 20087) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    CloudManagerImpl.y();
                }
            });
        }
    }

    public final void z(List list, e74 e74Var) {
        el0.d(this.f, mc2.b(), null, new CloudManagerImpl$deleteFileAsync$1(list, this, e74Var, null), 2, null);
    }
}
