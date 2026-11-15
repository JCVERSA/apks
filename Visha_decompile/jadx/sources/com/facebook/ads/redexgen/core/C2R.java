package com.facebook.ads.redexgen.core;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.hunantv.media.drm.IDrmSession;

public final class C2R extends AbstractC0842Da {
    public final Paint A00;
    public final C1635dL A01;
    public final C1278Ua A02;
    public final DX A03;
    public final DR A04;
    public final DP A05;
    public final C1675e0 A06;

    public C2R(C1635dL c1635dL, boolean z, C1278Ua c1278Ua) {
        super(c1635dL);
        this.A04 = new DR() {
            @Override
            public final void A03(C3Y c3y) {
                this.A00.A06.setChecked(true);
            }
        };
        this.A05 = new DP() {
            @Override
            public final void A03(DQ dq) {
                this.A00.A06.setChecked(false);
            }
        };
        this.A03 = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A06.setChecked(true);
            }
        };
        this.A02 = c1278Ua;
        this.A01 = c1635dL;
        this.A06 = new C1675e0(c1635dL, z);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams btnLayout = new RelativeLayout.LayoutParams((int) (((double) displayMetrics.density) * 23.76d), (int) (((double) displayMetrics.density) * 23.76d));
        btnLayout.addRule(13);
        this.A06.setLayoutParams(btnLayout);
        this.A06.setChecked(true);
        this.A06.setClickable(false);
        this.A00 = new Paint();
        this.A00.setStyle(Paint.Style.FILL);
        if (z) {
            this.A00.setColor(-1728053248);
        } else {
            this.A00.setColor(-1);
            this.A00.setAlpha(IDrmSession.ERROR_SESSION_DRM_NULL);
        }
        XP.A0K(this, 0);
        addView(this.A06);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (((double) displayMetrics.density) * 72.0d), (int) (((double) displayMetrics.density) * 72.0d));
        layoutParams.addRule(13);
        setLayoutParams(layoutParams);
        XP.A0E(1004, this);
    }

    @Override
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A04, this.A05, this.A03);
        }
        View.OnClickListener clickListener = new ViewOnClickListenerC1672dx(this);
        setOnClickListener(clickListener);
    }

    @Override
    public final void A08() {
        setOnClickListener(null);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A03, this.A05, this.A04);
        }
        super.A08();
    }

    @Override
    public final void onDraw(Canvas canvas) {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = getHeight();
        int width2 = getPaddingTop();
        int i = height - width2;
        int width3 = getPaddingBottom();
        int height2 = i - width3;
        int width4 = Math.min(width, height2);
        int centerY = width4 / 2;
        int height3 = width4 / 2;
        int width5 = getPaddingLeft();
        float f = width5 + centerY;
        int width6 = getPaddingTop();
        canvas.drawCircle(f, width6 + height3, centerY, this.A00);
        super.onDraw(canvas);
    }
}
