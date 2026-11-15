package com.vungle.ads.internal.presenter;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.util.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class a {
    public static final C0687a Companion = new C0687a(null);
    private static final String TAG = "AdEventListener";
    private boolean adRewarded;
    private com.vungle.ads.internal.model.g placement;
    private final b playAdCallback;

    public static final class C0687a {
        public C0687a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0687a() {
        }
    }

    public a(b bVar, com.vungle.ads.internal.model.g gVar) {
        this.playAdCallback = bVar;
        this.placement = gVar;
    }

    public final void onError(VungleError error, String str) {
        Intrinsics.h(error, "error");
        b bVar = this.playAdCallback;
        if (bVar != null) {
            bVar.onFailure(error);
            o.Companion.e(TAG, "AdEventListener#PlayAdCallback " + str, error);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void onNext(String s10, String str, String str2) {
        com.vungle.ads.internal.model.g gVar;
        b bVar;
        b bVar2;
        b bVar3;
        b bVar4;
        Intrinsics.h(s10, "s");
        o.Companion.d(TAG, "s=" + s10 + ", value=" + str + ", id=" + str2);
        switch (s10.hashCode()) {
            case -1912374177:
                if (s10.equals(MRAIDPresenter.SUCCESSFUL_VIEW) && (gVar = this.placement) != null && gVar.isRewardedVideo() && !this.adRewarded) {
                    this.adRewarded = true;
                    b bVar5 = this.playAdCallback;
                    if (bVar5 != null) {
                        bVar5.onAdRewarded(str2);
                    }
                }
                break;
            case -1627831289:
                if (s10.equals("adViewed") && (bVar = this.playAdCallback) != null) {
                    bVar.onAdImpression(str2);
                }
                break;
            case 100571:
                if (s10.equals(TtmlNode.END) && (bVar2 = this.playAdCallback) != null) {
                    bVar2.onAdEnd(str2);
                }
                break;
            case 3417674:
                if (s10.equals(MRAIDPresenter.OPEN)) {
                    if (Intrinsics.c(str, "adClick")) {
                        b bVar6 = this.playAdCallback;
                        if (bVar6 != null) {
                            bVar6.onAdClick(str2);
                        }
                        break;
                    } else if (Intrinsics.c(str, "adLeftApplication") && (bVar3 = this.playAdCallback) != null) {
                        bVar3.onAdLeftApplication(str2);
                        break;
                    }
                }
                break;
            case 109757538:
                if (s10.equals("start") && (bVar4 = this.playAdCallback) != null) {
                    bVar4.onAdStart(str2);
                }
                break;
        }
    }
}
