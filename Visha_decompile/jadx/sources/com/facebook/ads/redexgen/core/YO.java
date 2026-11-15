package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class YO extends LinearLayout {
    public static final int A08 = (int) (AbstractC1338Wl.A02 * 15.0f);
    public static final int A09 = (int) (AbstractC1338Wl.A02 * 10.0f);
    public static final int A0A = (int) (AbstractC1338Wl.A02 * 44.0f);
    public int A00;
    public boolean A01;
    public boolean A02;
    public final ImageView A03;
    public final LinearLayout A04;
    public final TextView A05;
    public final C1635dL A06;
    public final a7 A07;

    public YO(C1635dL c1635dL, int i, boolean z) {
        super(c1635dL);
        this.A01 = false;
        this.A06 = c1635dL;
        this.A02 = z;
        this.A03 = new ImageView(c1635dL);
        this.A03.setPadding(A09, A09, A09, A09);
        this.A07 = new a7(c1635dL, this.A02);
        this.A07.setProgress(0.0f);
        this.A07.setPadding(A09, A09, A09, A09);
        this.A05 = new TextView(c1635dL);
        setOrientation(0);
        this.A04 = new LinearLayout(c1635dL);
        this.A00 = i;
        A00();
    }

    private void A00() {
        setToolbarActionMode(this.A00);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A0A, A0A);
        XP.A0W(this.A05, true, 16);
        this.A05.setTextColor(-1);
        this.A05.setVisibility(8);
        this.A04.addView(this.A03, layoutParams2);
        this.A04.addView(this.A07, layoutParams2);
        addView(this.A04, layoutParams);
        LinearLayout.LayoutParams actionTextLayoutParams = new LinearLayout.LayoutParams(-2, -2);
        actionTextLayoutParams.gravity = 17;
        addView(this.A05, actionTextLayoutParams);
    }

    private void A01() {
        int i;
        a7 a7Var = this.A07;
        int i2 = 8;
        if (this.A00 == 2 || this.A00 == 6) {
            i = this.A01 ? 4 : 0;
        } else {
            i = 8;
        }
        a7Var.setVisibility(i);
        ImageView imageView = this.A03;
        if (this.A00 == 5) {
            i2 = 4;
        } else if (this.A00 != 2 && this.A00 != 6) {
            i2 = 0;
        }
        imageView.setVisibility(i2);
    }

    public final void A02() {
        setVisibility(4);
    }

    public final void A03(float f, int i) {
        this.A07.A02(f, i);
    }

    public final void A04(C1098My c1098My, boolean z, boolean z2) {
        int iA05 = c1098My.A05(z);
        a7 a7Var = this.A07;
        int accentColor = OP.A02(iA05, 77);
        a7Var.A03(accentColor, iA05, 110);
        this.A03.setColorFilter(iA05);
        if (z2) {
            TextView textView = this.A05;
            int accentColor2 = OP.A02(-1, 110);
            textView.setTextColor(accentColor2);
            return;
        }
        this.A05.setTextColor(iA05);
    }

    public final boolean A05() {
        return !this.A05.getText().toString().isEmpty();
    }

    public final boolean A06() {
        return (this.A00 == 2 || this.A00 == 4) ? false : true;
    }

    public int getToolbarActionMode() {
        return this.A00;
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    public void setProgress(float f) {
        this.A07.setProgressWithAnimation(f);
    }

    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A07.setOnClickListener(onClickListener);
    }

    public void setProgressImage(XX xx) {
        this.A07.setImage(xx);
    }

    public void setProgressImmediate(float f) {
        this.A07.clearAnimation();
        this.A07.setProgress(f);
    }

    public void setProgressSpinnerInvisible(boolean z) {
        this.A01 = z;
        A01();
    }

    public void setToolbarActionMode(int i) {
        XX xx;
        this.A06.A0F().AFR(i);
        this.A00 = i;
        A01();
        setVisibility(0);
        this.A03.setImageAlpha(255);
        this.A03.setPadding(A09, A09, A09, A09);
        switch (i) {
            case 0:
                xx = XX.CROSS;
                break;
            case 1:
                xx = !this.A02 ? XX.SKIP_ARROW : XX.REDESIGN_SKIP_ICON;
                break;
            case 2:
            default:
                xx = XX.CROSS;
                break;
            case 3:
                xx = XX.MINIMIZE_ARROW;
                break;
            case 4:
                xx = XX.CROSS;
                this.A03.setVisibility(8);
                setVisibility(8);
                break;
            case 5:
                xx = XX.CROSS;
                break;
            case 6:
                xx = XX.CROSS;
                break;
            case 7:
                xx = XX.CROSS;
                this.A03.setImageAlpha(110);
                this.A03.setPadding(A08, A08, A08, A08);
                break;
            case 8:
                xx = XX.OTHER_SKIP;
                break;
        }
        this.A03.setImageBitmap(XY.A01(xx));
        if (i == 1) {
            XP.A0E(1005, this.A03);
            setVisibility(0);
        } else if (i == 8) {
            XP.A0E(1009, this.A03);
            setVisibility(0);
        } else {
            XP.A0E(1002, this.A03);
        }
    }

    public void setToolbarMessage(String str) {
        this.A05.setText(str);
        this.A05.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
    }

    public void setToolbarMessageEnabled(boolean z) {
        this.A05.setVisibility(z ? 0 : 4);
    }
}
