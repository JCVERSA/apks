package com.amazonaws.services.s3;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.PartCreationEvent;
import com.amazonaws.services.s3.internal.S3DirectSpi;
import com.amazonaws.services.s3.model.UploadObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public class UploadObjectObserver {

    private final List f17992a = new ArrayList();

    private UploadObjectRequest f17993b;

    private String f17994c;

    private S3DirectSpi f17995d;

    private ExecutorService f17996e;

    protected AmazonWebServiceRequest a(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        amazonWebServiceRequest.getRequestClientOptions().a(str);
        return amazonWebServiceRequest;
    }

    protected UploadPartRequest b(PartCreationEvent partCreationEvent, File file) {
        return new UploadPartRequest().withBucketName(this.f17993b.getBucketName()).withFile(file).withKey(this.f17993b.getKey()).withPartNumber(partCreationEvent.c()).withPartSize(file.length()).withLastPart(partCreationEvent.d()).withUploadId(this.f17994c).withObjectMetadata(this.f17993b.getUploadPartMetadata());
    }

    public void c(PartCreationEvent partCreationEvent) {
        final File fileB = partCreationEvent.b();
        final UploadPartRequest uploadPartRequestB = b(partCreationEvent, fileB);
        final OnFileDelete onFileDeleteA = partCreationEvent.a();
        a(uploadPartRequestB, AmazonS3EncryptionClient.f17977w);
        this.f17992a.add(this.f17996e.submit(new Callable<UploadPartResult>() {
            @Override
            public UploadPartResult call() {
                try {
                    UploadPartResult uploadPartResultD = UploadObjectObserver.this.d(uploadPartRequestB);
                    if (!fileB.delete()) {
                    }
                    return uploadPartResultD;
                } finally {
                    if (fileB.delete()) {
                        OnFileDelete onFileDelete = onFileDeleteA;
                        if (onFileDelete != null) {
                            onFileDelete.b(null);
                        }
                    } else {
                        LogFactory.b(getClass()).a("Ignoring failure to delete file " + fileB + " which has already been uploaded");
                    }
                }
            }
        }));
    }

    protected UploadPartResult d(UploadPartRequest uploadPartRequest) {
        return this.f17995d.a(uploadPartRequest);
    }
}
