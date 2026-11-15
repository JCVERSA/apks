package com.cloud.hisavana.net;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.IHttpCallback;
import com.cloud.hisavana.net.ssl.HttpsTrustManager;
import com.cloud.hisavana.net.utils.ByteBufferUtil;
import com.cloud.sdk.commonutil.util.c;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.File;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.TimeUnit;
import mh.g;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.chromium.net.NetworkException;
import org.chromium.net.QuicException;

public class CommonOkHttpClient {

    public static boolean f20702a;

    private static Dispatcher f20703b;

    private static EventListener.Factory f20704c;

    private static Exception f20705d = new Exception("http response body is empty");

    private static class GeneralOkHttpClient {

        private static final OkHttpClient f20711a = b().build();

        private GeneralOkHttpClient() {
        }

        private static OkHttpClient.Builder b() {
            OkHttpClient.Builder builderEventListenerFactory;
            g gVar = new g(CommonOkHttpClient.f20704c, 0, CommonOkHttpClient.f20702a);
            if (CommonOkHttpClient.f20702a) {
                OkHttpClient.Builder builderHostnameVerifier = new OkHttpClient.Builder().sslSocketFactory(HttpsTrustManager.a(), new HttpsTrustManager()).hostnameVerifier(new HttpsTrustManager.TrustAllHostnameVerifier());
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builderEventListenerFactory = builderHostnameVerifier.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).dispatcher(CommonOkHttpClient.f20703b != null ? CommonOkHttpClient.f20703b : new Dispatcher()).eventListenerFactory(gVar);
            } else {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit2 = TimeUnit.SECONDS;
                builderEventListenerFactory = builder.connectTimeout(30L, timeUnit2).readTimeout(30L, timeUnit2).writeTimeout(30L, timeUnit2).dispatcher(CommonOkHttpClient.f20703b != null ? CommonOkHttpClient.f20703b : new Dispatcher()).eventListenerFactory(gVar);
            }
            c.netLog("getBuilder: isTestRequest = " + CommonOkHttpClient.f20702a);
            return NetGroup.f(builderEventListenerFactory, gVar, NetGroup.e());
        }
    }

    private CommonOkHttpClient() {
        throw new IllegalStateException("Utility class");
    }

    public static String h(RequestParams requestParams, String str, Response response, byte[] bArr) {
        String strD = "";
        try {
            IDiskCache iDiskCacheG = DiskLruCacheUtil.g(requestParams.getCacheMode());
            if (requestParams.getIsUseCache() && iDiskCacheG != null && response.code() < 300) {
                ImageCacheURL imageCacheURL = new ImageCacheURL(str);
                strD = requestParams.getIsDownloadVideo() ? iDiskCacheG.d(imageCacheURL, response) : iDiskCacheG.b(imageCacheURL, bArr);
                if (Log.isLoggable("ADSDK", 3)) {
                    c.netLog("url :" + str + " , write cache finish.  filePath = " + strD);
                }
            }
        } catch (Exception e10) {
            c.netLog("cacheToDisk is failure, " + Log.getStackTraceString(e10));
        }
        return strD;
    }

    public static Call i(RequestParams requestParams, Request request, IHttpCallback iHttpCallback) {
        IDiskCache iDiskCacheG;
        if (Log.isLoggable("ADSDK", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("downLoadImg okhttp------> run Current Looper:");
            sb2.append(Looper.myLooper() == Looper.getMainLooper() ? "Main Looper" : "thread Looper");
            c.netLog(sb2.toString());
        }
        try {
            if (requestParams.getIsUseCache() && (iDiskCacheG = DiskLruCacheUtil.g(requestParams.getCacheMode())) != null) {
                File fileC = iDiskCacheG.c(new ImageCacheURL(request.url().getUrl()));
                if (fileC == null || !fileC.exists() || fileC.length() <= 0) {
                    return p(requestParams, request, iHttpCallback);
                }
                if (Log.isLoggable("ADSDK", 3)) {
                    c.netLog("image url:" + request.url());
                    c.netLog("image path:" + fileC.getPath());
                }
                if (iHttpCallback != null) {
                    if (requestParams.getIsFetchFilePath()) {
                        iHttpCallback.e(250, ByteBufferUtil.c(ByteBufferUtil.a(fileC)), fileC.getPath());
                    } else {
                        iHttpCallback.c(250, ByteBufferUtil.c(ByteBufferUtil.a(fileC)));
                    }
                    return null;
                }
            }
        } catch (IOException e10) {
            c.netLog("downLoadImg: --> " + Log.getStackTraceString(e10));
            if (iHttpCallback != null && 0 != 0) {
                iHttpCallback.d(256, null, e10);
            }
        }
        return p(requestParams, request, iHttpCallback);
    }

    public static Call j(Request request, final IHttpCallback iHttpCallback) {
        try {
            Call callNewCall = l().newCall(request);
            FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() {
                @Override
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.d(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.d(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.d(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.d(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.d(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.d(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.d(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.d(480, null, iOException);
                        }
                    } catch (Throwable th2) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.d(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th2);
                    }
                }

                @Override
                public void onResponse(Call call, Response response) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (response == null) {
                            iHttpCallback2.d(1027, null, CommonOkHttpClient.f20705d);
                        } else {
                            ResponseBody responseBodyBody = response.body();
                            iHttpCallback.f(response.code(), responseBodyBody == null ? new byte[0] : responseBodyBody.bytes(), response.headers());
                        }
                    } catch (Exception e10) {
                        if (response != null) {
                            iHttpCallback.d(response.code(), null, e10);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th2) {
            if (iHttpCallback != null) {
                iHttpCallback.d(480, null, th2);
            }
            o(th2);
            return null;
        }
    }

    public static int k(int i10) {
        if (i10 == 1) {
            return 1101;
        }
        if (i10 == 2) {
            return 1102;
        }
        if (i10 == 3) {
            return 1103;
        }
        if (i10 == 4) {
            return 1104;
        }
        if (i10 == 5) {
            return 1105;
        }
        if (i10 == 6) {
            return 1106;
        }
        if (i10 == 7) {
            return 1107;
        }
        if (i10 == 8) {
            return 1108;
        }
        if (i10 == 9) {
            return 1109;
        }
        if (i10 == 10) {
            return 1110;
        }
        return i10 == 11 ? 1111 : 480;
    }

    public static OkHttpClient l() {
        return GeneralOkHttpClient.f20711a;
    }

    public static boolean m(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.length() > 0;
    }

    public static Call n(Request request, final IHttpCallback iHttpCallback) {
        if (iHttpCallback != null) {
            iHttpCallback.a();
        }
        try {
            Call callNewCall = l().newCall(request);
            FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() {
                @Override
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.d(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.d(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.d(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.d(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.d(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.d(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.d(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.d(480, null, iOException);
                        }
                    } catch (Throwable th2) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.d(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th2);
                    }
                }

                @Override
                public void onResponse(Call call, Response response) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (response == null) {
                            iHttpCallback2.d(1027, null, CommonOkHttpClient.f20705d);
                        } else {
                            ResponseBody responseBodyBody = response.body();
                            iHttpCallback.f(response.code(), responseBodyBody == null ? new byte[0] : responseBodyBody.bytes(), response.headers());
                        }
                    } catch (Exception e10) {
                        if (response != null) {
                            iHttpCallback.d(response.code(), null, e10);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th2) {
            if (iHttpCallback != null) {
                iHttpCallback.d(480, null, th2);
            }
            o(th2);
            return null;
        }
    }

    public static void o(Throwable th2) {
        if (!Log.isLoggable("ADSDK", 3) || th2 == null) {
            return;
        }
        c.netLog("onFailure:  " + Log.getStackTraceString(th2));
    }

    private static Call p(final RequestParams requestParams, final Request request, final IHttpCallback iHttpCallback) {
        try {
            Call callNewCall = l().newCall(request);
            FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() {
                @Override
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.d(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.d(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.d(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.d(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.d(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.d(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.d(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.d(480, null, iOException);
                        }
                    } catch (Throwable th2) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.d(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th2);
                    }
                }

                @Override
                public void onResponse(Call call, Response response) {
                    try {
                        if (iHttpCallback == null) {
                            return;
                        }
                        if (response == null || !response.isSuccessful()) {
                            iHttpCallback.d(1027, null, CommonOkHttpClient.f20705d);
                        } else {
                            byte[] bArrBytes = requestParams.getIsDownloadVideo() ? new byte[0] : response.body().bytes();
                            if (!requestParams.getIsFetchFilePath()) {
                                iHttpCallback.f(response.code(), bArrBytes, response.headers());
                            }
                            String strH = CommonOkHttpClient.h(requestParams, request.url().getUrl(), response, bArrBytes);
                            if (Log.isLoggable("ADSDK", 3)) {
                                c.netLog("real download on response, code = " + response.code() + ", adId = " + requestParams.getAdCreativeId() + ", \nurl = " + request.url() + " , \nfilePath = " + strH);
                            }
                            if (requestParams.getIsFetchFilePath()) {
                                if (CommonOkHttpClient.m(strH)) {
                                    iHttpCallback.e(response.code(), bArrBytes, strH);
                                } else {
                                    iHttpCallback.d(1026, null, new Exception("fail to cache file to disk"));
                                }
                            }
                        }
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 != null) {
                            iHttpCallback2.b();
                        }
                    } catch (Exception e10) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null && response != null) {
                            iHttpCallback3.d(response.code(), null, e10);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th2) {
            if (iHttpCallback != null) {
                iHttpCallback.d(480, null, th2);
            }
            o(th2);
            return null;
        }
    }

    public static void q(Dispatcher dispatcher, EventListener.Factory factory) {
        f20703b = dispatcher;
        f20704c = factory;
    }

    public static void r(Dispatcher dispatcher) {
        q(dispatcher, null);
    }
}
