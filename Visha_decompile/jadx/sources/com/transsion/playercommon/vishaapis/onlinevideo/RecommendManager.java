package com.transsion.playercommon.vishaapis.onlinevideo;

import android.util.Log;
import com.google.gson.Gson;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.onlinevideo.RecommendBean;
import com.transsion.dbdata.beans.onlinevideo.RecommendResultBean;
import com.transsion.playercommon.vishaapis.onlinevideo.RecommendManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import com.trello.rxlifecycle3.components.support.RxAppCompatActivity;
import defpackage.ge;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.t74;
import defpackage.vb;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class RecommendManager {
    public static final String TAG = "visha_" + RecommendManager.class.getSimpleName();

    public enum Method {
        POST,
        GET
    }

    public interface ResultCallBack<T> {
        void onFailed(Throwable th);

        void onSucess(T t);
    }

    public static RecommendResultBean lambda$postRecommendContent$0(String str, RecommendBean recommendBean, Class cls, ResultCallBack resultCallBack) throws Exception {
        return postRecommendContent(str, recommendBean.getRequestBody(), cls);
    }

    private static RecommendResultBean postRecommendContent(String str, RequestBody requestBody, Class cls) {
        HttpLoggingInterceptor httpLoggingInterceptor;
        if (ge.e()) {
            httpLoggingInterceptor = new HttpLoggingInterceptor("visha_api");
            httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
            httpLoggingInterceptor.setColorLevel(Level.INFO);
        } else {
            httpLoggingInterceptor = null;
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(5L, TimeUnit.SECONDS);
        if (httpLoggingInterceptor != null) {
            builder.addInterceptor(httpLoggingInterceptor);
        }
        try {
            Response responseExecute = builder.build().newCall(new Request.Builder().url(str).post(requestBody).build()).execute();
            if (responseExecute != null && responseExecute.isSuccessful() && responseExecute.body() != null) {
                return (RecommendResultBean) new Gson().fromJson(responseExecute.body().string(), (Type) cls);
            }
            return null;
        } catch (IOException e) {
            Log.i(TAG, e.getMessage());
            return null;
        }
    }

    public static void postRecommendData(final String str, final String str2, final String str3) {
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                HttpLoggingInterceptor httpLoggingInterceptor;
                Request.Builder builderPost = null;
                if (ge.e()) {
                    httpLoggingInterceptor = new HttpLoggingInterceptor("mango_mark");
                    httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
                    httpLoggingInterceptor.setColorLevel(Level.INFO);
                } else {
                    httpLoggingInterceptor = null;
                }
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                builder.connectTimeout(5L, TimeUnit.SECONDS);
                if (httpLoggingInterceptor != null) {
                    builder.addInterceptor(httpLoggingInterceptor);
                }
                OkHttpClient okHttpClientBuild = builder.build();
                try {
                    if ("get".equals(str2)) {
                        builderPost = new Request.Builder().url(str).get();
                    } else if ("post".equals(str2)) {
                        FormBody.Builder builder2 = new FormBody.Builder();
                        builder2.add("data", str3);
                        builderPost = new Request.Builder().url(str).post(builder2.build());
                    }
                    if (builderPost != null) {
                        okHttpClientBuild.newCall(builderPost.build()).execute();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public static void postRecommendContent(RxAppCompatActivity rxAppCompatActivity, final String str, final RecommendBean recommendBean, final Class cls, final ResultCallBack resultCallBack) {
        mc7.K(resultCallBack).g(rxAppCompatActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return RecommendManager.lambda$postRecommendContent$0(str, recommendBean, cls, (RecommendManager.ResultCallBack) obj);
            }
        }).d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
                ResultCallBack resultCallBack2 = resultCallBack;
                if (resultCallBack2 != null) {
                    resultCallBack2.onFailed(th);
                }
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }

            @Override
            public void onNext(RecommendResultBean recommendResultBean) {
                ResultCallBack resultCallBack2 = resultCallBack;
                if (resultCallBack2 != null) {
                    resultCallBack2.onSucess(recommendResultBean);
                }
            }
        });
    }
}
