package defpackage;

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
import org.apache.commons.text.StringSubstitutor;

public final class at8 {
    public static final char[] l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final Pattern m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");
    public final String a;
    public final HttpUrl b;
    public String c;
    public HttpUrl.Builder d;
    public final Request.Builder e = new Request.Builder();
    public final Headers.Builder f;
    public MediaType g;
    public final boolean h;
    public MultipartBody.Builder i;
    public FormBody.Builder j;
    public RequestBody k;

    public static class a extends RequestBody {
        public final RequestBody a;
        public final MediaType b;

        public a(RequestBody requestBody, MediaType mediaType) {
            this.a = requestBody;
            this.b = mediaType;
        }

        @Override
        public long contentLength() {
            return this.a.contentLength();
        }

        @Override
        public MediaType getContentType() {
            return this.b;
        }

        @Override
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.a.writeTo(bufferedSink);
        }
    }

    public at8(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.a = str;
        this.b = httpUrl;
        this.c = str2;
        this.g = mediaType;
        this.h = z;
        if (headers != null) {
            this.f = headers.newBuilder();
        } else {
            this.f = new Headers.Builder();
        }
        if (z2) {
            this.j = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.i = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    public static String i(String str, boolean z) throws EOFException {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, iCharCount);
                j(buffer, str, iCharCount, length, z);
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    public static void j(Buffer buffer, String str, int i, int i2, boolean z) throws EOFException {
        Buffer buffer2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    while (!buffer2.exhausted()) {
                        byte b = buffer2.readByte();
                        buffer.writeByte(37);
                        char[] cArr = l;
                        buffer.writeByte((int) cArr[((b & 255) >> 4) & 15]);
                        buffer.writeByte((int) cArr[b & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public void a(String str, String str2, boolean z) {
        if (z) {
            this.j.addEncoded(str, str2);
        } else {
            this.j.add(str, str2);
        }
    }

    public void b(String str, String str2, boolean z) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            if (z) {
                this.f.addUnsafeNonAscii(str, str2);
                return;
            } else {
                this.f.add(str, str2);
                return;
            }
        }
        try {
            this.g = MediaType.get(str2);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Malformed content type: " + str2, e);
        }
    }

    public void c(Headers headers) {
        this.f.addAll(headers);
    }

    public void d(Headers headers, RequestBody requestBody) {
        this.i.addPart(headers, requestBody);
    }

    public void e(MultipartBody.Part part) {
        this.i.addPart(part);
    }

    public void f(String str, String str2, boolean z) throws EOFException {
        if (this.c == null) {
            throw new AssertionError();
        }
        String strI = i(str2, z);
        String strReplace = this.c.replace("{" + str + StringSubstitutor.DEFAULT_VAR_END, strI);
        if (!m.matcher(strReplace).matches()) {
            this.c = strReplace;
            return;
        }
        throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
    }

    public void g(String str, String str2, boolean z) {
        String str3 = this.c;
        if (str3 != null) {
            HttpUrl.Builder builderNewBuilder = this.b.newBuilder(str3);
            this.d = builderNewBuilder;
            if (builderNewBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.b + ", Relative: " + this.c);
            }
            this.c = null;
        }
        if (z) {
            this.d.addEncodedQueryParameter(str, str2);
        } else {
            this.d.addQueryParameter(str, str2);
        }
    }

    public void h(Class cls, Object obj) {
        this.e.tag(cls, obj);
    }

    public Request.Builder k() {
        HttpUrl httpUrlResolve;
        HttpUrl.Builder builder = this.d;
        if (builder != null) {
            httpUrlResolve = builder.build();
        } else {
            httpUrlResolve = this.b.resolve(this.c);
            if (httpUrlResolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.b + ", Relative: " + this.c);
            }
        }
        RequestBody aVar = this.k;
        if (aVar == null) {
            FormBody.Builder builder2 = this.j;
            if (builder2 != null) {
                aVar = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.i;
                if (builder3 != null) {
                    aVar = builder3.build();
                } else if (this.h) {
                    aVar = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.g;
        if (mediaType != null) {
            if (aVar != null) {
                aVar = new a(aVar, mediaType);
            } else {
                this.f.add("Content-Type", mediaType.getMediaType());
            }
        }
        return this.e.url(httpUrlResolve).headers(this.f.build()).method(this.a, aVar);
    }

    public void l(RequestBody requestBody) {
        this.k = requestBody;
    }

    public void m(Object obj) {
        this.c = obj.toString();
    }
}
