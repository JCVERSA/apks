package cn.com.custommma.mobile.tracking.util;

import android.text.TextUtils;
import defpackage.zf;
import java.io.Serializable;
import java.util.HashMap;

public class AntiConstantStats implements Serializable {
    public static final String isAdb = "isAdb";
    public static final String isHook = "isHook";
    public static final String isRoot = "isRoot";
    public static final String isSimulator = "isSimulator";
    private static final long serialVersionUID = 1;
    private String equalizer;
    private HashMap<String, String> sensorarguments;
    private String separator;

    public String get(String str) {
        return this.sensorarguments.get(str);
    }

    public void setSensorarguments(HashMap<String, zf> map) {
        HashMap<String, String> map2 = new HashMap<>();
        if (map != null && map.size() > 0) {
            for (String str : map.keySet()) {
                if (!TextUtils.isEmpty(str)) {
                    String str2 = map.get(str).b;
                    boolean z = map.get(str).d;
                    if (!TextUtils.isEmpty(str2) && z) {
                        map2.put(str, str2);
                    }
                }
            }
        }
        this.sensorarguments = map2;
    }
}
