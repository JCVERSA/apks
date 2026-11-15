package com.facebook.ads.redexgen.core;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;

public abstract class C5Q extends AbstractC0988Ir implements Wf {
    public static byte[] A0L;
    public static String[] A0M = {"XgHadHW09EVAxZ9Csjyh8Iwd", "cGY", "0gnHO0byxZtUV0t5q6", "nitlVKI6s75UlUdu4qHy2TBluRJ6Vnqb", "dqu", "CAnKNEP5j3LNWAO1IgUwk41cBq", "Gj8h5dX0pUMTu0Q6FRM85YsFx7LjGw4a", "ydUjPQqek3X4wwrCfoz9Rz5n"};
    public static final int A0N;
    public static final int A0O;
    public static final int A0P;
    public RelativeLayout A00;
    public YM A01;

    @Nullable
    public InterfaceC1524bX A02;
    public FH A03;
    public C1604cp A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final Paint A08;
    public final Path A09;
    public final RectF A0A;
    public final C1635dL A0B;
    public final C1334Wh A0C;
    public final InterfaceC1366Xn A0D;
    public final C1473ai A0E;
    public final DX A0F;
    public final DR A0G;
    public final DP A0H;
    public final DN A0I;
    public final DE A0J;
    public final String A0K;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0M;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[1] = "5LW";
            strArr2[4] = "hlZ";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 11);
            i4++;
        }
    }

    public static void A03() {
        A0L = new byte[]{68, 70, 85, 72, 82, 84, 66, 75, 120, 68, 70, 85, 67};
    }

    public abstract void A1V(C1635dL c1635dL);

    static {
        A03();
        A0O = (int) (AbstractC1338Wl.A02 * 1.0f);
        A0P = (int) (AbstractC1338Wl.A02 * 4.0f);
        A0N = (int) (AbstractC1338Wl.A02 * 6.0f);
    }

    public C5Q(C1473ai c1473ai, boolean z, String str, FH fh) {
        super(c1473ai, z);
        this.A09 = new Path();
        this.A0A = new RectF();
        this.A0J = new DE() {
            @Override
            public final void A03(DF df) {
                this.A00.A03.A0P().setVolume(this.A00.getVideoView().getVolume());
            }
        };
        this.A0F = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A03.A0N().AFc(((Integer) this.A00.getTag(-1593835536)).intValue());
            }
        };
        this.A0H = new DP() {
            @Override
            public final void A03(DQ dq) {
                this.A00.A03.A0O().AFo(this.A00);
            }
        };
        this.A0G = new DR() {
            @Override
            public final void A03(C3Y c3y) {
                this.A00.A03.A0O().AFm(this.A00);
            }
        };
        this.A0I = new DN() {
            @Override
            public final void A03(DO r3) {
                this.A00.A07 = true;
                this.A00.A02();
            }
        };
        this.A0D = c1473ai.A0D();
        this.A0E = c1473ai;
        this.A03 = fh;
        this.A0K = str;
        this.A0B = c1473ai.A06();
        this.A0C = C1334Wh.A00(c1473ai.A06(), c1473ai.A05(), this);
        setGravity(17);
        setPadding(A0O, 0, A0O, A0O);
        XP.A0K(this, 0);
        setUpView(this.A0B);
        this.A08 = new Paint();
        this.A08.setColor(-16777216);
        this.A08.setStyle(Paint.Style.FILL);
        this.A08.setAlpha(16);
        this.A08.setAntiAlias(true);
    }

    public void A02() {
        if (this.A02 == null) {
            return;
        }
        if ((A1T() && this.A07) || (!A1T() && this.A06)) {
            this.A02.ACO();
        }
    }

    private void A04(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        XP.A0I(view);
    }

    @Override
    public boolean A0C() {
        return false;
    }

    @Override
    public final void A1B() {
        super.A1B();
        this.A0C.A03();
    }

    @Override
    public final boolean A1M() {
        return false;
    }

    @Override
    public final void A1P() {
        if (A1T()) {
            this.A04.A01();
        }
    }

    @Override
    public final void A1Q() {
        if (A1T()) {
            A1R();
            C1604cp c1604cp = this.A04;
            EnumC1651db enumC1651db = EnumC1651db.A02;
            if (A0M[2].length() == 4) {
                throw new RuntimeException();
            }
            A0M[2] = "GrzUS";
            c1604cp.A05(enumC1651db);
        }
    }

    @Override
    public final void A1R() {
        float volume = this.A03.A0P().getVolume();
        if (A1T()) {
            float newVolume = this.A04.getVolume();
            if (volume != newVolume) {
                C1604cp c1604cp = this.A04;
                if (A0M[5].length() == 9) {
                    throw new RuntimeException();
                }
                String[] strArr = A0M;
                strArr[1] = "cdp";
                strArr[4] = "iOc";
                c1604cp.setVolume(volume);
            }
        }
    }

    @Override
    public final boolean A1S() {
        if (A1T()) {
            boolean zA06 = this.A04.A06();
            if (A0M[2].length() == 4) {
                throw new RuntimeException();
            }
            A0M[2] = "SbvNib3Q04NWLkmSI4CaBbpy";
            if (zA06) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean A1T() {
        return this.A05;
    }

    public final void A1U(View view) {
        getCtaButton().A0E(A01(0, 13, 44));
    }

    public final void A1W(Map<String, String> extraParams) {
        this.A04.A02();
        if (A1T()) {
            this.A04.A04(getAdEventManager(), this.A0K, extraParams);
        }
    }

    public final RelativeLayout getMediaContainer() {
        return this.A00;
    }

    public final C1604cp getVideoView() {
        return this.A04;
    }

    @Override
    public final void onDraw(Canvas canvas) {
        this.A09.reset();
        this.A0A.set(0.0f, 0.0f, getWidth(), getHeight());
        this.A09.addRoundRect(this.A0A, A0N, A0N, Path.Direction.CW);
        canvas.drawPath(this.A09, this.A08);
        this.A0A.set(A0O, 0.0f, getWidth() - A0O, getHeight() - A0O);
        this.A09.addRoundRect(this.A0A, A0P, A0P, Path.Direction.CW);
        canvas.clipPath(this.A09);
        super.onDraw(canvas);
    }

    public void setAdTitleAndDescription(String str, String str2) {
        getTitleDescContainer().A04(str, str2, null, true, false);
    }

    public void setCTAInfo(C1099Mz c1099Mz, Map<String, String> extraData) {
        getCtaButton().setCta(c1099Mz, this.A0K, extraData);
    }

    public void setImageUrl(String str) {
        this.A01.setVisibility(0);
        this.A04.setVisibility(8);
        new KZ(this.A01, this.A0B).A04().A06(new C0982Il(this)).A07(str);
    }

    public void setIsVideo(boolean z) {
        this.A05 = z;
    }

    public void setOnAssetsLoadedListener(InterfaceC1524bX interfaceC1524bX) {
        this.A02 = interfaceC1524bX;
    }

    public void setUpImageView(C1635dL c1635dL) {
        this.A01 = new YM(c1635dL);
        if (U7.A1I(c1635dL)) {
            AbstractC1423Zs.A00(this.A01, U7.A1J(c1635dL), new ViewOnClickListenerC1530bd(this));
        }
        A04(this.A01);
    }

    public void setUpMediaContainer(C1635dL c1635dL) {
        this.A00 = new RelativeLayout(c1635dL);
        A04(this.A00);
        C1333Wg c1333WgA02 = this.A0C.A02(this.A0E.A05());
        this.A0E.A06().A0H().A00(c1333WgA02.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(this.A0C);
        if (this.A0E.A05().A1W() && U7.A2o(this.A0B)) {
            this.A00.setOnClickListener(new ViewOnClickListenerC1529bc(this));
        } else {
            if (!c1333WgA02.A00) {
                return;
            }
            this.A00.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.A00.A1U(view);
                }
            });
        }
    }

    public void setUpVideoView(C1635dL c1635dL) {
        this.A04 = new C1604cp(c1635dL, new C1278Ua(this.A0K, getAdEventManager()));
        if (U7.A1K(c1635dL)) {
            AbstractC1423Zs.A00(this.A04, U7.A1L(c1635dL), new ViewOnClickListenerC1531be(this));
        }
        A04(this.A04);
    }

    private void setUpView(C1635dL c1635dL) {
        setUpImageView(c1635dL);
        setUpVideoView(c1635dL);
        setUpMediaContainer(c1635dL);
        this.A00.addView(this.A01);
        this.A00.addView(this.A04);
        A1V(c1635dL);
    }

    public void setVideoPlaceholderUrl(String str) {
        this.A04.setPlaceholderUrl(str);
    }

    public void setVideoUrl(String str) {
        this.A01.setVisibility(8);
        this.A04.setVisibility(0);
        this.A04.setVideoURI(str);
        this.A04.A03(this.A0J);
        this.A04.A03(this.A0F);
        this.A04.A03(this.A0H);
        this.A04.A03(this.A0G);
        this.A04.A03(this.A0I);
    }
}
