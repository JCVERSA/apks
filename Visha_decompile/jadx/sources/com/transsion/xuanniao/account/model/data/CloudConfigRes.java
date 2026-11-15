package com.transsion.xuanniao.account.model.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.R;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.lang3.BooleanUtils;

public class CloudConfigRes implements Serializable {
    public static final int TYPE_CAPTURE_OPEN = 7;
    public static final int TYPE_CODE_REMAIN_TIME = 8;
    public static final int TYPE_PRIVACY_UPDATE = 15;
    public static final int TYPE_SUPPORT_LIST = 14;
    public static final String UNIT_HOUR = "hour";
    public static final String UNIT_TIMES = "times";
    public ArrayList<ConfigItem> cloudClientConfigs;
    public long sysTime;
    public long timeStamp;
    public long validPeriod;
    public String versionId;
    public String versionName;

    public static class Condition implements Serializable {
        public int range;
        public String unit;
    }

    public static class ConfigItem implements Serializable {
        public String configId;
        public HashMap<String, Object> configMap;
        public String configName;
        public int type;
        public String typeName;
    }

    public static boolean captureOpen(Context context) {
        HashMap<String, Object> map;
        ConfigItem config = getConfig(context, 7);
        if (config == null || (map = config.configMap) == null || !map.containsKey("capture-open")) {
            return false;
        }
        return BooleanUtils.TRUE.equals(config.configMap.get("capture-open"));
    }

    private static int conversionVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private static ArrayList<ConfigItem> getCloudClientConfigs(Context context) {
        String string = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getString("key_cloud_config", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return ((CloudConfigRes) new Gson().fromJson(string, CloudConfigRes.class)).cloudClientConfigs;
    }

    private static ConfigItem getConfig(Context context, int i) {
        ArrayList<ConfigItem> cloudClientConfigs = getCloudClientConfigs(context);
        if (cloudClientConfigs == null) {
            return null;
        }
        for (int i2 = 0; i2 < cloudClientConfigs.size(); i2++) {
            if (i == cloudClientConfigs.get(i2).type) {
                return cloudClientConfigs.get(i2);
            }
        }
        return null;
    }

    public static int getCount(Context context) {
        ArrayList<ConfigItem> cloudClientConfigs = getCloudClientConfigs(context);
        if (cloudClientConfigs == null) {
            return 100;
        }
        for (int i = 0; i < cloudClientConfigs.size(); i++) {
            if (8 == cloudClientConfigs.get(i).type) {
                if (cloudClientConfigs.get(i).configMap == null || !cloudClientConfigs.get(i).configMap.containsKey("remainTime")) {
                    return 100;
                }
                return Integer.parseInt(String.valueOf(cloudClientConfigs.get(i).configMap.get("remainTime")));
            }
        }
        return 100;
    }

    public static long getValidPeriod(Context context) {
        String string = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getString("key_cloud_config", "");
        if (TextUtils.isEmpty(string)) {
            return 60000L;
        }
        return ((CloudConfigRes) new Gson().fromJson(string, CloudConfigRes.class)).validPeriod;
    }

    public static String getVersion(Context context) {
        String string = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getString("key_cloud_config", "");
        return !TextUtils.isEmpty(string) ? ((CloudConfigRes) new Gson().fromJson(string, CloudConfigRes.class)).versionId : "";
    }

    public static boolean needRefresh(Context context) {
        String string = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getString("key_cloud_config", "");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        return System.currentTimeMillis() - ((CloudConfigRes) new Gson().fromJson(string, CloudConfigRes.class)).timeStamp >= 86400000;
    }

    public static void privacyAgree(Context context) {
        HashMap<String, Object> map;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        ConfigItem config = getConfig(context, 15);
        if (config == null || (map = config.configMap) == null) {
            return;
        }
        String strValueOf = String.valueOf(map.get("privacyVersion"));
        String strValueOf2 = String.valueOf(config.configMap.get("userAgreementVersion"));
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("privacy_version", strValueOf);
        editorEdit.putString("user_agreement_version", strValueOf2);
        editorEdit.apply();
    }

    public static boolean privacyNeedAgree(Context context) {
        HashMap<String, Object> map;
        Context applicationContext = context.getApplicationContext();
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("AccountPrefs", 0);
        ConfigItem config = getConfig(context, 15);
        if (config == null || (map = config.configMap) == null) {
            return false;
        }
        return (conversionVersion(String.valueOf(map.get("privacyVersion"))) > conversionVersion(sharedPreferences.getString("privacy_version", applicationContext.getString(R.string.xn_privacy_version)))) || (conversionVersion(String.valueOf(config.configMap.get("userAgreementVersion"))) > conversionVersion(sharedPreferences.getString("user_agreement_version", applicationContext.getString(R.string.xn_user_agreement_version))));
    }

    public static String privacyVersion(Context context) {
        HashMap<String, Object> map;
        context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        ConfigItem config = getConfig(context, 15);
        return (config == null || (map = config.configMap) == null) ? "" : String.valueOf(map.get("privacyVersion"));
    }

    public static String support(Context context) {
        HashMap<String, Object> map;
        ConfigItem config = getConfig(context, 14);
        return (config == null || (map = config.configMap) == null || !map.containsKey("support")) ? "Hi Account,X Account" : String.valueOf(config.configMap.get("support")).replace(", Carlcare Account", "");
    }
}
