package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Map;

public class C06575h extends AbstractC0988Ir {
    public YM A00;
    public InterfaceC1524bX A01;
    public C1604cp A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public RelativeLayout A06;
    public FH A07;
    public final C1635dL A08;
    public final DX A09;
    public final DR A0A;
    public final DP A0B;
    public final DN A0C;
    public final DE A0D;
    public final String A0E;
    public final Paint A0F;
    public final Path A0G;
    public final RectF A0H;
    public final C1473ai A0I;
    public static String[] A0J = {"MpRqvkZj1q70y", "JmeA7cKwz52Cf66UfzrPr0LMRH4SYAx7", "6sdDVsKAMYqDcEUPGSGZSzHS1QCr5tGd", "kTGZxaoWJV94XtNMqSwvdL", "Mc6tnSsqpweEwwZBrEzxWewdD5U0ZBnH", "pH8A6EuZ6tOwC2LEaYgoPeYfMAE", "hIXMP87egv28CzL5Z81pRvvAccgq29VA", "kjeLkimcHFb7T02SebLVQF"};
    public static final int A0L = (int) (AbstractC1338Wl.A02 * 0.0f);
    public static final int A0M = (int) (AbstractC1338Wl.A02 * 9.0f);
    public static final int A0K = (int) (AbstractC1338Wl.A02 * 9.0f);

    public C06575h(C1473ai c1473ai, boolean z, String str, FH fh) {
        super(c1473ai, z);
        this.A0G = new Path();
        this.A0H = new RectF();
        this.A0D = new DE() {
            @Override
            public final void A03(DF df) {
                if (this.A00.getVideoView() != null) {
                    this.A00.A07.A0P().setVolume(this.A00.getVideoView().getVolume());
                }
            }
        };
        this.A09 = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A01();
                Object tag = this.A00.getTag(-1593835536);
                if (tag != null) {
                    this.A00.A07.A0N().AFc(((Integer) tag).intValue());
                }
            }
        };
        this.A0B = new DP() {
            @Override
            public final void A03(DQ dq) {
                this.A00.A00();
                this.A00.A07.A0O().AFo(this.A00);
            }
        };
        this.A0A = new DR() {
            @Override
            public final void A03(C3Y c3y) {
                this.A00.A01();
                this.A00.A07.A0O().AFm(this.A00);
            }
        };
        this.A0C = new DN() {
            @Override
            public final void A03(DO r3) {
                this.A00.A05 = true;
                this.A00.A02();
            }
        };
        this.A0I = c1473ai;
        this.A07 = fh;
        this.A0E = str;
        this.A08 = c1473ai.A06();
        setGravity(17);
        setPadding(A0L, 0, A0L, A0L);
        XP.A0K(this, 0);
        setUpView(this.A08);
        this.A0F = new Paint();
        this.A0F.setColor(-16777216);
        this.A0F.setStyle(Paint.Style.FILL);
        this.A0F.setAlpha(16);
        this.A0F.setAntiAlias(true);
    }

    public void A00() {
        if (this.A0I.A0F() != null && this.A02 != null) {
            C0838Cw c0838CwA0F = this.A0I.A0F();
            E1 simpleVideoView = this.A02.getSimpleVideoView();
            if (A0J[2].charAt(30) != 'G') {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[6] = "7Tm7E6hvxl2lrINlaGqN4b4kJs9I709m";
            strArr[1] = "njm7q4dCrj2NJr9FsCrNNlLowJdEGDJD";
            c0838CwA0F.AAm(simpleVideoView);
            if (U7.A2E(getContext())) {
                this.A0I.A0F().A09(false);
            }
        }
    }

    public void A01() {
        if (this.A0I.A0F() != null) {
            this.A0I.A0F().A06();
            if (this.A02 != null) {
                this.A0I.A0F().AJk(this.A02.getSimpleVideoView());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    public void A02() {
        if (this.A01 == null) {
            return;
        }
        if (!A1T()) {
            if (!A1T()) {
                return;
            } else {
                return;
            }
        }
        boolean z = this.A05;
        if (A0J[4].charAt(16) == 'S') {
            throw new RuntimeException();
        }
        A0J[4] = "H2PvwmHOgvOi5klEuL8elNjNTBtJADxS";
        if (!z) {
            if (!A1T() || !this.A04) {
                return;
            }
        }
        this.A01.ACO();
    }

    private void A03(View view) {
        RelativeLayout.LayoutParams layoutParams;
        if (view == null || (layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.addRule(13, -1);
        view.setLayoutParams(layoutParams);
    }

    public static void A04(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        XP.A0I(view);
    }

    @Override
    public final boolean A0C() {
        return false;
    }

    @Override
    public final boolean A1M() {
        return false;
    }

    @Override
    public final void A1P() {
        if (A1T() && this.A02 != null) {
            C1604cp c1604cp = this.A02;
            if (A0J[4].charAt(16) == 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[0] = "PPsdw83Xwgr8n";
            strArr[5] = "5ciU0wOzbld7CiHKSmuHpDfStOE";
            c1604cp.A01();
        }
    }

    @Override
    public final void A1Q() {
        if (A1T()) {
            A1R();
            if (this.A02 != null) {
                this.A02.A05(EnumC1651db.A02);
            }
        }
    }

    @Override
    public final void A1R() {
        float volume = this.A07.A0P().getVolume();
        if (!A1T() || this.A02 == null) {
            return;
        }
        float newVolume = this.A02.getVolume();
        if (volume != newVolume) {
            this.A02.setVolume(volume);
        }
    }

    @Override
    public final boolean A1S() {
        return A1T() && this.A02 != null && this.A02.A06();
    }

    @Override
    public final boolean A1T() {
        return this.A03;
    }

    public final void A1U(Map<String, String> extraParams) {
        if (this.A02 != null) {
            this.A02.A02();
            if (A1T()) {
                this.A02.A04(getAdEventManager(), this.A0E, extraParams);
            }
        }
    }

    public final C1604cp getVideoView() {
        return this.A02;
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public final void onDraw(Canvas canvas) {
        this.A0G.reset();
        this.A0H.set(0.0f, 0.0f, getWidth(), getHeight());
        int i = 0;
        int radius = getResources().getConfiguration().orientation;
        boolean z = radius == 1;
        if (z) {
            i = A0K;
        }
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.drawPath(this.A0G, this.A0F);
        RectF rectF = this.A0H;
        int radius2 = A0L;
        float f = radius2;
        int width = getWidth();
        int radius3 = A0L;
        float f2 = width - radius3;
        int height = getHeight();
        int radius4 = A0L;
        rectF.set(f, 0.0f, f2, height - radius4);
        if (z) {
            i = A0M;
        }
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.clipPath(this.A0G);
        super.onDraw(canvas);
    }

    public void setCTAInfo(C1099Mz c1099Mz, Map<String, String> extraData) {
        getCtaButton().setCta(c1099Mz, this.A0E, extraData);
    }

    public void setImageUrl(String str) {
        if (this.A00 != null) {
            this.A00.setVisibility(0);
            new KZ(this.A00, this.A08).A04().A06(new K0(this)).A07(str);
        }
        if (this.A02 != null) {
            this.A02.setVisibility(8);
        }
    }

    public void setIsVideo(boolean z) {
        this.A03 = z;
    }

    public void setOnAssetsLoadedListener(InterfaceC1524bX interfaceC1524bX) {
        this.A01 = interfaceC1524bX;
    }

    public void setUpImageView(C1635dL c1635dL) {
        this.A00 = new YM(c1635dL);
        if (U7.A1I(c1635dL)) {
            AbstractC1423Zs.A00(this.A00, U7.A1J(c1635dL), new ViewOnClickListenerC1441aC(this));
        }
        A04(this.A00);
    }

    public void setUpMediaContainer(C1635dL c1635dL) {
        this.A06 = new RelativeLayout(c1635dL);
        A04(this.A06);
        if (this.A00 != null) {
            this.A06.addView(this.A00);
            A03(this.A00);
        }
        if (this.A02 != null) {
            this.A06.addView(this.A02);
            A03(this.A02);
        }
        addView(this.A06);
    }

    public void setUpVideoView(C1635dL c1635dL) {
        this.A02 = new C1604cp(c1635dL, new C1278Ua(this.A0E, getAdEventManager()));
        if (U7.A1K(c1635dL)) {
            AbstractC1423Zs.A00(this.A02, U7.A1L(c1635dL), new ViewOnClickListenerC1442aD(this));
        }
        C1604cp c1604cp = this.A02;
        if (A0J[2].charAt(30) != 'G') {
            throw new RuntimeException();
        }
        A0J[4] = "tNSgYVifT5FMSy2OwNBjuNxtKDkDnPPF";
        A04(c1604cp);
    }

    private void setUpView(C1635dL c1635dL) {
        setUpImageView(c1635dL);
        setUpVideoView(c1635dL);
        setUpMediaContainer(c1635dL);
    }

    public void setVideoPlaceholderUrl(String str) {
        if (this.A02 != null) {
            this.A02.setPlaceholderUrl(str);
        }
    }

    public void setVideoUrl(String str) {
        if (this.A00 != null) {
            this.A00.setVisibility(8);
        }
        C1604cp c1604cp = this.A02;
        String[] strArr = A0J;
        if (strArr[6].charAt(10) != strArr[1].charAt(10)) {
            throw new RuntimeException();
        }
        A0J[2] = "Key351avhXFGNIES0xzUdjVz8AR1nkGO";
        if (c1604cp != null) {
            this.A02.setVisibility(0);
            this.A02.setVideoURI(str);
            this.A02.A03(this.A0D);
            this.A02.A03(this.A09);
            this.A02.A03(this.A0B);
            this.A02.A03(this.A0A);
            this.A02.A03(this.A0C);
        }
    }
}
