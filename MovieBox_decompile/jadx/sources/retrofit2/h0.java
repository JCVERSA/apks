package retrofit2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.EOFException;
import java.io.IOException;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;

final class h0 {

    private static final char[] f71041l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static final Pattern f71042m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    private final String f71043a;

    private final HttpUrl f71044b;

    private String f71045c;

    private HttpUrl.Builder f71046d;

    private final Request.Builder f71047e = new Request.Builder();

    private final Headers.Builder f71048f;

    private MediaType f71049g;

    private final boolean f71050h;

    private MultipartBody.Builder f71051i;

    private FormBody.Builder f71052j;

    private RequestBody f71053k;

    private static class a extends RequestBody {

        private final RequestBody f71054a;

        private final MediaType f71055b;

        a(RequestBody requestBody, MediaType mediaType) {
            this.f71054a = requestBody;
            this.f71055b = mediaType;
        }

        @Override
        public long contentLength() {
            return this.f71054a.contentLength();
        }

        @Override
        public MediaType getContentType() {
            return this.f71055b;
        }

        @Override
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.f71054a.writeTo(bufferedSink);
        }
    }

    h0(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z10, boolean z11, boolean z12) {
        this.f71043a = str;
        this.f71044b = httpUrl;
        this.f71045c = str2;
        this.f71049g = mediaType;
        this.f71050h = z10;
        if (headers != null) {
            this.f71048f = headers.newBuilder();
        } else {
            this.f71048f = new Headers.Builder();
        }
        if (z11) {
            this.f71052j = new FormBody.Builder();
        } else if (z12) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f71051i = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    private static String i(String str, boolean z10) throws EOFException {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z10 && (iCodePointAt == 47 || iCodePointAt == 37))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, iCharCount);
                j(buffer, str, iCharCount, length, z10);
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    private static void j(Buffer buffer, String str, int i10, int i11, boolean z10) throws EOFException {
        Buffer buffer2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z10 && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    while (!buffer2.exhausted()) {
                        byte b10 = buffer2.readByte();
                        buffer.writeByte(37);
                        char[] cArr = f71041l;
                        buffer.writeByte((int) cArr[((b10 & 255) >> 4) & 15]);
                        buffer.writeByte((int) cArr[b10 & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    void a(String str, String str2, boolean z10) {
        if (z10) {
            this.f71052j.addEncoded(str, str2);
        } else {
            this.f71052j.add(str, str2);
        }
    }

    void b(String str, String str2, boolean z10) {
        if (!HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str)) {
            if (z10) {
                this.f71048f.addUnsafeNonAscii(str, str2);
                return;
            } else {
                this.f71048f.add(str, str2);
                return;
            }
        }
        try {
            this.f71049g = MediaType.get(str2);
        } catch (IllegalArgumentException e10) {
            throw new IllegalArgumentException("Malformed content type: " + str2, e10);
        }
    }

    void c(Headers headers) {
        this.f71048f.addAll(headers);
    }

    void d(Headers headers, RequestBody requestBody) {
        this.f71051i.addPart(headers, requestBody);
    }

    void e(MultipartBody.Part part) {
        this.f71051i.addPart(part);
    }

    void f(String str, String str2, boolean z10) {
        if (this.f71045c == null) {
            throw new AssertionError();
        }
        String strI = i(str2, z10);
        String strReplace = this.f71045c.replace("{" + str + "}", strI);
        if (!f71042m.matcher(strReplace).matches()) {
            this.f71045c = strReplace;
            return;
        }
        throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
    }

    void g(String str, String str2, boolean z10) {
        String str3 = this.f71045c;
        if (str3 != null) {
            HttpUrl.Builder builderNewBuilder = this.f71044b.newBuilder(str3);
            this.f71046d = builderNewBuilder;
            if (builderNewBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f71044b + ", Relative: " + this.f71045c);
            }
            this.f71045c = null;
        }
        if (z10) {
            this.f71046d.addEncodedQueryParameter(str, str2);
        } else {
            this.f71046d.addQueryParameter(str, str2);
        }
    }

    void h(Class cls, Object obj) {
        this.f71047e.tag(cls, obj);
    }

    Request.Builder k() {
        HttpUrl httpUrlResolve;
        HttpUrl.Builder builder = this.f71046d;
        if (builder != null) {
            httpUrlResolve = builder.build();
        } else {
            httpUrlResolve = this.f71044b.resolve(this.f71045c);
            if (httpUrlResolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f71044b + ", Relative: " + this.f71045c);
            }
        }
        RequestBody aVar = this.f71053k;
        if (aVar == null) {
            FormBody.Builder builder2 = this.f71052j;
            if (builder2 != null) {
                aVar = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.f71051i;
                if (builder3 != null) {
                    aVar = builder3.build();
                } else if (this.f71050h) {
                    aVar = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.f71049g;
        if (mediaType != null) {
            if (aVar != null) {
                aVar = new a(aVar, mediaType);
            } else {
                this.f71048f.add(HttpHeaders.CONTENT_TYPE, mediaType.getMediaType());
            }
        }
        return this.f71047e.url(httpUrlResolve).headers(this.f71048f.build()).method(this.f71043a, aVar);
    }

    void l(RequestBody requestBody) {
        this.f71053k = requestBody;
    }

    void m(Object obj) {
        this.f71045c = obj.toString();
    }
}
