package com.squareup.okhttp;

import com.squareup.okhttp.internal.g;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;

public abstract class RequestBody {
    public static RequestBody create(MediaType mediaType, String str) {
        Charset charset = g.f39600c;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset2;
            }
        }
        return create(mediaType, str.getBytes(charset));
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    public abstract MediaType contentType();

    public abstract void writeTo(BufferedSink bufferedSink) throws IOException;

    public static RequestBody create(final MediaType mediaType, final ByteString byteString) {
        return new RequestBody() {
            @Override
            public long contentLength() throws IOException {
                return byteString.size();
            }

            @Override
            public MediaType contentType() {
                return mediaType;
            }

            @Override
            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink.write(byteString);
            }
        };
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(final MediaType mediaType, final byte[] bArr, final int i10, final int i11) {
        if (bArr != null) {
            g.a(bArr.length, i10, i11);
            return new RequestBody() {
                @Override
                public long contentLength() {
                    return i11;
                }

                @Override
                public MediaType contentType() {
                    return mediaType;
                }

                @Override
                public void writeTo(BufferedSink bufferedSink) throws IOException {
                    bufferedSink.write(bArr, i10, i11);
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(final MediaType mediaType, final File file) {
        if (file != null) {
            return new RequestBody() {
                @Override
                public long contentLength() {
                    return file.length();
                }

                @Override
                public MediaType contentType() {
                    return mediaType;
                }

                @Override
                public void writeTo(BufferedSink bufferedSink) throws IOException {
                    Source source = null;
                    try {
                        source = Okio.source(file);
                        bufferedSink.writeAll(source);
                    } finally {
                        g.c(source);
                    }
                }
            };
        }
        throw new NullPointerException("content == null");
    }
}
