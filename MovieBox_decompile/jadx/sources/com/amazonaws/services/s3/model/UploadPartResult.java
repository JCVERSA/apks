package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.SSEResultBase;

public class UploadPartResult extends SSEResultBase implements S3RequesterChargedResult {

    private int f18214a;

    private String f18215b;

    private boolean f18216c;

    public String getETag() {
        return this.f18215b;
    }

    public int getPartNumber() {
        return this.f18214a;
    }

    public void setETag(String str) {
        this.f18215b = str;
    }

    public void setPartNumber(int i10) {
        this.f18214a = i10;
    }

    @Override
    public void setRequesterCharged(boolean z10) {
        this.f18216c = z10;
    }
}
