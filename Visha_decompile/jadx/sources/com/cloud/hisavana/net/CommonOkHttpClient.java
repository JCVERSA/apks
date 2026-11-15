package com.cloud.hisavana.net;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.IHttpCallback;
import com.cloud.hisavana.net.ssl.HttpsTrustManager;
import com.cloud.hisavana.net.utils.ByteBufferUtil;
import defpackage.ja1;
import defpackage.wq6;
import java.io.File;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.TimeUnit;
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
    public static boolean a = false;
    public static Dispatcher b;
    public static EventListener.Factory c;
    public static Exception d = new Exception("http response body is empty");

    public static class GeneralOkHttpClient {
        public static final OkHttpClient a = b().build();

        private GeneralOkHttpClient() {
        }

        public static OkHttpClient.Builder b() {
            OkHttpClient.Builder builderEventListenerFactory;
            wq6 wq6Var = new wq6(CommonOkHttpClient.c, 0, CommonOkHttpClient.a);
            if (CommonOkHttpClient.a) {
                OkHttpClient.Builder builderHostnameVerifier = new OkHttpClient.Builder().sslSocketFactory(HttpsTrustManager.a(), new HttpsTrustManager()).hostnameVerifier(new HttpsTrustManager.TrustAllHostnameVerifier());
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builderEventListenerFactory = builderHostnameVerifier.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).dispatcher(CommonOkHttpClient.b != null ? CommonOkHttpClient.b : new Dispatcher()).eventListenerFactory(wq6Var);
            } else {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit2 = TimeUnit.SECONDS;
                builderEventListenerFactory = builder.connectTimeout(30L, timeUnit2).readTimeout(30L, timeUnit2).writeTimeout(30L, timeUnit2).dispatcher(CommonOkHttpClient.b != null ? CommonOkHttpClient.b : new Dispatcher()).eventListenerFactory(wq6Var);
            }
            ja1.netLog("getBuilder: isTestRequest = " + CommonOkHttpClient.a);
            return NetGroup.f(builderEventListenerFactory, wq6Var, NetGroup.e());
        }
    }

    private CommonOkHttpClient() {
        throw new IllegalStateException("Utility class");
    }

    public static String h(RequestParams requestParams, String str, Response response, byte[] bArr) {
        String strE = "";
        try {
            IDiskCache iDiskCacheG = DiskLruCacheUtil.g(requestParams.getCacheMode());
            if (requestParams.getIsUseCache() && iDiskCacheG != null && response.code() < 300) {
                ImageCacheURL imageCacheURL = new ImageCacheURL(str);
                strE = requestParams.getIsDownloadVideo() ? iDiskCacheG.e(imageCacheURL, response) : iDiskCacheG.a(imageCacheURL, bArr);
                if (Log.isLoggable("ADSDK", 3)) {
                    ja1.netLog("url :" + str + " , write cache finish.  filePath = " + strE);
                }
            }
        } catch (Exception e) {
            ja1.netLog("cacheToDisk is failure, " + Log.getStackTraceString(e));
        }
        return strE;
    }

    public static Call i(RequestParams requestParams, Request request, IHttpCallback iHttpCallback) {
        IDiskCache iDiskCacheG;
        if (Log.isLoggable("ADSDK", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("downLoadImg okhttp------> run Current Looper:");
            sb.append(Looper.myLooper() == Looper.getMainLooper() ? "Main Looper" : "thread Looper");
            ja1.netLog(sb.toString());
        }
        try {
            if (requestParams.getIsUseCache() && (iDiskCacheG = DiskLruCacheUtil.g(requestParams.getCacheMode())) != null) {
                File fileD = iDiskCacheG.d(new ImageCacheURL(request.url().getUrl()));
                if (fileD == null || !fileD.exists() || fileD.length() <= 0) {
                    return p(requestParams, request, iHttpCallback);
                }
                if (Log.isLoggable("ADSDK", 3)) {
                    ja1.netLog("image url:" + request.url());
                    ja1.netLog("image path:" + fileD.getPath());
                }
                if (iHttpCallback != null) {
                    if (requestParams.getIsFetchFilePath()) {
                        iHttpCallback.a(250, ByteBufferUtil.c(ByteBufferUtil.a(fileD)), fileD.getPath());
                    } else {
                        iHttpCallback.b(250, ByteBufferUtil.c(ByteBufferUtil.a(fileD)));
                    }
                    return null;
                }
            }
        } catch (IOException e) {
            ja1.netLog("downLoadImg: --> " + Log.getStackTraceString(e));
            if (iHttpCallback != null && 0 != 0) {
                iHttpCallback.e(256, null, e);
            }
        }
        return p(requestParams, request, iHttpCallback);
    }

    public static Call j(Request request, final IHttpCallback iHttpCallback) {
        try {
            Call callNewCall = l().newCall(request);
            callNewCall.enqueue(new Callback() {
                @Override
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.e(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.e(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.e(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.e(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.e(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.e(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.e(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.e(480, null, iOException);
                        }
                    } catch (Throwable th) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.e(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th);
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
                            iHttpCallback2.e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, null, CommonOkHttpClient.d);
                        } else {
                            ResponseBody responseBodyBody = response.body();
                            iHttpCallback.f(response.code(), responseBodyBody == null ? new byte[0] : responseBodyBody.bytes(), response.headers());
                        }
                    } catch (Exception e) {
                        if (response != null) {
                            iHttpCallback.e(response.code(), null, e);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th) {
            if (iHttpCallback != null) {
                iHttpCallback.e(480, null, th);
            }
            o(th);
            return null;
        }
    }

    public static int k(int i) {
        if (i == 1) {
            return 1101;
        }
        if (i == 2) {
            return 1102;
        }
        if (i == 3) {
            return 1103;
        }
        if (i == 4) {
            return 1104;
        }
        if (i == 5) {
            return 1105;
        }
        if (i == 6) {
            return 1106;
        }
        if (i == 7) {
            return 1107;
        }
        if (i == 8) {
            return 1108;
        }
        if (i == 9) {
            return 1109;
        }
        if (i == 10) {
            return 1110;
        }
        return i == 11 ? 1111 : 480;
    }

    public static OkHttpClient l() {
        return GeneralOkHttpClient.a;
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
            iHttpCallback.c();
        }
        try {
            Call callNewCall = l().newCall(request);
            callNewCall.enqueue(new Callback() {
                @Override
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.e(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.e(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.e(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.e(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.e(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.e(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.e(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.e(480, null, iOException);
                        }
                    } catch (Throwable th) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.e(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th);
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
                            iHttpCallback2.e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, null, CommonOkHttpClient.d);
                        } else {
                            ResponseBody responseBodyBody = response.body();
                            iHttpCallback.f(response.code(), responseBodyBody == null ? new byte[0] : responseBodyBody.bytes(), response.headers());
                        }
                    } catch (Exception e) {
                        if (response != null) {
                            iHttpCallback.e(response.code(), null, e);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th) {
            if (iHttpCallback != null) {
                iHttpCallback.e(480, null, th);
            }
            o(th);
            return null;
        }
    }

    public static void o(Throwable th) {
        if (!Log.isLoggable("ADSDK", 3) || th == null) {
            return;
        }
        ja1.netLog("onFailure:  " + Log.getStackTraceString(th));
    }

    public static Call p(final RequestParams requestParams, final Request request, final IHttpCallback iHttpCallback) {
        try {
            Call callNewCall = l().newCall(request);
            callNewCall.enqueue(new Callback() {
                @Override
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.e(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.e(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.e(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.e(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.e(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.e(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.e(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.e(480, null, iOException);
                        }
                    } catch (Throwable th) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.e(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th);
                    }
                }

                @Override
                public void onResponse(Call call, Response response) {
                    try {
                        if (iHttpCallback == null) {
                            return;
                        }
                        if (response == null || !response.isSuccessful()) {
                            iHttpCallback.e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, null, CommonOkHttpClient.d);
                        } else {
                            byte[] bArrBytes = requestParams.getIsDownloadVideo() ? new byte[0] : response.body().bytes();
                            if (!requestParams.getIsFetchFilePath()) {
                                iHttpCallback.f(response.code(), bArrBytes, response.headers());
                            }
                            String strH = CommonOkHttpClient.h(requestParams, request.url().getUrl(), response, bArrBytes);
                            if (Log.isLoggable("ADSDK", 3)) {
                                ja1.netLog("real download on response, code = " + response.code() + ", adId = " + requestParams.getAdCreativeId() + ", \nurl = " + request.url() + " , \nfilePath = " + strH);
                            }
                            if (requestParams.getIsFetchFilePath()) {
                                if (CommonOkHttpClient.m(strH)) {
                                    iHttpCallback.a(response.code(), bArrBytes, strH);
                                } else {
                                    iHttpCallback.e(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, null, new Exception("fail to cache file to disk"));
                                }
                            }
                        }
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 != null) {
                            iHttpCallback2.d();
                        }
                    } catch (Exception e) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null && response != null) {
                            iHttpCallback3.e(response.code(), null, e);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th) {
            if (iHttpCallback != null) {
                iHttpCallback.e(480, null, th);
            }
            o(th);
            return null;
        }
    }
}
