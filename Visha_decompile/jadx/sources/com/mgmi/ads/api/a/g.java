package com.mgmi.ads.api.a;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import com.mgmi.model.VASTChannelAd;
import java.lang.ref.WeakReference;
import java.util.List;

public abstract class g implements com.mgmi.ads.api.render.a, com.mgtv.a.b.a.b {
    protected VASTChannelAd a;
    protected String b;
    protected WeakReference<Context> c;
    boolean d;
    protected com.mgtv.a.b.a e;
    protected a g;
    protected List<com.mgtv.a.b.a.a> j;
    private int m;
    protected boolean f = false;
    private boolean l = false;
    private final String n = "BaseAdView_CommonPlusVastLoader";
    protected boolean h = false;
    protected boolean i = false;
    private boolean k = true;

    public interface a {
        void a(int i);

        void a(boolean z, int i);

        void a_();

        com.mgmi.ads.api.a d();

        d e();
    }

    public g(Context context, VASTChannelAd vASTChannelAd, String str) {
        this.a = vASTChannelAd;
        this.b = str;
        this.c = new WeakReference<>(context);
    }

    public abstract void a(ViewGroup viewGroup);

    public void a(boolean z, com.mgmi.e.a aVar) {
    }

    @CallSuper
    public int b(ViewGroup viewGroup) {
        this.k = false;
        return 0;
    }

    public abstract void b();

    public abstract void c();

    public void d() {
        this.k = true;
    }

    public void e() {
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            aVar.g_();
        }
    }

    public void f() {
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            aVar.f_();
        }
    }

    public void g() {
        this.k = true;
        this.d = true;
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            aVar.s();
            this.e = null;
        }
    }

    public Context h() {
        return this.c.get();
    }

    public void i() {
        try {
            n();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public com.mgmi.ads.api.a j() {
        a aVar = this.g;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    @Override
    public void k() {
    }

    @Override
    public void l() {
    }

    public d m() {
        a aVar = this.g;
        if (aVar != null) {
            return aVar.e();
        }
        return null;
    }

    public void n() {
        if (this.e != null) {
            if (j() != null) {
                this.e.a(j().isFullScreen() ? "1" : "2");
            } else {
                this.e.a("2");
            }
        }
    }

    public void a() {
        a aVar = this.g;
        if (aVar != null) {
            aVar.a_();
        }
    }

    public void b(int i) {
        a aVar = this.g;
        if (aVar != null) {
            this.f = true;
            aVar.a(i);
        }
    }

    public void a(int i) {
        this.m = i;
    }

    public void a(a aVar) {
        this.g = aVar;
    }

    public void a(boolean z, int i) {
        a aVar = this.g;
        if (aVar != null) {
            this.f = false;
            aVar.a(z, i);
        }
    }

    public void a(VASTChannelAd vASTChannelAd, @NonNull Context context, String str) {
        if (context == null) {
            return;
        }
        new com.mgmi.ads.api.render.c(this, str).a();
    }
}
