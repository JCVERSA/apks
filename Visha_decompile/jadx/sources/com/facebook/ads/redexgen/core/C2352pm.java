package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

public final class C2352pm {
    public static String[] A0E = {"hvB6Y5lFyDpOUo5WE2d6RBuRXgbY5ZUm", "NE", "ywY8EvofFV55395JkJDayoeTErGWKbkG", "zJ8LsRBLLSys8CPHp", "gH0zTalybZGhm0qBmcsXdCP28l4r1an9", "kduBCn7ltQGfodptcqURcnO6EcdnH0I2", "cBbzau3JoVbeDspRwe3LG6GIj8yddyUH", "tX"};
    public InterfaceC2354pp A00;
    public boolean A01;
    public final Rect A02;
    public final Rect A03;
    public final Handler A04;
    public final InterfaceC1817gK A05;
    public final InterfaceC2362px A06;
    public final ViewpointQeConfig A07;
    public final ViewpointRegistry A08;
    public final A6 A09;
    public final Runnable A0A;
    public final List<Rect> A0B;
    public final List<DspViewableNode> A0C;
    public final List<C2359pu<?, ?>> A0D;

    public C2352pm(ViewpointQeConfig viewpointQeConfig, InterfaceC2362px interfaceC2362px, InterfaceC1817gK interfaceC1817gK, A6 a6, ViewpointRegistry viewpointRegistry, Handler handler) {
        this(viewpointQeConfig, interfaceC2362px, interfaceC1817gK, a6, viewpointRegistry, handler, 100);
    }

    public C2352pm(ViewpointQeConfig viewpointQeConfig, InterfaceC2362px interfaceC2362px, InterfaceC1817gK interfaceC1817gK, A6 a6, ViewpointRegistry viewpointRegistry, Handler handler, int i) {
        this.A03 = new Rect();
        this.A02 = new Rect();
        this.A0C = new ArrayList();
        this.A0D = new ArrayList();
        this.A0B = new ArrayList();
        this.A01 = false;
        this.A07 = viewpointQeConfig;
        this.A06 = interfaceC2362px;
        this.A05 = interfaceC1817gK;
        this.A09 = a6;
        this.A08 = viewpointRegistry;
        this.A04 = handler;
        this.A0A = new RunnableC2353pn(this, i, new Exception());
    }

    public static Activity A00(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    private void A04(long j) {
        if (this.A0C.isEmpty()) {
            this.A06.A9R(this.A0B);
            this.A09.A4Z(j, this.A0B);
            this.A09.A6H(null);
            return;
        }
        throw new IllegalStateException();
    }

    public void A05(long j) {
        this.A06.A9R(this.A0B);
        this.A09.A4Z(j, this.A0B);
        if (this.A0C.isEmpty()) {
            if (this.A0D.isEmpty()) {
                this.A08.A0A(this.A0C, this.A0D);
                for (final DspViewableNode dspViewableNode : this.A0C) {
                    if (this.A07.A00) {
                        this.A08.A09(dspViewableNode, new InterfaceC07629v() {
                            @Override
                            public final Object AAB(Object obj) {
                                return this.A00.A0B(dspViewableNode, (C2359pu) obj);
                            }
                        });
                    } else {
                        A07(dspViewableNode, this.A08.A04(dspViewableNode));
                    }
                }
                A6 a6 = this.A09;
                String[] strArr = A0E;
                if (strArr[6].charAt(3) == strArr[4].charAt(3)) {
                    String[] strArr2 = A0E;
                    strArr2[2] = "nrcH38GFR0AnNATGilmIDxGLEfq4UsQc";
                    strArr2[5] = "6vipxWZV3AO1VWKwqmDQLGTjEEAJtLqC";
                    a6.A6H(this.A0D);
                    if (this.A00 != null) {
                        this.A00.AF8();
                    }
                    this.A0C.clear();
                    if (A0E[0].charAt(13) != 'n') {
                        A0E[0] = "FnmTy5Nmh2EcYtYiSa9Vz9TfA3yApsYC";
                        this.A0D.clear();
                        return;
                    }
                }
                throw new RuntimeException();
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    private void A07(DspViewableNode dspViewableNode, C2359pu<?, ?> c2359pu) {
        for (Rect rect : this.A0B) {
            Rect containerRect = this.A03;
            if (dspViewableNode.A9Q(containerRect, this.A02, rect) && c2359pu != C2359pu.A0B) {
                A6 a6 = this.A09;
                Rect rect2 = this.A03;
                Rect rect3 = this.A02;
                ViewpointQeConfig viewpointQeConfig = this.A07;
                String[] strArr = A0E;
                if (strArr[6].charAt(3) != strArr[4].charAt(3)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[1] = "vG";
                strArr2[7] = "kB";
                a6.A3y(c2359pu, rect2, rect3, viewpointQeConfig.A01);
            }
        }
    }

    public boolean A08() {
        Context context = this.A06.A7M();
        if (context == null) {
            return true;
        }
        Activity activityA00 = A00(context);
        if (activityA00 != null) {
            boolean zIsDestroyed = activityA00.isDestroyed();
            if (A0E[3].length() != 17) {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[2] = "bz230dZZFwB5VtBTUF6Wd1FYETvWTo5q";
            strArr[5] = "SaD2YYriklneEcKSamPXZGVrEiYqxj4X";
            if (zIsDestroyed) {
                return true;
            }
        }
        return false;
    }

    public final C2335pL A0B(DspViewableNode dspViewableNode, C2359pu c2359pu) {
        A07(dspViewableNode, c2359pu);
        return null;
    }

    public final void A0C() {
        if (this.A00 != null) {
            this.A00.AF8();
        }
        if (this.A01) {
            this.A04.removeCallbacks(this.A0A);
            A04(this.A05.AC6());
        }
        this.A01 = false;
    }

    public final void A0D() {
        if (!this.A01) {
            this.A01 = true;
            this.A04.post(this.A0A);
        }
    }

    public final void A0E(InterfaceC2356pr interfaceC2356pr) {
        this.A09.AJA(interfaceC2356pr);
    }

    public final void A0F(InterfaceC2354pp interfaceC2354pp) {
        this.A00 = interfaceC2354pp;
    }
}
