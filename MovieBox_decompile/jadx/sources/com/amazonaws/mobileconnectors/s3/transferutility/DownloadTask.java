package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;

class DownloadTask implements Callable<Boolean> {

    private static final Log f17830d = LogFactory.b(DownloadTask.class);

    private final AmazonS3 f17831a;

    private final TransferRecord f17832b;

    private final TransferStatusUpdater f17833c;

    public DownloadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        this.f17832b = transferRecord;
        this.f17831a = amazonS3;
        this.f17833c = transferStatusUpdater;
    }

    private void b(InputStream inputStream, File file) throws Throwable {
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file, file.length() > 0));
                try {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 != -1) {
                            bufferedOutputStream2.write(bArr, 0, i10);
                        } else {
                            try {
                                break;
                            } catch (IOException e10) {
                                f17830d.i("got exception", e10);
                            }
                        }
                    }
                    bufferedOutputStream2.close();
                    try {
                        inputStream.close();
                    } catch (IOException e11) {
                        f17830d.i("got exception", e11);
                    }
                } catch (SocketTimeoutException e12) {
                    e = e12;
                    String str = "SocketTimeoutException: Unable to retrieve contents over network: " + e.getMessage();
                    f17830d.f(str);
                    throw new AmazonClientException(str, e);
                } catch (IOException e13) {
                    e = e13;
                    throw new AmazonClientException("Unable to store object contents to disk: " + e.getMessage(), e);
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e14) {
                            f17830d.i("got exception", e14);
                        }
                    }
                    if (inputStream == null) {
                        throw th;
                    }
                    try {
                        inputStream.close();
                        throw th;
                    } catch (IOException e15) {
                        f17830d.i("got exception", e15);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (SocketTimeoutException e16) {
            e = e16;
        } catch (IOException e17) {
            e = e17;
        }
    }

    @Override
    public Boolean call() throws Throwable {
        try {
            if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                f17830d.d("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                this.f17833c.l(this.f17832b.f17864a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e10) {
            f17830d.f("TransferUtilityException: [" + e10 + "]");
        }
        this.f17833c.l(this.f17832b.f17864a, TransferState.IN_PROGRESS);
        ProgressListener progressListenerF = this.f17833c.f(this.f17832b.f17864a);
        try {
            TransferRecord transferRecord = this.f17832b;
            GetObjectRequest getObjectRequest = new GetObjectRequest(transferRecord.f17879p, transferRecord.f17880q);
            TransferUtility.b(getObjectRequest);
            File file = new File(this.f17832b.f17882s);
            long length = file.length();
            if (length > 0) {
                f17830d.a(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f17832b.f17864a), Long.valueOf(length)));
                getObjectRequest.setRange(length, -1L);
            }
            getObjectRequest.setGeneralProgressListener(progressListenerF);
            S3Object s3ObjectD = this.f17831a.d(getObjectRequest);
            if (s3ObjectD == null) {
                this.f17833c.i(this.f17832b.f17864a, new IllegalStateException("AmazonS3.getObject returns null"));
                this.f17833c.l(this.f17832b.f17864a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            long instanceLength = s3ObjectD.getObjectMetadata().getInstanceLength();
            this.f17833c.k(this.f17832b.f17864a, length, instanceLength, true);
            b(s3ObjectD.getObjectContent(), file);
            this.f17833c.k(this.f17832b.f17864a, instanceLength, instanceLength, true);
            this.f17833c.l(this.f17832b.f17864a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e11) {
            if (TransferState.PENDING_CANCEL.equals(this.f17832b.f17878o)) {
                TransferStatusUpdater transferStatusUpdater = this.f17833c;
                int i10 = this.f17832b.f17864a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater.l(i10, transferState);
                f17830d.d("Transfer is " + transferState);
                return Boolean.FALSE;
            }
            if (TransferState.PENDING_PAUSE.equals(this.f17832b.f17878o)) {
                TransferStatusUpdater transferStatusUpdater2 = this.f17833c;
                int i11 = this.f17832b.f17864a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater2.l(i11, transferState2);
                f17830d.d("Transfer is " + transferState2);
                new ProgressEvent(0L).c(32);
                progressListenerF.a(new ProgressEvent(0L));
                return Boolean.FALSE;
            }
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    Log log = f17830d;
                    log.d("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    this.f17833c.l(this.f17832b.f17864a, TransferState.WAITING_FOR_NETWORK);
                    log.a("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    new ProgressEvent(0L).c(32);
                    progressListenerF.a(new ProgressEvent(0L));
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e12) {
                f17830d.f("TransferUtilityException: [" + e12 + "]");
            }
            if (RetryUtils.b(e11)) {
                f17830d.d("Transfer is interrupted. " + e11);
                this.f17833c.l(this.f17832b.f17864a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            f17830d.a("Failed to download: " + this.f17832b.f17864a + " due to " + e11.getMessage());
            this.f17833c.i(this.f17832b.f17864a, e11);
            this.f17833c.l(this.f17832b.f17864a, TransferState.FAILED);
            return Boolean.FALSE;
        }
    }
}
