package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.Locale;
import okio.Utf8;

public final class C1485au {
    public static byte[] A0N;
    public static String[] A0O = {"pFRbUbIPvfwTsTWtR68DyqtfsQzo0Y9e", "Jmt0yS7cxIqywVTLVazlNOZqViG4fijG", "7JVXgwFSulrh0z9RNSntkrow2", "W96LwBzZpPkBapcy7gGTKWs8B4GUDBcq", "br88nFbBZbLJ3vTh4p9wwCNTIA57FmIY", "mzQptMR0Z3d1fPQPbwNf4EthVYWzR3DW", "IPE7BiI9pZn923UUuncSvZhUL3wMHGrT", "br6hrssh6VRKiVV1vNUkmhf3WWjX02F0"};
    public KE A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0C;
    public final int A0D;
    public final Handler A0E;
    public final AbstractC1910hy A0F;
    public final C1086Ml A0G;
    public final C1096Mw A0H;
    public final N0 A0I;
    public final C1635dL A0J;
    public final C1278Ua A0K;
    public final InterfaceC1366Xn A0L;
    public final boolean A0M;
    public int A03 = 16;
    public int A02 = 12;
    public int A01 = 10;
    public int A04 = 20;
    public int A05 = 40;
    public int A06 = 52;
    public int A00 = 10;
    public int A07 = 8;
    public boolean A0B = true;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A0O[2].length() != 25) {
                throw new RuntimeException();
            }
            String[] strArr = A0O;
            strArr[3] = "XwNXbwlUcFi7qEktIehGuIyqazGrk614";
            strArr[1] = "hx9Csixc74t4pIrSAOrr1o5nquGlqFF4";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 30);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0N = new byte[]{109, 118, 126, 126, 126, 126, 126, 126, 126, 4, 97, 97, 23, 23, 23, 23, 23, 23, 37, 41, 43, 104, 32, 39, 37, 35, 36, 41, 41, 45, 104, 39, 34, 53, 104, 47, 40, 50, 35, 52, 53, 50, 47, 50, 47, 39, 42, 104, 32, 47, 40, 47, 53, 46, 25, 39, 37, 50, 47, 48, 47, 50, Utf8.REPLACEMENT_BYTE, 42, 50, 48, 41};
    }

    static {
        A03();
    }

    public C1485au(C1635dL c1635dL, AbstractC1910hy abstractC1910hy, C1278Ua c1278Ua, Handler handler, InterfaceC1366Xn interfaceC1366Xn) {
        this.A0J = c1635dL;
        this.A0L = interfaceC1366Xn;
        this.A0H = abstractC1910hy.A20().A0I();
        this.A0I = abstractC1910hy.A20().A0K();
        this.A0G = abstractC1910hy.A1z();
        this.A0E = handler;
        this.A0C = abstractC1910hy.A2K();
        this.A0M = abstractC1910hy.A2H();
        this.A0A = abstractC1910hy.A2G();
        this.A0D = AbstractC1627dC.A00(c1635dL.getResources().getDisplayMetrics());
        this.A0K = c1278Ua;
        this.A0F = abstractC1910hy;
        A02();
    }

    private ImageView A00(final KE ke) {
        Bitmap scaledBitmap = Bitmap.createScaledBitmap(XY.A01(XX.OTHER_SKIP), this.A04, this.A04, true);
        ImageView imageView = new ImageView(this.A0J);
        imageView.setImageBitmap(scaledBitmap);
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A01(0, 9, 80)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(this.A01, this.A01, this.A01, this.A01);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                C1485au.A08(ke, view);
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388661);
        layoutParams.setMargins(0, 0, 0, 0);
        imageView.setLayoutParams(layoutParams);
        imageView.setVisibility(0);
        return imageView;
    }

    private void A02() {
        this.A03 *= this.A0D;
        this.A02 *= this.A0D;
        this.A01 *= this.A0D;
        this.A04 *= this.A0D;
        this.A05 *= this.A0D;
        this.A06 *= this.A0D;
        this.A00 *= this.A0D;
        this.A07 *= this.A0D;
    }

    private void A04(FrameLayout frameLayout) {
        View view = new View(this.A0J);
        view.setBackgroundColor(Color.parseColor(A01(9, 9, 57)));
        view.setAlpha(0.8f);
        frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A05(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A0J);
        ImageView imageViewA00 = Z9.A00(this.A0J, this.A0K, this.A0F, this.A0L, Z5.A02, this.A0E, Z6.A02);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388693);
        layoutParams.setMargins(0, 0, this.A02, this.A03);
        frameLayout2.addView(imageViewA00, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:18:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:20:0x00de  */
    /* JADX WARN: Code duplicated, block: B:22:0x00ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:31:0x011c  */
    private void A06(FrameLayout frameLayout, KE ke) {
        ImageView imageViewA00;
        boolean z;
        String[] strArr;
        FrameLayout frameLayout2 = new FrameLayout(this.A0J);
        frameLayout2.setPadding(0, this.A06, this.A02, this.A02);
        if (this.A0C) {
            frameLayout2.setOnClickListener(new ViewOnClickListenerC1484at(this, ke));
        }
        Bitmap bitmap = XY.A01(XX.NAV_CROSS);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, this.A04, this.A04, true);
        ImageView dubiousSkip = new ImageView(this.A0J);
        XP.A0E(1002, dubiousSkip);
        dubiousSkip.setImageBitmap(bitmapCreateScaledBitmap);
        dubiousSkip.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A01(0, 9, 80)));
        dubiousSkip.setBackground(gradientDrawable);
        dubiousSkip.setPadding(this.A01, this.A01, this.A01, this.A01);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388661);
        layoutParams.setMargins(0, 0, 0, 0);
        dubiousSkip.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.A00.A0C(view);
            }
        });
        long jA00 = this.A0I.A00();
        if (this.A09) {
            N0 n0 = this.A0I;
            if (A0O[2].length() != 25) {
                throw new RuntimeException();
            }
            A0O[2] = "EDg5a4vgNKTBN5Vd4K7j2JAWQ";
            jA00 = n0.A01();
        }
        boolean z2 = this.A0B;
        if (A0O[2].length() != 25) {
            String[] strArr2 = A0O;
            strArr2[3] = "lPr3oecF17Vr0ETjxWpa6eT7xUG7TKGz";
            strArr2[1] = "pN0Dd6Okr1h1scp4h6gPnTJrQwG996nC";
            if (z2) {
                if (jA00 > 0) {
                    imageViewA00 = null;
                    z = this.A0A;
                    strArr = A0O;
                    if (strArr[0].charAt(31) != strArr[6].charAt(31)) {
                        String[] strArr3 = A0O;
                        strArr3[3] = "NBSSb5i8vB7h2DITQFZ0JVIGTEGpjtjm";
                        strArr3[1] = "r6oo3XDBH3cPwN6mP2aoTtDXeEGymFZK";
                        if (z) {
                            if (ke != null) {
                                imageViewA00 = A00(ke);
                                frameLayout2.addView(imageViewA00);
                            }
                        }
                    } else {
                        String[] strArr4 = A0O;
                        strArr4[0] = "LTYB5M4Mhdd1oprOtejFkg7YcKqdK9Vm";
                        strArr4[6] = "s8tsGyr3r09N1mPmkZSZvoZyMzIeZ0vJ";
                        if (z) {
                            if (ke != null) {
                                imageViewA00 = A00(ke);
                                frameLayout2.addView(imageViewA00);
                            }
                        }
                    }
                    AbstractC1627dC.A01(this.A0J, dubiousSkip, jA00, imageViewA00);
                }
            }
        } else {
            String[] strArr5 = A0O;
            strArr5[3] = "tzOwMkw7uDsuhpEAhy55DDXkTNG5R2eG";
            strArr5[1] = "LVlHDeBQ28ZWrMMDEXcUdCCcU9GvuA6m";
            if (z2) {
                if (jA00 > 0) {
                    imageViewA00 = null;
                    z = this.A0A;
                    strArr = A0O;
                    if (strArr[0].charAt(31) != strArr[6].charAt(31)) {
                        String[] strArr6 = A0O;
                        strArr6[3] = "NBSSb5i8vB7h2DITQFZ0JVIGTEGpjtjm";
                        strArr6[1] = "r6oo3XDBH3cPwN6mP2aoTtDXeEGymFZK";
                        if (z) {
                            if (ke != null) {
                                imageViewA00 = A00(ke);
                                frameLayout2.addView(imageViewA00);
                            }
                        }
                    } else {
                        String[] strArr7 = A0O;
                        strArr7[0] = "LTYB5M4Mhdd1oprOtejFkg7YcKqdK9Vm";
                        strArr7[6] = "s8tsGyr3r09N1mPmkZSZvoZyMzIeZ0vJ";
                        if (z) {
                            if (ke != null) {
                                imageViewA00 = A00(ke);
                                frameLayout2.addView(imageViewA00);
                            }
                        }
                    }
                    AbstractC1627dC.A01(this.A0J, dubiousSkip, jA00, imageViewA00);
                }
            }
        }
        frameLayout2.addView(dubiousSkip, layoutParams);
        if (!this.A0B) {
            String[] strArr8 = A0O;
            if (strArr8[4].charAt(0) != strArr8[7].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr9 = A0O;
            strArr9[3] = "Yzc02jbTluogikiQi2Wv962AcLGu9uF1";
            strArr9[1] = "JahYjLhPUhQBnUZY2LL7YeIOJlGmyCNi";
            dubiousSkip.setVisibility(8);
        }
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -2, 48));
    }

    private void A07(KE ke) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        ke.setPadding(this.A04, this.A03, this.A04, this.A03);
        ke.setTextSize(14.0f);
        ke.A0D();
        ke.setIncludeFontPadding(true);
        ke.setLayoutParams(layoutParams);
        ke.setTextColor(-16777216);
        XP.A0Q(ke, XP.A06(-1, this.A00));
        ke.setId(View.generateViewId());
        if (ke.getParent() != null) {
            ((ViewGroup) ke.getParent()).removeView(ke);
        }
    }

    public static void A08(KE ke, View view) {
        ke.A0E(A01(63, 4, 71));
        ke.setVisibility(4);
    }

    public final View A09(KE ke) {
        return A0A(ke, null);
    }

    public final View A0A(KE ke, ImageView imageView) {
        this.A08 = ke;
        this.A09 = imageView != null;
        FrameLayout frameLayout = new FrameLayout(this.A0J);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        C1455aQ c1455aQ = new C1455aQ(this.A0J, this.A0G.A01(), true, false, false);
        c1455aQ.A04(this.A0H.A0F(), this.A0H.A0D().toLowerCase(Locale.getDefault()), null, false, false);
        c1455aQ.setAlignment(17);
        c1455aQ.setTitleTextSize(28);
        c1455aQ.setDescriptionTextSize(13);
        c1455aQ.A02();
        c1455aQ.setPadding(this.A05, 0, this.A05, 0);
        LinearLayout linearLayout = new LinearLayout(this.A0J);
        linearLayout.setClickable(true);
        if (U7.A1C(this.A0J)) {
            linearLayout.setOnClickListener(new ViewOnClickListenerC1483as(this, ke));
        }
        linearLayout.setPadding(0, -this.A04, 0, 0);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        if (imageView != null) {
            if (imageView.getParent() != null) {
                ((ViewGroup) imageView.getParent()).removeView(imageView);
            }
            linearLayout.addView(imageView);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.A07, 0, this.A07);
        linearLayout.addView(c1455aQ, layoutParams);
        if (ke != null) {
            A07(ke);
            linearLayout.addView(ke, layoutParams);
            if (TextUtils.isEmpty(ke.getText())) {
                XP.A0F(ke);
            }
        }
        linearLayout.setAlpha(1.0f);
        A04(frameLayout);
        frameLayout.addView(linearLayout);
        A06(frameLayout, ke);
        if (this.A0M) {
            A05(frameLayout);
        }
        return frameLayout;
    }

    public final KE A0B() {
        return this.A08;
    }

    public final void A0C(View view) {
        this.A0L.A4b(A01(18, 45, 88));
    }

    public final void A0D(boolean z) {
        this.A0B = z;
    }
}
