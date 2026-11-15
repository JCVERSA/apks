package okhttp3.logging;

import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001:\u0001UB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0016\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ-\u0010\u001d\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0013H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ'\u0010\"\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010\u000eJ!\u0010'\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J1\u0010+\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J9\u0010/\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u001f\u00103\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J\u001f\u00105\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b5\u00104J\u0017\u00106\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b6\u0010\u000eJ\u001f\u00109\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b;\u0010\u000eJ\u001f\u0010>\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J\u001f\u0010@\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bB\u0010\u000eJ\u001f\u0010E\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bG\u0010\u000eJ\u001f\u0010H\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\bH\u0010?J\u001f\u0010I\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\bI\u0010AJ\u0017\u0010J\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bJ\u0010\u000eJ\u001f\u0010K\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\bK\u0010AJ\u0017\u0010L\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bL\u0010\u000eJ\u001f\u0010M\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bM\u0010FJ\u001f\u0010N\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bN\u0010FJ\u0017\u0010O\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bO\u0010\u000eJ\u001f\u0010Q\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020CH\u0016¢\u0006\u0004\bQ\u0010FR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010RR\u0016\u0010S\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010T¨\u0006V"}, d2 = {"Lokhttp3/logging/LoggingEventListener;", "Lokhttp3/EventListener;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", MethodDecl.initName, "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "", "message", "Lzfb;", "logWithTime", "(Ljava/lang/String;)V", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "callStart", "(Lokhttp3/Call;)V", "Lokhttp3/HttpUrl;", "url", "proxySelectStart", "(Lokhttp3/Call;Lokhttp3/HttpUrl;)V", "", "Ljava/net/Proxy;", "proxies", "proxySelectEnd", "(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V", "domainName", "dnsStart", "(Lokhttp3/Call;Ljava/lang/String;)V", "Ljava/net/InetAddress;", "inetAddressList", "dnsEnd", "(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V", "Ljava/net/InetSocketAddress;", "inetSocketAddress", "proxy", "connectStart", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V", "secureConnectStart", "Lokhttp3/Handshake;", "handshake", "secureConnectEnd", "(Lokhttp3/Call;Lokhttp3/Handshake;)V", "Lokhttp3/Protocol;", "protocol", "connectEnd", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V", "Ljava/io/IOException;", "ioe", "connectFailed", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V", "Lokhttp3/Connection;", "connection", "connectionAcquired", "(Lokhttp3/Call;Lokhttp3/Connection;)V", "connectionReleased", "requestHeadersStart", "Lokhttp3/Request;", Progress.REQUEST, "requestHeadersEnd", "(Lokhttp3/Call;Lokhttp3/Request;)V", "requestBodyStart", "", "byteCount", "requestBodyEnd", "(Lokhttp3/Call;J)V", "requestFailed", "(Lokhttp3/Call;Ljava/io/IOException;)V", "responseHeadersStart", "Lokhttp3/Response;", "response", "responseHeadersEnd", "(Lokhttp3/Call;Lokhttp3/Response;)V", "responseBodyStart", "responseBodyEnd", "responseFailed", "callEnd", "callFailed", "canceled", "satisfactionFailure", "cacheHit", "cacheMiss", "cachedResponse", "cacheConditionalHit", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "startNs", "J", "Factory", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/logging/LoggingEventListener$Factory;", "Lokhttp3/EventListener$Factory;", "logger", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "create", "Lokhttp3/EventListener;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override
        public EventListener create(Call call) {
            y45.j(call, NotificationCompat.CATEGORY_CALL);
            return new LoggingEventListener(this.logger, null);
        }

        public Factory(HttpLoggingInterceptor.Logger logger) {
            y45.j(logger, "logger");
            this.logger = logger;
        }

        public Factory(HttpLoggingInterceptor.Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }
    }

    public LoggingEventListener(HttpLoggingInterceptor.Logger logger, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger);
    }

    private final void logWithTime(String message) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        this.logger.log('[' + millis + " ms] " + message);
    }

    @Override
    public void cacheConditionalHit(Call call, Response cachedResponse) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(cachedResponse, "cachedResponse");
        logWithTime(y45.s("cacheConditionalHit: ", cachedResponse));
    }

    @Override
    public void cacheHit(Call call, Response response) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(response, "response");
        logWithTime(y45.s("cacheHit: ", response));
    }

    @Override
    public void cacheMiss(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("cacheMiss");
    }

    @Override
    public void callEnd(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("callEnd");
    }

    @Override
    public void callFailed(Call call, IOException ioe) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(ioe, "ioe");
        logWithTime(y45.s("callFailed: ", ioe));
    }

    @Override
    public void callStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        this.startNs = System.nanoTime();
        logWithTime(y45.s("callStart: ", call.request()));
    }

    @Override
    public void canceled(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("canceled");
    }

    @Override
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        logWithTime(y45.s("connectEnd: ", protocol));
    }

    @Override
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        y45.j(ioe, "ioe");
        logWithTime("connectFailed: " + protocol + ' ' + ioe);
    }

    @Override
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override
    public void connectionAcquired(Call call, Connection connection) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(connection, "connection");
        logWithTime(y45.s("connectionAcquired: ", connection));
    }

    @Override
    public void connectionReleased(Call call, Connection connection) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override
    public void dnsEnd(Call call, String domainName, List<? extends InetAddress> inetAddressList) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(domainName, "domainName");
        y45.j(inetAddressList, "inetAddressList");
        logWithTime(y45.s("dnsEnd: ", inetAddressList));
    }

    @Override
    public void dnsStart(Call call, String domainName) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(domainName, "domainName");
        logWithTime(y45.s("dnsStart: ", domainName));
    }

    @Override
    public void proxySelectEnd(Call call, HttpUrl url, List<? extends Proxy> proxies) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(url, "url");
        y45.j(proxies, "proxies");
        logWithTime(y45.s("proxySelectEnd: ", proxies));
    }

    @Override
    public void proxySelectStart(Call call, HttpUrl url) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(url, "url");
        logWithTime(y45.s("proxySelectStart: ", url));
    }

    @Override
    public void requestBodyEnd(Call call, long byteCount) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime(y45.s("requestBodyEnd: byteCount=", Long.valueOf(byteCount)));
    }

    @Override
    public void requestBodyStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("requestBodyStart");
    }

    @Override
    public void requestFailed(Call call, IOException ioe) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(ioe, "ioe");
        logWithTime(y45.s("requestFailed: ", ioe));
    }

    @Override
    public void requestHeadersEnd(Call call, Request request) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(request, Progress.REQUEST);
        logWithTime("requestHeadersEnd");
    }

    @Override
    public void requestHeadersStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("requestHeadersStart");
    }

    @Override
    public void responseBodyEnd(Call call, long byteCount) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime(y45.s("responseBodyEnd: byteCount=", Long.valueOf(byteCount)));
    }

    @Override
    public void responseBodyStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("responseBodyStart");
    }

    @Override
    public void responseFailed(Call call, IOException ioe) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(ioe, "ioe");
        logWithTime(y45.s("responseFailed: ", ioe));
    }

    @Override
    public void responseHeadersEnd(Call call, Response response) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(response, "response");
        logWithTime(y45.s("responseHeadersEnd: ", response));
    }

    @Override
    public void responseHeadersStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("responseHeadersStart");
    }

    @Override
    public void satisfactionFailure(Call call, Response response) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(response, "response");
        logWithTime(y45.s("satisfactionFailure: ", response));
    }

    @Override
    public void secureConnectEnd(Call call, Handshake handshake) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime(y45.s("secureConnectEnd: ", handshake));
    }

    @Override
    public void secureConnectStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        logWithTime("secureConnectStart");
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }
}
