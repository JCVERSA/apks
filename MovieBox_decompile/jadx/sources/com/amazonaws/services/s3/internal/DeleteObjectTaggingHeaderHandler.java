package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.DeleteObjectTaggingResult;

public class DeleteObjectTaggingHeaderHandler implements HeaderHandler<DeleteObjectTaggingResult> {
    @Override
    public void a(DeleteObjectTaggingResult deleteObjectTaggingResult, HttpResponse httpResponse) {
        deleteObjectTaggingResult.a((String) httpResponse.c().get("x-amz-version-id"));
    }
}
