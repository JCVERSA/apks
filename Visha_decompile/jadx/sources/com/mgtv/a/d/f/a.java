package com.mgtv.a.d.f;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewpager.widget.ViewPager;
import com.mgadplus.viewgroup.convenientbanner.PauseConvenientBanner;
import com.mgadplus.viewgroup.dynamicview.ContainerFLayout;
import com.mgadplus.viewgroup.dynamicview.PreLoadingView;
import com.mgmi.R;
import com.mgmi.ads.api.AdSize;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTMediaFile;
import com.mgmi.model.VASTStaticResource;
import com.mgtv.a.c.d;
import com.mgtv.a.d.b.b;
import com.mgtv.a.d.b.e;
import defpackage.a6d;
import defpackage.dkd;
import defpackage.gjd;
import defpackage.k2d;
import defpackage.l4d;
import defpackage.w1d;
import defpackage.y5d;
import java.util.Iterator;
import java.util.List;

public class a extends b<VASTAd> {
    private ViewGroup A;
    private ViewGroup B;
    private TextView C;
    private ImageView D;
    private ImageView E;
    private PauseConvenientBanner F;
    private FrameLayout.LayoutParams G;
    private com.mgmi.ads.api.render.b H;
    protected ViewGroup a;
    private int b;
    private int r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private VASTAd w;
    private List<VASTAd> x;
    private Bitmap y;
    private ImageView z;

    public class C0174a implements y5d {
        VASTAd a;
        com.mgtv.a.c.a b;
        com.mgtv.a.d.f.a.a c;
        ContainerFLayout d;
        int e;
        VASTStaticResource f;
        VASTMediaFile g;
        PreLoadingView h;

        public C0174a() {
        }

        @Override
        public void b(int i) {
        }

        @Override
        public void c() {
            com.mgtv.a.c.a aVar = this.b;
            if (aVar != null) {
                aVar.k();
            }
        }

        @Override
        public void d() {
            com.mgtv.a.c.a aVar = this.b;
            if (aVar != null) {
                aVar.j();
            }
        }

        @Override
        public boolean e() {
            return ((b) a.this).c == 0;
        }

        @Override
        public void f() {
            com.mgtv.a.c.a aVar = this.b;
            if (aVar == null || !aVar.i()) {
                return;
            }
            this.b.j();
        }

        public View b(Context context) {
            VASTAd vASTAd = this.a;
            if (vASTAd != null) {
                if (vASTAd.getCurrentStaticResource() != null && !TextUtils.isEmpty(this.a.getCurrentStaticResource().getUrl())) {
                    this.f = this.a.getCurrentStaticResource();
                    this.e = 1;
                } else if (this.a.getCurrentStaticResource() == null || !"file/h5_zip".equalsIgnoreCase(this.a.getCurrentStaticResource().getType())) {
                    this.e = 0;
                    for (VASTMediaFile vASTMediaFile : this.a.getMediaFiles()) {
                        if (vASTMediaFile != null) {
                            this.g = vASTMediaFile;
                            break;
                        }
                    }
                } else {
                    this.e = 2;
                    this.f = this.a.getCurrentStaticResource();
                }
                if (((b) a.this).l == null) {
                    ((b) a.this).l = new e();
                }
                if (((b) a.this).l != null) {
                    this.b = (com.mgtv.a.c.a) ((b) a.this).l.a(a.this.n(), (ViewGroup) null, this.a);
                }
                if (this.b != null) {
                    int duration = this.a.getDuration();
                    if (duration == 0) {
                        duration = this.a.getAdRollTime();
                    }
                    if (duration == 0) {
                        duration = 5;
                    }
                    this.b.a(new d<VASTAd>() {
                        @Override
                        public void a(boolean z, boolean z2, boolean z3) {
                        }

                        @Override
                        public void b(String str) {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.b(str);
                            }
                        }

                        @Override
                        public void c(String str) {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.c(str);
                            }
                        }

                        @Override
                        public void d(String str) {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.d(str);
                            }
                        }

                        @Override
                        public String e(String str) {
                            if (((b) a.this).q != null) {
                                return ((b) a.this).q.e(str);
                            }
                            return null;
                        }

                        @Override
                        public void f(String str) {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.f(str);
                            }
                        }

                        @Override
                        public void g() {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.g();
                            }
                            if (a.this.F == null || a.this.F.getCount() <= 1) {
                                com.mgtv.a.c.a aVar = C0174a.this.b;
                                if (aVar != null) {
                                    aVar.c();
                                    C0174a.this.b.a(300L);
                                    return;
                                }
                                return;
                            }
                            com.mgtv.a.c.a aVar2 = C0174a.this.b;
                            if (aVar2 == null || !aVar2.p()) {
                                return;
                            }
                            a.this.F.c();
                        }

                        @Override
                        public Context h() {
                            if (((b) a.this).q != null) {
                                return ((b) a.this).q.h();
                            }
                            return null;
                        }

                        @Override
                        public int i() {
                            if (((b) a.this).q != null) {
                                return ((b) a.this).q.i();
                            }
                            return 0;
                        }

                        @Override
                        public String j() {
                            return ((b) a.this).q != null ? ((b) a.this).q.j() : new AdSize(-1, -1).toString();
                        }

                        @Override
                        public AdSize k() {
                            return ((b) a.this).q != null ? ((b) a.this).q.k() : new AdSize(-1, -1);
                        }

                        @Override
                        public boolean l() {
                            if (((b) a.this).q != null) {
                                return ((b) a.this).q.l();
                            }
                            return false;
                        }

                        @Override
                        public void a(dkd dkdVar) {
                            if (((b) a.this).p != null) {
                                ((b) a.this).p.a((View) null, dkdVar);
                            }
                        }

                        @Override
                        public void b() {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.b();
                            }
                        }

                        @Override
                        public void c() {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.c();
                            }
                        }

                        @Override
                        public void d() {
                            PreLoadingView preLoadingView = C0174a.this.h;
                            if (preLoadingView != null) {
                                preLoadingView.a();
                            }
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.d();
                            }
                        }

                        @Override
                        public void e() {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.e();
                            }
                        }

                        @Override
                        public void f() {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.f();
                            }
                        }

                        @Override
                        public void a(VASTAd vASTAd2, dkd dkdVar) {
                            if (((b) a.this).p != null) {
                                ((b) a.this).p.a((View) null, dkdVar);
                            }
                        }

                        @Override
                        public ViewGroup a(int i) {
                            if (((b) a.this).q != null) {
                                return ((b) a.this).q.a(i);
                            }
                            return null;
                        }

                        @Override
                        public void a(String str) {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.a(str);
                            }
                        }

                        @Override
                        public void a() {
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.a();
                            }
                        }

                        @Override
                        public void a(int i, int i2) {
                            com.mgtv.a.d.f.a.a aVar = C0174a.this.c;
                            if (aVar != null) {
                                aVar.a(i);
                            }
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.a(i, i2);
                            }
                        }

                        @Override
                        public void a(int i, String str) {
                            PreLoadingView preLoadingView = C0174a.this.h;
                            if (preLoadingView != null) {
                                preLoadingView.a();
                            }
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.a(i, str);
                            }
                        }

                        @Override
                        public void a(String str, int i, String str2) {
                            PreLoadingView preLoadingView = C0174a.this.h;
                            if (preLoadingView != null) {
                                preLoadingView.a();
                            }
                            if (((b) a.this).q != null) {
                                ((b) a.this).q.a(str, i, str2);
                            }
                            if (a.this.F == null || a.this.F.getCount() <= 1) {
                                a.this.s();
                            }
                        }
                    });
                    this.b.a(duration);
                    com.mgtv.a.c.a aVar = this.b;
                    if (aVar instanceof com.mgtv.a.c.b) {
                        aVar.b(false);
                    }
                    return this.b.a();
                }
            }
            return null;
        }

        @Override
        public View a(Context context, VASTAd vASTAd) {
            this.a = vASTAd;
            ContainerFLayout containerFLayout = this.d;
            if (containerFLayout != null) {
                containerFLayout.removeAllViews();
            }
            ContainerFLayout containerFLayout2 = new ContainerFLayout(context);
            this.d = containerFLayout2;
            l4d.b(containerFLayout2, b(context));
            l4d.b(this.d, a(context));
            if (this.h == null) {
                this.h = new PreLoadingView(context);
            }
            this.d.setParentViewWrf(this);
            l4d.b(this.d, this.h);
            return this.d;
        }

        public View a(Context context) {
            if (this.a == null) {
                return null;
            }
            com.mgtv.a.d.f.a.a aVar = new com.mgtv.a.d.f.a.a();
            this.c = aVar;
            aVar.a(new com.mgtv.a.d.b.d() {
                @Override
                public int a() {
                    return 0;
                }

                @Override
                public int b() {
                    return 0;
                }

                @Override
                public void c() {
                }

                @Override
                public Bitmap a(int i, int i2) {
                    return null;
                }

                @Override
                public void a(View view) {
                }

                @Override
                public void a(boolean z) {
                }

                @Override
                public void a(int i, Object obj) {
                    com.mgtv.a.c.a aVar2;
                    if (((b) a.this).p != null) {
                        ((b) a.this).p.a(i, obj);
                    }
                    if ((i == 2 || i == 4) && (aVar2 = C0174a.this.b) != null && (obj instanceof Boolean)) {
                        aVar2.a(((Boolean) obj).booleanValue());
                    }
                }

                @Override
                public void a(View view, dkd dkdVar) {
                    if (((b) a.this).p != null) {
                        ((b) a.this).p.a(view, dkdVar);
                    }
                }

                @Override
                public void a(Object obj) {
                    if (((b) a.this).p != null) {
                        ((b) a.this).p.a(C0174a.this.a);
                    }
                }
            });
            this.c.a(context, this.a);
            this.c.c(this.a);
            return this.c.h();
        }

        @Override
        public void a(Context context, int i, VASTAd vASTAd) {
            com.mgtv.a.c.a aVar;
            VASTStaticResource vASTStaticResource;
            if (vASTAd != null) {
                int i2 = this.e;
                if ((i2 != 1 && i2 != 2) || (aVar = this.b) == null || (vASTStaticResource = this.f) == null) {
                    return;
                }
                aVar.a(vASTStaticResource.getUrl());
            }
        }

        @Override
        public void a(int i) {
            ContainerFLayout containerFLayout = this.d;
            if (containerFLayout != null) {
                containerFLayout.removeAllViews();
            }
            com.mgtv.a.c.a aVar = this.b;
            if (aVar != null) {
                aVar.q();
            }
        }

        @Override
        public void b() {
            com.mgtv.a.c.a aVar = this.b;
            if (aVar != null) {
                aVar.j();
            }
        }

        @Override
        public void a() {
            com.mgtv.a.c.a aVar = this.b;
            if (aVar != null) {
                if (!aVar.m()) {
                    int i = this.e;
                    if (i != 1 && i != 2) {
                        VASTMediaFile vASTMediaFile = this.g;
                        if (vASTMediaFile != null) {
                            this.b.a(vASTMediaFile.getValue());
                        }
                    } else if (i == 2) {
                        VASTStaticResource vASTStaticResource = this.f;
                        if (vASTStaticResource != null && TextUtils.isEmpty(vASTStaticResource.getUrl())) {
                            this.b.a(this.f.getUrl());
                        }
                    } else {
                        VASTStaticResource vASTStaticResource2 = this.f;
                        if (vASTStaticResource2 != null) {
                            this.b.a(vASTStaticResource2.getUrl());
                        }
                    }
                }
                if (this.e != 1 && a.this.F != null) {
                    a.this.F.d();
                }
                com.mgtv.a.c.a aVar2 = this.b;
                if (aVar2 != null) {
                    aVar2.c();
                }
            }
        }
    }

    public a(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
        this.b = 0;
        this.r = -1;
        this.s = false;
        this.t = true;
        this.v = false;
    }

    @Override
    public void a(Context context) {
    }

    @Override
    public void c() {
    }

    public boolean x() {
        return false;
    }

    public void A() {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        if (r()) {
            float fD = com.mgmi.platform.e.d();
            float fE = com.mgmi.platform.e.e();
            float f5 = 0.3f * fE;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.B.getLayoutParams();
            marginLayoutParams.width = (int) ((16.0f * f5) / 9.0f);
            marginLayoutParams.height = (int) f5;
            this.B.setLayoutParams(marginLayoutParams);
            f = (this.B.getLayoutParams().width * 1.0f) / fD;
            f2 = (this.B.getLayoutParams().height * 1.0f) / fE;
            f3 = marginLayoutParams.leftMargin;
            f4 = fE - marginLayoutParams.bottomMargin;
            i = marginLayoutParams.height;
        } else {
            float fA = com.mgmi.platform.e.a(n());
            float f6 = (fA * 9.0f) / 16.0f;
            float f7 = 0.3f * f6;
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.B.getLayoutParams();
            marginLayoutParams2.width = (int) ((16.0f * f7) / 9.0f);
            marginLayoutParams2.height = (int) f7;
            this.B.setLayoutParams(marginLayoutParams2);
            f = (this.B.getLayoutParams().width * 1.0f) / fA;
            f2 = (this.B.getLayoutParams().height * 1.0f) / f6;
            f3 = marginLayoutParams2.leftMargin;
            f4 = f6 - marginLayoutParams2.bottomMargin;
            i = marginLayoutParams2.height;
        }
        float f8 = f4 - i;
        float f9 = f2;
        float f10 = f;
        float f11 = f3;
        try {
            try {
                if (!Float.isNaN(f10) && !Float.isNaN(f9) && !Float.isNaN(f11) && !Float.isNaN(f8)) {
                    new w1d().e(this.A).c(500).d(new Animator.AnimatorListener() {
                        @Override
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override
                        public void onAnimationEnd(Animator animator) {
                            a.this.s();
                            if (((b) a.this).p != null) {
                                ((b) a.this).p.a(3, "");
                            }
                        }

                        @Override
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override
                        public void onAnimationStart(Animator animator) {
                        }
                    }).g(f10, 1.0f, f9, 1.0f, f11, f8, 0.0f, 0.0f).h();
                    return;
                }
                try {
                    y();
                    com.mgtv.a.d.b.d dVar = this.p;
                    if (dVar != null) {
                        dVar.a(3, "");
                    }
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            y();
            com.mgtv.a.d.b.d dVar2 = this.p;
            if (dVar2 != null) {
                dVar2.a(3, "");
            }
        }
    }

    public void B() {
        l4d.f(this.B, 0);
    }

    private void C() {
        l4d.f(this.B, 8);
    }

    public void D() {
        s();
        y();
        com.mgtv.a.d.b.d dVar = this.p;
        if (dVar != null) {
            dVar.a(this.w);
        }
    }

    private void z() {
        ViewGroup viewGroup = (ViewGroup) this.a.findViewById(R.id.small_screen);
        this.A = viewGroup;
        viewGroup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (a.this.x()) {
                    return;
                }
                a.this.A();
            }
        });
        this.A.setBackground(null);
        this.A.setBackgroundColor(0);
        ((CardView) this.a.findViewById(R.id.small_bg)).setCardBackgroundColor(0);
        this.z = (ImageView) this.a.findViewById(R.id.shot_bg);
        ViewGroup viewGroup2 = (ViewGroup) this.a.findViewById(R.id.small_control);
        this.B = viewGroup2;
        viewGroup2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (a.this.x()) {
                    return;
                }
                a.this.A();
            }
        });
        this.a.findViewById(R.id.detailayout).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (((b) a.this).p != null) {
                    ((b) a.this).p.a(view, new dkd());
                }
            }
        });
        this.C = (TextView) this.a.findViewById(R.id.tvAdDetail);
        ImageView imageView = (ImageView) this.a.findViewById(R.id.ivAdLarge);
        this.D = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (((b) a.this).p != null) {
                    ((b) a.this).p.a(true);
                }
            }
        });
        ImageView imageView2 = (ImageView) this.a.findViewById(R.id.mgmi_back_button);
        this.E = imageView2;
        imageView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                a.this.u = true;
                a.this.D();
            }
        });
        if (r()) {
            l4d.f(this.E, 0);
            l4d.f(this.D, 8);
        } else {
            l4d.f(this.E, 8);
            l4d.f(this.D, 0);
        }
    }

    @Override
    public void d() {
        this.e = true;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0028 A[PHI: r1
      0x0028: PHI (r1v8 int) = (r1v1 int), (r1v2 int) binds: [B:5:0x0026, B:8:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, com.mgmi.model.VASTAd] */
    public void h() {
        int adRollTime = this.x.get(0).getAdRollTime();
        VASTAd vASTAd = this.x.get(0);
        this.w = vASTAd;
        this.g = vASTAd;
        b(vASTAd);
        if (this.x.size() <= 1) {
            this.F.setCanLoop(false);
            this.F.a(false);
            this.F.setManualPageable(false);
            return;
        }
        int i = 3;
        if (adRollTime < 3) {
            adRollTime = i;
        } else {
            i = 10;
            if (adRollTime > 10) {
                adRollTime = i;
            }
        }
        this.F.setCanLoop(true);
        this.F.a(true);
        this.F.a(adRollTime * 1000);
        this.F.setManualPageable(true);
        this.F.a(PauseConvenientBanner.c.CENTER_HORIZONTAL);
        this.F.a(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrollStateChanged(int i2) {
            }

            @Override
            public void onPageScrolled(int i2, float f, int i3) {
            }

            @Override
            public void onPageSelected(int i2) {
                int i3 = i2 % a.this.b;
                a aVar = a.this;
                aVar.w = (VASTAd) aVar.x.get(i3);
                a aVar2 = a.this;
                ((b) aVar2).g = aVar2.w;
                a aVar3 = a.this;
                aVar3.b((VASTAd) ((b) aVar3).g);
            }
        });
    }

    public void i() {
        PauseConvenientBanner pauseConvenientBanner = this.F;
        if (pauseConvenientBanner != null) {
            pauseConvenientBanner.a(new k2d() {
                @Override
                public Object a(int i) {
                    if (a.this.x == null || i >= a.this.x.size() || a.this.x.get(i) == null) {
                        return null;
                    }
                    return a.this.new C0174a();
                }
            }, this.x).a(new int[]{R.drawable.shape_circle_3, R.drawable.shape_circle_3_y});
            h();
        }
    }

    @Override
    public void s() {
        y();
        l4d.g(this.k, this.a);
        super.s();
    }

    public void w() {
        Bitmap bitmapA;
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        com.mgtv.a.d.b.d dVar;
        if (this.s) {
            if (this.y == null && (dVar = this.p) != null) {
                this.y = dVar.a(-1, -1);
            }
            if (r()) {
                float fD = com.mgmi.platform.e.d();
                float fE = com.mgmi.platform.e.e();
                Bitmap bitmap = this.y;
                bitmapA = bitmap != null ? gjd.a(bitmap, fD, fE) : null;
                float f5 = 0.3f * fE;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.B.getLayoutParams();
                marginLayoutParams.width = (int) ((16.0f * f5) / 9.0f);
                marginLayoutParams.height = (int) f5;
                this.B.setLayoutParams(marginLayoutParams);
                f = (this.B.getLayoutParams().width * 1.0f) / fD;
                f2 = (this.B.getLayoutParams().height * 1.0f) / fE;
                f3 = marginLayoutParams.leftMargin;
                f4 = fE - marginLayoutParams.bottomMargin;
                i = marginLayoutParams.height;
            } else {
                float fA = com.mgmi.platform.e.a(n());
                float f6 = (fA * 9.0f) / 16.0f;
                float f7 = 0.3f * f6;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.B.getLayoutParams();
                marginLayoutParams2.width = (int) ((16.0f * f7) / 9.0f);
                marginLayoutParams2.height = (int) f7;
                this.B.setLayoutParams(marginLayoutParams2);
                Bitmap bitmap2 = this.y;
                bitmapA = bitmap2 != null ? gjd.a(bitmap2, fA, f6) : null;
                f = (this.B.getLayoutParams().width * 1.0f) / fA;
                f2 = (this.B.getLayoutParams().height * 1.0f) / f6;
                f3 = marginLayoutParams2.leftMargin;
                f4 = f6 - marginLayoutParams2.bottomMargin;
                i = marginLayoutParams2.height;
            }
            float f8 = f4 - i;
            float f9 = f2;
            float f10 = f;
            float f11 = f3;
            if (bitmapA != null) {
                this.z.setImageBitmap(bitmapA);
            }
            C();
            new w1d().e(this.A).c(500).d(new Animator.AnimatorListener() {
                @Override
                public void onAnimationCancel(Animator animator) {
                }

                @Override
                public void onAnimationEnd(Animator animator) {
                    a.this.B();
                }

                @Override
                public void onAnimationRepeat(Animator animator) {
                }

                @Override
                public void onAnimationStart(Animator animator) {
                }
            }).b(1.0f, f10, 1.0f, f9, f11, f8, 0.0f, 0.0f).h();
        }
    }

    public void y() {
        com.mgmi.ads.api.render.b bVar = this.H;
        if (bVar != null) {
            bVar.a();
            this.H = null;
        }
        PauseConvenientBanner pauseConvenientBanner = this.F;
        if (pauseConvenientBanner != null) {
            pauseConvenientBanner.e();
        }
        this.G = null;
    }

    private ViewGroup d(Context context) {
        View viewFindViewById;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.s) {
            this.a = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_super_pauseview_layout_new, (ViewGroup) null);
            z();
        } else {
            this.a = (ViewGroup) layoutInflaterFrom.inflate(R.layout.mgmi_pauseview_layout_new, (ViewGroup) null);
        }
        if (this.s && (viewFindViewById = this.a.findViewById(R.id.close_ad)) != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    a.this.u = true;
                    a.this.D();
                }
            });
        }
        PauseConvenientBanner pauseConvenientBanner = (PauseConvenientBanner) this.a.findViewById(R.id.contentcontainer);
        this.F = pauseConvenientBanner;
        pauseConvenientBanner.a(new a6d() {
            @Override
            public void a(int i, dkd dkdVar) {
                if (((b) a.this).p != null) {
                    a aVar = a.this;
                    if (aVar.a(aVar.w)) {
                        return;
                    }
                    ((b) a.this).p.a(a.this.a, dkdVar);
                }
            }
        });
        return this.a;
    }

    @Override
    public void b(Context context) {
        d(context);
        i();
    }

    @Override
    public boolean c(Context context) {
        if (this.x.get(0) != null) {
            this.s = this.x.get(0).getAdStyle() == 3;
        }
        b(context);
        a(context);
        List<VASTAd> list = this.x;
        if (list != null) {
            a(list.get(0), true);
        }
        l4d.g(this.k, this.a);
        if (this.s) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            l4d.c(this.k, this.a, layoutParams);
        } else {
            l4d.c(this.k, this.a, this.G);
        }
        w();
        this.e = true;
        return true;
    }

    public void b(VASTAd vASTAd) {
        Clicks videoClick;
        if (vASTAd != null && this.s) {
            if (vASTAd.isMediaVast() && vASTAd.getCurrentMediaFile() != null) {
                videoClick = vASTAd.getCurrentMediaFile().getVideoClick();
            } else {
                videoClick = vASTAd.getCurrentStaticResource() != null ? vASTAd.getCurrentStaticResource().getVideoClick() : null;
            }
            if (videoClick == null) {
                return;
            }
            CharSequence clickText = videoClick.getClickText(n());
            if (this.C == null || TextUtils.isEmpty(clickText)) {
                return;
            }
            this.C.setText(clickText);
        }
    }

    @Override
    public boolean a(List<VASTAd> list) {
        int size;
        Context context;
        this.x = list;
        if (list == null) {
            size = 0;
        } else {
            try {
                size = list.size();
            } catch (Throwable unused) {
            }
        }
        this.b = size;
        if (size > 0 && (context = this.j) != null) {
            return c(context);
        }
        return false;
    }

    private void a(VASTAd vASTAd, boolean z) {
        VASTStaticResource next;
        if (this.s || vASTAd == null) {
            return;
        }
        Iterator<VASTStaticResource> it = vASTAd.getStaticResources().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next != null && next.getUrl() != null && !TextUtils.isEmpty(next.getUrl())) {
                break;
            }
        }
        FrameLayout.LayoutParams layoutParams = this.G;
        if (layoutParams == null || z) {
            if (layoutParams == null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                this.G = layoutParams2;
                layoutParams2.gravity = 17;
            }
            com.mgtv.a.d.b.d dVar = this.p;
            int iB = dVar != null ? dVar.b() : 0;
            if (iB == 0) {
                if (r()) {
                    iB = com.mgmi.platform.e.d();
                } else {
                    iB = com.mgmi.platform.e.f();
                }
            }
            int i = (int) (iB * 0.47f);
            int height = next != null ? (next.getHeight() * i) / next.getWidth() : (int) (i * 0.5625f);
            FrameLayout.LayoutParams layoutParams3 = this.G;
            layoutParams3.width = i;
            layoutParams3.height = height;
        }
    }

    @Override
    public void b() {
        PauseConvenientBanner pauseConvenientBanner = this.F;
        if (pauseConvenientBanner != null) {
            pauseConvenientBanner.g();
        }
    }

    @Override
    public void d(String str) {
        FrameLayout.LayoutParams layoutParams;
        super.d(str);
        List<VASTAd> list = this.x;
        if (list != null) {
            VASTAd vASTAd = this.w;
            if (vASTAd == null) {
                vASTAd = list.get(0);
            }
            b(vASTAd);
            if (!this.s) {
                a(vASTAd, true);
                ViewGroup viewGroup = this.a;
                if (viewGroup != null && (layoutParams = this.G) != null) {
                    viewGroup.setLayoutParams(layoutParams);
                }
            }
        }
        if (this.s) {
            w();
            if (r()) {
                l4d.f(this.E, 0);
                l4d.f(this.D, 8);
            } else {
                l4d.f(this.E, 8);
                l4d.f(this.D, 0);
            }
        }
    }

    public boolean a(VASTAd vASTAd) {
        return vASTAd != null && vASTAd.clk_area == 1;
    }

    @Override
    public void a() {
        PauseConvenientBanner pauseConvenientBanner = this.F;
        if (pauseConvenientBanner != null) {
            pauseConvenientBanner.f();
        }
    }
}
