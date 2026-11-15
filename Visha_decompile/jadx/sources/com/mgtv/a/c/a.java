package com.mgtv.a.c;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.mgmi.ads.api.render.MySimpleDraweeView;
import com.mgmi.model.VASTAd;
import com.mgmi.model.m;
import com.mgmi.net.bean.BootDataItem;
import defpackage.ckd;
import defpackage.ey4;
import defpackage.lbd;
import java.io.PrintStream;

public abstract class a implements c<m> {
    protected int b;
    protected int c;
    protected int d;
    protected int e;
    protected boolean h;
    protected boolean j;
    protected boolean k;
    protected String m;
    protected String n;
    protected m o;
    protected MySimpleDraweeView p;
    protected e q;
    protected int a = 5100;
    protected int f = 2;
    protected boolean g = false;
    protected boolean i = true;
    protected boolean l = false;
    protected Handler r = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(@NonNull Message message) {
            if (message == null) {
                return;
            }
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                a.this.g();
            } else {
                a aVar = a.this;
                e eVar = aVar.q;
                if (eVar != null) {
                    eVar.a(206000, aVar.m);
                }
            }
        }
    };

    @Override
    public abstract View a();

    @Override
    public void a(boolean z) {
    }

    public String b() {
        m mVar = this.o;
        if (mVar != null) {
            if (mVar.h() instanceof VASTAd) {
                return ((VASTAd) this.o.h()).getCurrentStaticResource() != null ? ((VASTAd) this.o.h()).getCurrentStaticResource().getUrl() : "";
            }
            if ((this.o.h() instanceof BootDataItem) && ((BootDataItem) this.o.h()).url != null) {
                return ((BootDataItem) this.o.h()).url;
            }
        }
        return "";
    }

    @Override
    public void c() {
        this.g = true;
        this.c = 0;
        d();
    }

    public void d() {
        if (this.l || !this.i || this.r == null) {
            return;
        }
        e();
        this.r.sendEmptyMessageDelayed(1, this.a);
    }

    public void e() {
        Handler handler;
        if (!this.i || (handler = this.r) == null) {
            return;
        }
        handler.removeMessages(1);
    }

    public void f() {
        Handler handler = this.r;
        if (handler != null) {
            handler.removeMessages(2);
        }
    }

    public void g() {
    }

    public int h() {
        return 0;
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public void j() {
        n();
    }

    @Override
    public void k() {
        o();
    }

    @Override
    public void l() {
        this.l = true;
        this.h = false;
    }

    public boolean m() {
        return this.h;
    }

    public void n() {
        f();
    }

    public void o() {
        a(500L);
    }

    public boolean p() {
        return this.g;
    }

    @Override
    public void q() {
        this.h = false;
        this.l = true;
        e();
        f();
    }

    public void r() {
        PrintStream printStream = System.out;
        printStream.println("mCoverImage loadCover " + this.n);
        if (this.p == null || TextUtils.isEmpty(this.n)) {
            return;
        }
        printStream.println("mCoverImage loadCover loadUri " + this.p.getVisibility() + " " + this.n);
        ey4.d(this.p, Uri.parse(this.n), lbd.E, new ckd() {
            public void a() {
                System.out.println("mCoverImage onSuccess ");
            }

            public void b() {
                System.out.println("mCoverImage onError ");
            }
        });
    }

    @Override
    public void a(e eVar) {
        this.q = eVar;
    }

    @Override
    public boolean a(String str) {
        this.m = str;
        this.h = true;
        this.g = false;
        e eVar = this.q;
        if (eVar != null) {
            eVar.a();
        }
        return true;
    }

    public void b(boolean z) {
        this.i = z;
    }

    public void b(int i) {
        this.f = i;
    }

    public void a(boolean z, boolean z2, int i) {
        this.j = z;
        this.k = z2;
        this.e = i;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(long j) {
        if (this.l || this.r == null) {
            return;
        }
        f();
        this.r.sendEmptyMessageDelayed(2, j);
    }

    public void a(m mVar) {
        if (mVar == null) {
            mVar = new m();
        }
        this.o = mVar;
    }
}
