package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.util.Mimetypes;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

class UploadTask implements Callable<Boolean> {

    private static final Log f17930g = LogFactory.b(UploadTask.class);

    private static final Map f17931h = new HashMap();

    private final AmazonS3 f17932a;

    private final TransferRecord f17933b;

    private final TransferDBUtil f17934c;

    private final TransferStatusUpdater f17935d;

    Map f17936e = new HashMap();

    private List f17937f;

    class UploadPartTaskMetadata {

        UploadPartRequest f17938a;

        Future f17939b;

        long f17940c;

        TransferState f17941d;

        UploadPartTaskMetadata() {
        }
    }

    static {
        for (CannedAccessControlList cannedAccessControlList : CannedAccessControlList.values()) {
            f17931h.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater) {
        this.f17933b = transferRecord;
        this.f17932a = amazonS3;
        this.f17934c = transferDBUtil;
        this.f17935d = transferStatusUpdater;
    }

    private void a(int i10, String str, String str2, String str3) {
        Log log = f17930g;
        log.d("Aborting the multipart since complete multipart failed.");
        try {
            this.f17932a.e(new AbortMultipartUploadRequest(str, str2, str3));
            log.a("Successfully aborted multipart upload: " + i10);
        } catch (AmazonClientException e10) {
            f17930g.g("Failed to abort the multipart upload: " + i10, e10);
        }
    }

    private void f(int i10, String str, String str2, String str3) {
        CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(str, str2, str3, this.f17934c.m(i10));
        TransferUtility.a(completeMultipartUploadRequest);
        this.f17932a.b(completeMultipartUploadRequest);
    }

    private PutObjectRequest g(TransferRecord transferRecord) {
        File file = new File(transferRecord.f17882s);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.f17879p, transferRecord.f17880q, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentLength(file.length());
        String str = transferRecord.f17889z;
        if (str != null) {
            objectMetadata.setCacheControl(str);
        }
        String str2 = transferRecord.f17887x;
        if (str2 != null) {
            objectMetadata.setContentDisposition(str2);
        }
        String str3 = transferRecord.f17888y;
        if (str3 != null) {
            objectMetadata.setContentEncoding(str3);
        }
        String str4 = transferRecord.f17885v;
        if (str4 != null) {
            objectMetadata.setContentType(str4);
        } else {
            objectMetadata.setContentType(Mimetypes.a().b(file));
        }
        String str5 = transferRecord.B;
        if (str5 != null) {
            putObjectRequest.setStorageClass(str5);
        }
        String str6 = transferRecord.D;
        if (str6 != null) {
            objectMetadata.setExpirationTimeRuleId(str6);
        }
        if (transferRecord.E != null) {
            objectMetadata.setHttpExpiresDate(new Date(Long.valueOf(transferRecord.E).longValue()));
        }
        String str7 = transferRecord.F;
        if (str7 != null) {
            objectMetadata.setSSEAlgorithm(str7);
        }
        Map<String, String> map = transferRecord.C;
        if (map != null) {
            objectMetadata.setUserMetadata(map);
            String str8 = (String) transferRecord.C.get("x-amz-tagging");
            if (str8 != null) {
                try {
                    String[] strArrSplit = str8.split(UrlUtils.AND_MARK);
                    ArrayList arrayList = new ArrayList();
                    for (String str9 : strArrSplit) {
                        String[] strArrSplit2 = str9.split(UrlUtils.EQUAL_MARK);
                        arrayList.add(new Tag(strArrSplit2[0], strArrSplit2[1]));
                    }
                    putObjectRequest.setTagging(new ObjectTagging(arrayList));
                } catch (Exception e10) {
                    f17930g.e("Error in passing the object tags as request headers.", e10);
                }
            }
            String str10 = (String) transferRecord.C.get("x-amz-website-redirect-location");
            if (str10 != null) {
                putObjectRequest.setRedirectLocation(str10);
            }
            String str11 = (String) transferRecord.C.get("x-amz-request-payer");
            if (str11 != null) {
                putObjectRequest.setRequesterPays("requester".equals(str11));
            }
        }
        String str12 = transferRecord.H;
        if (str12 != null) {
            objectMetadata.setContentMD5(str12);
        }
        String str13 = transferRecord.G;
        if (str13 != null) {
            putObjectRequest.setSSEAwsKeyManagementParams(new SSEAwsKeyManagementParams(str13));
        }
        putObjectRequest.setMetadata(objectMetadata);
        putObjectRequest.setCannedAcl(h(transferRecord.I));
        return putObjectRequest;
    }

    private static CannedAccessControlList h(String str) {
        if (str == null) {
            return null;
        }
        return (CannedAccessControlList) f17931h.get(str);
    }

    private String i(PutObjectRequest putObjectRequest) {
        InitiateMultipartUploadRequest initiateMultipartUploadRequestWithTagging = new InitiateMultipartUploadRequest(putObjectRequest.getBucketName(), putObjectRequest.getKey()).withCannedACL(putObjectRequest.getCannedAcl()).withObjectMetadata(putObjectRequest.getMetadata()).withSSEAwsKeyManagementParams(putObjectRequest.getSSEAwsKeyManagementParams()).withTagging(putObjectRequest.getTagging());
        TransferUtility.a(initiateMultipartUploadRequestWithTagging);
        return this.f17932a.c(initiateMultipartUploadRequestWithTagging).a();
    }

    private Boolean j() {
        long j10;
        String str = this.f17933b.f17883t;
        if (str == null || str.isEmpty()) {
            PutObjectRequest putObjectRequestG = g(this.f17933b);
            TransferUtility.a(putObjectRequestG);
            try {
                this.f17933b.f17883t = i(putObjectRequestG);
                TransferDBUtil transferDBUtil = this.f17934c;
                TransferRecord transferRecord = this.f17933b;
                transferDBUtil.r(transferRecord.f17864a, transferRecord.f17883t);
                j10 = 0;
            } catch (AmazonClientException e10) {
                f17930g.e("Error initiating multipart upload: " + this.f17933b.f17864a + " due to " + e10.getMessage(), e10);
                this.f17935d.i(this.f17933b.f17864a, e10);
                this.f17935d.l(this.f17933b.f17864a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } else {
            long jL = this.f17934c.l(this.f17933b.f17864a);
            if (jL > 0) {
                f17930g.d(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f17933b.f17864a), Long.valueOf(jL)));
            }
            j10 = jL;
        }
        UploadTaskProgressListener uploadTaskProgressListener = new UploadTaskProgressListener(this.f17933b);
        TransferStatusUpdater transferStatusUpdater = this.f17935d;
        TransferRecord transferRecord2 = this.f17933b;
        transferStatusUpdater.k(transferRecord2.f17864a, j10, transferRecord2.f17871h, false);
        TransferDBUtil transferDBUtil2 = this.f17934c;
        TransferRecord transferRecord3 = this.f17933b;
        this.f17937f = transferDBUtil2.g(transferRecord3.f17864a, transferRecord3.f17883t);
        f17930g.d("Multipart upload " + this.f17933b.f17864a + " in " + this.f17937f.size() + " parts.");
        for (UploadPartRequest uploadPartRequest : this.f17937f) {
            TransferUtility.a(uploadPartRequest);
            UploadPartTaskMetadata uploadPartTaskMetadata = new UploadPartTaskMetadata();
            uploadPartTaskMetadata.f17938a = uploadPartRequest;
            uploadPartTaskMetadata.f17940c = 0L;
            uploadPartTaskMetadata.f17941d = TransferState.WAITING;
            this.f17936e.put(Integer.valueOf(uploadPartRequest.getPartNumber()), uploadPartTaskMetadata);
            uploadPartTaskMetadata.f17939b = TransferThreadPool.c(new UploadPartTask(uploadPartTaskMetadata, uploadTaskProgressListener, uploadPartRequest, this.f17932a, this.f17934c));
        }
        try {
            Iterator it = this.f17936e.values().iterator();
            boolean zBooleanValue = true;
            while (it.hasNext()) {
                zBooleanValue &= ((Boolean) ((UploadPartTaskMetadata) it.next()).f17939b.get()).booleanValue();
            }
            if (!zBooleanValue) {
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        f17930g.d("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f17935d.l(this.f17933b.f17864a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e11) {
                    f17930g.f("TransferUtilityException: [" + e11 + "]");
                }
            }
            f17930g.d("Completing the multi-part upload transfer for " + this.f17933b.f17864a);
            try {
                TransferRecord transferRecord4 = this.f17933b;
                f(transferRecord4.f17864a, transferRecord4.f17879p, transferRecord4.f17880q, transferRecord4.f17883t);
                TransferStatusUpdater transferStatusUpdater2 = this.f17935d;
                TransferRecord transferRecord5 = this.f17933b;
                int i10 = transferRecord5.f17864a;
                long j11 = transferRecord5.f17871h;
                transferStatusUpdater2.k(i10, j11, j11, true);
                this.f17935d.l(this.f17933b.f17864a, TransferState.COMPLETED);
                return Boolean.TRUE;
            } catch (AmazonClientException e12) {
                f17930g.e("Failed to complete multipart: " + this.f17933b.f17864a + " due to " + e12.getMessage(), e12);
                TransferRecord transferRecord6 = this.f17933b;
                a(transferRecord6.f17864a, transferRecord6.f17879p, transferRecord6.f17880q, transferRecord6.f17883t);
                this.f17935d.i(this.f17933b.f17864a, e12);
                this.f17935d.l(this.f17933b.f17864a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } catch (Exception e13) {
            f17930g.f("Upload resulted in an exception. " + e13);
            Iterator it2 = this.f17936e.values().iterator();
            while (it2.hasNext()) {
                ((UploadPartTaskMetadata) it2.next()).f17939b.cancel(true);
            }
            if (TransferState.PENDING_CANCEL.equals(this.f17933b.f17878o)) {
                TransferStatusUpdater transferStatusUpdater3 = this.f17935d;
                int i11 = this.f17933b.f17864a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater3.l(i11, transferState);
                f17930g.d("Transfer is " + transferState);
                return Boolean.FALSE;
            }
            if (TransferState.PENDING_PAUSE.equals(this.f17933b.f17878o)) {
                TransferStatusUpdater transferStatusUpdater4 = this.f17935d;
                int i12 = this.f17933b.f17864a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater4.l(i12, transferState2);
                f17930g.d("Transfer is " + transferState2);
                return Boolean.FALSE;
            }
            for (UploadPartTaskMetadata uploadPartTaskMetadata2 : this.f17936e.values()) {
                TransferState transferState3 = TransferState.WAITING_FOR_NETWORK;
                if (transferState3.equals(uploadPartTaskMetadata2.f17941d)) {
                    f17930g.d("Individual part is WAITING_FOR_NETWORK.");
                    this.f17935d.l(this.f17933b.f17864a, transferState3);
                    return Boolean.FALSE;
                }
            }
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    f17930g.d("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                    this.f17935d.l(this.f17933b.f17864a, TransferState.WAITING_FOR_NETWORK);
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e14) {
                f17930g.f("TransferUtilityException: [" + e14 + "]");
            }
            if (RetryUtils.b(e13)) {
                f17930g.d("Transfer is interrupted. " + e13);
                this.f17935d.l(this.f17933b.f17864a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            f17930g.e("Error encountered during multi-part upload: " + this.f17933b.f17864a + " due to " + e13.getMessage(), e13);
            this.f17935d.i(this.f17933b.f17864a, e13);
            this.f17935d.l(this.f17933b.f17864a, TransferState.FAILED);
            return Boolean.FALSE;
        }
    }

    private Boolean k() {
        PutObjectRequest putObjectRequestG = g(this.f17933b);
        ProgressListener progressListenerF = this.f17935d.f(this.f17933b.f17864a);
        long length = putObjectRequestG.getFile().length();
        TransferUtility.b(putObjectRequestG);
        putObjectRequestG.setGeneralProgressListener(progressListenerF);
        try {
            this.f17932a.f(putObjectRequestG);
            this.f17935d.k(this.f17933b.f17864a, length, length, true);
            this.f17935d.l(this.f17933b.f17864a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e10) {
            if (TransferState.PENDING_CANCEL.equals(this.f17933b.f17878o)) {
                TransferStatusUpdater transferStatusUpdater = this.f17935d;
                int i10 = this.f17933b.f17864a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater.l(i10, transferState);
                f17930g.d("Transfer is " + transferState);
                return Boolean.FALSE;
            }
            if (TransferState.PENDING_PAUSE.equals(this.f17933b.f17878o)) {
                TransferStatusUpdater transferStatusUpdater2 = this.f17935d;
                int i11 = this.f17933b.f17864a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater2.l(i11, transferState2);
                f17930g.d("Transfer is " + transferState2);
                new ProgressEvent(0L).c(32);
                progressListenerF.a(new ProgressEvent(0L));
                return Boolean.FALSE;
            }
            try {
                if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                    Log log = f17930g;
                    log.d("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    this.f17935d.l(this.f17933b.f17864a, TransferState.WAITING_FOR_NETWORK);
                    log.a("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    new ProgressEvent(0L).c(32);
                    progressListenerF.a(new ProgressEvent(0L));
                    return Boolean.FALSE;
                }
            } catch (TransferUtilityException e11) {
                f17930g.f("TransferUtilityException: [" + e11 + "]");
            }
            if (RetryUtils.b(e10)) {
                f17930g.d("Transfer is interrupted. " + e10);
                this.f17935d.l(this.f17933b.f17864a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            f17930g.a("Failed to upload: " + this.f17933b.f17864a + " due to " + e10.getMessage());
            this.f17935d.i(this.f17933b.f17864a, e10);
            this.f17935d.l(this.f17933b.f17864a, TransferState.FAILED);
            return Boolean.FALSE;
        }
    }

    @Override
    public Boolean call() {
        try {
            if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                f17930g.d("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                this.f17935d.l(this.f17933b.f17864a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e10) {
            f17930g.f("TransferUtilityException: [" + e10 + "]");
        }
        this.f17935d.l(this.f17933b.f17864a, TransferState.IN_PROGRESS);
        TransferRecord transferRecord = this.f17933b;
        int i10 = transferRecord.f17867d;
        if (i10 == 1 && transferRecord.f17870g == 0) {
            return j();
        }
        return i10 == 0 ? k() : Boolean.FALSE;
    }

    class UploadTaskProgressListener implements ProgressListener {

        private long f17943a;

        UploadTaskProgressListener(TransferRecord transferRecord) {
            this.f17943a = transferRecord.f17872i;
        }

        public synchronized void b(int i10, long j10) {
            UploadPartTaskMetadata uploadPartTaskMetadata = (UploadPartTaskMetadata) UploadTask.this.f17936e.get(Integer.valueOf(i10));
            if (uploadPartTaskMetadata == null) {
                UploadTask.f17930g.d("Update received for unknown part. Ignoring.");
                return;
            }
            uploadPartTaskMetadata.f17940c = j10;
            Iterator it = UploadTask.this.f17936e.entrySet().iterator();
            long j11 = 0;
            while (it.hasNext()) {
                j11 += ((UploadPartTaskMetadata) ((Map.Entry) it.next()).getValue()).f17940c;
            }
            if (j11 > this.f17943a) {
                UploadTask.this.f17935d.k(UploadTask.this.f17933b.f17864a, j11, UploadTask.this.f17933b.f17871h, true);
                this.f17943a = j11;
            }
        }

        @Override
        public void a(ProgressEvent progressEvent) {
        }
    }
}
