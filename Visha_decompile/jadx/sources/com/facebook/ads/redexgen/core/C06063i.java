package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Map;

public final class C06063i extends C0844Dc {
    public static String[] A0F = {"r3hDWnB1R9y4pEiKAURNp99h2b", "kj3t6dP2tWSOfb61zMSBvgjhGLqlygll", "", "sX8uIgx32JWe8q5WuLHBMtkPG7d", "ZlH8xHdCAMZsgB23qoj", "6lejLSjHGD", "XsRzuVWfX96s5Dei3zwO9zjz9s6FXTfu", "pCK0u"};
    public int A00;
    public C1638dO A01;
    public boolean A02;
    public final AbstractC1258Tf<C06013d> A03;
    public final AbstractC1258Tf<C3Y> A04;
    public final AbstractC1258Tf<DQ> A05;
    public final AbstractC1258Tf<C3Q> A06;
    public final AbstractC1258Tf<DL> A07;
    public final AbstractC1258Tf<DJ> A08;
    public final AbstractC1258Tf<DI> A09;
    public final AbstractC1258Tf<DD> A0A;
    public final AbstractC1258Tf<DC> A0B;
    public final E1 A0C;
    public final DN A0D;
    public final DE A0E;

    public C06063i(C1635dL c1635dL, US us, E1 e1, String str) {
        this(c1635dL, us, e1, str, 0, 0, false, null, null);
    }

    public C06063i(C1635dL c1635dL, US us, E1 e1, String str, int i, int i2, boolean z, Bundle bundle, Map<String, String> map) {
        super(c1635dL, us, e1, str, !e1.A0p(), i, i2, z, bundle, map, new C0843Db(c1635dL, e1));
        this.A0E = new DE() {
            @Override
            public final void A03(DF df) {
                this.A00.A0f();
            }
        };
        this.A08 = new C0854Dm(this);
        this.A04 = new C0853Dl(this);
        this.A05 = new C0852Dk(this);
        this.A06 = new C0851Dj(this);
        this.A03 = new C0850Di(this);
        this.A07 = new C0849Dh(this);
        this.A0A = new C0848Dg(this);
        this.A0B = new C0847Df(this);
        this.A09 = new C0859Dr(this);
        this.A0D = new DN() {
            @Override
            public final void A03(DO r3) {
                this.A00.A00 = this.A00.A0C.getDuration();
            }
        };
        this.A02 = false;
        this.A0C = e1;
        this.A0C.getEventBus().A03(this.A0E, this.A06, this.A08, this.A05, this.A04, this.A03, this.A07, this.A0A, this.A0B, this.A0D, this.A09);
        if (U7.A2m(c1635dL)) {
            this.A01 = new C1638dO(e1, str, z, null);
        }
    }

    public C06063i(C1635dL c1635dL, US us, E1 e1, String str, Bundle bundle, Map<String, String> extraParams) {
        this(c1635dL, us, e1, str, 0, 0, false, bundle, extraParams);
    }

    @Override
    public final void A0n(EnumC1642dS enumC1642dS, Map<String, String> map) {
        super.A0n(enumC1642dS, map);
        if (this.A01 != null && enumC1642dS == EnumC1642dS.A09) {
            Map<String, String> params = this.A01.A06();
            String[] strArr = A0F;
            if (strArr[0].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0F[2] = "tc9";
            map.putAll(params);
        }
    }

    public final void A0p() {
        C0856Do c0856Do = new C0856Do(this);
        if (this.A0C.A0t()) {
            XJ.A00(c0856Do);
            return;
        }
        E1 e1 = this.A0C;
        String[] strArr = A0F;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A0F[1] = "nFCp2DExxe9bklz52WjNRol8ULAuMoj6";
        e1.getStateHandler().post(c0856Do);
    }
}
