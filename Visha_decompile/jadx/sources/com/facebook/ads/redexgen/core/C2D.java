package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.List;

public final class C2D {
    public float A00;
    public float A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public int A0I;
    public int A0J;
    public long A0K;
    public ColorInfo A0L;
    public DrmInitData A0M;
    public Metadata A0N;
    public Object A0O;
    public String A0P;
    public String A0Q;
    public String A0R;
    public String A0S;
    public String A0T;
    public String A0U;
    public List<byte[]> A0V;
    public byte[] A0W;

    public C2D() {
        this.A03 = -1;
        this.A0B = -1;
        this.A09 = -1;
        this.A0K = Long.MAX_VALUE;
        this.A0J = -1;
        this.A08 = -1;
        this.A00 = -1.0f;
        this.A01 = 1.0f;
        this.A0G = -1;
        this.A04 = -1;
        this.A0E = -1;
        this.A0A = -1;
        this.A02 = -1;
        this.A0H = -1;
        this.A0I = -1;
        this.A05 = 0;
    }

    public C2D(C2312or c2312or) {
        this.A0R = c2312or.A0T;
        this.A0S = c2312or.A0U;
        this.A0T = c2312or.A0V;
        this.A0F = c2312or.A0H;
        this.A0C = c2312or.A0E;
        this.A03 = c2312or.A04;
        this.A0B = c2312or.A0D;
        this.A0P = c2312or.A0R;
        this.A0N = c2312or.A0P;
        this.A0Q = c2312or.A0S;
        this.A0U = c2312or.A0W;
        this.A09 = c2312or.A0B;
        this.A0V = c2312or.A0X;
        this.A0M = c2312or.A0O;
        this.A0K = c2312or.A0M;
        this.A0J = c2312or.A0L;
        this.A08 = c2312or.A0A;
        this.A00 = c2312or.A01;
        this.A0D = c2312or.A0F;
        this.A01 = c2312or.A02;
        this.A0W = c2312or.A0Y;
        this.A0G = c2312or.A0I;
        this.A0L = c2312or.A0N;
        this.A04 = c2312or.A06;
        this.A0E = c2312or.A0G;
        this.A0A = c2312or.A0C;
        this.A06 = c2312or.A08;
        this.A07 = c2312or.A09;
        this.A02 = c2312or.A03;
        this.A0H = c2312or.A0J;
        this.A0I = c2312or.A0K;
        this.A05 = c2312or.A07;
        this.A0O = c2312or.A0Q;
    }

    public final C2D A0X(float f) {
        this.A00 = f;
        return this;
    }

    public final C2D A0Y(float f) {
        this.A01 = f;
        return this;
    }

    public final C2D A0Z(int i) {
        this.A02 = i;
        return this;
    }

    public final C2D A0a(int i) {
        this.A03 = i;
        return this;
    }

    public final C2D A0b(int i) {
        this.A04 = i;
        return this;
    }

    public final C2D A0c(int i) {
        this.A05 = i;
        return this;
    }

    public final C2D A0d(int i) {
        this.A06 = i;
        return this;
    }

    public final C2D A0e(int i) {
        this.A07 = i;
        return this;
    }

    public final C2D A0f(int i) {
        this.A08 = i;
        return this;
    }

    public final C2D A0g(int i) {
        this.A0R = Integer.toString(i);
        return this;
    }

    public final C2D A0h(int i) {
        this.A09 = i;
        return this;
    }

    public final C2D A0i(int i) {
        this.A0A = i;
        return this;
    }

    public final C2D A0j(int i) {
        this.A0B = i;
        return this;
    }

    public final C2D A0k(int i) {
        this.A0C = i;
        return this;
    }

    public final C2D A0l(int i) {
        this.A0D = i;
        return this;
    }

    public final C2D A0m(int i) {
        this.A0E = i;
        return this;
    }

    public final C2D A0n(int i) {
        this.A0F = i;
        return this;
    }

    public final C2D A0o(int i) {
        this.A0G = i;
        return this;
    }

    public final C2D A0p(int i) {
        this.A0H = i;
        return this;
    }

    public final C2D A0q(int i) {
        this.A0I = i;
        return this;
    }

    public final C2D A0r(int i) {
        this.A0J = i;
        return this;
    }

    public final C2D A0s(long j) {
        this.A0K = j;
        return this;
    }

    public final C2D A0t(ColorInfo colorInfo) {
        this.A0L = colorInfo;
        return this;
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Processing CryptoType for callers that don't know about it")
    public final C2D A0u(DrmInitData drmInitData) {
        this.A0M = drmInitData;
        if (drmInitData != null && this.A05 == 0) {
            A0c(2);
        }
        return this;
    }

    public final C2D A0v(Metadata metadata) {
        this.A0N = metadata;
        return this;
    }

    public final C2D A0w(String str) {
        this.A0P = str;
        return this;
    }

    public final C2D A0x(String str) {
        this.A0Q = str;
        return this;
    }

    public final C2D A0y(String str) {
        this.A0R = str;
        return this;
    }

    public final C2D A0z(String str) {
        this.A0S = str;
        return this;
    }

    public final C2D A10(String str) {
        this.A0T = str;
        return this;
    }

    public final C2D A11(String str) {
        this.A0U = str;
        return this;
    }

    public final C2D A12(List<byte[]> initializationData) {
        this.A0V = initializationData;
        return this;
    }

    public final C2D A13(byte[] bArr) {
        this.A0W = bArr;
        return this;
    }

    public final C2312or A14() {
        return new C2312or(this);
    }
}
