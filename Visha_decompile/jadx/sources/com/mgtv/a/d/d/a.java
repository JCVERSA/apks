package com.mgtv.a.d.d;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.model.t;
import com.mgtv.a.c.c;
import com.mgtv.a.c.e;
import com.mgtv.a.d.b.b;
import com.mgtv.a.d.b.d;
import defpackage.l4d;
import defpackage.mpd;
import defpackage.w3d;

public class a extends b<VASTFloatAd> {
    int a;
    int b;

    public a(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
        this.a = -1;
        this.b = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void e(Context context) {
        if (this.g == 0 || context == null) {
            return;
        }
        c();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(context, this.g);
            this.n.a(this.p);
            FrameLayout.LayoutParams layoutParamsA = a((VASTFloatAd) this.g);
            l4d.g(this.k, this.n.h());
            l4d.c(this.k, this.n.h(), layoutParamsA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean w() {
        T t = this.g;
        return (t != 0 && ((VASTFloatAd) t).getAdStyle() == 3) || this.m != null;
    }

    private int x() {
        ViewGroup viewGroup = this.k;
        if (viewGroup == null || viewGroup.getWidth() <= 0) {
            return 0;
        }
        return this.k.getWidth();
    }

    private int y() {
        ViewGroup viewGroup = this.k;
        if (viewGroup == null || viewGroup.getHeight() <= 0) {
            return 0;
        }
        return this.k.getHeight();
    }

    private void z() {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar instanceof com.mgtv.a.d.d.a.a) {
            ((com.mgtv.a.d.d.a.a) aVar).a();
        }
    }

    @Override
    public void a(Context context) {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.g(this.k, aVar.h());
        }
        e(context);
        com.mgtv.a.d.b.a aVar2 = this.n;
        if (aVar2 != null) {
            aVar2.c(this.g);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(Context context) {
        T t = this.g;
        if (t != 0) {
            b((VASTFloatAd) t);
            if (this.n.j() == null) {
                e eVar = this.o;
                if (eVar != null) {
                    eVar.a("", 103000, "corner key is empty");
                    return;
                }
                return;
            }
            com.mgtv.a.d.b.e eVar2 = this.l;
            if (eVar2 != null) {
                this.m = eVar2.a(context, this.n.j(), (VASTAd) this.g);
            }
            c cVar = this.m;
            if (cVar != null) {
                cVar.a(this.q);
                ((com.mgtv.a.c.a) this.m).a(false, h(), 0);
                ((com.mgtv.a.c.a) this.m).a(((VASTFloatAd) this.g).getDuration());
            }
        }
    }

    @Override
    public boolean c(Context context) {
        a(context);
        b(context);
        return w();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void d(String str) {
        super.d(str);
        T t = this.g;
        if (t != 0 && (((VASTFloatAd) t).getAdStyle() == 7 || ((VASTFloatAd) this.g).getAdStyle() == 6 || ((VASTFloatAd) this.g).getAdStyle() == 1)) {
            d();
            return;
        }
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null && aVar.h() != null && this.n.h().getLayoutParams() != null) {
            this.n.h().setLayoutParams(a((VASTFloatAd) this.g));
        }
        b((VASTFloatAd) this.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean h() {
        T t = this.g;
        if (t != 0) {
            return ((VASTFloatAd) t).getAdStyle() == 8 || ((VASTFloatAd) this.g).getAdStyle() == 20 || ((VASTFloatAd) this.g).getAdStyle() == 1 || ((VASTFloatAd) this.g).getAdStyle() == 8 || ((VASTFloatAd) this.g).getAdStyle() == 7;
        }
        return false;
    }

    public void i() {
        if (this.n != null) {
            try {
                com.mgtv.a.d.b.e eVar = this.l;
                if (eVar != null) {
                    eVar.b();
                }
                com.mgtv.a.d.b.a aVar = this.n;
                if (aVar != null) {
                    l4d.g(this.k, aVar.h());
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public void c() {
        this.n = new com.mgtv.a.d.d.a.a();
    }

    public FrameLayout.LayoutParams a(VASTFloatAd vASTFloatAd) {
        int iA;
        int iD;
        int iB;
        int iA2;
        com.mgtv.a.d.b.a aVar;
        if (vASTFloatAd.getAdStyle() == 9) {
            return new FrameLayout.LayoutParams(-1, -1);
        }
        int i = 0;
        if (this.p != null) {
            iA = a(n(), r());
            iD = d(n());
        } else {
            iA = 0;
            iD = 0;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (vASTFloatAd.getAdStyle() == 3) {
            boolean zR = r();
            layoutParams.gravity = 83;
            if (zR) {
                layoutParams.height = w3d.a(n(), 264.0f);
                layoutParams.leftMargin = w3d.a(n(), 40.0f) + iA;
                layoutParams.bottomMargin = w3d.a(n(), 55.0f) + iD;
            } else {
                layoutParams.height = w3d.a(n(), 164.0f);
                layoutParams.leftMargin = w3d.a(n(), 40.0f);
                layoutParams.topMargin = w3d.a(n(), 30.0f);
                layoutParams.bottomMargin = w3d.a(n(), 55.0f);
            }
        } else if (vASTFloatAd.getAdStyle() == 7) {
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = w3d.a(n(), 10.0f);
        } else if (vASTFloatAd.getAdStyle() == 8) {
            if (r()) {
                d dVar = this.p;
                if (dVar != null && dVar.b() > 0) {
                    int iB2 = this.p.b();
                    layoutParams.height = (int) (((double) iB2) * 0.17d);
                    layoutParams.width = iB2;
                } else {
                    int iG = mpd.g(n()) - (iA * 2);
                    layoutParams.height = (int) (((double) iG) * 0.17d);
                    layoutParams.width = iG;
                }
            } else {
                d dVar2 = this.p;
                if (dVar2 != null && dVar2.b() > 0) {
                    int iB3 = this.p.b();
                    layoutParams.height = (int) (((double) iB3) * 0.17d);
                    layoutParams.width = iB3;
                } else {
                    int i2 = mpd.i(n());
                    layoutParams.height = (int) (((double) i2) * 0.17d);
                    layoutParams.width = i2;
                }
            }
            layoutParams.gravity = 81;
        } else if (vASTFloatAd.getAdStyle() == 11) {
            layoutParams.bottomMargin = w3d.a(n(), 30.0f);
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.gravity = 81;
        } else if (vASTFloatAd.getAdStyle() != 20) {
            d dVar3 = this.p;
            if (dVar3 != null && dVar3.b() > 0) {
                iB = this.p.b();
                iA2 = this.p.a();
                int iX = x();
                int iY = y();
                if (iA2 == 0 || iB == 0 || iA2 > iY || iB > iX) {
                    iB = iX;
                    iA2 = iY;
                }
                int i3 = (iY - iA2) / 2;
                i = i3 >= 0 ? i3 : 0;
                System.out.println("get v1 (width , height) = ( " + iB + " , " + iA2 + " )" + i);
            } else {
                if (r()) {
                    int i4 = mpd.d(n()).x;
                    iA2 = i4;
                    iB = (int) ((i4 * 16.0f) / 9.0f);
                } else {
                    iB = mpd.d(n()).x;
                    iA2 = (int) ((iB * 9.0f) / 16.0f);
                }
                System.out.println("get v2 (width , height) = ( " + iB + " , " + iA2 + " ) adsl == null");
            }
            if (vASTFloatAd.getRight() != -1.0f) {
                layoutParams.gravity = 5;
                int right = (int) ((vASTFloatAd.getRight() * iB) / 100.0f);
                layoutParams.rightMargin = right + iA;
                System.out.println("get v3 (tempRight , offsetx) = ( " + right + " , " + iA + " ) adsl == null");
            } else {
                layoutParams.gravity = 3;
                layoutParams.leftMargin = ((int) ((vASTFloatAd.getLeft() * iB) / 100.0f)) + iA;
            }
            if (vASTFloatAd.getTop() != -1.0f) {
                layoutParams.gravity |= 48;
                layoutParams.topMargin = ((int) ((vASTFloatAd.getTop() * iA2) / 100.0f)) + i;
            } else {
                layoutParams.gravity |= 80;
                layoutParams.bottomMargin = ((int) ((vASTFloatAd.getBottom() * iA2) / 100.0f)) + i;
            }
            if (vASTFloatAd.getAdStyle() == 1 && (aVar = this.n) != null) {
                aVar.a(this.f);
            }
        }
        return layoutParams;
    }

    public int d(Context context) {
        boolean zR = r();
        int iY = y();
        if (iY > 0) {
            d dVar = this.p;
            int iA = dVar != null ? dVar.a() : iY;
            if (zR) {
                int iE = com.mgmi.platform.e.e();
                if (iY > iE + 300) {
                    iY = iE;
                }
            }
            if (iY <= iA) {
                return 0;
            }
            int i = (iY - iA) / 2;
            this.b = i;
            return i;
        }
        int i2 = zR ? mpd.i(context) : 0;
        if (i2 == 0) {
            return 0;
        }
        d dVar2 = this.p;
        int iA2 = dVar2 != null ? dVar2.a() : i2;
        if (i2 <= iA2) {
            return 0;
        }
        int i3 = (i2 - iA2) / 2;
        this.b = i3;
        return i3;
    }

    private void b(VASTFloatAd vASTFloatAd) {
        int iA;
        int iA2;
        double height;
        int iA3;
        int iA4;
        int i;
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar == null || aVar.j() == null || vASTFloatAd == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.n.j().getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        }
        if (vASTFloatAd.getAdStyle() == 4) {
            int iX = x();
            if (iX > 0) {
                i = iX;
            } else if (r()) {
                i = mpd.d(n()).y;
            } else {
                i = mpd.d(n()).x;
            }
            int i2 = (int) (((double) i) / 2.27d);
            layoutParams.width = i2;
            layoutParams.height = i2 / 5;
            this.n.j().setLayoutParams(layoutParams);
            System.out.println("width  adw " + i + " w " + iX + " width " + layoutParams.width + " height " + layoutParams.height);
            return;
        }
        if (vASTFloatAd.getAdStyle() != 2 && vASTFloatAd.getAdStyle() != 0) {
            if (vASTFloatAd.getAdStyle() == 7) {
                if (r()) {
                    iA3 = w3d.a(n(), 417.0f);
                    iA4 = w3d.a(n(), 72.0f);
                } else {
                    iA3 = w3d.a(n(), 265.0f);
                    iA4 = w3d.a(n(), 46.0f);
                }
                layoutParams.height = iA4;
                layoutParams.width = iA3;
                this.n.j().setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        float adWratio = vASTFloatAd.getCurrentStaticResource().getAdWratio();
        if (adWratio > 0.0f) {
            int width = 1;
            if (r()) {
                int iX2 = x();
                if (iX2 <= 0) {
                    iX2 = mpd.d(n()).y;
                }
                iA = (int) (iX2 * adWratio);
                height = ((double) iA) * 1.0d * ((double) vASTFloatAd.getCurrentStaticResource().getHeight());
                if (vASTFloatAd.getCurrentStaticResource().getWidth() > 0) {
                    width = vASTFloatAd.getCurrentStaticResource().getWidth();
                }
            } else {
                int iX3 = x();
                if (iX3 <= 0) {
                    iX3 = mpd.d(n()).x;
                }
                iA = (int) (iX3 * adWratio);
                height = ((double) iA) * 1.0d * ((double) vASTFloatAd.getCurrentStaticResource().getHeight());
                if (vASTFloatAd.getCurrentStaticResource().getWidth() > 0) {
                    width = vASTFloatAd.getCurrentStaticResource().getWidth();
                }
            }
            iA2 = (int) (height / ((double) width));
        } else {
            iA = w3d.a(com.mgmi.ads.api.c.a(), vASTFloatAd.getCurrentStaticResource().getWidth() / 2);
            iA2 = w3d.a(com.mgmi.ads.api.c.a(), vASTFloatAd.getCurrentStaticResource().getHeight() / 2);
        }
        layoutParams.height = iA2;
        layoutParams.width = iA;
        this.n.j().setLayoutParams(layoutParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void d() {
        try {
            Context context = this.j;
            if (context != null && this.g != 0) {
                if (!c(context)) {
                    return;
                }
                if (((VASTFloatAd) this.g).getAdStyle() == 7) {
                    t voteMessage = ((VASTFloatAd) this.g).getVoteMessage();
                    if (this.m != null && voteMessage != null && !TextUtils.isEmpty(voteMessage.d())) {
                        this.m.a(voteMessage.d());
                    }
                } else if (this.m != null && ((VASTFloatAd) this.g).getCurrentStaticResource() != null && !TextUtils.isEmpty(((VASTFloatAd) this.g).getCurrentStaticResource().getUrl())) {
                    this.m.a(((VASTFloatAd) this.g).getCurrentStaticResource().getUrl());
                }
            }
            z();
            super.d();
        } catch (Throwable unused) {
        }
    }

    @Override
    public void b() {
        super.b();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.f(aVar.h(), 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b A[PHI: r7
      0x001b: PHI (r7v10 int) = (r7v6 int), (r7v11 int) binds: [B:13:0x0021, B:10:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    public int a(Context context, boolean z) {
        int iA;
        int iA2;
        int iX = x();
        if (iX > 0) {
            d dVar = this.p;
            int iB = dVar != null ? dVar.b() : iX;
            if (z) {
                iA2 = mpd.g(context);
                if (iX > iA2 + 300) {
                    iX = iA2;
                }
            } else {
                iA2 = mpd.a(context);
                if (iX > iA2) {
                    iX = iA2;
                }
            }
            System.out.println("get vv (viewContainerW , videoWidth) = ( " + iX + " , " + iB + " ) sc = " + iA2 + " sland = " + z);
            if (iX <= iB) {
                return 0;
            }
            int i = (iX - iB) / 2;
            this.a = i;
            return i;
        }
        System.out.println("get vv Point sland = " + z);
        if (z) {
            iA = mpd.g(context);
        } else {
            iA = mpd.a(context);
        }
        if (iA == 0) {
            return 0;
        }
        d dVar2 = this.p;
        int iB2 = dVar2 != null ? dVar2.b() : iA;
        if (iA <= iB2) {
            return 0;
        }
        int i2 = (iA - iB2) / 2;
        this.a = i2;
        return i2;
    }

    @Override
    public void a() {
        super.a();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.f(aVar.h(), 8);
        }
    }
}
