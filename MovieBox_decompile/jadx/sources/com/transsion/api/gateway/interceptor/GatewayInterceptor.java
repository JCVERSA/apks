package com.transsion.api.gateway.interceptor;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.api.gateway.GateWaySdk;
import com.transsion.api.gateway.analytics.a;
import com.transsion.api.gateway.bean.GatewayResponse;
import com.transsion.api.gateway.bean.GatewayStrategy;
import com.transsion.api.gateway.bean.TimeBean;
import com.transsion.api.gateway.config.b;
import com.transsion.api.gateway.dns.GateWayDns;
import com.transsion.api.gateway.sercurity.c;
import com.transsion.api.gateway.sercurity.d;
import com.transsion.api.gateway.utils.ContextUtils;
import com.transsion.api.gateway.utils.GatewayUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import java.io.IOException;
import java.util.List;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;

public class GatewayInterceptor implements Interceptor {
    public boolean isReadResponse = false;
    public Response mResponse = null;
    public long startNs;

    private Request changeRequestUrl(Interceptor.Chain chain, GatewayStrategy gatewayStrategy, a aVar) {
        Request request = chain.request();
        if (gatewayStrategy == null) {
            return request;
        }
        HttpUrl httpUrlBuild = request.url().newBuilder().host(GateWaySdk.getHost()).build();
        if (gatewayStrategy.isUseOriginHost() && !TextUtils.isEmpty(aVar.f41363i)) {
            httpUrlBuild = httpUrlBuild.newBuilder().host(aVar.f41363i).build();
        }
        aVar.f41357c = gatewayStrategy.isNoDns();
        Request.Builder builderNewBuilder = request.newBuilder().url(httpUrlBuild).build().newBuilder();
        if (!gatewayStrategy.isUseOriginHost() && !TextUtils.isEmpty(aVar.f41363i)) {
            builderNewBuilder.addHeader(HttpHeaders.HOST, aVar.f41363i + ":443");
            GateWayDns.getInstance().setIsUseGatewayDns(gatewayStrategy.isNoDns());
        }
        return builderNewBuilder.build();
    }

    private Response doGatewayJob(Interceptor.Chain chain, a aVar) throws Exception {
        Response responseProceed;
        GatewayUtils.L.d(" gateway request：" + this.startNs);
        List list = b.a().f41389a.f41377k;
        int i10 = 0;
        aVar.f41360f = changeRequestUrl(chain, (GatewayStrategy) list.get(0), aVar).url().host();
        try {
            responseProceed = chain.proceed(doGzipOrSign(chain.request()));
        } catch (IOException e10) {
            GatewayUtils.L.e("request fail, reason:" + e10);
            if (list.size() <= 1) {
                setRequestResult(e10.toString(), aVar);
                throw e10;
            }
            responseProceed = null;
        }
        long timeOffset = getTimeOffset(responseProceed);
        if (timeOffset > 0) {
            SafeStringUtils.getInstance(ContextUtils.getContext()).saveLong("time_offset", timeOffset - System.currentTimeMillis());
            try {
                responseProceed = chain.proceed(doGzipOrSign(chain.request()));
            } catch (Exception e11) {
                if (list.size() <= 1) {
                    setRequestResult(e11.toString(), aVar);
                    throw e11;
                }
            }
        }
        while (responseProceed == null && i10 < list.size() - 1) {
            i10++;
            Request requestChangeRequestUrl = changeRequestUrl(chain, (GatewayStrategy) list.get(i10), aVar);
            aVar.f41364j = i10;
            try {
                responseProceed = chain.proceed(doGzipOrSign(requestChangeRequestUrl));
            } catch (IOException e12) {
                GatewayUtils.L.d("gateway request fail  ");
                GatewayUtils.L.d("gateway request count: " + i10 + "reason" + e12.toString() + "duration" + (System.currentTimeMillis() - this.startNs));
                if (i10 >= list.size() - 1) {
                    GatewayUtils.L.d("gateway request count: : " + i10 + "reason" + e12.toString());
                    setRequestResult(e12.toString(), aVar);
                    throw e12;
                }
            }
        }
        recordResponse(responseProceed, aVar);
        GatewayUtils.L.d(" gateway request success, duration：" + (System.currentTimeMillis() - this.startNs) + "gateway retry count" + i10);
        return responseProceed;
    }

    private Request doGzipOrSign(Request request) {
        String str;
        String strHex;
        GatewayUtils.L.d("do sign");
        Request.Builder builderNewBuilder = request.newBuilder();
        long jCurrentTimeMillis = System.currentTimeMillis() + SafeStringUtils.getInstance(ContextUtils.getContext()).getLong("time_offset");
        c cVar = new c(new com.transsion.api.gateway.sercurity.a(GateWaySdk.getSecret()));
        Request requestBuild = builderNewBuilder.build();
        StringBuilder sb2 = new StringBuilder();
        String str2 = requestBuild.headers().get("accept");
        String mediaType = requestBuild.headers().get("content-type");
        String strValueOf = requestBuild.headers().get(BufferQueue.CONTENT_LENGTH);
        try {
            if (requestBuild.body() != null && TextUtils.isEmpty(mediaType)) {
                mediaType = requestBuild.body().getContentType().getMediaType();
            }
        } catch (Exception unused) {
        }
        String str3 = mediaType;
        try {
            if (requestBuild.body() != null && TextUtils.isEmpty(strValueOf)) {
                strValueOf = String.valueOf(requestBuild.body().contentLength());
            }
        } catch (Exception unused2) {
        }
        if (requestBuild.body() != null) {
            GatewayUtils.L.d("request body is not null");
            try {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                Request requestBuild2 = requestBuild.newBuilder().build();
                Buffer buffer = new Buffer();
                if (requestBuild2.body() != null) {
                    requestBuild2.body().writeTo(buffer);
                }
                if (Integer.parseInt(strValueOf) > 102400) {
                    Buffer buffer2 = new Buffer();
                    buffer.copyTo(buffer2, 0L, OSSConstants.MIN_PART_SIZE_LIMIT);
                    strHex = buffer2.md5().hex();
                } else {
                    strHex = buffer.md5().hex();
                }
                str = strHex;
                try {
                    GatewayUtils.L.d("md5 duration" + (System.currentTimeMillis() - jCurrentTimeMillis2));
                } catch (Exception e10) {
                    e = e10;
                    GatewayUtils.L.e("generateContent exception" + e.toString());
                }
            } catch (Exception e11) {
                e = e11;
                str = "";
            }
        } else {
            GatewayUtils.L.d("request body is null");
            str = "";
        }
        sb2.append(requestBuild.method().toUpperCase());
        sb2.append("\n");
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append("\n");
        if (str3 == null) {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append("\n");
        if (strValueOf == null) {
            strValueOf = "";
        }
        sb2.append(strValueOf);
        sb2.append("\n");
        sb2.append(jCurrentTimeMillis);
        sb2.append("\n");
        sb2.append(TextUtils.isEmpty(str) ? "" : str);
        sb2.append("\n");
        StringBuilder sb3 = new StringBuilder();
        sb3.append(requestBuild.url().uri().getPath());
        if (!TextUtils.isEmpty(requestBuild.url().uri().getQuery())) {
            String strA = cVar.a(requestBuild.url().uri().getQuery());
            if (!TextUtils.isEmpty(strA)) {
                GatewayUtils.L.d("formatedUrl" + strA);
                sb3.append(UrlUtils.QUESTION_MARK);
                sb3.append(strA);
            }
        }
        sb2.append(sb3.toString());
        GatewayUtils.L.d(sb2.toString());
        String string = sb2.toString();
        String str4 = requestBuild.headers().get("x-tr-signature-method");
        String strA2 = cVar.f41404a.a((str4 == null || str4.isEmpty()) ? d.HmacMD5 : d.valueOf(str4), string);
        builderNewBuilder.removeHeader("x-tr-signature");
        builderNewBuilder.addHeader("x-tr-signature", jCurrentTimeMillis + "|2|" + strA2);
        GatewayUtils.L.d("x-tr-signature: " + jCurrentTimeMillis + "|2|" + strA2);
        Request requestBuild3 = builderNewBuilder.build();
        if (request.body() == null || request.header(HttpHeaders.CONTENT_ENCODING) != null) {
            return requestBuild3;
        }
        return !request.url().uri().getPath().contains("/gateway/metric/add") ? requestBuild3 : requestBuild3.newBuilder().header(HttpHeaders.CONTENT_ENCODING, "gzip").method(request.method(), gzip(request.body())).build();
    }

    private long getTimeOffset(Response response) {
        if (response != null) {
            try {
                if (!response.isSuccessful() && response.body() != null && response.code() == 500) {
                    this.isReadResponse = true;
                    String strString = response.body().string();
                    this.mResponse = response.newBuilder().body(ResponseBody.create(response.body().get$contentType(), strString)).build();
                    GatewayUtils.L.d("responseString:" + strString);
                    GatewayResponse gatewayResponse = (GatewayResponse) com.transsion.json.b.a(strString, GatewayResponse.class);
                    if ("GW.4410".equals(gatewayResponse.errorCode)) {
                        GatewayUtils.L.d("verify sign failed, retrying update time");
                        return ((TimeBean) com.transsion.json.b.a(com.transsion.api.gateway.dns.a.a(gatewayResponse.errorMsg), TimeBean.class)).time;
                    }
                }
            } catch (Exception e10) {
                GatewayUtils.L.e(e10);
            }
        }
        return 0L;
    }

    private RequestBody gzip(final RequestBody requestBody) {
        return new RequestBody() {
            @Override
            public MediaType getContentType() {
                return requestBody.getContentType();
            }

            @Override
            public void writeTo(BufferedSink bufferedSink) throws IOException {
                BufferedSink bufferedSinkBuffer = Okio.buffer(new GzipSink(bufferedSink));
                requestBody.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.close();
            }
        };
    }

    private void recordRequest(Request request, a aVar) {
        long jContentLength;
        if (request == null || TextUtils.isEmpty(request.url().getUrl())) {
            return;
        }
        aVar.f41358d = true;
        aVar.f41360f = request.url().host();
        aVar.f41362h = request.url().getUrl();
        aVar.f41363i = request.url().host();
        aVar.f41361g = request.url().uri().getPath();
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody == null) {
            GatewayUtils.L.d("recordRequest, request body is null");
            aVar.f41359e = request.url().getUrl().getBytes().length;
            return;
        }
        try {
            jContentLength = requestBodyBody.contentLength();
            try {
                GatewayUtils.L.d("recordRequest, request length is " + jContentLength);
            } catch (IOException e10) {
                e = e10;
                GatewayUtils.L.d("recordRequest exception: " + e.toString());
            }
        } catch (IOException e11) {
            e = e11;
            jContentLength = 0;
        }
        if (jContentLength > 0) {
            aVar.f41359e = jContentLength;
        } else {
            aVar.f41359e = request.url().getUrl().getBytes().length;
        }
    }

    private void recordResponse(Response response, a aVar) {
        if (response == null) {
            return;
        }
        aVar.f41365k = response.code();
        if (response.isSuccessful()) {
            setRequestResult(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, aVar);
        }
    }

    private void setRequestResult(String str, a aVar) {
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response response;
        if (!GateWaySdk.getIsInited()) {
            return chain.proceed(chain.request());
        }
        this.startNs = System.currentTimeMillis();
        this.isReadResponse = false;
        GatewayUtils.L.d(" request start time：" + this.startNs);
        a aVar = new a();
        recordRequest(chain.request(), aVar);
        if (GatewayUtils.canUseGateWay(aVar.f41360f, aVar.f41361g)) {
            return doGatewayJob(chain, aVar);
        }
        GatewayUtils.L.d("transparent request：" + this.startNs);
        try {
            Response responseProceed = chain.proceed(doGzipOrSign(chain.request()));
            long jCurrentTimeMillis = System.currentTimeMillis();
            long timeOffset = getTimeOffset(responseProceed);
            if (timeOffset > 0) {
                this.isReadResponse = false;
                this.mResponse = null;
                SafeStringUtils.getInstance(ContextUtils.getContext()).saveLong("time_offset", timeOffset - System.currentTimeMillis());
                try {
                    responseProceed = chain.proceed(doGzipOrSign(chain.request()));
                    GatewayUtils.L.d("retry for timeoffset duration：" + (System.currentTimeMillis() - jCurrentTimeMillis));
                } catch (IOException e10) {
                    GatewayUtils.L.e(e10);
                    setRequestResult(e10.toString(), aVar);
                    GatewayUtils.L.d("request fail, duration：" + (System.currentTimeMillis() - this.startNs));
                    throw e10;
                }
            }
            recordResponse(responseProceed, aVar);
            if (aVar.f41365k == 200) {
                GatewayUtils.L.d(" request success, duration：" + (System.currentTimeMillis() - this.startNs));
            } else {
                GatewayUtils.L.d(" request fail, code:  " + aVar.f41365k);
            }
            return (!this.isReadResponse || (response = this.mResponse) == null) ? responseProceed : response;
        } catch (IOException e11) {
            GatewayUtils.L.e(e11);
            setRequestResult(e11.toString(), aVar);
            GatewayUtils.L.d("request fail, duration：" + (System.currentTimeMillis() - this.startNs));
            throw e11;
        }
    }
}
