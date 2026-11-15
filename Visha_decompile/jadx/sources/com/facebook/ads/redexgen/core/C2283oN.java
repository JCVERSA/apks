package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public final class C2283oN implements C1S {
    public int A00;
    public long A01;
    public long A02;
    public Object A03;
    public Object A04;
    public boolean A05;
    public C2320p0 A06 = C2320p0.A08;
    public static String[] A07 = {"4zGdQbqEEbqON0fsiZAaEQkKoAoKYmna", "yJpzHCnd9V3wUr5Wrx8duzmTaMKaViaS", "6le5bHbrSJ1W0fbLNXPlurR", "jvR1cNhZ0960aRA7pVRRRMqTg6KbIJja", "KqjZe5mn0dP", "Q", "Z7fKuPhHzVcFnrI", "fPry0FIfciS3iZV36uBdTRShtkwqjgIo"};
    public static final String A0D = AbstractC06244a.A0h(0);
    public static final String A0A = AbstractC06244a.A0h(1);
    public static final String A0C = AbstractC06244a.A0h(2);
    public static final String A0B = AbstractC06244a.A0h(3);
    public static final String A09 = AbstractC06244a.A0h(4);
    public static final C1R<C2283oN> A08 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2283oN.A01(bundle);
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 13 out of bounds for length 12
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C2283oN A01(Bundle bundle) {
        int i = bundle.getInt(A0D, 0);
        long j = bundle.getLong(A0A, C.TIME_UNSET);
        long j2 = bundle.getLong(A0C, 0L);
        boolean z = bundle.getBoolean(A0B, false);
        Bundle bundle2 = bundle.getBundle(A09);
        C2320p0 c2320p0 = bundle2 != null ? (C2320p0) C2320p0.A09.A6X(bundle2) : C2320p0.A08;
        C2283oN c2283oN = new C2283oN();
        c2283oN.A0G(null, null, i, j, j2, c2320p0, z);
        return c2283oN;
    }

    public final int A03() {
        return this.A06.A00;
    }

    public final int A04(int i) {
        return this.A06.A07(i).A00;
    }

    public final int A05(int i) {
        return this.A06.A07(i).A04();
    }

    public final int A06(int i, int i2) {
        return this.A06.A07(i).A05(i2);
    }

    public final int A07(long j) {
        return this.A06.A05(j, this.A01);
    }

    public final int A08(long j) {
        return this.A06.A06(j, this.A01);
    }

    public final long A09() {
        return this.A06.A02;
    }

    public final long A0A() {
        return this.A01;
    }

    public final long A0B() {
        return AbstractC06244a.A0P(this.A02);
    }

    public final long A0C() {
        return this.A02;
    }

    public final long A0D(int i) {
        return this.A06.A07(i).A03;
    }

    public final long A0E(int i, int i2) {
        C2321p1 c2321p1A07 = this.A06.A07(i);
        return c2321p1A07.A00 != -1 ? c2321p1A07.A06[i2] : C.TIME_UNSET;
    }

    public final C2283oN A0F(Object obj, Object obj2, int i, long j, long j2) {
        return A0G(obj, obj2, i, j, j2, C2320p0.A08, false);
    }

    public final C2283oN A0G(Object obj, Object obj2, int i, long j, long j2, C2320p0 c2320p0, boolean z) {
        this.A03 = obj;
        this.A04 = obj2;
        this.A00 = i;
        this.A01 = j;
        this.A02 = j2;
        this.A06 = c2320p0;
        this.A05 = z;
        return this;
    }

    public final boolean A0H(int i) {
        return !this.A06.A07(i).A07();
    }

    @MetaExoPlayerCustomization("Can be removed once MediaPeriodQueue is updated.")
    public final boolean A0I(int i, int i2) {
        C2321p1 c2321p1 = this.A06.A05[i];
        return (c2321p1.A00 == -1 || c2321p1.A05[i2] == 0) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        C2283oN c2283oN = (C2283oN) obj;
        if (AbstractC06244a.A1E(this.A03, c2283oN.A03) && AbstractC06244a.A1E(this.A04, c2283oN.A04) && this.A00 == c2283oN.A00 && this.A01 == c2283oN.A01 && this.A02 == c2283oN.A02 && this.A05 == c2283oN.A05 && AbstractC06244a.A1E(this.A06, c2283oN.A06)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = ((7 * 31) + (this.A03 == null ? 0 : this.A03.hashCode())) * 31;
        if (this.A04 != null) {
            Object obj = this.A04;
            String[] strArr = A07;
            if (strArr[3].charAt(31) != strArr[0].charAt(31)) {
                throw new RuntimeException();
            }
            A07[6] = "a7xjZFv85Fgc1YV";
            iHashCode = obj.hashCode();
        }
        return ((((((((((iHashCode2 + iHashCode) * 31) + this.A00) * 31) + ((int) (this.A01 ^ (this.A01 >>> 32)))) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A05 ? 1 : 0)) * 31) + this.A06.hashCode();
    }
}
