package defpackage;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.Progress;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.random.Random;
import okhttp3.Headers;
import org.apache.commons.lang3.BooleanUtils;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UrlResponseInfo;

public final class ml1 {
    public static final ml1 a = new ml1();

    public final boolean a() {
        uz6 uz6Var = uz6.a;
        return uz6Var.f() || SystemClock.uptimeMillis() - uz6Var.b() > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(RequestFinishedInfo requestFinishedInfo, int i, String str, String str2, boolean z, boolean z2, boolean z3) {
        int i2;
        int iB;
        List<String> list;
        List<String> list2;
        Object next;
        String strSubstring;
        int i3;
        y45.j(requestFinishedInfo, "requestInfo");
        y45.j(str, "channel");
        y45.j(str2, Progress.TAG);
        if (z2 && requestFinishedInfo.getFinishedReason() == 2) {
            return;
        }
        UrlResponseInfo responseInfo = requestFinishedInfo.getResponseInfo();
        String negotiatedProtocol = responseInfo != null ? responseInfo.getNegotiatedProtocol() : null;
        if (negotiatedProtocol == null) {
            negotiatedProtocol = "";
        }
        uq6 uq6VarA = uq6.J.a(i, str);
        uq6VarA.V(2);
        uq6VarA.Z(negotiatedProtocol);
        UrlResponseInfo responseInfo2 = requestFinishedInfo.getResponseInfo();
        int httpStatusCode = responseInfo2 != null ? responseInfo2.getHttpStatusCode() : 480;
        RequestFinishedInfo.Metrics metrics = requestFinishedInfo.getMetrics();
        int iN = wn8.n(new u15(1, 10), Random.Default);
        String string = requestFinishedInfo.getUrl().toString();
        uq6VarA.P(iN <= 2 ? string : "");
        try {
            Collection<Object> annotations = requestFinishedInfo.getAnnotations();
            y45.i(annotations, "requestInfo.annotations");
            Iterator<T> it = annotations.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(next instanceof Headers));
            Headers headers = next instanceof Headers ? (Headers) next : null;
            if (headers != null) {
                String str3 = headers.get("isDownload");
                if (str3 != null) {
                    int iHashCode = str3.hashCode();
                    if (iHashCode != 84) {
                        if (iHashCode == 3569038 && str3.equals(BooleanUtils.TRUE)) {
                            i3 = 1;
                        } else {
                            i3 = 0;
                        }
                    } else if (str3.equals("T")) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    uq6VarA.l0(i3);
                }
                uq6VarA.X(y45.e(headers.get("offlineAd"), "1") ? 1 : 0);
            } else {
                headers = null;
            }
            String str4 = headers != null ? headers.get("infoeyes-tag") : null;
            if (str4 == null) {
                str4 = str2;
            }
            uq6VarA.O(str4);
            if (uq6VarA.G() == 0 && j1a.X(string, "?", false, 2, null)) {
                i2 = 0;
                try {
                    strSubstring = string.substring(0, j1a.m0(string, "?", 0, false, 6, null));
                    y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                } catch (Exception e) {
                    e = e;
                    String message = e.getMessage();
                    if (message != null) {
                        dk3.c(message);
                    }
                }
            } else {
                i2 = 0;
                strSubstring = string;
            }
            uq6VarA.g0(strSubstring);
            String host = new URL(string).getHost();
            String path = new URL(string).getPath();
            y45.i(host, SerializableCookie.HOST);
            uq6VarA.U(host);
            y45.i(path, "path");
            uq6VarA.Y(path);
        } catch (Exception e2) {
            e = e2;
            i2 = 0;
        }
        if (requestFinishedInfo.getFinishedReason() == 0) {
            uq6VarA.I(1);
            Date dnsStart = metrics.getDnsStart();
            long time = dnsStart != null ? dnsStart.getTime() : 0L;
            Date dnsEnd = metrics.getDnsEnd();
            uq6VarA.R((dnsEnd != null ? dnsEnd.getTime() : 0L) - time);
            Date sslStart = metrics.getSslStart();
            long time2 = sslStart != null ? sslStart.getTime() : 0L;
            Date sslEnd = metrics.getSslEnd();
            uq6VarA.i0((sslEnd != null ? sslEnd.getTime() : 0L) - time2);
            Date connectStart = metrics.getConnectStart();
            long time3 = connectStart != null ? connectStart.getTime() : 0L;
            Date connectEnd = metrics.getConnectEnd();
            uq6VarA.j0((connectEnd != null ? connectEnd.getTime() : 0L) - time3);
            Date sendingStart = metrics.getSendingStart();
            long time4 = sendingStart != null ? sendingStart.getTime() : 0L;
            Date sendingEnd = metrics.getSendingEnd();
            long time5 = sendingEnd != null ? sendingEnd.getTime() : 0L;
            uq6VarA.f0(time5 - time4);
            Date responseStart = metrics.getResponseStart();
            long time6 = responseStart != null ? responseStart.getTime() : 0L;
            Date requestEnd = metrics.getRequestEnd();
            uq6VarA.a0((requestEnd != null ? requestEnd.getTime() : 0L) - time6);
            uq6VarA.m0(time6 - time5);
            Long receivedByteCount = metrics.getReceivedByteCount();
            uq6VarA.e0(receivedByteCount == null ? 0L : receivedByteCount.longValue());
            Long sentByteCount = metrics.getSentByteCount();
            uq6VarA.b0(sentByteCount == null ? 0L : sentByteCount.longValue());
            UrlResponseInfo responseInfo3 = requestFinishedInfo.getResponseInfo();
            Map<String, List<String>> allHeaders = responseInfo3 != null ? responseInfo3.getAllHeaders() : null;
            List<String> list3 = allHeaders != null ? allHeaders.get("Content-Encoding") : null;
            if (list3 != null) {
                Iterator<String> it2 = list3.iterator();
                if (it2.hasNext()) {
                    String next2 = it2.next();
                    y45.i(next2, "contentEncoding");
                    uq6VarA.Q(next2);
                }
            }
            String str5 = (allHeaders == null || (list2 = allHeaders.get("server-time")) == null) ? null : list2.get(i2);
            if (str5 == null) {
                str5 = "0";
            }
            uq6VarA.h0(Long.parseLong(str5));
            Long totalTimeMs = metrics.getTotalTimeMs();
            uq6VarA.c0(totalTimeMs == null ? 0L : totalTimeMs.longValue());
            if (uq6VarA.G() == 1) {
                String str6 = (allHeaders == null || (list = allHeaders.get("x-response-cdn")) == null) ? null : list.get(i2);
                uq6VarA.K(str6 == null ? "" : str6);
                Date requestStart = metrics.getRequestStart();
                uq6VarA.L(time6 - (requestStart != null ? requestStart.getTime() : 0L));
                uq6VarA.J(uq6VarA.u());
                uq6VarA.M(String.valueOf((uq6VarA.y() / 1024.0f) / (uq6VarA.u() / 1000.0f)));
            }
        } else {
            uq6VarA.I(2);
            boolean z4 = requestFinishedInfo.getFinishedReason() != 2 ? i2 : 1;
            CronetException exception = requestFinishedInfo.getException();
            String message2 = exception != null ? exception.getMessage() : null;
            String str7 = message2 == null ? "" : message2;
            if (requestFinishedInfo.getException() instanceof NetworkException) {
                CronetException exception2 = requestFinishedInfo.getException();
                y45.h(exception2, "null cannot be cast to non-null type org.chromium.net.NetworkException");
                NetworkException networkException = (NetworkException) exception2;
                if (a()) {
                    uz6 uz6Var = uz6.a;
                    if (!uz6Var.g()) {
                        str7 = "Network disconnect";
                        httpStatusCode = 1020;
                    } else if (uz6Var.e()) {
                        iB = 1021;
                        str7 = "Fake Network";
                    } else {
                        iB = z41.a.b(httpStatusCode, networkException, z4);
                    }
                } else {
                    iB = z41.a.b(httpStatusCode, networkException, z4);
                }
                httpStatusCode = iB;
            } else {
                httpStatusCode = z4 != 0 ? 1050 : 480;
            }
            uq6VarA.T(str7);
        }
        uq6VarA.S(httpStatusCode);
        if (z || httpStatusCode == 304) {
            return;
        }
        if (z3 && httpStatusCode == 1020) {
            return;
        }
        dk3.g(uq6VarA);
    }
}
