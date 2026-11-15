package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

public class MultipartUploadTask extends BaseMultipartUploadTask<MultipartUploadRequest, CompleteMultipartUploadResult> implements Callable<CompleteMultipartUploadResult> {
    public MultipartUploadTask(InternalRequestOperation internalRequestOperation, MultipartUploadRequest multipartUploadRequest, OSSCompletedCallback<MultipartUploadRequest, CompleteMultipartUploadResult> oSSCompletedCallback, ExecutionContext executionContext) {
        super(internalRequestOperation, multipartUploadRequest, oSSCompletedCallback, executionContext);
    }

    @Override
    protected void abortThisUpload() {
        if (this.mUploadId != null) {
            this.mApiOperation.abortMultipartUpload(new AbortMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId), null).waitUntilFinished();
        }
    }

    @Override
    protected CompleteMultipartUploadResult doMultipartUpload() throws ServiceException, ClientException, InterruptedException, IOException {
        checkCancel();
        int[] iArr = this.mPartAttr;
        int i10 = iArr[0];
        final int i11 = iArr[1];
        final int i12 = i10;
        int i13 = 0;
        for (final int i14 = 0; i14 < i11; i14++) {
            checkException();
            ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
            if (threadPoolExecutor != null) {
                if (i14 == i11 - 1) {
                    i12 = (int) (this.mFileLength - ((long) i13));
                }
                i13 += i12;
                threadPoolExecutor.execute(new Runnable() {
                    @Override
                    public void run() throws Throwable {
                        MultipartUploadTask.this.uploadPart(i14, i12, i11);
                    }
                });
            }
        }
        if (checkWaitCondition(i11)) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        if (this.mUploadException != null) {
            abortThisUpload();
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        releasePool();
        return completeMultipartUploadResult;
    }

    @Override
    protected void initMultipartUploadId() throws ServiceException, ClientException {
        String uploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(new InitiateMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mRequest.getMetadata()), null).getResult()).getUploadId();
        this.mUploadId = uploadId;
        this.mRequest.setUploadId(uploadId);
    }

    @Override
    protected void preUploadPart(int i10, int i11, int i12) throws Exception {
        checkException();
    }

    @Override
    protected void processException(Exception exc) {
        synchronized (this.mLock) {
            try {
                this.mPartExceptionCount++;
                if (this.mUploadException == null) {
                    this.mUploadException = exc;
                    this.mLock.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
