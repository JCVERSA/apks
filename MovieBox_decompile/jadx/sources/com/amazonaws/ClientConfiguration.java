package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import javax.net.ssl.TrustManager;

public class ClientConfiguration {

    public static final String f17665u = VersionInfoUtils.b();

    public static final RetryPolicy f17666v = PredefinedRetryPolicies.f17953b;

    private String f17668b;

    private String f17683q;

    private String f17667a = f17665u;

    private int f17669c = -1;

    private RetryPolicy f17670d = f17666v;

    private Protocol f17671e = Protocol.HTTPS;

    private String f17672f = null;

    private int f17673g = -1;

    private String f17674h = null;

    private String f17675i = null;

    private String f17676j = null;

    private String f17677k = null;

    private int f17678l = 10;

    private int f17679m = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

    private int f17680n = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

    private int f17681o = 0;

    private int f17682p = 0;

    private TrustManager f17684r = null;

    private boolean f17685s = false;

    private boolean f17686t = false;

    public int a() {
        return this.f17680n;
    }

    public int b() {
        return this.f17669c;
    }

    public Protocol c() {
        return this.f17671e;
    }

    public RetryPolicy d() {
        return this.f17670d;
    }

    public String e() {
        return this.f17683q;
    }

    public int f() {
        return this.f17679m;
    }

    public TrustManager g() {
        return this.f17684r;
    }

    public String h() {
        return this.f17667a;
    }

    public String i() {
        return this.f17668b;
    }

    public boolean j() {
        return this.f17685s;
    }

    public boolean k() {
        return this.f17686t;
    }
}
