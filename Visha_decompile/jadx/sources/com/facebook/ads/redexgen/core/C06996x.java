package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public final class C06996x {
    public static final C2159mL A0E = new C2159mL(new Object());
    public final int A00;
    public final long A01;
    public final long A02;
    public final Timeline A03;
    public final C2159mL A04;
    public final C2159mL A05;
    public final C2149mA A06;
    public final EL A07;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "Start Stall Logging")
    public final EnumC1888hX A08;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "Determine if stall is from Audio for logging")
    public final boolean A09;
    public final boolean A0A;
    public volatile long A0B;
    public volatile long A0C;
    public volatile long A0D;

    public C06996x(Timeline timeline, long j, C2149mA c2149mA, EL el) {
        this(timeline, A0E, j, C.TIME_UNSET, 1, false, c2149mA, el, A0E, j, j, j, EnumC1888hX.A09, false);
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Customized to call base constructor")
    public C06996x(Timeline timeline, C2159mL c2159mL, long j, long j2, int i, boolean z, C2149mA c2149mA, EL el, C2159mL c2159mL2, long j3, long j4, long j5) {
        this(timeline, c2159mL, j, j2, i, z, c2149mA, el, c2159mL2, j3, j4, j5, EnumC1888hX.A09, false);
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Customized to add new parameters")
    public C06996x(@MetaExoPlayerCustomization(type = {"NEW_METHOD_ARGS"}) Timeline timeline, @MetaExoPlayerCustomization(type = {"NEW_METHOD_ARGS"}) C2159mL c2159mL, long j, long j2, int i, boolean z, C2149mA c2149mA, EL el, C2159mL c2159mL2, long j3, long j4, long j5, EnumC1888hX enumC1888hX, boolean z2) {
        this.A03 = timeline;
        this.A05 = c2159mL;
        this.A02 = j;
        this.A01 = j2;
        this.A0C = j;
        this.A00 = i;
        this.A0A = z;
        this.A06 = c2149mA;
        this.A07 = el;
        this.A04 = c2159mL2;
        this.A0B = j3;
        this.A0D = j4;
        this.A0C = j5;
        this.A08 = enumC1888hX;
        this.A09 = z2;
    }

    public static void A00(C06996x c06996x, C06996x c06996x2) {
        c06996x2.A0C = c06996x.A0C;
        c06996x2.A0B = c06996x.A0B;
        c06996x2.A0D = c06996x.A0D;
    }

    public final C06996x A01(int i) {
        C06996x c06996x = new C06996x(this.A03, this.A05, this.A02, this.A01, i, this.A0A, this.A06, this.A07, this.A04, this.A0B, this.A0D, this.A0C, this.A08, this.A09);
        A00(this, c06996x);
        return c06996x;
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Stall Reason Logging in Hero")
    public final C06996x A02(int i, EnumC1888hX enumC1888hX, boolean z) {
        C06996x c06996x = new C06996x(this.A03, this.A05, this.A02, this.A01, i, this.A0A, this.A06, this.A07, this.A04, this.A0B, this.A0D, this.A0C, enumC1888hX, z);
        A00(this, c06996x);
        return c06996x;
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "To track Audio Stalls for Logging")
    public final C06996x A03(int i, boolean z) {
        C06996x c06996x = new C06996x(this.A03, this.A05, this.A02, this.A01, i, this.A0A, this.A06, this.A07, this.A04, this.A0B, this.A0D, this.A0C, this.A08, z);
        A00(this, c06996x);
        return c06996x;
    }

    public final C06996x A04(Timeline timeline) {
        C06996x c06996x = new C06996x(timeline, this.A05, this.A02, this.A01, this.A00, this.A0A, this.A06, this.A07, this.A04, this.A0B, this.A0D, this.A0C, this.A08, this.A09);
        A00(this, c06996x);
        return c06996x;
    }

    public final C06996x A05(C2159mL c2159mL) {
        return new C06996x(this.A03, this.A05, this.A02, this.A01, this.A00, this.A0A, this.A06, this.A07, c2159mL, this.A0B, this.A0D, this.A0C, this.A08, this.A09);
    }

    public final C06996x A06(C2159mL c2159mL, long j, long j2, long j3) {
        long j4 = j2;
        Timeline timeline = this.A03;
        if (!c2159mL.A00()) {
            j4 = C.TIME_UNSET;
        }
        return new C06996x(timeline, c2159mL, j, j4, this.A00, this.A0A, this.A06, this.A07, this.A04, this.A0B, j3, j);
    }

    public final C06996x A07(C2149mA c2149mA, EL el) {
        C06996x c06996x = new C06996x(this.A03, this.A05, this.A02, this.A01, this.A00, this.A0A, c2149mA, el, this.A04, this.A0B, this.A0D, this.A0C, this.A08, this.A09);
        A00(this, c06996x);
        return c06996x;
    }

    public final C06996x A08(boolean z) {
        C06996x c06996x = new C06996x(this.A03, this.A05, this.A02, this.A01, this.A00, z, this.A06, this.A07, this.A04, this.A0B, this.A0D, this.A0C, this.A08, this.A09);
        A00(this, c06996x);
        return c06996x;
    }
}
