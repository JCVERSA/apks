package com.just.agentweb;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.transsion.hubsdk.api.os.TranSystemProperties;
import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;
import org.apache.commons.text.StringSubstitutor;

public final class RomUtils {
    private static final String UNKNOWN = "unknown";
    private static final String VERSION_PROPERTY_HUAWEI = "ro.build.version.emui";
    private static final String[] ROM_HUAWEI = {"huawei"};
    private static RomInfo bean = null;

    public static class RomInfo {
        private String name;
        private String version;

        public String getName() {
            return this.name;
        }

        public String getVersion() {
            return this.version;
        }

        public String toString() {
            return "RomInfo{name=" + this.name + ", version=" + this.version + StringSubstitutor.DEFAULT_VAR_END;
        }
    }

    private RomUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    private static String getBrand() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String getManufacturer() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    public static RomInfo getRomInfo() {
        RomInfo romInfo = bean;
        if (romInfo != null) {
            return romInfo;
        }
        bean = new RomInfo();
        String brand = getBrand();
        String manufacturer = getManufacturer();
        String[] strArr = ROM_HUAWEI;
        if (!isRightRom(brand, manufacturer, strArr)) {
            bean.name = manufacturer;
            bean.version = getRomVersion("");
            return bean;
        }
        bean.name = strArr[0];
        String romVersion = getRomVersion(VERSION_PROPERTY_HUAWEI);
        String[] strArrSplit = romVersion.split("_");
        if (strArrSplit.length > 1) {
            bean.version = strArrSplit[1];
        } else {
            bean.version = romVersion;
        }
        return bean;
    }

    private static String getRomVersion(String str) {
        String systemProperty = !TextUtils.isEmpty(str) ? getSystemProperty(str) : "";
        if (TextUtils.isEmpty(systemProperty) || systemProperty.equals("unknown")) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    systemProperty = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(systemProperty) ? "unknown" : systemProperty;
    }

    private static String getSystemProperty(String str) {
        String systemPropertyByStream = getSystemPropertyByStream(str);
        TextUtils.isEmpty(systemPropertyByStream);
        return systemPropertyByStream;
    }

    private static String getSystemPropertyByReflect(String str) {
        return TranSystemProperties.get(str);
    }

    private static String getSystemPropertyByStream(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                String property = properties.getProperty(str, "");
                fileInputStream.close();
                return property;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception unused) {
            com.blankj.utilcode.util.LogUtils.m("RomUtils", "getSystemPropertyByStream error");
            return "";
        }
    }

    public static boolean isHuawei() {
        return ROM_HUAWEI[0].equals(getRomInfo().name);
    }

    private static boolean isRightRom(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }
}
