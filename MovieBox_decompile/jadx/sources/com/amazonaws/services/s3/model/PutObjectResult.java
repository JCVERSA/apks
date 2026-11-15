package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
import java.util.Date;

public class PutObjectResult extends SSEResultBase implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {

    private String f18162a;

    private String f18163b;

    private Date f18164c;

    private String f18165d;

    private String f18166e;

    private ObjectMetadata f18167f;

    private boolean f18168g;

    public void a(String str) {
        this.f18166e = str;
    }

    public void b(ObjectMetadata objectMetadata) {
        this.f18167f = objectMetadata;
    }

    public void setETag(String str) {
        this.f18163b = str;
    }

    @Override
    public void setExpirationTime(Date date) {
        this.f18164c = date;
    }

    @Override
    public void setExpirationTimeRuleId(String str) {
        this.f18165d = str;
    }

    @Override
    public void setRequesterCharged(boolean z10) {
        this.f18168g = z10;
    }

    @Override
    public void setVersionId(String str) {
        this.f18162a = str;
    }
}
