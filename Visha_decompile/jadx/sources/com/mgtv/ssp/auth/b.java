package com.mgtv.ssp.auth;

import android.text.TextUtils;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.bean.config.SspSpaceConfig;

public class b {
    private static b e;
    private int a = -1;
    private SspSdkConfig b;
    private com.mgtv.ssp.bean.config.a c;
    private SspSpaceConfig d;

    public static b a() {
        if (e == null) {
            synchronized (b.class) {
                try {
                    if (e == null) {
                        e = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public int b() {
        return this.a;
    }

    public com.mgtv.ssp.bean.config.a c() {
        return this.c;
    }

    public SspSpaceConfig d() {
        return this.d;
    }

    public SspSdkConfig e() {
        return this.b;
    }

    public boolean f() {
        SspSdkConfig sspSdkConfig;
        return (this.a != 0 || this.c == null || TextUtils.isEmpty(com.mgtv.ssp.bean.config.a.a()) || (sspSdkConfig = this.b) == null || sspSdkConfig.getStatus() != 0) ? false : true;
    }

    public void a(SspSdkConfig sspSdkConfig) {
        this.b = sspSdkConfig;
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(com.mgtv.ssp.bean.config.a aVar) {
        this.c = aVar;
    }

    public void a(SspSpaceConfig sspSpaceConfig) {
        this.d = sspSpaceConfig;
    }
}
