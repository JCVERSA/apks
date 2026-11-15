package com.cloud.tupdate.config;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tupdate.bean.BaseResponse;
import com.cloud.tupdate.bean.SdkConfigInfo;
import com.cloud.tupdate.net.network.HttpRequestor;
import com.cloud.tupdate.utils.ExecutorUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.http.impl.StringCallback;
import defpackage.abb;
import defpackage.ia1;
import defpackage.j1a;
import defpackage.o6;
import defpackage.re1;
import defpackage.xca;
import defpackage.y45;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.collections.a;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class AbsConfigStore {
    public final Context a;
    public final AtomicBoolean b;

    public AbsConfigStore(Context context) {
        y45.j(context, "context");
        this.a = context;
        this.b = new AtomicBoolean(false);
    }

    public abstract String c();

    public final void d(re1 re1Var) {
        if (this.b.compareAndSet(false, true)) {
            ExecutorUtils.h().execute(new RequestRunnable(this, re1Var));
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/cloud/tupdate/config/AbsConfigStore$RequestRunnable;", "Ljava/lang/Runnable;", "Lcom/cloud/tupdate/config/AbsConfigStore;", "store", "Lre1;", "configResultListener", MethodDecl.initName, "(Lcom/cloud/tupdate/config/AbsConfigStore;Lre1;)V", "Lzfb;", "run", "()V", "Lcom/cloud/tupdate/config/AbsConfigStore;", "Lre1;", "getConfigResultListener", "()Lre1;", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class RequestRunnable implements Runnable {
        private final re1 configResultListener;
        private final AbsConfigStore store;

        public RequestRunnable(AbsConfigStore absConfigStore, re1 re1Var) {
            y45.j(absConfigStore, "store");
            this.store = absConfigStore;
            this.configResultListener = re1Var;
        }

        public final re1 getConfigResultListener() {
            return this.configResultListener;
        }

        @Override
        public void run() {
            try {
                String str = xca.a.a() ? "http://140.206.67.86:8082/common/cloudconfig/v1/consumer-not-login/configkeyvalue/query/get" : "https://cloud-config-api.shalltry.com/common/cloudconfig/v1/consumer-not-login/configkeyvalue/query/get";
                String strC = this.store.c();
                Map mapQ = a.q(abb.a("key", (strC == null || j1a.o0(strC)) ? this.store.a.getPackageName() : this.store.c()));
                o6.j().d("update", y45.s("-------- map = ", mapQ));
                HttpRequestor httpRequestorA = HttpRequestor.INSTANCE.a();
                if (httpRequestorA != null) {
                    httpRequestorA.a(str, null, null, mapQ, new StringCallback() {
                        {
                            super(true);
                        }

                        @Override
                        public void D(int i, String str2, Throwable th) {
                            o6.j().d("update", y45.s("-------- message = ", str2));
                            this.e.store.b.set(false);
                            re1 configResultListener = this.e.getConfigResultListener();
                            if (configResultListener == null) {
                                return;
                            }
                            configResultListener.a(i, str2);
                        }

                        @Override
                        public void E(int i, String str2) {
                            y45.j(str2, "response");
                            o6.j().d("update", y45.s("-------- response = ", str2));
                            String message = null;
                            if (j1a.X(str2, "error_code", false, 2, null) || !j1a.X(str2, TrackingKey.CODE, false, 2, null) || !j1a.X(str2, "data", false, 2, null)) {
                                re1 configResultListener = this.e.getConfigResultListener();
                                if (configResultListener == null) {
                                    return;
                                }
                                configResultListener.a(1002, "gateway failure");
                                return;
                            }
                            BaseResponse baseResponse = (BaseResponse) new Gson().fromJson(str2, new TypeToken<BaseResponse<SdkConfigInfo>>() {
                            }.getType());
                            if (baseResponse != null && baseResponse.getCode() == 0) {
                                re1 configResultListener2 = this.e.getConfigResultListener();
                                if (configResultListener2 == null) {
                                    return;
                                }
                                configResultListener2.b((SdkConfigInfo) baseResponse.getData());
                                return;
                            }
                            if (TextUtils.isEmpty(baseResponse == null ? null : baseResponse.getMessage())) {
                                message = "code isn't 0";
                            } else if (baseResponse != null) {
                                message = baseResponse.getMessage();
                            }
                            re1 configResultListener3 = this.e.getConfigResultListener();
                            if (configResultListener3 == null) {
                                return;
                            }
                            configResultListener3.a(1001, message);
                        }
                    });
                }
            } catch (Throwable th) {
                try {
                    ia1.g(y45.s("loadForService --> ", Log.getStackTraceString(th)));
                } finally {
                    this.store.b.set(false);
                }
            }
        }

        public RequestRunnable(AbsConfigStore absConfigStore, re1 re1Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(absConfigStore, (i & 2) != 0 ? null : re1Var);
        }
    }
}
