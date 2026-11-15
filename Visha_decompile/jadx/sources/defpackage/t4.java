package defpackage;

import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.cloud_drive.base.network.RequestErrorCode;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import org.json.JSONObject;

public final class t4 implements Interceptor {
    public final jpa b;
    public final String c = RtspHeaders.AUTHORIZATION;

    public t4(jpa jpaVar) {
        this.b = jpaVar;
    }

    public final boolean a(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, wn8.h(buffer.size(), 64L));
            for (int i = 0; i < 16 && !buffer2.exhausted(); i++) {
                int utf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        ResponseBody responseBodyBody;
        y45.j(chain, "chain");
        if (this.b == null) {
            return chain.proceed(chain.request());
        }
        Request request = chain.request();
        if (kt8.a(request)) {
            return chain.proceed(chain.request());
        }
        Request.Builder builderNewBuilder = request.newBuilder();
        String strA = this.b.a();
        builderNewBuilder.addHeader(this.c, strA);
        Response responseProceed = chain.proceed(builderNewBuilder.build());
        if (!responseProceed.isSuccessful() || (responseBodyBody = responseProceed.body()) == null) {
            return responseProceed;
        }
        responseBodyBody.getContentLength();
        MediaType mediaType = responseBodyBody.get$contentType();
        if (mediaType == null || !y45.e(mediaType.getMediaType(), "application/json")) {
            return responseProceed;
        }
        BufferedSource bodySource = responseBodyBody.getBodySource();
        bodySource.request(Long.MAX_VALUE);
        Buffer buffer = bodySource.getBuffer();
        if (g1a.E("gzip", responseProceed.headers().get("Content-Encoding"), true)) {
            buffer.size();
            GzipSource gzipSource = new GzipSource(buffer.clone());
            try {
                buffer = new Buffer();
                buffer.writeAll(gzipSource);
                ly0.a(gzipSource, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(gzipSource, th);
                    throw th2;
                }
            }
        }
        if (!a(buffer)) {
            return responseProceed;
        }
        Charset charset = StandardCharsets.UTF_8;
        Charset charset2 = mediaType.charset(charset);
        if (charset2 == null) {
            y45.i(charset, "UTF_8");
        } else {
            charset = charset2;
        }
        try {
            if (new JSONObject(buffer.clone().readString(charset)).optInt(TrackingKey.CODE, 0) != RequestErrorCode.LOGIN_OUT.getCode()) {
                return responseProceed;
            }
            String strA2 = this.b.a();
            if (y45.e(strA2, strA) || j1a.o0(strA2)) {
                return responseProceed;
            }
            Util.closeQuietly(responseBodyBody);
            return chain.proceed(request.newBuilder().addHeader(this.c, strA2).build());
        } catch (Throwable th3) {
            oq5.a.b("AccessTokenInterceptor", th3);
            return responseProceed;
        }
    }
}
