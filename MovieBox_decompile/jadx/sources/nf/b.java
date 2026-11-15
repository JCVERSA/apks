package nf;

import com.cloud.tmc.integration.net.UrlKt;
import com.tmc.monitor.AppMonitor;
import com.tmc.network.NetworkConfig;
import com.tmc.network.NetworkMonitor;
import com.tmc.network.stat.ConnectStat;
import com.tmc.network.stat.RequestStat;
import com.tmc.network.strategy.LocalDnsStrategy;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.UnknownHostException;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.TlsVersion;

public final class b extends EventListener {

    public static final a f67264c = new a(null);

    private static final EventListener.Factory f67265d = new EventListener.Factory() {
        @Override
        public final EventListener create(Call call) {
            return b.c(call);
        }
    };

    private RequestStat f67266a;

    private ConnectStat f67267b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EventListener.Factory a() {
            return b.f67265d;
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public b() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final EventListener c(Call it) {
        Intrinsics.h(it, "it");
        return new b(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Override
    public void callEnd(Call call) {
        Intrinsics.h(call, "call");
        super.callEnd(call);
        this.f67266a.setOnewayTime(System.currentTimeMillis() - this.f67266a.getCallStart());
        this.f67267b.setStep(10);
        this.f67266a.setStep(10);
        if (this.f67266a.getIsPre()) {
            return;
        }
        AppMonitor.d().c(this.f67266a);
    }

    @Override
    public void callFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.callFailed(call, ioe);
        this.f67266a.setOnewayTime(System.currentTimeMillis() - this.f67266a.getCallStart());
        this.f67266a.setRet(0);
        this.f67266a.setConnRet(this.f67267b.getRet());
        this.f67266a.setErrMsg(ioe.getMessage());
        this.f67267b.setStep(this.f67266a.getStep());
        if (ioe instanceof UnknownHostException) {
            this.f67266a.setErrCode(-399);
            this.f67267b.setDnsTime(System.currentTimeMillis() - this.f67267b.getDnsStart());
            if (!this.f67267b.getIsPre()) {
                AppMonitor.d().c(this.f67267b);
            }
        } else if (ioe instanceof SSLException) {
            this.f67266a.setErrCode(-402);
        } else if (ioe instanceof ConnectException) {
            this.f67266a.setErrCode(-400);
        } else {
            this.f67266a.setErrCode(-406);
            if (Intrinsics.c(this.f67266a.getErrMsg(), "Canceled")) {
                this.f67266a.setRet(2);
            }
        }
        if (this.f67266a.getIsPre()) {
            return;
        }
        AppMonitor.d().c(this.f67266a);
    }

    @Override
    public void callStart(Call call) {
        Intrinsics.h(call, "call");
        super.callStart(call);
        this.f67266a.setUrl(call.request().url().getUrl());
        this.f67267b.setHost(call.request().url().host());
        this.f67266a.setHost(this.f67267b.getHost());
        this.f67266a.setCallStart(System.currentTimeMillis());
        if (Intrinsics.c(call.request().header("isPre"), "true")) {
            this.f67266a.setPre(true);
            this.f67267b.setPre(true);
        }
        this.f67266a.setRequestChannel(call.request().header(UrlKt.KEY_HEADER_REQUESTCHANNEL));
        this.f67267b.setStep(0);
        this.f67266a.setStep(0);
    }

    @Override
    public void canceled(Call call) {
        Intrinsics.h(call, "call");
        super.canceled(call);
        this.f67266a.setOnewayTime(System.currentTimeMillis() - this.f67266a.getCallStart());
        this.f67266a.setRet(2);
    }

    @Override
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        ConnectStat connectStat = this.f67267b;
        InetAddress address = inetSocketAddress.getAddress();
        connectStat.setIp(address == null ? null : address.getHostAddress());
        this.f67267b.setProtocol(protocol != null ? protocol.name() : null);
        this.f67267b.setRet(1);
        this.f67267b.setConnTime(System.currentTimeMillis() - this.f67267b.getConnectStart());
        this.f67266a.setConnWaitTime(this.f67267b.getConnTime());
        ConnectStat connectStat2 = this.f67267b;
        connectStat2.setTcpTime(connectStat2.getConnTime() - this.f67267b.getTlsTime());
        this.f67266a.setTcpTime(this.f67267b.getTcpTime());
        this.f67267b.setStep(this.f67266a.getStep());
        if (this.f67267b.getIsPre()) {
            return;
        }
        AppMonitor.d().c(this.f67267b);
    }

    @Override
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        Intrinsics.h(ioe, "ioe");
        super.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        this.f67267b.setConnTime(System.currentTimeMillis() - this.f67267b.getConnectStart());
        this.f67266a.setConnWaitTime(this.f67267b.getConnTime());
        this.f67267b.setRet(0);
        this.f67267b.setErrMsg(ioe.getMessage());
        if (ioe instanceof SSLPeerUnverifiedException) {
            this.f67267b.setErrCode(-402);
            String message = ioe.getMessage();
            if (message != null && StringsKt.a0(message, "Certificate pinning failure!", true)) {
                this.f67267b.setPinning(true);
                this.f67266a.setPinning(true);
            }
        } else if (ioe instanceof SSLException) {
            this.f67267b.setErrCode(-402);
        } else if (ioe instanceof ConnectException) {
            this.f67267b.setErrCode(-400);
        } else {
            this.f67267b.setErrCode(-406);
        }
        this.f67267b.setStep(this.f67266a.getStep());
        if (!this.f67267b.getIsPre()) {
            AppMonitor.d().c(this.f67267b);
        }
        LocalDnsStrategy localDnsStrategyA = LocalDnsStrategy.f39836c.a();
        String hostName = inetSocketAddress.getHostName();
        Intrinsics.g(hostName, "inetSocketAddress.hostName");
        InetAddress address = inetSocketAddress.getAddress();
        Intrinsics.g(address, "inetSocketAddress.address");
        localDnsStrategyA.i(hostName, address);
    }

    @Override
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectStart(call, inetSocketAddress, proxy);
        this.f67267b.setConnectStart(System.currentTimeMillis());
        this.f67267b.setStep(2);
        this.f67266a.setStep(2);
        this.f67267b.setIp(inetSocketAddress.getAddress().getHostAddress());
        this.f67266a.setIp(this.f67267b.getIp());
    }

    @Override
    public void connectionAcquired(Call call, Connection connection) {
        TlsVersion tlsVersion;
        String strName;
        Intrinsics.h(call, "call");
        Intrinsics.h(connection, "connection");
        super.connectionAcquired(call, connection);
        this.f67266a.setConnRet(1);
        this.f67266a.setIp(connection.getRoute().socketAddress().getAddress().getHostAddress());
        this.f67266a.setProtocol(connection.protocol().name());
        CertificatePinner certificatePinner = connection.getRoute().address().certificatePinner();
        List<CertificatePinner.Pin> listFindMatchingPins = certificatePinner == null ? null : certificatePinner.findMatchingPins(connection.getRoute().address().url().host());
        if (listFindMatchingPins != null && !listFindMatchingPins.isEmpty()) {
            this.f67267b.setPinning(true);
            this.f67266a.setPinning(true);
        }
        RequestStat requestStat = this.f67266a;
        Handshake handshake = connection.getHandshake();
        String str = "";
        if (handshake != null && (tlsVersion = handshake.tlsVersion()) != null && (strName = tlsVersion.name()) != null) {
            str = strName;
        }
        requestStat.setTlsVersion(str);
        this.f67267b.setTlsVersion(this.f67266a.getTlsVersion());
    }

    @Override
    public void dnsEnd(Call call, String domainName, List inetAddressList) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        Intrinsics.h(inetAddressList, "inetAddressList");
        super.dnsEnd(call, domainName, inetAddressList);
        this.f67267b.setDnsTime(System.currentTimeMillis() - this.f67267b.getDnsStart());
        this.f67266a.setDnsTime(this.f67267b.getDnsTime());
    }

    @Override
    public void dnsStart(Call call, String domainName) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        super.dnsStart(call, domainName);
        this.f67267b.setDnsStart(System.currentTimeMillis());
        this.f67267b.setStep(1);
        this.f67266a.setStep(1);
    }

    @Override
    public void requestBodyEnd(Call call, long j10) {
        Intrinsics.h(call, "call");
        super.requestBodyEnd(call, j10);
        this.f67266a.setReqBodyTime(System.currentTimeMillis() - this.f67266a.getReqBodyStart());
        this.f67266a.setSendDataEnd(System.currentTimeMillis());
        this.f67266a.setSendDataTime(System.currentTimeMillis() - this.f67266a.getReqHeaderStart());
        this.f67267b.setStep(6);
        this.f67266a.setStep(6);
    }

    @Override
    public void requestBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestBodyStart(call);
        this.f67266a.setReqBodyStart(System.currentTimeMillis());
        this.f67267b.setStep(5);
        this.f67266a.setStep(5);
    }

    @Override
    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.requestFailed(call, ioe);
        this.f67266a.setRet(0);
    }

    @Override
    public void requestHeadersEnd(Call call, Request request) {
        Intrinsics.h(call, "call");
        Intrinsics.h(request, "request");
        super.requestHeadersEnd(call, request);
        this.f67266a.setReqHeaderTime(System.currentTimeMillis() - this.f67266a.getReqHeaderStart());
        this.f67266a.setSendDataEnd(System.currentTimeMillis());
        RequestStat requestStat = this.f67266a;
        requestStat.setSendDataTime(requestStat.getReqHeaderTime());
    }

    @Override
    public void requestHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestHeadersStart(call);
        this.f67266a.setReqHeaderStart(System.currentTimeMillis());
        this.f67267b.setStep(4);
        this.f67266a.setStep(4);
    }

    @Override
    public void responseBodyEnd(Call call, long j10) {
        Intrinsics.h(call, "call");
        super.responseBodyEnd(call, j10);
        this.f67266a.setRecvBodySize(j10);
        this.f67266a.setRecvDataTime(System.currentTimeMillis() - this.f67266a.getSendDataEnd());
    }

    @Override
    public void responseBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseBodyStart(call);
        this.f67267b.setStep(8);
        this.f67266a.setStep(8);
    }

    @Override
    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.responseFailed(call, ioe);
        this.f67266a.setRet(0);
    }

    @Override
    public void responseHeadersEnd(Call call, Response response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        super.responseHeadersEnd(call, response);
        this.f67266a.setResHeaderTime(System.currentTimeMillis() - this.f67266a.getResHeaderStart());
        String strHeader$default = Response.header$default(response, "X-Cache", null, 2, null);
        this.f67266a.setXCache("miss");
        if (strHeader$default != null && StringsKt.a0(strHeader$default, "hit", true)) {
            this.f67266a.setXCache("hit");
        }
        this.f67266a.setRequestSrc(Response.header$default(response, "x-request-cdn", null, 2, null));
        this.f67266a.setRequestLLID(Response.header$default(response, "X-LLID", null, 2, null));
        this.f67266a.setEagleId(Response.header$default(response, "EagleId", null, 2, null));
    }

    @Override
    public void responseHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseHeadersStart(call);
        this.f67266a.setRet(1);
        this.f67266a.setFirstDataTime(System.currentTimeMillis() - this.f67266a.getSendDataEnd());
        this.f67266a.setResHeaderStart(System.currentTimeMillis());
        this.f67267b.setStep(7);
        this.f67266a.setStep(7);
    }

    @Override
    public void secureConnectEnd(Call call, Handshake handshake) {
        Intrinsics.h(call, "call");
        super.secureConnectEnd(call, handshake);
        this.f67267b.setTlsTime(System.currentTimeMillis() - this.f67267b.getTlsStart());
        this.f67266a.setTlsTime(this.f67267b.getTlsTime());
    }

    @Override
    public void secureConnectStart(Call call) {
        Intrinsics.h(call, "call");
        super.secureConnectStart(call);
        this.f67267b.setTlsStart(System.currentTimeMillis());
        this.f67267b.setStep(3);
        this.f67266a.setStep(3);
    }

    public b(RequestStat requestStat, ConnectStat connectStat, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new RequestStat() : requestStat, (i10 & 2) != 0 ? new ConnectStat() : connectStat);
    }

    public b(RequestStat requestStat, ConnectStat connectStat) {
        Intrinsics.h(requestStat, "requestStat");
        Intrinsics.h(connectStat, "connectStat");
        this.f67266a = requestStat;
        this.f67267b = connectStat;
        NetworkMonitor networkMonitor = NetworkMonitor.INSTANCE;
        connectStat.setNetworkConnected(networkMonitor.isConnected());
        this.f67267b.setNetStatus(networkMonitor.getNetworkStatus());
        this.f67266a.setNetStatus(this.f67267b.getNetStatus());
        this.f67266a.setNetworkConnected(this.f67267b.getIsNetworkConnected());
        ConnectStat connectStat2 = this.f67267b;
        NetworkConfig networkConfig = NetworkConfig.INSTANCE;
        connectStat2.setAppName(networkConfig.getPackageName());
        this.f67266a.setAppName(networkConfig.getPackageName());
        this.f67266a.setNetworkType(networkMonitor.getNetworkType());
        this.f67267b.setNetworkType(networkMonitor.getNetworkType());
        this.f67266a.setNetworkImprove(networkConfig.isNetworkImproveEnable());
        this.f67267b.setNetworkImprove(networkConfig.isNetworkImproveEnable());
    }
}
