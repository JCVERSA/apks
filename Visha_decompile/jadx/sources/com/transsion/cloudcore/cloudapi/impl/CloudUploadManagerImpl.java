package com.transsion.cloudcore.cloudapi.impl;

import android.content.Context;
import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.api.model.FileUserTag;
import com.transsion.cloud_drive.base.api.model.VideoTranscodeResult;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloud_drive.transfer.api.model.UploadTaskInfo;
import com.transsion.cloud_drive.transfer.common.ConflictResolution;
import com.transsion.cloudcore.cloudapi.model.CloudUploadTaskInfo;
import com.transsion.cloudcore.cloudapi.model.TransferErrorCode;
import com.transsion.cloudcore.cloudapi.model.TransferErrorInfo;
import com.transsion.cloudcore.cloudapi.model.TransferTaskStatus;
import defpackage.b41;
import defpackage.g1a;
import defpackage.ju4;
import defpackage.mq3;
import defpackage.of7;
import defpackage.qhb;
import defpackage.r5b;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class CloudUploadManagerImpl implements ju4 {
    public static final a h = new a(null);
    public static volatile CloudUploadManagerImpl i;
    public final Context a;
    public final String b;
    public final qhb c;
    public final mq3 d;
    public final ConcurrentHashMap e;
    public final ConcurrentHashMap f;
    public final ConcurrentHashMap g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CloudUploadManagerImpl a(Context context) {
            y45.j(context, "context");
            CloudUploadManagerImpl cloudUploadManagerImpl = CloudUploadManagerImpl.i;
            if (cloudUploadManagerImpl == null) {
                synchronized (this) {
                    cloudUploadManagerImpl = CloudUploadManagerImpl.i;
                    if (cloudUploadManagerImpl == null) {
                        Context applicationContext = context.getApplicationContext();
                        y45.i(applicationContext, "getApplicationContext(...)");
                        cloudUploadManagerImpl = new CloudUploadManagerImpl(applicationContext);
                        CloudUploadManagerImpl.i = cloudUploadManagerImpl;
                    }
                }
            }
            return cloudUploadManagerImpl;
        }

        public a() {
        }
    }

    public static final class b implements of7 {
        public b() {
        }

        @Override
        public void a(String str, UploadTaskInfo uploadTaskInfo) {
            y45.j(str, "sdkTaskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            LogUtils.j(CloudUploadManagerImpl.this.b, "onCancel: " + str);
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) CloudUploadManagerImpl.this.e.get(str);
            if (cloudUploadTaskInfo == null) {
                return;
            }
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.CANCELED);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            CloudUploadManagerImpl.this.I(str);
            CloudUploadManagerImpl.this.g.remove(str);
        }

        @Override
        public void b(String str, UploadTaskInfo uploadTaskInfo) {
            String fileName;
            String fileId;
            String fileName2;
            String fileId2;
            y45.j(str, "sdkTaskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            LogUtils.w(CloudUploadManagerImpl.this.b, "onComplete: " + str + " hasTranscodeTask:" + Boolean.valueOf(uploadTaskInfo.getHasTranscodeTask()));
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) CloudUploadManagerImpl.this.e.get(str);
            if (cloudUploadTaskInfo == null) {
                return;
            }
            UploadTaskInfo uploadTaskInfo2 = (UploadTaskInfo) CloudUploadManagerImpl.this.g.get(str);
            if (uploadTaskInfo2 != null && TextUtils.isEmpty(uploadTaskInfo2.getFileId())) {
                uploadTaskInfo2.setFileId(uploadTaskInfo.getFileId());
            }
            if (uploadTaskInfo.getHasTranscodeTask()) {
                cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
                if (uploadTaskInfo2 == null || (fileName2 = uploadTaskInfo2.getFileName()) == null) {
                    fileName2 = uploadTaskInfo.getFileName();
                }
                cloudUploadTaskInfo.setFileName(fileName2);
                if (uploadTaskInfo2 == null || (fileId2 = uploadTaskInfo2.getFileId()) == null) {
                    fileId2 = uploadTaskInfo.getFileId();
                }
                cloudUploadTaskInfo.setFileId(fileId2);
                CloudUploadManagerImpl.this.B(str, cloudUploadTaskInfo);
            } else {
                cloudUploadTaskInfo.setStatus(TransferTaskStatus.COMPLETED);
                cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
                if (uploadTaskInfo2 == null || (fileName = uploadTaskInfo2.getFileName()) == null) {
                    fileName = uploadTaskInfo.getFileName();
                }
                cloudUploadTaskInfo.setFileName(fileName);
                if (uploadTaskInfo2 == null || (fileId = uploadTaskInfo2.getFileId()) == null) {
                    fileId = uploadTaskInfo.getFileId();
                }
                cloudUploadTaskInfo.setFileId(fileId);
                LogUtils.j("visha_cloud_CloudUploadManagerImpl", "上传完成" + cloudUploadTaskInfo);
                if (uploadTaskInfo2 != null) {
                    LogUtils.j("visha_cloud_CloudUploadManagerImpl", "上传完成" + uploadTaskInfo2.getTaskId() + StringUtils.COMMA + uploadTaskInfo2.getFileId());
                }
                CloudUploadManagerImpl.this.J(str, cloudUploadTaskInfo);
            }
            CloudUploadManagerImpl.this.g.remove(str);
        }

        @Override
        public ConflictResolution c(String str, UploadTaskInfo uploadTaskInfo) {
            y45.j(str, "taskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            return ConflictResolution.REPLACE;
        }

        @Override
        public void f(String str, UploadTaskInfo uploadTaskInfo, r5b r5bVar) {
            y45.j(str, "taskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            y45.j(r5bVar, "errorInfo");
            LogUtils.m("CloudUploadManagerImpl", "onError: " + r5bVar);
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) CloudUploadManagerImpl.this.e.get(str);
            if (cloudUploadTaskInfo == null) {
                return;
            }
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.FAILED);
            cloudUploadTaskInfo.setErrorInfo(new TransferErrorInfo(r5bVar.a(), r5bVar.b()));
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            CloudUploadManagerImpl cloudUploadManagerImpl = CloudUploadManagerImpl.this;
            TransferErrorInfo errorInfo = cloudUploadTaskInfo.getErrorInfo();
            y45.g(errorInfo);
            cloudUploadManagerImpl.K(str, errorInfo);
            CloudUploadManagerImpl.this.g.remove(str);
        }

        @Override
        public void h(String str, UploadTaskInfo uploadTaskInfo) {
            y45.j(str, "sdkTaskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            LogUtils.j(CloudUploadManagerImpl.this.b, "onPause: " + str);
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) CloudUploadManagerImpl.this.e.get(str);
            if (cloudUploadTaskInfo == null) {
                return;
            }
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.PAUSED);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            CloudUploadManagerImpl.this.L(str);
        }

        @Override
        public void e(String str, UploadTaskInfo uploadTaskInfo, long j, long j2) {
            y45.j(str, "sdkTaskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            LogUtils.j(CloudUploadManagerImpl.this.b, "onProgress: " + str + ", " + j + "/" + j2);
            CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) CloudUploadManagerImpl.this.e.get(str);
            if (cloudUploadTaskInfo == null) {
                return;
            }
            cloudUploadTaskInfo.setCurrentBytes(j);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            CloudUploadManagerImpl.this.M(str, j, j2);
        }

        @Override
        public boolean d(String str, UploadTaskInfo uploadTaskInfo, Throwable th) {
            y45.j(str, "taskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            return false;
        }

        @Override
        public void g(String str, UploadTaskInfo uploadTaskInfo) {
            y45.j(str, "sdkTaskId");
            y45.j(uploadTaskInfo, "sdkTaskInfo");
            LogUtils.j(CloudUploadManagerImpl.this.b, "onStart: " + str);
            CloudUploadManagerImpl.this.N(str);
        }
    }

    public CloudUploadManagerImpl(Context context) {
        y45.j(context, "context");
        this.a = context;
        this.b = "CloudUploadManagerImpl";
        com.transsion.cloudcore.cloudapi.impl.a aVar = com.transsion.cloudcore.cloudapi.impl.a.a;
        this.c = aVar.d().e();
        this.d = aVar.d().c();
        this.e = new ConcurrentHashMap();
        this.f = new ConcurrentHashMap();
        this.g = new ConcurrentHashMap();
    }

    private final String E() {
        String string = UUID.randomUUID().toString();
        y45.i(string, "toString(...)");
        return g1a.N(string, "-", "", false, 4, null);
    }

    public final void I(String str) {
        List list = (List) this.f.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).b(str);
            }
        }
    }

    public final void K(String str, TransferErrorInfo transferErrorInfo) {
        List list = (List) this.f.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).e(str, transferErrorInfo);
            }
        }
    }

    public final void L(String str) {
        List list = (List) this.f.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).c(str);
            }
        }
    }

    public final void M(String str, long j, long j2) {
        List list = (List) this.f.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).d(str, j, j2);
            }
        }
    }

    public final void N(String str) {
        List list = (List) this.f.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).f(str);
            }
        }
    }

    public void A(String str, b41 b41Var) {
        Object objPutIfAbsent;
        y45.j(str, "taskId");
        y45.j(b41Var, "listener");
        ConcurrentHashMap concurrentHashMap = this.f;
        Object arrayList = concurrentHashMap.get(str);
        if (arrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(str, (arrayList = new ArrayList()))) != null) {
            arrayList = objPutIfAbsent;
        }
        List list = (List) arrayList;
        if (list.contains(b41Var)) {
            return;
        }
        list.add(b41Var);
    }

    public final void B(final String str, final CloudUploadTaskInfo cloudUploadTaskInfo) {
        ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
            @Override
            public void onSuccess(Void result) {
            }

            /* JADX WARN: Code duplicated, block: B:40:0x00be A[Catch: Exception -> 0x003a, TryCatch #0 {Exception -> 0x003a, blocks: (B:3:0x0001, B:5:0x0016, B:7:0x0020, B:9:0x0029, B:11:0x0035, B:15:0x003e, B:17:0x0063, B:20:0x006b, B:27:0x007f, B:30:0x0088, B:31:0x00a0, B:37:0x00b2, B:34:0x00a9, B:38:0x00b6, B:40:0x00be, B:42:0x00c4, B:43:0x00c8, B:44:0x00df, B:46:0x00e9, B:47:0x012d, B:49:0x0137, B:51:0x016c, B:52:0x0170, B:53:0x0177), top: B:60:0x0001 }] */
            /* JADX WARN: Code duplicated, block: B:41:0x00c3  */
            @Override
            public Void doInBackground() {
                VideoTranscodeResult videoTranscodeResult;
                LocalDateTime completedTime;
                try {
                    mq3 mq3Var = this.this$0.d;
                    String fileId = cloudUploadTaskInfo.getFileId();
                    y45.g(fileId);
                    ApiResponse apiResponseF = mq3Var.f(fileId);
                    if (apiResponseF != null) {
                        CloudUploadManagerImpl cloudUploadManagerImpl = this.this$0;
                        String str2 = str;
                        CloudUploadTaskInfo cloudUploadTaskInfo2 = cloudUploadTaskInfo;
                        if (apiResponseF instanceof ApiResponse.Success) {
                            ApiResponse.Success success = (ApiResponse.Success) apiResponseF;
                            if (success.getData() != null) {
                                String str3 = cloudUploadManagerImpl.b;
                                VideoTranscodeResult videoTranscodeResult2 = (VideoTranscodeResult) success.getData();
                                LogUtils.w(str3, "checkVideoTranscode onSuccess: " + (videoTranscodeResult2 != null ? videoTranscodeResult2.getStatus() : null) + " ");
                                VideoTranscodeResult videoTranscodeResult3 = (VideoTranscodeResult) success.getData();
                                String status = videoTranscodeResult3 != null ? videoTranscodeResult3.getStatus() : null;
                                if (status == null) {
                                    videoTranscodeResult = (VideoTranscodeResult) success.getData();
                                    if (videoTranscodeResult != null) {
                                        completedTime = videoTranscodeResult.getCompletedTime();
                                    } else {
                                        completedTime = null;
                                    }
                                    cloudUploadManagerImpl.Q(str2, cloudUploadTaskInfo2, completedTime);
                                } else {
                                    int iHashCode = status.hashCode();
                                    if (iHashCode != -1149187101) {
                                        if (iHashCode != 2402104) {
                                            if (iHashCode == 2066319421 && status.equals("FAILED")) {
                                                cloudUploadTaskInfo2.setStatus(TransferTaskStatus.PROCESS_FAIL);
                                                TransferErrorCode transferErrorCode = TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR;
                                                cloudUploadManagerImpl.K(str2, new TransferErrorInfo(transferErrorCode.getCode(), transferErrorCode.getMessage()));
                                            }
                                        } else if (status.equals("NONE")) {
                                            cloudUploadManagerImpl.O(str2, cloudUploadTaskInfo2);
                                        }
                                        videoTranscodeResult = (VideoTranscodeResult) success.getData();
                                        if (videoTranscodeResult != null) {
                                            completedTime = videoTranscodeResult.getCompletedTime();
                                        } else {
                                            completedTime = null;
                                        }
                                        cloudUploadManagerImpl.Q(str2, cloudUploadTaskInfo2, completedTime);
                                    } else if (status.equals("SUCCESS")) {
                                        cloudUploadManagerImpl.O(str2, cloudUploadTaskInfo2);
                                    } else {
                                        videoTranscodeResult = (VideoTranscodeResult) success.getData();
                                        if (videoTranscodeResult != null) {
                                            completedTime = videoTranscodeResult.getCompletedTime();
                                        } else {
                                            completedTime = null;
                                        }
                                        cloudUploadManagerImpl.Q(str2, cloudUploadTaskInfo2, completedTime);
                                    }
                                }
                            } else {
                                cloudUploadTaskInfo2.setStatus(TransferTaskStatus.PROCESS_FAIL);
                                TransferErrorCode transferErrorCode2 = TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR;
                                cloudUploadManagerImpl.K(str2, new TransferErrorInfo(transferErrorCode2.getCode(), transferErrorCode2.getMessage()));
                            }
                        }
                        CloudUploadManagerImpl cloudUploadManagerImpl2 = this.this$0;
                        CloudUploadTaskInfo cloudUploadTaskInfo3 = cloudUploadTaskInfo;
                        String str4 = str;
                        if (apiResponseF instanceof ApiResponse.Failure.Error) {
                            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseF;
                            LogUtils.w(cloudUploadManagerImpl2.b, "checkVideoTranscode onError :" + error.getErrorCode() + " messge：" + error.getMessage());
                            cloudUploadTaskInfo3.setStatus(TransferTaskStatus.PROCESS_FAIL);
                            cloudUploadManagerImpl2.K(str4, new TransferErrorInfo(error.getErrorCode(), error.getMessage()));
                        }
                        CloudUploadManagerImpl cloudUploadManagerImpl3 = this.this$0;
                        CloudUploadTaskInfo cloudUploadTaskInfo4 = cloudUploadTaskInfo;
                        String str5 = str;
                        if (apiResponseF instanceof ApiResponse.Failure.Exception) {
                            ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseF;
                            LogUtils.w(cloudUploadManagerImpl3.b, "checkVideoTranscode onException messge: " + exception.getMessage());
                            cloudUploadTaskInfo4.setStatus(TransferTaskStatus.PROCESS_FAIL);
                            TransferErrorCode transferErrorCode3 = TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR;
                            int code = transferErrorCode3.getCode();
                            String message = exception.getMessage();
                            if (message == null) {
                                message = transferErrorCode3.getMessage();
                            }
                            cloudUploadManagerImpl3.K(str5, new TransferErrorInfo(code, message));
                        }
                    } else {
                        cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESS_FAIL);
                        CloudUploadManagerImpl cloudUploadManagerImpl4 = this.this$0;
                        String str6 = str;
                        TransferErrorCode transferErrorCode4 = TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR;
                        cloudUploadManagerImpl4.K(str6, new TransferErrorInfo(transferErrorCode4.getCode(), transferErrorCode4.getMessage()));
                    }
                } catch (Exception e) {
                    LogUtils.m(this.this$0.b, "checkVideoTranscode error: " + e.getMessage());
                    cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESS_FAIL);
                    CloudUploadManagerImpl cloudUploadManagerImpl5 = this.this$0;
                    String str7 = str;
                    TransferErrorCode transferErrorCode5 = TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR;
                    int code2 = transferErrorCode5.getCode();
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = transferErrorCode5.getMessage();
                    }
                    cloudUploadManagerImpl5.K(str7, new TransferErrorInfo(code2, message2));
                }
                return null;
            }
        });
    }

    public final of7 C(String str) {
        return new b();
    }

    public final void D(final String str) {
        y45.j(str, "fileId");
        ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
            @Override
            public void onSuccess(Void result) {
            }

            @Override
            public Void doInBackground() {
                ApiResponse apiResponseDelete = this.this$0.d.delete(str);
                CloudUploadManagerImpl cloudUploadManagerImpl = this.this$0;
                String str2 = str;
                if (apiResponseDelete instanceof ApiResponse.Success) {
                    LogUtils.w(cloudUploadManagerImpl.b, "Delete cloud file success: " + str2);
                }
                CloudUploadManagerImpl cloudUploadManagerImpl2 = this.this$0;
                String str3 = str;
                if (apiResponseDelete instanceof ApiResponse.Failure.Error) {
                    ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseDelete;
                    LogUtils.m(cloudUploadManagerImpl2.b, "Delete cloud file failed: " + str3 + " errorCode: " + error.getErrorCode() + " message: " + error.getMessage());
                }
                CloudUploadManagerImpl cloudUploadManagerImpl3 = this.this$0;
                String str4 = str;
                if (!(apiResponseDelete instanceof ApiResponse.Failure.Exception)) {
                    return null;
                }
                LogUtils.m(cloudUploadManagerImpl3.b, "Delete cloud file exception: " + str4);
                return null;
            }
        });
    }

    @Override
    public CloudUploadTaskInfo e(String str) {
        y45.j(str, "taskId");
        return (CloudUploadTaskInfo) this.e.get(str);
    }

    public final VideoTranscodeResult G(String str) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        try {
            ApiResponse apiResponseF = this.d.f(str);
            if (apiResponseF != null) {
                if (apiResponseF instanceof ApiResponse.Success) {
                    atomicReference.set(((ApiResponse.Success) apiResponseF).getData());
                    countDownLatch.countDown();
                }
                if (apiResponseF instanceof ApiResponse.Failure.Error) {
                    countDownLatch.countDown();
                }
                if (apiResponseF instanceof ApiResponse.Failure.Exception) {
                    countDownLatch.countDown();
                }
            } else {
                countDownLatch.countDown();
            }
            countDownLatch.await(10L, TimeUnit.SECONDS);
        } catch (Exception e) {
            LogUtils.m(this.b, "getTranscodeStatusSync error: " + e.getMessage());
            countDownLatch.countDown();
        }
        return (VideoTranscodeResult) atomicReference.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r7.equals("NONE") != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        if (r7.equals("SUCCESS") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        O(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean H(String str, CloudUploadTaskInfo cloudUploadTaskInfo, VideoTranscodeResult videoTranscodeResult) {
        if (videoTranscodeResult == null) {
            return false;
        }
        String status = videoTranscodeResult.getStatus();
        int iHashCode = status.hashCode();
        if (iHashCode != -1149187101) {
            if (iHashCode != 2402104) {
                if (iHashCode == 2066319421 && status.equals("FAILED")) {
                    cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESS_FAIL);
                    TransferErrorCode transferErrorCode = TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR;
                    K(str, new TransferErrorInfo(transferErrorCode.getCode(), transferErrorCode.getMessage()));
                    return true;
                }
            }
            return false;
        }
    }

    public final void J(String str, CloudUploadTaskInfo cloudUploadTaskInfo) {
        List list = (List) this.f.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).a(str, cloudUploadTaskInfo);
            }
        }
    }

    public final void O(String str, CloudUploadTaskInfo cloudUploadTaskInfo) {
        cloudUploadTaskInfo.setStatus(TransferTaskStatus.COMPLETED);
        LogUtils.j("visha_cloud_CloudUploadManagerImpl", "上传完成(含转码) " + cloudUploadTaskInfo);
        J(str, cloudUploadTaskInfo);
    }

    @Override
    public String f(CloudUploadTaskInfo cloudUploadTaskInfo, b41 b41Var) {
        y45.j(cloudUploadTaskInfo, "taskInfo");
        String taskId = cloudUploadTaskInfo.getTaskId();
        if (b41Var != null) {
            A(taskId, b41Var);
        }
        of7 of7VarC = C(taskId);
        try {
            UploadTaskInfo uploadTaskInfo = new UploadTaskInfo(cloudUploadTaskInfo.getTaskId(), cloudUploadTaskInfo.getLocalFilePath(), cloudUploadTaskInfo.getParentId());
            uploadTaskInfo.setTags(cloudUploadTaskInfo.getTags());
            this.c.c(uploadTaskInfo, of7VarC);
            this.g.put(taskId, uploadTaskInfo);
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.RUNNING);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            return taskId;
        } catch (Exception e) {
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.FAILED);
            TransferErrorCode transferErrorCode = TransferErrorCode.UNKNOWN;
            int code = transferErrorCode.getCode();
            String message = e.getMessage();
            if (message == null) {
                message = transferErrorCode.getMessage();
            }
            cloudUploadTaskInfo.setErrorInfo(new TransferErrorInfo(code, message));
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            TransferErrorInfo errorInfo = cloudUploadTaskInfo.getErrorInfo();
            y45.g(errorInfo);
            K(taskId, errorInfo);
            return taskId;
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x002e  */
    public final void Q(final String str, final CloudUploadTaskInfo cloudUploadTaskInfo, LocalDateTime localDateTime) {
        final long j;
        cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESSING);
        M(str, 5L, 100L);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        if (localDateTime != null) {
            long epochMilli = localDateTime.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli() - jCurrentTimeMillis;
            if (epochMilli <= 0) {
                j = 60000;
            } else {
                j = epochMilli;
            }
        } else {
            j = 60000;
        }
        ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
            @Override
            public void onSuccess(Void result) {
            }

            @Override
            public Void doInBackground() {
                long jCurrentTimeMillis2 = 0;
                boolean z = false;
                int i2 = 0;
                boolean z2 = false;
                boolean z3 = false;
                while (this.this$0.e.get(str) != null && cloudUploadTaskInfo.getStatus() != TransferTaskStatus.CANCELED) {
                    long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (!z && jCurrentTimeMillis3 >= 10000) {
                        CloudUploadManagerImpl cloudUploadManagerImpl = this.this$0;
                        String fileId = cloudUploadTaskInfo.getFileId();
                        y45.g(fileId);
                        VideoTranscodeResult videoTranscodeResultG = cloudUploadManagerImpl.G(fileId);
                        if (videoTranscodeResultG == null) {
                            i2++;
                        } else {
                            if (this.this$0.H(str, cloudUploadTaskInfo, videoTranscodeResultG)) {
                                return null;
                            }
                            i2 = 0;
                        }
                        jCurrentTimeMillis2 = System.currentTimeMillis();
                        z = true;
                    }
                    if (i2 >= 3) {
                        cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESS_FAIL);
                        this.this$0.K(str, new TransferErrorInfo(TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR.getCode(), "Get transcode status failed too many times"));
                        return null;
                    }
                    long j2 = (long) ((jCurrentTimeMillis3 / j) * 100);
                    if (j2 < 5) {
                        j2 = 5;
                    }
                    long j3 = j2 > 99 ? 99L : j2;
                    if (j3 >= 50 && !z2) {
                        CloudUploadManagerImpl cloudUploadManagerImpl2 = this.this$0;
                        String fileId2 = cloudUploadTaskInfo.getFileId();
                        y45.g(fileId2);
                        VideoTranscodeResult videoTranscodeResultG2 = cloudUploadManagerImpl2.G(fileId2);
                        if (videoTranscodeResultG2 == null) {
                            i2++;
                        } else {
                            if (this.this$0.H(str, cloudUploadTaskInfo, videoTranscodeResultG2)) {
                                return null;
                            }
                            i2 = 0;
                        }
                        jCurrentTimeMillis2 = System.currentTimeMillis();
                        z2 = true;
                    }
                    if (i2 >= 3) {
                        cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESS_FAIL);
                        this.this$0.K(str, new TransferErrorInfo(TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR.getCode(), "Get transcode status failed too many times"));
                        return null;
                    }
                    if (j3 >= 99) {
                        if (!z3) {
                            this.this$0.M(str, 99L, 100L);
                            z3 = true;
                        }
                        if (System.currentTimeMillis() - jCurrentTimeMillis2 >= 5000) {
                            CloudUploadManagerImpl cloudUploadManagerImpl3 = this.this$0;
                            String fileId3 = cloudUploadTaskInfo.getFileId();
                            y45.g(fileId3);
                            VideoTranscodeResult videoTranscodeResultG3 = cloudUploadManagerImpl3.G(fileId3);
                            if (videoTranscodeResultG3 == null) {
                                i2++;
                                if (i2 >= 3) {
                                    cloudUploadTaskInfo.setStatus(TransferTaskStatus.PROCESS_FAIL);
                                    this.this$0.K(str, new TransferErrorInfo(TransferErrorCode.VIDEOTRANSCODE_STATUS_ERROR.getCode(), "Get transcode status failed too many times"));
                                    return null;
                                }
                            } else {
                                if (this.this$0.H(str, cloudUploadTaskInfo, videoTranscodeResultG3)) {
                                    return null;
                                }
                                i2 = 0;
                            }
                            jCurrentTimeMillis2 = System.currentTimeMillis();
                        }
                    } else {
                        this.this$0.M(str, j3, 100L);
                    }
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
                return null;
            }
        });
    }

    @Override
    public boolean a(String str) {
        y45.j(str, "taskId");
        CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) this.e.get(str);
        if (cloudUploadTaskInfo == null) {
            return false;
        }
        try {
            this.c.a(cloudUploadTaskInfo.getTaskId());
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.PAUSED);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void b(final String str) {
        y45.j(str, "taskId");
        final CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) this.e.get(str);
        if (cloudUploadTaskInfo == null) {
            return;
        }
        ThreadUtils.i(new ThreadUtils.SimpleTask<Void>() {
            @Override
            public void onSuccess(Void result) {
            }

            @Override
            public Void doInBackground() {
                try {
                    mq3 mq3Var = this.this$0.d;
                    String fileId = cloudUploadTaskInfo.getFileId();
                    y45.g(fileId);
                    ApiResponse apiResponseB = mq3Var.b(fileId);
                    if (apiResponseB != null) {
                        CloudUploadManagerImpl cloudUploadManagerImpl = this.this$0;
                        String str2 = str;
                        CloudUploadTaskInfo cloudUploadTaskInfo2 = cloudUploadTaskInfo;
                        if (apiResponseB instanceof ApiResponse.Success) {
                            cloudUploadManagerImpl.Q(str2, cloudUploadTaskInfo2, null);
                        }
                        if (apiResponseB instanceof ApiResponse.Failure.Error) {
                            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseB;
                            cloudUploadManagerImpl.K(str2, new TransferErrorInfo(error.getErrorCode(), error.getMessage()));
                        }
                        if (apiResponseB instanceof ApiResponse.Failure.Exception) {
                            TransferErrorCode transferErrorCode = TransferErrorCode.RETRY_VIDEOTRANSCODE_ERROR;
                            int code = transferErrorCode.getCode();
                            String message = ((ApiResponse.Failure.Exception) apiResponseB).getMessage();
                            if (message == null) {
                                message = transferErrorCode.getMessage();
                            }
                            cloudUploadManagerImpl.K(str2, new TransferErrorInfo(code, message));
                        }
                    } else {
                        CloudUploadManagerImpl cloudUploadManagerImpl2 = this.this$0;
                        String str3 = str;
                        TransferErrorCode transferErrorCode2 = TransferErrorCode.RETRY_VIDEOTRANSCODE_ERROR;
                        cloudUploadManagerImpl2.K(str3, new TransferErrorInfo(transferErrorCode2.getCode(), transferErrorCode2.getMessage()));
                    }
                } catch (Exception e) {
                    CloudUploadManagerImpl cloudUploadManagerImpl3 = this.this$0;
                    String str4 = str;
                    TransferErrorCode transferErrorCode3 = TransferErrorCode.RETRY_VIDEOTRANSCODE_ERROR;
                    int code2 = transferErrorCode3.getCode();
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = transferErrorCode3.getMessage();
                    }
                    cloudUploadManagerImpl3.K(str4, new TransferErrorInfo(code2, message2));
                }
                return null;
            }
        });
    }

    @Override
    public boolean c(String str, b41 b41Var) {
        y45.j(str, "taskId");
        CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) this.e.get(str);
        if (cloudUploadTaskInfo == null) {
            return false;
        }
        String taskId = cloudUploadTaskInfo.getTaskId();
        if (b41Var != null) {
            A(str, b41Var);
        }
        try {
            this.c.b(taskId);
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.RUNNING);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            N(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean cancel(String str) {
        y45.j(str, "taskId");
        CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) this.e.get(str);
        if (cloudUploadTaskInfo == null) {
            return false;
        }
        try {
            this.c.cancel(cloudUploadTaskInfo.getTaskId());
            cloudUploadTaskInfo.setStatus(TransferTaskStatus.CANCELED);
            cloudUploadTaskInfo.setUpdateTime(System.currentTimeMillis());
            this.g.remove(str);
            this.f.remove(str);
            this.e.remove(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public void d(String str) {
        y45.j(str, "taskId");
        CloudUploadTaskInfo cloudUploadTaskInfo = (CloudUploadTaskInfo) this.e.get(str);
        if (cloudUploadTaskInfo == null) {
            return;
        }
        B(str, cloudUploadTaskInfo);
    }

    @Override
    public CloudUploadTaskInfo g(String str, String str2, String str3, long j, b41 b41Var) {
        y45.j(str, Progress.FILE_PATH);
        y45.j(str2, "parentId");
        String strE = str3 == null ? E() : str3;
        File file = new File(str);
        if (!file.exists()) {
            TransferErrorCode transferErrorCode = TransferErrorCode.FILE_NOT_EXIST;
            TransferErrorInfo transferErrorInfo = new TransferErrorInfo(transferErrorCode.getCode(), transferErrorCode.getMessage());
            if (b41Var != null) {
                b41Var.e(strE, transferErrorInfo);
            }
        }
        String name = file.getName();
        long length = file.length();
        y45.g(name);
        CloudUploadTaskInfo cloudUploadTaskInfo = new CloudUploadTaskInfo(strE, name, length, str, str2, null, null, null, 0L, 0L, 0L, null, 4064, null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new FileUserTag("client_video_duration", String.valueOf(j / ((long) 1000))));
        cloudUploadTaskInfo.setTags(arrayList);
        this.e.put(strE, cloudUploadTaskInfo);
        return cloudUploadTaskInfo;
    }

    @Override
    public void i(String str, b41 b41Var) {
        y45.j(str, "taskId");
        y45.j(b41Var, "listener");
        List list = (List) this.f.get(str);
        if (list != null) {
            list.remove(b41Var);
        }
    }
}
