package com.cloud.config;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.config.bean.ShuntInfo;
import com.cloud.config.utils.CommonUtils;
import com.cloud.config.utils.ConfigHttpRequest;
import com.cloud.config.utils.Constants;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.config.utils.ExecutorUtils;
import com.cloud.config.utils.XLogUtil;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.tencent.mmkv.MMKV;
import com.tmc.network.HttpRequestor;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;

public abstract class AbsConfigStore {
    private final Context context;
    private MMKV storageKV;

    protected AbsConfigStore(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
    }

    private final Map d(ShuntInfo shuntInfo, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (shuntInfo != null && str != null) {
            List<String> conditionParamKeys = shuntInfo.getConditionParamKeys();
            if (conditionParamKeys != null) {
                for (String str2 : conditionParamKeys) {
                    linkedHashMap.put(str2, CommonUtils.INSTANCE.getShuntValue(str2));
                }
            }
            linkedHashMap.put(CommonUtils.PARAM_UID, CommonUtils.INSTANCE.getShuntValue(CommonUtils.PARAM_UID));
            linkedHashMap.put(CommonUtils.PARAM_KEY, str);
            linkedHashMap.put(CommonUtils.PARAM_SHUNTTYPE, String.valueOf(shuntInfo.getShuntType()));
            String json = new Gson().toJson(shuntInfo.getConditionParamKeys());
            Intrinsics.g(json, "Gson().toJson(info.conditionParamKeys)");
            linkedHashMap.put(CommonUtils.PARAM_CONDITIONPARAMKEYS, json);
        }
        return linkedHashMap;
    }

    public final MMKV e() {
        MMKV mmkv = this.storageKV;
        if (mmkv != null) {
            Intrinsics.e(mmkv);
            return mmkv;
        }
        MMKV.D(this.context, Intrinsics.q(this.context.getFilesDir().getAbsolutePath(), PushConstants.CONFIG_URL_PATH));
        MMKV mmkvO = MMKV.o();
        this.storageKV = mmkvO;
        Intrinsics.e(mmkvO);
        return mmkvO;
    }

    public final void f(JsonObject jsonObject, final r rVar, final s sVar, String str, String str2) {
        String storeConfigUrlName;
        try {
            Iterator it = getContentArray().iterator();
            while (true) {
                storeConfigUrlName = null;
                JsonElement jsonElement = null;
                if (!it.hasNext()) {
                    break;
                }
                String str3 = (String) it.next();
                JsonElement jsonElement2 = jsonObject.get(str3);
                if (jsonElement2 != null) {
                    jsonElement = jsonElement2;
                }
                if (jsonElement == null || jsonElement.isJsonNull()) {
                    e().remove(str3);
                } else if (jsonElement.isJsonArray() || jsonElement.isJsonObject()) {
                    e().putString(str3, jsonElement.toString());
                } else {
                    e().putString(str3, jsonElement.getAsString());
                }
            }
            MMKV mmkvE = e();
            if (str != null) {
                storeConfigUrlName = ConstantsKt.toStoreConfigUrlName(str);
            }
            mmkvE.putString(storeConfigUrlName, str2);
            ExecutorUtils.main().execute(new Runnable(rVar, sVar) {

                public final s f20602a;

                {
                    this.f20602a = sVar;
                }

                @Override
                public final void run() {
                    AbsConfigStore.g(null, this.f20602a);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static final void g(r rVar, s sVar) {
        if (rVar != null) {
            rVar.onLoadDataSuccess();
        }
        if (sVar == null) {
            return;
        }
        sVar.onLoadDataSuccess();
    }

    public final void h(String str, ShuntInfo shuntInfo, String str2, AbsConfigStore absConfigStore, final r rVar, final s sVar) {
        try {
            String string = absConfigStore.e().getString(str2 == null ? null : ConstantsKt.toStoreConfigUrlName(str2), "");
            XLogUtil.Companion companion = XLogUtil.INSTANCE;
            companion.getLog().i(XLogUtil.TAG, Intrinsics.q("storeConfigUrl --> ", string));
            companion.getLog().i(XLogUtil.TAG, Intrinsics.q("matchCacheUrl --> ", str));
            if (string != null && string.length() > 0 && Intrinsics.c(string, str)) {
                ExecutorUtils.main().execute(new Runnable(rVar, sVar) {

                    public final s f20600a;

                    {
                        this.f20600a = sVar;
                    }

                    @Override
                    public final void run() {
                        AbsConfigStore.i(null, this.f20600a);
                    }
                });
                return;
            }
            try {
                if (str.equals(CommonUtils.SHUNT_OPEN_FLAG)) {
                    ExecutorUtils.io().execute(new RequestRunnableShunt(str2, absConfigStore, getApiHeaders(), d(shuntInfo, str2), Constants.INSTANCE.getShuntOpenUrl(absConfigStore.setDebugMode()), rVar, sVar));
                } else {
                    ExecutorUtils.io().execute(new RequestRunnableShunt(str2, absConfigStore, null, null, str, rVar, sVar));
                }
            } catch (Throwable th2) {
                th = th2;
                XLogUtil log = XLogUtil.INSTANCE.getLog();
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                log.e(XLogUtil.TAG, stackTraceString);
                ExecutorUtils.main().execute(new Runnable() {
                    @Override
                    public final void run() {
                        AbsConfigStore.j(sVar);
                    }
                });
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static final void i(r rVar, s sVar) {
        if (rVar != null) {
            rVar.onLoadDataSuccess();
        }
        if (sVar == null) {
            return;
        }
        sVar.onLoadDataSuccess();
    }

    public static final void j(s sVar) {
        if (sVar == null) {
            return;
        }
        sVar.onLoadDataFailure(1003, ConstantsKt.ERROR_1003_MESSAGE);
    }

    public static void loadForService$default(AbsConfigStore absConfigStore, String str, s sVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadForService");
        }
        if ((i10 & 1) != 0) {
            str = "";
        }
        if ((i10 & 2) != 0) {
            sVar = null;
        }
        absConfigStore.loadForService(str, sVar);
    }

    public Map<String, String> getApiHeaders() {
        return null;
    }

    protected abstract List getContentArray();

    public abstract String getPackageName();

    @JvmOverloads
    public final void loadForService() {
        loadForService$default(this, null, null, 3, null);
    }

    public abstract boolean setDebugMode();

    public final void setMMKV(MMKV mmkv) {
        this.storageKV = mmkv;
    }

    @JvmOverloads
    public final void loadForService(String str) {
        loadForService$default(this, str, null, 2, null);
    }

    public static void loadForService$default(AbsConfigStore absConfigStore, r rVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadForService");
        }
        if ((i10 & 1) != 0) {
            rVar = null;
        }
        absConfigStore.loadForService(rVar);
    }

    @JvmOverloads
    public final void loadForService(String str, s sVar) {
        com.transsion.core.utils.f.a(this.context.getApplicationContext());
        CommonUtils commonUtils = CommonUtils.INSTANCE;
        commonUtils.setContext(this.context.getApplicationContext());
        commonUtils.getGaid();
        ExecutorUtils.io().execute(new RequestRunnableConfigHeader(this, str, null, sVar, 4, null));
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;", "Ljava/lang/Runnable;", "Lcom/cloud/config/AbsConfigStore;", PlaceTypes.STORE, "", "packageNameKey", "Lcom/cloud/config/r;", "configListener", "Lcom/cloud/config/s;", "configResultListener", "<init>", "(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V", "", "run", "()V", "Lcom/cloud/config/AbsConfigStore;", "getStore", "()Lcom/cloud/config/AbsConfigStore;", "Ljava/lang/String;", "Lcom/cloud/config/r;", "getConfigListener", "()Lcom/cloud/config/r;", "Lcom/cloud/config/s;", "getConfigResultListener", "()Lcom/cloud/config/s;", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RequestRunnableConfigHeader implements Runnable {
        private final r configListener;
        private final s configResultListener;
        private final String packageNameKey;
        private final AbsConfigStore store;

        public RequestRunnableConfigHeader(AbsConfigStore store, String str, r rVar, s sVar) {
            Intrinsics.h(store, "store");
            this.store = store;
            this.packageNameKey = str;
            this.configResultListener = sVar;
        }

        public static final void m207run$lambda0(RequestRunnableConfigHeader this$0) {
            Intrinsics.h(this$0, "this$0");
            s sVar = this$0.configResultListener;
            if (sVar == null) {
                return;
            }
            sVar.onLoadDataFailure(1005, ConstantsKt.ERROR_1005_MESSAGE);
        }

        public static final void m208run$lambda1(RequestRunnableConfigHeader this$0) {
            Intrinsics.h(this$0, "this$0");
            s sVar = this$0.configResultListener;
            if (sVar == null) {
                return;
            }
            sVar.onLoadDataFailure(1003, ConstantsKt.ERROR_1003_MESSAGE);
        }

        public final r getConfigListener() {
            return null;
        }

        public final s getConfigResultListener() {
            return this.configResultListener;
        }

        public final AbsConfigStore getStore() {
            return this.store;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v3, types: [T, java.lang.String] */
        @Override
        public void run() {
            try {
                if (this.store.setDebugMode()) {
                    XLogUtil.INSTANCE.getLog().setLogSwitch(true);
                } else {
                    XLogUtil.INSTANCE.getLog().setLogSwitch(Log.isLoggable("CONFIG", 3));
                }
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                ?? r10 = this.packageNameKey;
                objectRef.element = r10;
                if (TextUtils.isEmpty((CharSequence) r10)) {
                    String packageName = this.store.getPackageName();
                    objectRef.element = (packageName == null || StringsKt.q0(packageName)) ? this.store.context.getPackageName() : this.store.getPackageName();
                }
                String strEncryptMD5 = CommonUtils.INSTANCE.encryptMD5((String) objectRef.element);
                if (strEncryptMD5 != null && strEncryptMD5.length() != 0) {
                    String str = Constants.INSTANCE.getConfigUrl(this.store.setDebugMode()) + ((Object) strEncryptMD5) + '/' + ((Object) strEncryptMD5) + ".json";
                    XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, Intrinsics.q("requestUrl --> ", str));
                    ConfigHttpRequest.INSTANCE.getInstance().getHeader(str, new AbsConfigStore$RequestRunnableConfigHeader$run$2(this, objectRef, str));
                    return;
                }
                ExecutorUtils.main().execute(new Runnable() {
                    @Override
                    public final void run() {
                        AbsConfigStore.RequestRunnableConfigHeader.m207run$lambda0(this.f20606a);
                    }
                });
            } catch (Throwable th2) {
                XLogUtil log = XLogUtil.INSTANCE.getLog();
                String stackTraceString = Log.getStackTraceString(th2);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                log.e(XLogUtil.TAG, stackTraceString);
                ExecutorUtils.main().execute(new Runnable() {
                    @Override
                    public final void run() {
                        AbsConfigStore.RequestRunnableConfigHeader.m208run$lambda1(this.f20607a);
                    }
                });
            }
        }

        public RequestRunnableConfigHeader(AbsConfigStore absConfigStore, String str, r rVar, s sVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(absConfigStore, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? null : rVar, (i10 & 8) != 0 ? null : sVar);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0010\b\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u001d\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;", "Ljava/lang/Runnable;", "Lcom/cloud/config/AbsConfigStore;", PlaceTypes.STORE, "", "packageName", "Lcom/cloud/config/r;", "configListener", "Lcom/cloud/config/s;", "configResultListener", "contentMd5", "requestUrl", "<init>", "(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V", "", "run", "()V", "Lcom/cloud/config/AbsConfigStore;", "getStore", "()Lcom/cloud/config/AbsConfigStore;", "Ljava/lang/String;", "Lcom/cloud/config/r;", "getConfigListener", "()Lcom/cloud/config/r;", "Lcom/cloud/config/s;", "getConfigResultListener", "()Lcom/cloud/config/s;", "getContentMd5", "()Ljava/lang/String;", "getRequestUrl", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RequestRunnableConfig implements Runnable {
        private final r configListener;
        private final s configResultListener;
        private final String contentMd5;
        private final String packageName;
        private final String requestUrl;
        private final AbsConfigStore store;

        public RequestRunnableConfig(AbsConfigStore store, String str, r rVar, s sVar, String str2, String requestUrl) {
            Intrinsics.h(store, "store");
            Intrinsics.h(requestUrl, "requestUrl");
            this.store = store;
            this.packageName = str;
            this.configResultListener = sVar;
            this.contentMd5 = str2;
            this.requestUrl = requestUrl;
        }

        public static final void m206run$lambda0(RequestRunnableConfig this$0) {
            Intrinsics.h(this$0, "this$0");
            s sVar = this$0.configResultListener;
            if (sVar == null) {
                return;
            }
            sVar.onLoadDataFailure(1003, ConstantsKt.ERROR_1003_MESSAGE);
        }

        public final r getConfigListener() {
            return null;
        }

        public final s getConfigResultListener() {
            return this.configResultListener;
        }

        public final String getContentMd5() {
            return this.contentMd5;
        }

        public final String getRequestUrl() {
            return this.requestUrl;
        }

        public final AbsConfigStore getStore() {
            return this.store;
        }

        @Override
        public void run() {
            try {
                XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, Intrinsics.q("requestUrl --> ", this.requestUrl));
                HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
                if (companion == null) {
                    return;
                }
                companion.get(this.requestUrl, new LinkedHashMap(), (Map<String, String>) null, new AbsConfigStore$RequestRunnableConfig$run$1(this));
            } catch (Throwable th2) {
                XLogUtil log = XLogUtil.INSTANCE.getLog();
                String stackTraceString = Log.getStackTraceString(th2);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                log.e(XLogUtil.TAG, stackTraceString);
                ExecutorUtils.main().execute(new Runnable() {
                    @Override
                    public final void run() {
                        AbsConfigStore.RequestRunnableConfig.m206run$lambda0(this.f20603a);
                    }
                });
            }
        }

        public RequestRunnableConfig(AbsConfigStore absConfigStore, String str, r rVar, s sVar, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(absConfigStore, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? null : rVar, (i10 & 8) != 0 ? null : sVar, (i10 & 16) != 0 ? "" : str2, str3);
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0014\b\u0000\u0018\u00002\u00020\u0001Be\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R%\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR%\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\u0019\u001a\u0004\b\u001c\u0010\u001bR\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u001d\u0010\u0015R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\r\u0010!\u001a\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;", "Ljava/lang/Runnable;", "", "packageName", "Lcom/cloud/config/AbsConfigStore;", PlaceTypes.STORE, "", "headers", "requestJson", "requestUrl", "Lcom/cloud/config/r;", "configListener", "Lcom/cloud/config/s;", "configResultListener", "<init>", "(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V", "", "run", "()V", "Ljava/lang/String;", "getPackageName", "()Ljava/lang/String;", "Lcom/cloud/config/AbsConfigStore;", "getStore", "()Lcom/cloud/config/AbsConfigStore;", "Ljava/util/Map;", "getHeaders", "()Ljava/util/Map;", "getRequestJson", "getRequestUrl", "Lcom/cloud/config/r;", "getConfigListener", "()Lcom/cloud/config/r;", "Lcom/cloud/config/s;", "getConfigResultListener", "()Lcom/cloud/config/s;", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RequestRunnableShunt implements Runnable {
        private final r configListener;
        private final s configResultListener;
        private final Map<String, String> headers;
        private final String packageName;
        private final Map<String, String> requestJson;
        private final String requestUrl;
        private final AbsConfigStore store;

        public static final class a implements Callback {
            a() {
            }

            public static final void g(RequestRunnableShunt this$0) {
                Intrinsics.h(this$0, "this$0");
                s configResultListener = this$0.getConfigResultListener();
                if (configResultListener == null) {
                    return;
                }
                configResultListener.onLoadDataFailure(1004, ConstantsKt.ERROR_1004_MESSAGE);
            }

            public static final void h(RequestRunnableShunt this$0) {
                Intrinsics.h(this$0, "this$0");
                s configResultListener = this$0.getConfigResultListener();
                if (configResultListener == null) {
                    return;
                }
                configResultListener.onLoadDataFailure(1000, ConstantsKt.ERROR_1000_MESSAGE);
            }

            public static final void i(RequestRunnableShunt this$0, JsonObject dataJsonObject) {
                Intrinsics.h(this$0, "this$0");
                Intrinsics.h(dataJsonObject, "$dataJsonObject");
                AbsConfigStore store = this$0.getStore();
                this$0.getConfigListener();
                store.f(dataJsonObject, null, this$0.getConfigResultListener(), this$0.getPackageName(), this$0.getRequestUrl());
            }

            public static final void j(RequestRunnableShunt this$0, String message) {
                Intrinsics.h(this$0, "this$0");
                Intrinsics.h(message, "$message");
                s configResultListener = this$0.getConfigResultListener();
                if (configResultListener == null) {
                    return;
                }
                configResultListener.onLoadDataFailure(1001, message);
            }

            public static final void k(RequestRunnableShunt this$0) {
                Intrinsics.h(this$0, "this$0");
                s configResultListener = this$0.getConfigResultListener();
                if (configResultListener == null) {
                    return;
                }
                configResultListener.onLoadDataFailure(1002, ConstantsKt.ERROR_1002_MESSAGE);
            }

            public static final void l(RequestRunnableShunt this$0) {
                Intrinsics.h(this$0, "this$0");
                s configResultListener = this$0.getConfigResultListener();
                if (configResultListener == null) {
                    return;
                }
                configResultListener.onLoadDataFailure(1003, ConstantsKt.ERROR_1003_MESSAGE);
            }

            @Override
            public void onFailure(Call call, IOException e10) {
                Intrinsics.h(call, "call");
                Intrinsics.h(e10, "e");
                XLogUtil log = XLogUtil.INSTANCE.getLog();
                String stackTraceString = Log.getStackTraceString(e10);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                log.e(XLogUtil.TAG, stackTraceString);
                ExecutorService executorServiceMain = ExecutorUtils.main();
                final RequestRunnableShunt requestRunnableShunt = RequestRunnableShunt.this;
                executorServiceMain.execute(new Runnable() {
                    @Override
                    public final void run() {
                        AbsConfigStore.RequestRunnableShunt.a.g(requestRunnableShunt);
                    }
                });
            }

            @Override
            public void onResponse(Call call, Response response) {
                String string;
                Intrinsics.h(call, "call");
                Intrinsics.h(response, "response");
                try {
                    if (response.body() == null) {
                        return;
                    }
                    final RequestRunnableShunt requestRunnableShunt = RequestRunnableShunt.this;
                    ResponseBody responseBodyBody = response.body();
                    Intrinsics.e(responseBodyBody);
                    String responseStr = responseBodyBody.string();
                    XLogUtil.Companion companion = XLogUtil.INSTANCE;
                    companion.getLog().i(XLogUtil.TAG, Intrinsics.q("response --> ", responseStr));
                    Intrinsics.g(responseStr, "responseStr");
                    if (!StringsKt.c0(responseStr, "code", false, 2, null) || !StringsKt.c0(responseStr, "data", false, 2, null)) {
                        ExecutorUtils.main().execute(new Runnable() {
                            @Override
                            public final void run() {
                                AbsConfigStore.RequestRunnableShunt.a.k(requestRunnableShunt);
                            }
                        });
                        return;
                    }
                    JsonObject asJsonObject = JsonParser.parseString(responseStr).getAsJsonObject();
                    Intrinsics.g(asJsonObject, "parseString(responseStr).asJsonObject");
                    if (asJsonObject.get("code").getAsInt() != 0) {
                        JsonElement jsonElement = asJsonObject.get("message");
                        final String str = ConstantsKt.ERROR_1001_MESSAGE;
                        if (jsonElement != null && (string = jsonElement.toString()) != null) {
                            str = string;
                        }
                        companion.getLog().e(XLogUtil.TAG, Intrinsics.q("message", str));
                        ExecutorUtils.main().execute(new Runnable() {
                            @Override
                            public final void run() {
                                AbsConfigStore.RequestRunnableShunt.a.j(requestRunnableShunt, str);
                            }
                        });
                        return;
                    }
                    String string2 = asJsonObject.get("data").toString();
                    Intrinsics.g(string2, "jsonObject.get(\"data\").toString()");
                    if (StringsKt.q0(string2)) {
                        return;
                    }
                    if (Intrinsics.c("{}", string2)) {
                        ExecutorUtils.main().execute(new Runnable() {
                            @Override
                            public final void run() {
                                AbsConfigStore.RequestRunnableShunt.a.h(requestRunnableShunt);
                            }
                        });
                        return;
                    }
                    final JsonObject asJsonObject2 = JsonParser.parseString(string2).getAsJsonObject();
                    Intrinsics.g(asJsonObject2, "parseString(dataStr).asJsonObject");
                    ExecutorUtils.io().execute(new Runnable() {
                        @Override
                        public final void run() {
                            AbsConfigStore.RequestRunnableShunt.a.i(requestRunnableShunt, asJsonObject2);
                        }
                    });
                } catch (Throwable th2) {
                    XLogUtil log = XLogUtil.INSTANCE.getLog();
                    String stackTraceString = Log.getStackTraceString(th2);
                    Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                    log.e(XLogUtil.TAG, stackTraceString);
                    ExecutorService executorServiceMain = ExecutorUtils.main();
                    final RequestRunnableShunt requestRunnableShunt2 = RequestRunnableShunt.this;
                    executorServiceMain.execute(new Runnable() {
                        @Override
                        public final void run() {
                            AbsConfigStore.RequestRunnableShunt.a.l(requestRunnableShunt2);
                        }
                    });
                }
            }
        }

        public RequestRunnableShunt(String str, AbsConfigStore store, Map<String, String> map, Map<String, String> map2, String requestUrl, r rVar, s sVar) {
            Intrinsics.h(store, "store");
            Intrinsics.h(requestUrl, "requestUrl");
            this.packageName = str;
            this.store = store;
            this.headers = map;
            this.requestJson = map2;
            this.requestUrl = requestUrl;
            this.configResultListener = sVar;
        }

        public static final void m209run$lambda0(RequestRunnableShunt this$0) {
            Intrinsics.h(this$0, "this$0");
            s sVar = this$0.configResultListener;
            if (sVar == null) {
                return;
            }
            sVar.onLoadDataFailure(1003, ConstantsKt.ERROR_1003_MESSAGE);
        }

        public final r getConfigListener() {
            return null;
        }

        public final s getConfigResultListener() {
            return this.configResultListener;
        }

        public final Map<String, String> getHeaders() {
            return this.headers;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final Map<String, String> getRequestJson() {
            return this.requestJson;
        }

        public final String getRequestUrl() {
            return this.requestUrl;
        }

        public final AbsConfigStore getStore() {
            return this.store;
        }

        @Override
        public void run() {
            try {
                XLogUtil.Companion companion = XLogUtil.INSTANCE;
                companion.getLog().i(XLogUtil.TAG, Intrinsics.q("requestJson --> ", this.requestJson));
                companion.getLog().i(XLogUtil.TAG, Intrinsics.q("requestUrl --> ", this.requestUrl));
                HttpRequestor companion2 = HttpRequestor.INSTANCE.getInstance();
                if (companion2 == null) {
                    return;
                }
                String str = this.requestUrl;
                Map<String, String> linkedHashMap = this.headers;
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap<>();
                }
                companion2.get(str, linkedHashMap, this.requestJson, new a());
            } catch (Throwable th2) {
                XLogUtil log = XLogUtil.INSTANCE.getLog();
                String stackTraceString = Log.getStackTraceString(th2);
                Intrinsics.g(stackTraceString, "getStackTraceString(e)");
                log.e(XLogUtil.TAG, stackTraceString);
                ExecutorUtils.main().execute(new Runnable() {
                    @Override
                    public final void run() {
                        AbsConfigStore.RequestRunnableShunt.m209run$lambda0(this.f20610a);
                    }
                });
            }
        }

        public RequestRunnableShunt(String str, AbsConfigStore absConfigStore, Map map, Map map2, String str2, r rVar, s sVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, absConfigStore, map, map2, str2, (i10 & 32) != 0 ? null : rVar, (i10 & 64) != 0 ? null : sVar);
        }
    }

    @Deprecated
    public final void loadForService(r rVar) {
        com.transsion.core.utils.f.a(this.context.getApplicationContext());
        CommonUtils commonUtils = CommonUtils.INSTANCE;
        commonUtils.setContext(this.context.getApplicationContext());
        commonUtils.getGaid();
        ExecutorUtils.io().execute(new RequestRunnableConfigHeader(this, null, rVar, null, 10, null));
    }
}
