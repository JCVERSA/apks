package vu;

import android.net.Uri;
import android.os.Build;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.OSS;
import com.alibaba.sdk.android.oss.OSSClient;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.auth.OSSStsTokenCredentialProvider;
import com.alibaba.sdk.android.oss.internal.OSSAsyncTask;
import com.alibaba.sdk.android.oss.model.PutObjectRequest;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.blankj.utilcode.util.Utils;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class c extends vu.a {

    private TstTokenEntity f73819b;

    private OSS f73820c;

    private LinkedHashMap f73821d = new LinkedHashMap();

    public static final class a implements OSSCompletedCallback {

        final String f73823b;

        final uu.a f73824c;

        final String f73825d;

        a(String str, uu.a aVar, String str2) {
            this.f73823b = str;
            this.f73824c = aVar;
            this.f73825d = str2;
        }

        @Override
        public void onFailure(PutObjectRequest putObjectRequest, ClientException clientException, ServiceException serviceException) {
            wu.a.f74770a.c(c.this.d() + " --> OSSCompletedCallback() --> onFailure() --> clientException = " + clientException + " --> serviceException = " + serviceException);
            uu.a aVar = this.f73824c;
            if (aVar != null) {
                aVar.c(this.f73825d, clientException != null ? clientException.getMessage() : null, serviceException != null ? serviceException.getMessage() : null, c.this.f());
            }
        }

        @Override
        public void onSuccess(PutObjectRequest putObjectRequest, PutObjectResult result) {
            Intrinsics.h(result, "result");
            wu.a.f74770a.b(c.this.d() + " --> OSSCompletedCallback() --> onSuccess() --> remotePath = " + this.f73823b);
            uu.a aVar = this.f73824c;
            if (aVar != null) {
                String str = this.f73825d;
                String str2 = this.f73823b;
                String bucketName = putObjectRequest != null ? putObjectRequest.getBucketName() : null;
                if (bucketName == null) {
                    bucketName = "";
                }
                aVar.b(str, str2, bucketName);
            }
        }
    }

    private final void k(String str, OSSAsyncTask oSSAsyncTask) {
        this.f73821d.put(str, oSSAsyncTask);
    }

    private final void l(UploadFileType uploadFileType, final String str, boolean z10, final uu.a aVar) {
        PutObjectRequest putObjectRequest;
        String strA = a(uploadFileType, str);
        if (Build.VERSION.SDK_INT >= 29) {
            TstTokenEntity tstTokenEntity = this.f73819b;
            putObjectRequest = new PutObjectRequest(tstTokenEntity != null ? tstTokenEntity.getBucket() : null, strA, Uri.fromFile(new File(str)));
        } else {
            TstTokenEntity tstTokenEntity2 = this.f73819b;
            putObjectRequest = new PutObjectRequest(tstTokenEntity2 != null ? tstTokenEntity2.getBucket() : null, strA, str);
        }
        putObjectRequest.setProgressCallback(new OSSProgressCallback() {
            @Override
            public final void onProgress(Object obj, long j10, long j11) {
                c.m(aVar, str, (PutObjectRequest) obj, j10, j11);
            }
        });
        OSS oss = this.f73820c;
        OSSAsyncTask<PutObjectResult> oSSAsyncTaskAsyncPutObject = oss != null ? oss.asyncPutObject(putObjectRequest, new a(strA, aVar, str)) : null;
        if (z10) {
            k(str, oSSAsyncTaskAsyncPutObject);
        }
    }

    public static final void m(uu.a aVar, String localFilePath, PutObjectRequest putObjectRequest, long j10, long j11) {
        Intrinsics.h(localFilePath, "$localFilePath");
        if (aVar != null) {
            aVar.a(localFilePath, j10, j11);
        }
    }

    @Override
    public void b() {
        Iterator it = this.f73821d.entrySet().iterator();
        while (it.hasNext()) {
            OSSAsyncTask oSSAsyncTask = (OSSAsyncTask) ((Map.Entry) it.next()).getValue();
            if (oSSAsyncTask != null) {
                oSSAsyncTask.cancel();
            }
        }
        this.f73821d.clear();
        wu.a.f74770a.b(d() + " --> cancel() --> end");
    }

    @Override
    public void c(TstTokenEntity tstToken, String localFilePath, UploadFileType uploadFileType, boolean z10, uu.a aVar) {
        Intrinsics.h(tstToken, "tstToken");
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        l(uploadFileType, localFilePath, z10, aVar);
    }

    @Override
    public UploadTstTokenStorageType f() {
        return UploadTstTokenStorageType.TST_TOKEN_STORAGE_OSS;
    }

    @Override
    public void h(TstTokenEntity tstToken) {
        Intrinsics.h(tstToken, "tstToken");
        this.f73819b = tstToken;
        if (tstToken != null) {
            OSSStsTokenCredentialProvider oSSStsTokenCredentialProvider = new OSSStsTokenCredentialProvider(tstToken.getAccessKeyId(), tstToken.getAccessKeySecret(), tstToken.getSecurityToken());
            ClientConfiguration clientConfiguration = new ClientConfiguration();
            clientConfiguration.setConnectionTimeout(30000);
            clientConfiguration.setSocketTimeout(30000);
            clientConfiguration.setMaxConcurrentRequest(5);
            clientConfiguration.setMaxErrorRetry(3);
            OSS oss = this.f73820c;
            if (oss == null) {
                this.f73820c = new OSSClient(Utils.a(), tstToken.getEndPoint(), oSSStsTokenCredentialProvider);
            } else if (oss != null) {
                oss.updateCredentialProvider(oSSStsTokenCredentialProvider);
            }
        }
    }
}
