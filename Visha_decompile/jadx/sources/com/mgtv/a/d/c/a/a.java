package com.mgtv.a.d.c.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.R;
import com.mgmi.ViewGroup.MgmiAdTopBar;
import com.mgmi.net.bean.BootAdBean;
import com.mgmi.net.bean.BootDataItem;
import com.mgtv.a.d.b.d;
import com.mgtv.ads.AdLog;
import defpackage.l4d;

public class a extends com.mgtv.a.d.b.a<BootAdBean> {
    protected TextView a;
    protected TextView b;
    protected ContainerLayout c;
    protected View d;
    protected FrameLayout e;
    protected RelativeLayout.LayoutParams f;
    protected View w;
    private boolean x;
    private ImageView y;

    @Override
    public void b(BootAdBean bootAdBean) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean c() {
        T t = this.n;
        return (t == 0 || ((BootAdBean) t).data == null || TextUtils.isEmpty(((BootAdBean) t).data.title)) ? false : true;
    }

    @Override
    public void d(int i) {
        int i2 = this.g;
        if (i2 >= 0) {
            i = i2;
        }
        this.l = i2 == 0 || i2 == 1;
        MgmiAdTopBar mgmiAdTopBar = this.p;
        if (mgmiAdTopBar == null || i < 0) {
            return;
        }
        if (i == 1 || i == 2) {
            mgmiAdTopBar.setIvAdVoiceVisible(0);
        } else {
            mgmiAdTopBar.setIvAdVoiceVisible(8);
        }
        e(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b() {
        if (this.x) {
            return;
        }
        this.x = true;
        try {
            if (c()) {
                l4d.f(this.c, 0);
                TextView textView = this.a;
                if (textView != null) {
                    textView.setText(((BootAdBean) this.n).data.title);
                }
            } else {
                l4d.f(this.c, 8);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void e(int i) {
        d dVar = this.v;
        if (dVar != null) {
            dVar.a(4, Boolean.valueOf(this.l));
        }
        MgmiAdTopBar mgmiAdTopBar = this.p;
        if (mgmiAdTopBar != null) {
            if (i == 1) {
                mgmiAdTopBar.setIvAdVoiceSrc(R.drawable.mgmi_icon_ad_voice_close);
            } else if (i == 2) {
                mgmiAdTopBar.setIvAdVoiceSrc(R.drawable.mgmi_icon_ad_voice_open);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.mgmi_boot_ad_view_new, (ViewGroup) null);
        this.o = viewInflate;
        ContainerLayout containerLayout = (ContainerLayout) viewInflate.findViewById(R.id.alertTitleLayout);
        this.c = containerLayout;
        this.r = containerLayout;
        this.a = (TextView) this.o.findViewById(R.id.tv_alert);
        this.y = (ImageView) this.o.findViewById(R.id.adloading);
        this.e = (FrameLayout) this.o.findViewById(R.id.layout_boot_skip);
        this.w = this.o.findViewById(R.id.view_skip_expand);
        this.b = (TextView) this.o.findViewById(R.id.mgmi_ad_dec);
        T t = this.n;
        if (((BootAdBean) t).data != null && ((BootAdBean) t).data.advertiser != null && !TextUtils.isEmpty(((BootAdBean) t).data.advertiser)) {
            this.b.setText(context.getResources().getString(R.string.mgmi_adform_dsc, ((BootAdBean) this.n).data.advertiser));
        } else {
            this.b.setText(context.getResources().getString(R.string.mgmi_player_ad));
        }
        a();
    }

    @Override
    public void e(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null) {
            return;
        }
        d(bootDataItem.voice_state);
    }

    @Override
    public void f(BootAdBean bootAdBean) {
        BootDataItem bootDataItem;
        if (bootAdBean == null || (bootDataItem = bootAdBean.data) == null) {
            return;
        }
        this.j = bootDataItem.clk_area == 1;
    }

    @Override
    public void g(BootAdBean bootAdBean) {
        try {
            this.k = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override
    public void a(BootAdBean bootAdBean) {
        String str;
        TextView textView = this.b;
        if (textView == null || bootAdBean == null) {
            return;
        }
        BootDataItem bootDataItem = bootAdBean.data;
        if (bootDataItem.hideLog == 1) {
            l4d.f(textView, 8);
            return;
        }
        if (bootDataItem != null && (str = bootDataItem.advertiser) != null && !TextUtils.isEmpty(str)) {
            TextView textView2 = this.b;
            textView2.setText(textView2.getContext().getResources().getString(R.string.mgmi_adform_dsc, bootAdBean.data.advertiser));
        } else {
            TextView textView3 = this.b;
            textView3.setText(textView3.getContext().getResources().getString(R.string.mgmi_player_ad));
        }
        l4d.f(this.b, 0);
    }

    public void d() {
        Context context;
        l4d.f(this.b, 0);
        View view = this.d;
        if (view != null) {
            l4d.g((ViewGroup) view.getParent(), this.d);
            l4d.b(this.e, this.d);
            this.d.setClickable(false);
            this.d.setOnClickListener(null);
            RelativeLayout.LayoutParams layoutParams = this.f;
            if (layoutParams != null) {
                this.e.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        View view2 = this.o;
        if (view2 == null || (context = view2.getContext()) == null) {
            return;
        }
        if (this.p == null) {
            this.p = new MgmiAdTopBar(context);
        }
        ViewParent parent = this.p.getParent();
        if (parent instanceof ViewGroup) {
            l4d.g((ViewGroup) parent, this.p);
        }
        l4d.f(this.p, 8);
        l4d.b(this.e, this.p);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        View view = this.w;
        if (view != null) {
            T t = this.n;
            if (t != 0 && ((BootAdBean) t).data != null && ((BootAdBean) t).data.expand != 0) {
                this.q = this.e;
                l4d.f(view, 8);
                return;
            }
            l4d.f(view, 0);
            View view2 = this.w;
            if (view2 != null) {
                this.q = view2;
            } else {
                this.q = this.e;
            }
        }
    }

    @Override
    public void a(int i) {
        int i2 = i / 1000;
        int i3 = this.h - i2;
        if (i3 < 0) {
            i3 = 0;
        }
        AdLog.i("BootRender updateTick   totalTime " + this.h + " - " + i2 + " = " + i2);
        MgmiAdTopBar mgmiAdTopBar = this.p;
        if (mgmiAdTopBar != null) {
            mgmiAdTopBar.setTvAdCountDownText(i3 + " ");
            this.p.setTvAdSkipText(this.o.getContext().getString(R.string.mgmi_boot_ad_skip));
            this.p.setVisibility(0);
        }
        FrameLayout frameLayout = this.e;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        b();
    }

    public void a(View view) {
        this.d = view;
    }
}
