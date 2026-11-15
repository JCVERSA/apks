package com.mgtv.ssp.apkDownload;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.BaseApplication;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class b {
    private Map<String, e> a;
    private Context b;

    public static class a {
        static final b a = new b();
    }

    public static b a() {
        return a.a;
    }

    public void b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.remove(str);
    }

    public boolean c(String str) {
        return this.a.containsKey(str);
    }

    private b() {
        this.b = BaseApplication.getContext();
        this.a = new HashMap();
    }

    @Nullable
    public e a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        int iNextInt = new Random().nextInt(10000);
        if (this.b == null) {
            return null;
        }
        e eVar = new e(this.b, new Random().nextInt(10000));
        eVar.b = iNextInt;
        eVar.a();
        this.a.put(str, eVar);
        return eVar;
    }

    @Nullable
    public e a(@NonNull String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        int iNextInt = new Random().nextInt(10000);
        e eVar = new e(this.b, i);
        eVar.b = iNextInt;
        eVar.a();
        this.a.put(str, eVar);
        return eVar;
    }
}
