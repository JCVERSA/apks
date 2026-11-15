package com.alibaba.sdk.android.oss.network;

import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;

public class ProgressTouchableRequestBody<T extends OSSRequest> extends RequestBody {
    private static final int SEGMENT_SIZE = 2048;
    private OSSProgressCallback callback;
    private long contentLength;
    private String contentType;
    private InputStream inputStream;
    private T request;

    public ProgressTouchableRequestBody(InputStream inputStream, long j10, String str, ExecutionContext executionContext) {
        this.inputStream = inputStream;
        this.contentType = str;
        this.contentLength = j10;
        this.callback = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    @Override
    public long contentLength() throws IOException {
        return this.contentLength;
    }

    @Override
    public MediaType getContentType() {
        return MediaType.parse(this.contentType);
    }

    @Override
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        Source source = Okio.source(this.inputStream);
        long j10 = 0;
        while (true) {
            long j11 = this.contentLength;
            if (j10 >= j11) {
                break;
            }
            long j12 = source.read(bufferedSink.getBufferField(), Math.min(j11 - j10, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH));
            if (j12 == -1) {
                break;
            }
            j10 += j12;
            bufferedSink.flush();
            OSSProgressCallback oSSProgressCallback = this.callback;
            if (oSSProgressCallback != null && j10 != 0) {
                oSSProgressCallback.onProgress(this.request, j10, this.contentLength);
            }
        }
        if (source != null) {
            source.close();
        }
    }
}
