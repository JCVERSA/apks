package com.onesignal.debug.internal.logging.otel.android;

import android.content.Context;
import android.content.SharedPreferences;
import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.IDManager;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\bH\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\bH\u0002J\u0006\u0010\u0013\u001a\u00020\u0006J\u0012\u0010\u0014\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002J\u0006\u0010\u0015\u001a\u00020\u0006J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006J\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006J\b\u0010\u0018\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0019\u001a\u00020\u0011R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/onesignal/debug/internal/logging/otel/android/OtelIdResolver;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "extractAppIdFromConfig", "", "configModel", "Lorg/json/JSONObject;", "extractLogLevelFromParams", "Lcom/onesignal/debug/LogLevel;", "remoteLoggingParams", "extractOnesignalIdFromJson", "identityStoreJson", "getSharedPreferences", "Landroid/content/SharedPreferences;", "hasEmptyConfigStore", "", "readConfigModel", "resolveAppId", "resolveAppIdFromLegacy", "resolveInstallId", "resolveOnesignalId", "resolvePushSubscriptionId", "resolveRemoteLogLevel", "resolveRemoteLoggingEnabled", "Companion", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OtelIdResolver {
    private final Context context;
    private static final String ERROR_APP_ID_PREFIX_UNKNOWN = ProtectedFastSSH.s("鹥");
    private static final String ERROR_APP_ID_PREFIX_NO_APPID_IN_CONFIG = ProtectedFastSSH.s("鹦");
    private static final String ERROR_APP_ID_PREFIX_NO_APPID_IN_CONFIG_STORE = ProtectedFastSSH.s("鹧");
    private static final String ERROR_APP_ID_RESOLVE = ProtectedFastSSH.s("鹨");
    private static final String ERROR_APP_ID_PREFIX_NO_CONFIG_STORE = ProtectedFastSSH.s("鹩");
    private static final String ERROR_APP_ID_PREFIX_NO_CONTEXT = ProtectedFastSSH.s("鹪");

    public OtelIdResolver(Context context) {
        this.context = context;
    }

    private final String extractAppIdFromConfig(JSONObject configModel) throws JSONException {
        if (configModel == null) {
            return null;
        }
        OtelIdResolver$extractAppIdFromConfig$appIdProperty$1 otelIdResolver$extractAppIdFromConfig$appIdProperty$1 = OtelIdResolver$extractAppIdFromConfig$appIdProperty$1.INSTANCE;
        if (!configModel.has(otelIdResolver$extractAppIdFromConfig$appIdProperty$1.getName())) {
            return null;
        }
        String string = configModel.getString(otelIdResolver$extractAppIdFromConfig$appIdProperty$1.getName());
        return string.length() != 0 ? string : null;
    }

    private final LogLevel extractLogLevelFromParams(JSONObject remoteLoggingParams) {
        LogLevel.Companion companion = LogLevel.INSTANCE;
        String strS = ProtectedFastSSH.s("鹫");
        return companion.fromString(remoteLoggingParams.has(strS) ? remoteLoggingParams.getString(strS) : null);
    }

    private final String extractOnesignalIdFromJson(String identityStoreJson) throws JSONException {
        JSONArray jSONArray = new JSONArray(identityStoreJson);
        if (jSONArray.length() > 0) {
            JSONObject jSONObject = jSONArray.getJSONObject(0);
            String strS = ProtectedFastSSH.s("鹬");
            if (jSONObject.has(strS)) {
                String string = jSONObject.getString(strS);
                Intrinsics.checkNotNull(string);
                if (string.length() > 0 && !IDManager.INSTANCE.isLocalId(string)) {
                    return string;
                }
            }
        }
        return null;
    }

    private final SharedPreferences getSharedPreferences() {
        Context context = this.context;
        if (context != null) {
            return context.getSharedPreferences(ProtectedFastSSH.s("鹭"), 0);
        }
        return null;
    }

    private final boolean hasEmptyConfigStore() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences();
            String string = sharedPreferences != null ? sharedPreferences.getString(ProtectedFastSSH.s("鹮"), null) : null;
            return string != null && string.length() > 0 && new JSONArray(string).length() == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    private final JSONObject readConfigModel() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences();
            String string = sharedPreferences != null ? sharedPreferences.getString(ProtectedFastSSH.s("鹮"), null) : null;
            if (string == null || string.length() <= 0) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(string);
            if (jSONArray.length() > 0) {
                return jSONArray.getJSONObject(0);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private final String resolveAppIdFromLegacy(JSONObject configModel) {
        String string;
        String str = null;
        try {
            SharedPreferences sharedPreferences = getSharedPreferences();
            if (sharedPreferences != null && (string = sharedPreferences.getString(ProtectedFastSSH.s("鹯"), null)) != null && string.length() > 0) {
                str = string;
            }
        } catch (Exception unused) {
        }
        if (str != null) {
            return str;
        }
        if (this.context == null) {
            return ProtectedFastSSH.s("鹪");
        }
        if (hasEmptyConfigStore()) {
            return ProtectedFastSSH.s("鹧");
        }
        if (configModel == null) {
            return ProtectedFastSSH.s("鹩");
        }
        return !configModel.has(ProtectedFastSSH.s("鹰")) ? ProtectedFastSSH.s("鹦") : ProtectedFastSSH.s("鹥");
    }

    public final String resolveAppId() {
        try {
            JSONObject configModel = readConfigModel();
            String strExtractAppIdFromConfig = extractAppIdFromConfig(configModel);
            return strExtractAppIdFromConfig == null ? resolveAppIdFromLegacy(configModel) : strExtractAppIdFromConfig;
        } catch (Exception e) {
            Logging.error$default(ProtectedFastSSH.s("鹱") + e.getMessage(), null, 2, null);
            return ProtectedFastSSH.s("鹨");
        }
    }

    public final String resolveInstallId() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences();
            String strS = ProtectedFastSSH.s("鹲");
            String string = sharedPreferences != null ? sharedPreferences.getString(ProtectedFastSSH.s("鹳"), strS) : null;
            return string == null ? strS : string;
        } catch (Exception unused) {
            return ProtectedFastSSH.s("鹴");
        }
    }

    public final String resolveOnesignalId() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences();
            String string = sharedPreferences != null ? sharedPreferences.getString(ProtectedFastSSH.s("鹵"), null) : null;
            if (string == null || string.length() <= 0) {
                return null;
            }
            return extractOnesignalIdFromJson(string);
        } catch (Exception unused) {
            return null;
        }
    }

    public final String resolvePushSubscriptionId() {
        try {
            JSONObject configModel = readConfigModel();
            OtelIdResolver$resolvePushSubscriptionId$pushSubscriptionIdProperty$1 otelIdResolver$resolvePushSubscriptionId$pushSubscriptionIdProperty$1 = OtelIdResolver$resolvePushSubscriptionId$pushSubscriptionIdProperty$1.INSTANCE;
            if (configModel != null && configModel.has(otelIdResolver$resolvePushSubscriptionId$pushSubscriptionIdProperty$1.getName())) {
                String string = configModel.getString(otelIdResolver$resolvePushSubscriptionId$pushSubscriptionIdProperty$1.getName());
                Intrinsics.checkNotNull(string);
                if (string.length() > 0) {
                    IDManager iDManager = IDManager.INSTANCE;
                    Intrinsics.checkNotNull(string);
                    if (!iDManager.isLocalId(string)) {
                        return string;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final LogLevel resolveRemoteLogLevel() {
        try {
            JSONObject configModel = readConfigModel();
            OtelIdResolver$resolveRemoteLogLevel$remoteLoggingParamsProperty$1 otelIdResolver$resolveRemoteLogLevel$remoteLoggingParamsProperty$1 = OtelIdResolver$resolveRemoteLogLevel$remoteLoggingParamsProperty$1.INSTANCE;
            if (configModel == null || !configModel.has(otelIdResolver$resolveRemoteLogLevel$remoteLoggingParamsProperty$1.getName())) {
                return null;
            }
            JSONObject jSONObject = configModel.getJSONObject(otelIdResolver$resolveRemoteLogLevel$remoteLoggingParamsProperty$1.getName());
            Intrinsics.checkNotNullExpressionValue(jSONObject, ProtectedFastSSH.s("鹶"));
            return extractLogLevelFromParams(jSONObject);
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean resolveRemoteLoggingEnabled() {
        try {
            LogLevel logLevelResolveRemoteLogLevel = resolveRemoteLogLevel();
            return (logLevelResolveRemoteLogLevel == null || logLevelResolveRemoteLogLevel == LogLevel.NONE) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }
}
