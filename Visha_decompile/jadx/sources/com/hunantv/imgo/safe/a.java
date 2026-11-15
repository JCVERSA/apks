package com.hunantv.imgo.safe;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.text.TextUtils;
import com.hunantv.imgo.BaseApplication;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

public class a {
    private static a a;
    private SafeInformationInterface b;
    private String d = "";
    private Context c = BaseApplication.getContext();

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                try {
                    if (a == null) {
                        a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public String b() {
        SafeInformationInterface safeInformationInterface = this.b;
        String androidId = safeInformationInterface != null ? safeInformationInterface.getAndroidId() : "";
        if (!TextUtils.isEmpty(androidId)) {
            return androidId;
        }
        try {
            androidId = Settings.Secure.getString(this.c.getContentResolver(), "android_id");
            if (TextUtils.equals("9774d56d682e549c", androidId)) {
                return null;
            }
            return androidId;
        } catch (Throwable unused) {
            return androidId;
        }
    }

    public String c() {
        SafeInformationInterface safeInformationInterface = this.b;
        return safeInformationInterface != null ? safeInformationInterface.getDeviceId() : "";
    }

    public String d() {
        SafeInformationInterface safeInformationInterface = this.b;
        if (safeInformationInterface != null) {
            this.d = safeInformationInterface.getMac();
        } else {
            try {
                if (!TextUtils.isEmpty(this.d)) {
                    return this.d;
                }
                WifiManager wifiManager = (WifiManager) this.c.getApplicationContext().getSystemService("wifi");
                if (wifiManager == null) {
                    String strE = e();
                    this.d = strE;
                    return strE;
                }
                String macAddress = wifiManager.getConnectionInfo().getMacAddress();
                this.d = macAddress;
                if (!TextUtils.isEmpty(macAddress)) {
                    return this.d;
                }
                String strE2 = e();
                this.d = strE2;
                return strE2;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return this.d;
    }

    public String e() {
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ").getInputStream()));
            String line = "";
            while (line != null) {
                line = lineNumberReader.readLine();
                if (line != null) {
                    return line.trim();
                }
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(SafeInformationInterface safeInformationInterface) {
        this.b = safeInformationInterface;
    }
}
