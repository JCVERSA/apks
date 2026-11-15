package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.util.concurrent.Callable;

class UploadPartTask implements Callable<Boolean> {

    private static final Log f17921f = LogFactory.b(UploadPartTask.class);

    private final UploadTask.UploadPartTaskMetadata f17922a;

    private final UploadTask.UploadTaskProgressListener f17923b;

    private final UploadPartRequest f17924c;

    private final AmazonS3 f17925d;

    private final TransferDBUtil f17926e;

    private class UploadPartTaskProgressListener implements ProgressListener {

        private UploadTask.UploadTaskProgressListener f17927a;

        private long f17928b;

        public UploadPartTaskProgressListener(UploadTask.UploadTaskProgressListener uploadTaskProgressListener) {
            this.f17927a = uploadTaskProgressListener;
        }

        @Override
        public void a(ProgressEvent progressEvent) {
            if (32 == progressEvent.b()) {
                UploadPartTask.f17921f.d("Reset Event triggered. Resetting the bytesCurrent to 0.");
                this.f17928b = 0L;
            } else {
                this.f17928b += progressEvent.a();
            }
            this.f17927a.b(UploadPartTask.this.f17924c.getPartNumber(), this.f17928b);
        }
    }

    public UploadPartTask(UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata, UploadTask.UploadTaskProgressListener uploadTaskProgressListener, UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.f17922a = uploadPartTaskMetadata;
        this.f17923b = uploadTaskProgressListener;
        this.f17924c = uploadPartRequest;
        this.f17925d = amazonS3;
        this.f17926e = transferDBUtil;
    }

    @Override
    public Boolean call() throws Exception {
        try {
            this.f17922a.f17941d = TransferState.IN_PROGRESS;
            this.f17924c.setGeneralProgressListener(new UploadPartTaskProgressListener(this.f17923b));
            UploadPartResult uploadPartResultA = this.f17925d.a(this.f17924c);
            UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata = this.f17922a;
            TransferState transferState = TransferState.PART_COMPLETED;
            uploadPartTaskMetadata.f17941d = transferState;
            this.f17926e.s(this.f17924c.getId(), transferState);
            this.f17926e.q(this.f17924c.getId(), uploadPartResultA.getETag());
            return Boolean.TRUE;
        } catch (Exception e10) {
            Log log = f17921f;
            log.f("Upload part interrupted: " + e10);
            new ProgressEvent(0L).c(32);
            this.f17923b.a(new ProgressEvent(0L));
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    log.d("Thread: [" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata2 = this.f17922a;
                    TransferState transferState2 = TransferState.WAITING_FOR_NETWORK;
                    uploadPartTaskMetadata2.f17941d = transferState2;
                    this.f17926e.s(this.f17924c.getId(), transferState2);
                    log.d("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e11) {
                f17921f.f("TransferUtilityException: [" + e11 + "]");
            }
            UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata3 = this.f17922a;
            TransferState transferState3 = TransferState.FAILED;
            uploadPartTaskMetadata3.f17941d = transferState3;
            this.f17926e.s(this.f17924c.getId(), transferState3);
            f17921f.e("Encountered error uploading part ", e10);
            throw e10;
        }
    }
}
