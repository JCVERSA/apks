package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.facebook.ads.androidx.media3.common.text.Cue;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.List;

public final class C2261o0 implements C1S {
    public final long A00;

    @MetaExoPlayerCustomization("Oculus does not work well with Google Guava")
    public final List<C2263o2> A01;
    public static final C2261o0 A03 = new C2261o0(MetaExoPlayerCustomizedCollections.A01(), 0);
    public static final String A04 = AbstractC06244a.A0h(0);
    public static final String A05 = AbstractC06244a.A0h(1);
    public static final C1R<C2261o0> A02 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2261o0.A00(bundle);
        }
    };

    @MetaExoPlayerCustomization("Oculus does not work well with Google Guava")
    public C2261o0(List<C2263o2> list, long j) {
        this.A01 = MetaExoPlayerCustomizedCollections.A03((C2263o2[]) list.toArray(new C2263o2[0]));
        this.A00 = j;
    }

    public static final C2261o0 A00(Bundle bundle) {
        List listA01;
        List<Cue> cues = bundle.getParcelableArrayList(A04);
        if (cues == null) {
            listA01 = MetaExoPlayerCustomizedCollections.A01();
        } else {
            listA01 = C3S.A01(C2263o2.A0I, cues);
        }
        return new C2261o0(listA01, bundle.getLong(A05));
    }
}
