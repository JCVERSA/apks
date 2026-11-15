package com.pgl.ssdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

public class i0 {

    private static volatile i0 f39321a;

    private Context f39322b;

    private List<Integer> f39323c = new ArrayList();

    private i0(Context context) {
        this.f39322b = null;
        this.f39322b = context;
    }

    public static i0 a(Context context) {
        if (f39321a == null) {
            synchronized (i0.class) {
                try {
                    if (f39321a == null) {
                        f39321a = new i0(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f39321a;
    }

    public int b() {
        Intent intentRegisterReceiver = this.f39322b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return 0;
        }
        return intentRegisterReceiver.getIntExtra("plugged", 0);
    }

    public int c() {
        Intent intentRegisterReceiver = this.f39322b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return 0;
        }
        return Math.round(((intentRegisterReceiver.getIntExtra(PermissionConstant.level, 0) / intentRegisterReceiver.getIntExtra("scale", 0)) * 100.0f) * 10.0f) / 10;
    }

    public synchronized String d() {
        if (this.f39323c.size() <= 0) {
            return TmcConstants.COLD_OPEN_TYPE;
        }
        List<Integer> list = this.f39323c;
        return String.valueOf(list.get(list.size() - 1).intValue() % 10000);
    }

    public synchronized String e() {
        return new JSONArray((Collection) this.f39323c).toString();
    }

    @SuppressLint({"DefaultLocale"})
    public int f() {
        int iC;
        int iB = 0;
        try {
            synchronized (this) {
                iB = b();
                iC = c();
            }
            return (iB * 10000) + iC;
        } catch (Exception unused) {
            return iB * 10000;
        }
    }

    public void a() {
        int iF = f();
        if (iF == -1) {
            return;
        }
        this.f39323c.add(Integer.valueOf(iF));
        try {
            int size = this.f39323c.size();
            if (size > 20) {
                ArrayList arrayList = new ArrayList(this.f39323c.subList(size - 10, size));
                this.f39323c.clear();
                this.f39323c = arrayList;
            }
        } catch (Throwable unused) {
        }
    }
}
