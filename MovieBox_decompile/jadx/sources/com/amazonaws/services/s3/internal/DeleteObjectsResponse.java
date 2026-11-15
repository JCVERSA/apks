package com.amazonaws.services.s3.internal;

import java.util.ArrayList;
import java.util.List;

public class DeleteObjectsResponse implements S3RequesterChargedResult {

    private List f18004a;

    private List f18005b;

    private boolean f18006c;

    public DeleteObjectsResponse() {
        this(new ArrayList(), new ArrayList());
    }

    public List a() {
        return this.f18004a;
    }

    public List b() {
        return this.f18005b;
    }

    @Override
    public void setRequesterCharged(boolean z10) {
        this.f18006c = z10;
    }

    public DeleteObjectsResponse(List list, List list2) {
        this.f18004a = list;
        this.f18005b = list2;
    }
}
