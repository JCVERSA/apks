package com.hunantv.imgo.a;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.data.BigDataApplistData;
import com.hunantv.imgo.util.PreferencesUtil;

public class a extends b {
    private a(Context context) {
        super(context);
    }

    public static a a(Context context) {
        return new a(context);
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.q();
    }

    public void a() {
        String strA = PreferencesUtil.a("pref_start_time");
        String strA2 = com.hunantv.imgo.util.f.a();
        if (TextUtils.equals(strA2, strA)) {
            return;
        }
        PreferencesUtil.a("pref_start_time", strA2);
        this.a.a(b(), new BigDataApplistData().getRequestParams().toJson(), (com.hunantv.imgo.report.a) null);
    }
}
