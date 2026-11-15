package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3VersionResult;

public class S3VersionHeaderHandler<T extends S3VersionResult> implements HeaderHandler<T> {
    @Override
    public void a(S3VersionResult s3VersionResult, HttpResponse httpResponse) {
        s3VersionResult.setVersionId((String) httpResponse.c().get("x-amz-version-id"));
    }
}
