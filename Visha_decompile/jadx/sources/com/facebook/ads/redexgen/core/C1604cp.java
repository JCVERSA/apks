package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Map;

public final class C1604cp extends FrameLayout {
    public static final int A08 = (int) (AbstractC1338Wl.A02 * 16.0f);
    public C06745y A00;
    public EG A01;
    public C06063i A02;
    public D1 A03;
    public C05872p A04;
    public C2R A05;
    public final C1635dL A06;
    public final C1278Ua A07;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 12 out of bounds for length 12
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final void A04(US us, String str, Map<String, String> map) {
        A02();
        this.A02 = new C06063i(this.A06, us, this.A00, str, null, map);
        if (U7.A1v(this.A06)) {
            this.A01 = new EG(this.A06, us, this.A00, str, false, this.A02, map);
        } else {
            this.A01 = null;
        }
    }

    public C1604cp(C1635dL c1635dL, C1278Ua c1278Ua) {
        super(c1635dL);
        this.A07 = c1278Ua;
        this.A06 = c1635dL;
        setUpView(c1635dL);
    }

    public final void A01() {
        A0l(true, 10);
    }

    public final void A02() {
        if (this.A01 != null) {
            this.A01.A07();
            this.A01 = null;
        }
        if (this.A02 != null) {
            this.A02.A0p();
            this.A02 = null;
        }
    }

    public final void A03(AbstractC1258Tf abstractC1258Tf) {
        getEventBus().A05(abstractC1258Tf);
    }

    public final void A05(EnumC1651db enumC1651db) {
        A0h(enumC1651db, 13);
    }

    public final boolean A06() {
        return A0s();
    }

    public E1 getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A04.setImage(str);
    }

    private void setUpPlugins(C1635dL c1635dL) {
        A0b();
        this.A04 = new C05872p(c1635dL);
        A0i(this.A04);
        this.A03 = new D1(c1635dL, this.A07);
        A0i(new C3D(c1635dL));
        A0i(this.A03);
        this.A05 = new C2R(c1635dL, true, this.A07);
        A0i(this.A05);
        A0i(new D4(this.A05, EnumC1666dr.A02, true, true));
        if (!A0n()) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(A08, A08, A08, A08);
        this.A03.setLayoutParams(layoutParams);
        addView(this.A03);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.5y] */
    private void setUpVideo(final C1635dL c1635dL) {
        this.A00 = new E1(c1635dL) {
            @Override
            public final void onMeasure(int i, int i2) {
                int newWidthSpec = View.MeasureSpec.getMode(i);
                if (newWidthSpec == 1073741824) {
                    i2 = i;
                } else {
                    int newWidthSpec2 = View.MeasureSpec.getMode(i2);
                    if (newWidthSpec2 == 1073741824) {
                        i = i2;
                    }
                }
                super.onMeasure(i, i2);
            }
        };
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        XP.A0I(this.A00);
        addView(this.A00);
        setOnClickListener(new ViewOnClickListenerC1603co(this));
    }

    private void setUpView(C1635dL c1635dL) {
        setUpVideo(c1635dL);
        setUpPlugins(c1635dL);
    }

    public void setVideoURI(String str) {
        setVideoURI(str);
    }

    public void setVolume(float f) {
        setVolume(f);
        this.A03.A09();
    }
}
