package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgadplus.brower.ImgoAdWebView;
import com.mgmi.R;
import com.mgmi.e.a.d;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.net.b;
import defpackage.mpd;

public class LargeIconCornerView extends FlipFramelayout {
    public ImgoAdWebView I;
    public d J;
    public boolean K;
    public int s;

    public LargeIconCornerView(@NonNull Context context) {
        super(context);
        this.K = false;
        this.s = 4;
        h(context);
    }

    private void g() {
        ViewGroup.LayoutParams layoutParams = ((FrameLayout) findViewById(R.id.image_container)).getLayoutParams();
        if (this.r) {
            int i = (int) (((double) mpd.d(getContext()).y) / 2.27d);
            layoutParams.width = i;
            layoutParams.height = (int) (((double) i) / 5.0d);
        } else {
            int i2 = (int) (((double) mpd.d(getContext()).x) / 2.27d);
            layoutParams.width = i2;
            layoutParams.height = (int) (((double) i2) / 5.0d);
        }
    }

    private void h(Context context) {
        this.J = b.a().b();
    }

    private void i() {
        if (this.t == 0) {
            g();
            return;
        }
        ViewGroup.LayoutParams layoutParams = ((FrameLayout) findViewById(R.id.image_container)).getLayoutParams();
        int i = (int) (((double) this.t) / 2.27d);
        layoutParams.width = i;
        layoutParams.height = (int) (((double) i) / 5.0d);
    }

    public LargeIconCornerView a(int i) {
        this.s = i;
        return this;
    }

    @Override
    public void c(VASTFloatAd vASTFloatAd) {
        super.c(vASTFloatAd);
        this.I = (ImgoAdWebView) findViewById(R.id.banner_webview);
    }

    @Override
    public void e() {
        if (this.s == 4) {
            if (this.B.getCurrentStaticResource() == null || this.B.getCurrentStaticResource().getAdStrict() != 1) {
                i();
            } else {
                super.e();
            }
        }
    }

    public LargeIconCornerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.K = false;
        this.s = 4;
        h(context);
    }

    public LargeIconCornerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.K = false;
        this.s = 4;
        h(context);
    }
}
