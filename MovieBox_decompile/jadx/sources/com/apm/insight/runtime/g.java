package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import com.apm.insight.ICommonParams;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class g {

    private String f19185a = null;

    private int f19186b = -1;

    public static com.apm.insight.nativecrash.b a(Context context) {
        return new com.apm.insight.nativecrash.b(context, new ICommonParams() {
            @Override
            public final Map<String, Object> getCommonParams() {
                return new HashMap();
            }

            @Override
            public final String getDeviceId() {
                return null;
            }

            @Override
            public final List<String> getPatchInfo() {
                return null;
            }

            @Override
            public final Map<String, Integer> getPluginInfo() {
                return null;
            }

            @Override
            public final String getSessionId() {
                return null;
            }

            @Override
            public final long getUserId() {
                return 0L;
            }
        });
    }

    public final boolean b() {
        return this.f19185a != null;
    }

    public final void a(String str) {
        this.f19185a = str;
        o.a().a(str);
    }

    public final String a() {
        if (!TextUtils.isEmpty(this.f19185a) && !"0".equals(this.f19185a)) {
            return this.f19185a;
        }
        String strD = com.apm.insight.e.a().d();
        this.f19185a = strD;
        if (!TextUtils.isEmpty(strD) && !"0".equals(this.f19185a)) {
            return this.f19185a;
        }
        String strB = o.a().b();
        this.f19185a = strB;
        return strB;
    }
}
