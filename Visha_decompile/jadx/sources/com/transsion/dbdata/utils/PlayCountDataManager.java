package com.transsion.dbdata.utils;

import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import defpackage.fi1;
import java.util.HashMap;
import java.util.Map;

public class PlayCountDataManager {
    public static final String b = "PlayCountDataManager";
    public static PlayCountDataManager c = new PlayCountDataManager();
    public Map a = null;

    public static PlayCountDataManager b() {
        return c;
    }

    public int a(String str) {
        c();
        if (this.a.get(str) == null) {
            return 0;
        }
        return ((Integer) this.a.get(str)).intValue();
    }

    public void c() {
        if (this.a == null) {
            try {
                String string = MMKV.p().getString("playCount", "");
                if (TextUtils.isEmpty(string)) {
                    this.a = new HashMap();
                } else {
                    Map map = (Map) fi1.c(string, new TypeToken<HashMap<String, Integer>>() {
                    }.getType());
                    this.a = map;
                    if (map == null) {
                        this.a = new HashMap();
                    }
                }
            } catch (Exception e) {
                LogUtils.m(b, "Exception:" + e.getMessage());
                if (this.a == null) {
                    this.a = new HashMap();
                }
            }
        }
    }

    public void d(String str) {
        c();
        this.a.remove(str);
        MMKV.p().w("playCount", fi1.e(this.a));
    }
}
