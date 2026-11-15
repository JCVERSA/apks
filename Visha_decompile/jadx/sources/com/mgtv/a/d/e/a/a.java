package com.mgtv.a.d.e.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.R;
import com.mgmi.ViewGroup.MgmiAdTopBar;
import com.mgmi.f.e;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgmi.ssp.PreRollVideoAd;
import com.mgtv.a.d.b.c;
import defpackage.l4d;
import java.io.PrintStream;

public class a extends c {
    public boolean a = false;
    protected TextView b;
    protected TextView c;
    protected ImageView d;
    protected TextView e;
    protected TextView f;
    protected TextView w;
    protected TextView x;
    private boolean y;
    private boolean z;

    @Override
    public void b(VASTAd vASTAd) {
        TextView textView;
        boolean z;
        if (this.a) {
            return;
        }
        if (vASTAd == null || vASTAd.getCurrentStaticResource() == null || TextUtils.isEmpty(vASTAd.getCurrentStaticResource().getUrl())) {
            textView = this.c;
            l4d.f(textView, 0);
            l4d.f(this.x, 8);
            l4d.f(this.w, 8);
            l4d.f(this.f, 8);
            z = false;
        } else {
            textView = this.x;
            if (textView == null) {
                return;
            }
            l4d.f(textView, 0);
            l4d.f(this.c, 8);
            String discription = vASTAd.getDiscription();
            String title = vASTAd.getTitle();
            if (TextUtils.isEmpty(title)) {
                l4d.f(this.f, 8);
            } else {
                l4d.f(this.f, 0);
                TextView textView2 = this.f;
                if (textView2 != null) {
                    textView2.setText(title);
                }
            }
            if (TextUtils.isEmpty(discription)) {
                l4d.f(this.w, 8);
            } else {
                l4d.f(this.w, 0);
                this.w.setText(discription);
            }
            z = true;
        }
        this.r = textView;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        if (vASTAd == null || context == null) {
            return;
        }
        try {
            a(vASTAd.getClk_btn(), 0);
            Clicks videoClick = z ? vASTAd.getCurrentStaticResource().getVideoClick() : vASTAd.getVideoClick();
            if (videoClick != null) {
                videoClick.getDeepLink(context);
            }
            if (videoClick == null || TextUtils.isEmpty(videoClick.getClickThrough())) {
                l4d.f(textView, 8);
                return;
            }
            CharSequence clickText = videoClick.getClickText(context);
            if (TextUtils.isEmpty(clickText)) {
                textView.setText(R.string.mgmi_player_learn_More_ext);
            } else {
                textView.setText(clickText);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void a(VASTAd vASTAd) {
        if (this.b == null || vASTAd == null) {
            return;
        }
        if (vASTAd.isShowAdLog()) {
            b(vASTAd.getAdOrigin());
        } else {
            this.b.setVisibility(8);
        }
    }

    @Override
    public void f() {
        super.f();
        MgmiAdTopBar mgmiAdTopBar = this.p;
        if (mgmiAdTopBar != null) {
            mgmiAdTopBar.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (((com.mgtv.a.d.b.a) a.this).v != null) {
                        ((com.mgtv.a.d.b.a) a.this).v.a(1, "toVip");
                    }
                }
            });
        }
    }

    @Override
    public void g() {
        if (this.s != null) {
            if (!i() || !PreRollVideoAd.isSupportClose) {
                l4d.f(this.s, 8);
            } else {
                this.s.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        if (((com.mgtv.a.d.b.a) a.this).v != null) {
                            ((com.mgtv.a.d.b.a) a.this).v.a(false);
                        }
                        l4d.f(((com.mgtv.a.d.b.a) a.this).s, 8);
                    }
                });
                l4d.f(this.s, 0);
            }
        }
    }

    private void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.b.setText(str);
        } else {
            TextView textView = this.b;
            textView.setText(textView.getContext().getResources().getString(R.string.mgmi_template_ad));
        }
        this.b.setVisibility(0);
    }

    @Override
    public void a(Context context) {
        ContainerLayout containerLayout = (ContainerLayout) LayoutInflater.from(context).inflate(R.layout.mgmi_player_ad_skipview, (ViewGroup) null);
        this.o = containerLayout;
        this.p = (MgmiAdTopBar) containerLayout.findViewById(R.id.top_count_bar);
        this.s = this.o.findViewById(R.id.llBackView);
        ImageView imageView = (ImageView) this.o.findViewById(R.id.ivAdLarge);
        this.d = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (((com.mgtv.a.d.b.a) a.this).v != null) {
                    ((com.mgtv.a.d.b.a) a.this).v.a(false);
                }
            }
        });
        this.b = (TextView) this.o.findViewById(R.id.mgmi_ad_dec);
        TextView textView = (TextView) this.o.findViewById(R.id.tvAdDetail);
        this.c = textView;
        textView.setClickable(false);
        this.r = this.c;
        this.e = (TextView) this.o.findViewById(R.id.canSkippre);
        this.q = (ViewGroup) this.o.findViewById(R.id.skipAdnow);
        this.p.setVisibility(8);
        this.p.setIvAdVoiceVisible(8);
        this.f = (TextView) this.o.findViewById(R.id.tvAdtitle);
        this.w = (TextView) this.o.findViewById(R.id.tvAdContent);
        this.x = (TextView) this.o.findViewById(R.id.tvAdDetail_pic);
        l4d.f(this.o, 4);
    }

    @Override
    public void b(int i) {
        super.b(i);
        a(0);
    }

    public void b(boolean z) {
        this.a = z;
        this.y = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(int i) {
        Context context;
        View view = this.o;
        if (view == null || (context = view.getContext()) == null) {
            return;
        }
        super.a(i);
        int i2 = i / 1000;
        int i3 = this.h - i2;
        if (i3 < 0) {
            i3 = 0;
        }
        int i4 = this.i;
        int i5 = i4 - i2;
        if (this.a) {
            l4d.f(this.q, 8);
            l4d.f(this.e, 8);
        } else if (i4 > 0) {
            if (i5 > 0) {
                this.e.setText(context.getResources().getString(R.string.mgmi_can_close_ad_pre, Integer.valueOf(i5)));
                l4d.f(this.q, 8);
                l4d.f(this.e, 0);
            } else {
                l4d.f(this.q, 0);
                l4d.f(this.e, 8);
            }
        }
        MgmiAdTopBar mgmiAdTopBar = this.p;
        if (mgmiAdTopBar != null) {
            mgmiAdTopBar.setTvAdCountDownText(i3 + "");
            T t = this.n;
            boolean z = t != 0 && ((VASTAd) t).getVip_show() == 1;
            if (z != this.z) {
                this.z = z;
                this.y = false;
            }
            if (this.y) {
                return;
            }
            this.y = true;
            if (!z && !this.a) {
                if (!e.c() && e.b()) {
                    f();
                    this.p.setTvAdSkipText(this.o.getContext().getString(R.string.mgmi_player_ad_skip));
                } else {
                    this.p.setOnClickListener(null);
                    this.p.setTvAdSkipText(this.o.getContext().getString(R.string.mgmi_template_ad));
                }
            } else {
                this.p.setOnClickListener(null);
                if (this.a) {
                    this.p.setTvAdSkipText("");
                } else {
                    this.p.setTvAdSkipText(this.o.getContext().getString(R.string.mgmi_template_ad));
                }
            }
            this.p.setVisibility(0);
        }
    }

    @Override
    public void a(String str) {
        float fE;
        float f;
        super.a(str);
        a();
        if (e.a().g() == 1) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.o.getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
            Object parent = this.o.getParent();
            if (parent != null) {
                View view = (View) parent;
                f = view.getWidth();
                fE = view.getHeight();
            } else {
                fE = 0.0f;
                f = 0.0f;
            }
            if (f == 0.0f || fE == 0.0f) {
                if (i()) {
                    f = com.mgmi.platform.e.d();
                    fE = com.mgmi.platform.e.e();
                } else {
                    f = com.mgmi.platform.e.f();
                    fE = (16.0f * f) / 9.0f;
                }
            }
            PrintStream printStream = System.out;
            printStream.println("vm = 0.0 vh =0.0 sw = " + f);
            if (f == 0.0f || fE == 0.0f) {
                return;
            }
            int i = (int) f;
            int i2 = (int) (i / 1.7777778f);
            if (i2 > fE) {
                i2 = (int) fE;
                i = (int) (i2 * 1.7777778f);
            }
            printStream.println("vm = w = " + i + " h = " + i2);
            layoutParams.width = i;
            layoutParams.height = i2;
            try {
                this.o.setLayoutParams(layoutParams);
            } catch (Throwable unused) {
            }
        }
    }

    public void a() {
        if (!PreRollVideoAd.isSuportFull) {
            l4d.f(this.d, 8);
        } else if (i()) {
            l4d.f(this.d, 8);
        } else {
            l4d.f(this.d, 0);
        }
    }
}
