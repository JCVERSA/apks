package com.mgmi.ads.api.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mgadplus.mgutil.SourceKitLogger;
import java.lang.ref.WeakReference;

public class c implements d {
    private RelativeLayout.LayoutParams B;
    private String a;
    private com.mgmi.g.a c;
    private int d;
    private com.mgmi.platform.d e;
    private WeakReference<ViewGroup> f;
    private com.mgmi.platform.d g;
    private com.mgmi.ads.api.a h;
    private com.mgmi.platform.view.a i;
    private boolean j;
    private WeakReference<View> k;
    private WeakReference<View> l;
    private boolean q;
    private int r;
    private String b = "";
    private int m = -1;
    private int n = -2;
    private int o = -1;
    private boolean p = false;
    private long s = 10000;
    private boolean t = false;
    private String u = "";
    private String v = "";
    private boolean w = true;
    private boolean x = false;
    private boolean y = false;
    private boolean z = true;
    private boolean A = false;

    @Override
    public View a() {
        WeakReference<View> weakReference = this.k;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override
    public int c() {
        return this.n;
    }

    @Override
    public int d() {
        return this.d;
    }

    @Override
    public boolean e() {
        return this.q;
    }

    @Override
    public int f() {
        return this.r;
    }

    @Override
    public View g() {
        WeakReference<View> weakReference = this.l;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override
    public com.mgmi.ads.api.a h() {
        return this.h;
    }

    @Override
    public String i() {
        return this.a;
    }

    @Override
    @NonNull
    public String j() {
        String str = this.b;
        return str == null ? "" : str;
    }

    @Override
    public com.mgmi.g.a k() {
        if (this.c == null) {
            this.c = new com.mgmi.g.a();
        }
        return this.c;
    }

    @Override
    public com.mgmi.platform.d l() {
        return this.e;
    }

    @Override
    public com.mgmi.platform.d m() {
        return this.g;
    }

    @Override
    public ViewGroup n() {
        WeakReference<ViewGroup> weakReference = this.f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override
    public com.mgmi.platform.view.a o() {
        return this.i;
    }

    @Override
    public boolean p() {
        return this.p;
    }

    @Override
    public String q() {
        return this.v;
    }

    @Override
    public boolean r() {
        return this.w;
    }

    @Override
    public boolean s() {
        return this.z;
    }

    @Override
    public boolean t() {
        return this.A;
    }

    @Override
    public void b(int i) {
        this.n = i;
    }

    @Override
    public void c(int i) {
        this.d = i;
    }

    @Override
    public void d(int i) {
        this.o = i;
    }

    @Override
    public void e(boolean z) {
        this.z = z;
    }

    @Override
    public void f(boolean z) {
        this.A = z;
    }

    @Override
    public void a(View view) {
        this.k = new WeakReference<>(view);
    }

    @Override
    public int b() {
        return this.m;
    }

    @Override
    public d c(boolean z) {
        this.x = z;
        return this;
    }

    @Override
    public d d(boolean z) {
        this.y = z;
        return this;
    }

    @Override
    public void a(int i) {
        this.m = i;
    }

    @Override
    public void b(View view) {
        this.l = new WeakReference<>(view);
    }

    @Override
    public d a(boolean z) {
        this.j = z;
        return this;
    }

    @Override
    public d b(@NonNull String str) {
        this.b = str;
        if (TextUtils.isEmpty(str)) {
            SourceKitLogger.a("mgmiad", "AdsRequest.setAdsType is null");
        }
        return this;
    }

    @Override
    public d a(String str) {
        this.a = str;
        return this;
    }

    @Override
    public c a(com.mgmi.ads.api.a aVar) {
        this.h = aVar;
        if (aVar == null) {
            SourceKitLogger.a("mgmiad", "AdsRequest.setAdsListener is null");
        }
        return this;
    }

    @Override
    public void b(com.mgmi.platform.d dVar) {
        this.g = dVar;
        if (dVar == null) {
            SourceKitLogger.a("mgmiad", "AdsRequest.setDoublePlayer is null");
        }
    }

    @Override
    public c b(com.mgmi.g.a aVar) {
        this.c = aVar;
        if (aVar == null) {
            SourceKitLogger.a("mgmiad", "AdsRequest.setAdParam is null");
        }
        return this;
    }

    @Override
    public d b(boolean z) {
        this.w = z;
        return this;
    }

    @Override
    public void a(com.mgmi.platform.d dVar) {
        this.e = dVar;
        if (dVar == null) {
            SourceKitLogger.a("mgmiad", "AdsRequest.setPlayer is null");
        }
    }

    @Override
    public void a(ViewGroup viewGroup) {
        this.f = new WeakReference<>(viewGroup);
        if (viewGroup == null) {
            SourceKitLogger.a("mgmiad", "AdsRequest.setViewParent1 is null");
        }
    }

    @Override
    public d a(com.mgmi.platform.view.a aVar) {
        this.i = aVar;
        return this;
    }

    @Override
    public int a(Context context) {
        if (com.mgmi.ads.api.e.e.a().b()) {
            return 3;
        }
        int i = this.o;
        return i != -1 ? i : com.mgmi.f.f.h(context);
    }

    @Override
    public void a(RelativeLayout.LayoutParams layoutParams) {
        this.B = layoutParams;
    }
}
