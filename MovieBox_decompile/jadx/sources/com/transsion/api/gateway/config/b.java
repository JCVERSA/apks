package com.transsion.api.gateway.config;

import android.text.TextUtils;
import com.transsion.api.gateway.bean.RemoteConfig;
import com.transsion.api.gateway.utils.ContextUtils;
import com.transsion.api.gateway.utils.GatewayUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import java.util.concurrent.atomic.AtomicBoolean;

public class b {
    private static volatile b INSTANCE;

    public a f41389a;

    public b() {
        new AtomicBoolean(false);
        try {
            b();
        } catch (Exception unused) {
        }
    }

    public static b a() {
        if (INSTANCE == null) {
            synchronized (b.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return INSTANCE;
    }

    public void b() {
        if (this.f41389a != null) {
            return;
        }
        SafeStringUtils.getInstance(ContextUtils.getContext()).getLong(SafeStringUtils.SP_LAST_CONFIG_SYNC_TIME);
        String string = SafeStringUtils.getInstance(ContextUtils.getContext()).getString(SafeStringUtils.SP_CONFIG);
        if (!TextUtils.isEmpty(string)) {
            GatewayUtils.L.d(" load from cache");
            try {
                a aVar = new a(new a.C0574a(new a(new a.C0574a())).a((RemoteConfig) com.transsion.json.b.a(string, RemoteConfig.class)));
                if (aVar.f41370d > 0) {
                    this.f41389a = aVar;
                }
                GatewayUtils.L.d(" load from cache success" + this.f41389a.toString());
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        GatewayUtils.L.d(" set config");
        this.f41389a = new a(new a.C0574a(new a(new a.C0574a())));
    }
}
