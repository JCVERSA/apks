package com.cloud.hisavana.sdk;

import android.os.Bundle;

public class h0 {

    protected Bundle f21879a = new Bundle();

    protected int f21880b = 0;

    protected int f21881c = 0;

    protected void a() {
        this.f21879a.putInt("s_material_cache", 2);
    }

    protected void b(int i10) {
        if (i10 == 250) {
            this.f21881c = 2;
        } else {
            this.f21881c = 1;
        }
    }

    protected void c(boolean z10) {
        if (z10) {
            this.f21879a.putInt("s_material_cache", 1);
        } else {
            this.f21879a.putInt("s_material_cache", 2);
        }
    }

    protected void d() {
        if (this.f21881c == 1 || this.f21880b == 1) {
            this.f21879a.putInt("s_material_cache", 1);
        } else {
            this.f21879a.putInt("s_material_cache", 2);
        }
    }

    protected void e(int i10) {
        if (i10 == 250) {
            this.f21879a.putInt("s_material_cache", 2);
        } else {
            this.f21879a.putInt("s_material_cache", 1);
        }
    }

    protected void f(int i10) {
        if (i10 == 250) {
            this.f21880b = 2;
        } else {
            this.f21880b = 1;
        }
    }
}
