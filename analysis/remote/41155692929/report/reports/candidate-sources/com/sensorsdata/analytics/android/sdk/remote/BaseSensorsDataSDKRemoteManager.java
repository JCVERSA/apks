package com.sensorsdata.analytics.android.sdk.remote;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener;
import com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey;
import com.sensorsdata.analytics.android.sdk.encrypt.SensorsDataEncrypt;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.network.HttpMethod;
import com.sensorsdata.analytics.android.sdk.network.RequestHelper;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseSensorsDataSDKRemoteManager {
    protected static final String TAG = "SA.SensorsDataSDKRemoteConfigBase";
    protected static SensorsDataSDKRemoteConfig mSDKRemoteConfig;
    protected Context mContext;
    protected boolean mDisableDefaultRemoteConfig;
    protected SAConfigOptions mSAConfigOptions = SensorsDataAPI.getConfigOptions();
    protected SensorsDataAPI mSensorsDataAPI;
    protected SensorsDataEncrypt mSensorsDataEncrypt;

    public enum RandomTimeType {
        RandomTimeTypeWrite,
        RandomTimeTypeClean,
        RandomTimeTypeNone
    }

    public BaseSensorsDataSDKRemoteManager(SensorsDataAPI sensorsDataAPI) {
        this.mSensorsDataAPI = sensorsDataAPI;
        this.mContext = sensorsDataAPI.getContext();
        this.mSensorsDataEncrypt = sensorsDataAPI.getSensorsDataEncrypt();
        this.mDisableDefaultRemoteConfig = sensorsDataAPI.isDisableDefaultRemoteConfig();
    }

    public static boolean isSDKDisabledByRemote() {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null) {
            return false;
        }
        return sensorsDataSDKRemoteConfig.isDisableSDK();
    }

    private void parseSecreteKey(JSONObject jSONObject, SecreteKey secreteKey) {
        if (jSONObject != null) {
            try {
                if (jSONObject.has("key_ec") && SensorsDataEncrypt.isECEncrypt()) {
                    String strOptString = jSONObject.optString("key_ec");
                    if (!TextUtils.isEmpty(strOptString)) {
                        jSONObject = new JSONObject(strOptString);
                    }
                }
                secreteKey.key = jSONObject.optString("public_key");
                secreteKey.symmetricEncryptType = "AES";
                if (jSONObject.has("type")) {
                    String strOptString2 = jSONObject.optString("type");
                    secreteKey.key = strOptString2 + ":" + secreteKey.key;
                    secreteKey.asymmetricEncryptType = strOptString2;
                } else {
                    secreteKey.asymmetricEncryptType = "RSA";
                }
                secreteKey.version = jSONObject.optInt("pkv");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public abstract void applySDKConfigFromCache();

    public String buildRemoteUrl(boolean z) {
        String newVersion;
        SensorsDataEncrypt sensorsDataEncrypt;
        String serverUrl = this.mSensorsDataAPI.getServerUrl();
        SAConfigOptions sAConfigOptions = this.mSAConfigOptions;
        String oldVersion = null;
        String str = sAConfigOptions != null ? sAConfigOptions.mRemoteConfigUrl : null;
        if (!TextUtils.isEmpty(str) && Patterns.WEB_URL.matcher(str).matches()) {
            SALog.i(TAG, "SAConfigOptions remote url is " + str);
        } else {
            if (TextUtils.isEmpty(serverUrl) || !Patterns.WEB_URL.matcher(serverUrl).matches()) {
                SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "ServerUlr: %s, SAConfigOptions remote url: %s", serverUrl, str));
                SALog.i(TAG, "Remote config url verification failed");
                return null;
            }
            int iLastIndexOf = serverUrl.lastIndexOf("/");
            if (iLastIndexOf != -1) {
                str = serverUrl.substring(0, iLastIndexOf) + "/config/Android.conf";
            } else {
                str = null;
            }
            SALog.i(TAG, "SensorsDataAPI remote url is " + str);
        }
        if (z && (SensorsDataUtils.checkVersionIsNew(this.mContext, this.mSensorsDataAPI.getSDKVersion()) || ((sensorsDataEncrypt = this.mSensorsDataEncrypt) != null && sensorsDataEncrypt.isPublicSecretKeyNull()))) {
            z = false;
        }
        Uri uri = Uri.parse(str);
        Uri.Builder builderBuildUpon = uri.buildUpon();
        if (!TextUtils.isEmpty(str) && z) {
            SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
            if (sensorsDataSDKRemoteConfig != null) {
                oldVersion = sensorsDataSDKRemoteConfig.getOldVersion();
                newVersion = sensorsDataSDKRemoteConfig.getNewVersion();
                SALog.i(TAG, "The current config: " + sensorsDataSDKRemoteConfig.toString());
            } else {
                newVersion = null;
            }
            if (!TextUtils.isEmpty(oldVersion) && TextUtils.isEmpty(uri.getQueryParameter("v"))) {
                builderBuildUpon.appendQueryParameter("v", oldVersion);
            }
            if (!TextUtils.isEmpty(newVersion) && TextUtils.isEmpty(uri.getQueryParameter("nv"))) {
                builderBuildUpon.appendQueryParameter("nv", newVersion);
            }
        }
        if (!TextUtils.isEmpty(serverUrl) && TextUtils.isEmpty(uri.getQueryParameter("project"))) {
            String queryParameter = Uri.parse(serverUrl).getQueryParameter("project");
            if (!TextUtils.isEmpty(queryParameter)) {
                builderBuildUpon.appendQueryParameter("project", queryParameter);
            }
        }
        if (TextUtils.isEmpty(uri.getQueryParameter("app_id"))) {
            builderBuildUpon.appendQueryParameter("app_id", AppInfoUtils.getProcessName(this.mContext));
        }
        builderBuildUpon.build();
        String string = builderBuildUpon.toString();
        SALog.i(TAG, "Android remote config url is " + string);
        return string;
    }

    public boolean ignoreEvent(String str) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig != null && sensorsDataSDKRemoteConfig.getEventBlacklist() != null) {
            try {
                int length = mSDKRemoteConfig.getEventBlacklist().length();
                for (int i = 0; i < length; i++) {
                    if (str.equals(mSDKRemoteConfig.getEventBlacklist().get(i))) {
                        SALog.i(TAG, "remote config: " + str + " is ignored by remote config");
                        return true;
                    }
                }
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
        return false;
    }

    public Boolean isAutoTrackEnabled() {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null) {
            return null;
        }
        if (sensorsDataSDKRemoteConfig.getAutoTrackMode() == 0) {
            SALog.i(TAG, "remote config: AutoTrackMode is closing by remote config");
            return Boolean.FALSE;
        }
        if (mSDKRemoteConfig.getAutoTrackMode() > 0) {
            return Boolean.TRUE;
        }
        return null;
    }

    public Boolean isAutoTrackEventTypeIgnored(int i) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null || sensorsDataSDKRemoteConfig.getAutoTrackMode() == -1) {
            return null;
        }
        return mSDKRemoteConfig.getAutoTrackMode() == 0 ? Boolean.TRUE : Boolean.valueOf(mSDKRemoteConfig.isAutoTrackEventTypeIgnored(i));
    }

    public abstract void pullSDKConfigFromServer();

    public abstract void requestRemoteConfig(RandomTimeType randomTimeType, boolean z);

    public void requestRemoteConfig(boolean z, HttpCallback.StringCallback stringCallback) {
        try {
            String strBuildRemoteUrl = buildRemoteUrl(z);
            if (TextUtils.isEmpty(strBuildRemoteUrl)) {
                return;
            }
            new RequestHelper.Builder(HttpMethod.GET, strBuildRemoteUrl).callback(stringCallback).execute();
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public abstract void resetPullSDKConfigTimer();

    public abstract void setSDKRemoteConfig(SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig);

    public SensorsDataSDKRemoteConfig toSDKRemoteConfig(String str) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = new SensorsDataSDKRemoteConfig();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                sensorsDataSDKRemoteConfig.setOldVersion(jSONObject.optString("v"));
                String strOptString = jSONObject.optString("configs");
                SecreteKey secreteKey = new SecreteKey("", -1, "", "");
                if (TextUtils.isEmpty(strOptString)) {
                    sensorsDataSDKRemoteConfig.setDisableDebugMode(false);
                    sensorsDataSDKRemoteConfig.setDisableSDK(false);
                    sensorsDataSDKRemoteConfig.setAutoTrackMode(-1);
                    sensorsDataSDKRemoteConfig.setSecretKey(secreteKey);
                    sensorsDataSDKRemoteConfig.setEventBlacklist(new JSONArray());
                    sensorsDataSDKRemoteConfig.setNewVersion("");
                    sensorsDataSDKRemoteConfig.setEffectMode(0);
                } else {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    sensorsDataSDKRemoteConfig.setDisableDebugMode(jSONObject2.optBoolean("disableDebugMode", false));
                    sensorsDataSDKRemoteConfig.setDisableSDK(jSONObject2.optBoolean("disableSDK", false));
                    sensorsDataSDKRemoteConfig.setAutoTrackMode(jSONObject2.optInt("autoTrackMode", -1));
                    sensorsDataSDKRemoteConfig.setEventBlacklist(jSONObject2.optJSONArray("event_blacklist"));
                    sensorsDataSDKRemoteConfig.setNewVersion(jSONObject2.optString("nv", ""));
                    sensorsDataSDKRemoteConfig.setEffectMode(jSONObject2.optInt("effect_mode", 0));
                    if (this.mSAConfigOptions.getEncryptors() != null && !this.mSAConfigOptions.getEncryptors().isEmpty()) {
                        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("key_v2");
                        if (jSONObjectOptJSONObject != null) {
                            String[] strArrSplit = jSONObjectOptJSONObject.optString("type").split("\\+");
                            if (strArrSplit.length == 2) {
                                String str2 = strArrSplit[0];
                                String str3 = strArrSplit[1];
                                for (SAEncryptListener sAEncryptListener : this.mSAConfigOptions.getEncryptors()) {
                                    if (str2.equals(sAEncryptListener.asymmetricEncryptType()) && str3.equals(sAEncryptListener.symmetricEncryptType())) {
                                        secreteKey.key = jSONObjectOptJSONObject.optString("public_key");
                                        secreteKey.version = jSONObjectOptJSONObject.optInt("pkv");
                                        secreteKey.asymmetricEncryptType = str2;
                                        secreteKey.symmetricEncryptType = str3;
                                    }
                                }
                            }
                        }
                        if (TextUtils.isEmpty(secreteKey.key)) {
                            parseSecreteKey(jSONObject2.optJSONObject("key"), secreteKey);
                        }
                        sensorsDataSDKRemoteConfig.setSecretKey(secreteKey);
                    }
                }
                return sensorsDataSDKRemoteConfig;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return sensorsDataSDKRemoteConfig;
    }
}
