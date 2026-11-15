package com.mbridge.msdk.video.signal.impl;

import android.content.res.Configuration;
import com.mbridge.msdk.foundation.tools.o0;

public class b implements com.mbridge.msdk.video.signal.b {
    @Override
    public void a(Configuration configuration) {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onConfigurationChanged:" + configuration.orientation);
    }

    @Override
    public void b() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onDestory");
    }

    @Override
    public void c() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onStop");
    }

    @Override
    public void d() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onResume");
    }

    @Override
    public void e() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onBackPressed");
    }

    @Override
    public void f() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onRestart");
    }

    @Override
    public void g() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onPause");
    }

    @Override
    public void h() {
        o0.a("DefaultJSActivity", "DefaultJSActivity-onStart");
    }

    @Override
    public int a() {
        o0.a("DefaultJSActivity", "isSystemResume");
        return 0;
    }

    @Override
    public void a(int i10) {
        o0.a("DefaultJSActivity", "setSystemResume,isResume:" + i10);
    }
}
