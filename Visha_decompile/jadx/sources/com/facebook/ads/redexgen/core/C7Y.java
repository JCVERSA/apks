package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public final class C7Y {
    public static String[] A06 = {"jkVScMAnmSDw5NjtFKaMDw93YHVTZfVV", "X8vR6FaiUrrVUV4OyPqbjTz4nTbdT", "DJqg7VUdCo9q2ysxPrWS1RTdTLsj", "4FrbkvGGO58oIWN02YSUZA4iQkwc41Il", "lEgbsVLzgPUjgc1", "ISDPu1y88m9uUW9z", "L6djBwtYOA2bka2PQ69EdZLSIG4ne", "x8MPEelqUvAzBLNZGFUUNdgpeh0HUacA"};
    public C2159mL A00;
    public C2159mL A01;
    public C2159mL A02;
    public AbstractC0779Am<C2159mL> A03 = AbstractC0779Am.A03();
    public AbstractC2183mj<C2159mL, Timeline> A04 = AbstractC2183mj.A04();
    public final C2283oN A05;

    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2159mL A00(InterfaceC05972z interfaceC05972z, AbstractC0779Am<C2159mL> abstractC0779Am, C2159mL c2159mL, C2283oN c2283oN) {
        int iA07;
        Object obj;
        int i;
        Timeline timelineA7Y = interfaceC05972z.A7Y();
        int iA7U = interfaceC05972z.A7U();
        Object objA0M = timelineA7Y.A0N() ? null : timelineA7Y.A0M(iA7U);
        if (interfaceC05972z.AAU()) {
            iA07 = -1;
        } else {
            boolean zA0N = timelineA7Y.A0N();
            String[] strArr = A06;
            if (strArr[7].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            A06[6] = "fPIpfte6042F2VeKOBsTFTkNJVxhR";
            if (zA0N) {
                iA07 = -1;
            } else {
                iA07 = timelineA7Y.A0H(iA7U, c2283oN).A07(AbstractC06244a.A0O(interfaceC05972z.A7W()) - c2283oN.A0C());
            }
        }
        for (int i2 = 0; i2 < abstractC0779Am.size(); i2++) {
            C2159mL c2159mL2 = abstractC0779Am.get(i2);
            if (A04(c2159mL2, objA0M, interfaceC05972z.AAU(), interfaceC05972z.A7Q(), interfaceC05972z.A7R(), iA07)) {
                return c2159mL2;
            }
        }
        if (abstractC0779Am.isEmpty() && c2159mL != null && A04(c2159mL, obj, interfaceC05972z.AAU(), interfaceC05972z.A7Q(), interfaceC05972z.A7R(), i)) {
            obj = objA0M;
            i = iA07;
            return c2159mL;
        }
        obj = objA0M;
        i = iA07;
        return null;
    }

    public C7Y(C2283oN c2283oN) {
        this.A05 = c2283oN;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mh != com.google.common.collect.ImmutableMap$Builder<com.facebook.ads.androidx.media3.exoplayer.source.MediaSource$MediaPeriodId, com.facebook.ads.androidx.media3.common.Timeline> */
    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "builder of ImmutableMap should be a buildOrThrow")
    private void A02(Timeline timeline) {
        C2181mh<C2159mL, Timeline> c2181mhA03 = AbstractC2183mj.A03();
        if (this.A03.isEmpty()) {
            A03(c2181mhA03, this.A01, timeline);
            C2159mL c2159mL = this.A02;
            C2159mL c2159mL2 = this.A01;
            if (A06[4].length() == 25) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[2] = "UxUdIKnoAyUMpq9t4QIr4fpxRPT3";
            strArr[1] = "6BCX8szW2uTmGViuSf00Yq1AObOIr";
            if (!BX.A01(c2159mL, c2159mL2)) {
                A03(c2181mhA03, this.A02, timeline);
            }
            if (!BX.A01(this.A00, this.A01) && !BX.A01(this.A00, this.A02)) {
                A03(c2181mhA03, this.A00, timeline);
            }
        } else {
            for (int i = 0; i < this.A03.size(); i++) {
                A03(c2181mhA03, this.A03.get(i), timeline);
            }
            if (!this.A03.contains(this.A00)) {
                A03(c2181mhA03, this.A00, timeline);
            }
        }
        this.A04 = c2181mhA03.A07();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mh != com.google.common.collect.ImmutableMap$Builder<com.facebook.ads.androidx.media3.exoplayer.source.MediaSource$MediaPeriodId, com.facebook.ads.androidx.media3.common.Timeline> */
    private void A03(C2181mh<C2159mL, Timeline> c2181mh, C2159mL c2159mL, Timeline timeline) {
        if (c2159mL == null) {
            return;
        }
        if (timeline.A0A(c2159mL.A04) != -1) {
            c2181mh.A05(c2159mL, timeline);
            return;
        }
        Timeline existingTimeline = this.A04.get(c2159mL);
        if (existingTimeline == null) {
            return;
        }
        c2181mh.A05(c2159mL, existingTimeline);
    }

    public static boolean A04(C2159mL c2159mL, Object obj, boolean z, int i, int i2, int i3) {
        if (c2159mL.A04.equals(obj)) {
            return (z && c2159mL.A00 == i && c2159mL.A01 == i2) || (!z && c2159mL.A00 == -1 && c2159mL.A02 == i3);
        }
        return false;
    }

    public final Timeline A05(C2159mL c2159mL) {
        return this.A04.get(c2159mL);
    }

    public final C2159mL A06() {
        return this.A00;
    }

    public final void A07(InterfaceC05972z interfaceC05972z) {
        this.A00 = A00(interfaceC05972z, this.A03, this.A01, this.A05);
        A02(interfaceC05972z.A7Y());
    }
}
