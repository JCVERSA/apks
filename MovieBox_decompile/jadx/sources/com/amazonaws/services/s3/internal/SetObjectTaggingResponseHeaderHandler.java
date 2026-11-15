package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.SetObjectTaggingResult;

public class SetObjectTaggingResponseHeaderHandler implements HeaderHandler<SetObjectTaggingResult> {
    @Override
    public void a(SetObjectTaggingResult setObjectTaggingResult, HttpResponse httpResponse) {
        setObjectTaggingResult.a((String) httpResponse.c().get("x-amz-version-id"));
    }
}
