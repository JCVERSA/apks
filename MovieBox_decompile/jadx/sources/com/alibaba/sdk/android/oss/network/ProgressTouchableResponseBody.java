package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

public class ProgressTouchableResponseBody<T extends OSSRequest> extends ResponseBody {
    private BufferedSource mBufferedSource;
    private OSSProgressCallback mProgressListener;
    private final ResponseBody mResponseBody;
    private T request;

    public ProgressTouchableResponseBody(ResponseBody responseBody, ExecutionContext executionContext) {
        this.mResponseBody = responseBody;
        this.mProgressListener = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    @Override
    public long getContentLength() {
        return this.mResponseBody.getContentLength();
    }

    @Override
    public MediaType get$contentType() {
        return this.mResponseBody.get$contentType();
    }

    @Override
    public BufferedSource getBodySource() {
        if (this.mBufferedSource == null) {
            this.mBufferedSource = Okio.buffer(source(this.mResponseBody.getBodySource()));
        }
        return this.mBufferedSource;
    }

    private Source source(Source source) {
        return new ForwardingSource(source) {
            private long totalBytesRead = 0;

            @Override
            public long read(Buffer buffer, long j10) throws IOException {
                long j11 = super.read(buffer, j10);
                this.totalBytesRead += j11 != -1 ? j11 : 0L;
                if (ProgressTouchableResponseBody.this.mProgressListener != null && j11 != -1 && this.totalBytesRead != 0) {
                    ProgressTouchableResponseBody.this.mProgressListener.onProgress(ProgressTouchableResponseBody.this.request, this.totalBytesRead, ProgressTouchableResponseBody.this.mResponseBody.getContentLength());
                }
                return j11;
            }
        };
    }
}
