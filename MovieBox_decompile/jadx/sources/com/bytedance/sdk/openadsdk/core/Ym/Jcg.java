package com.bytedance.sdk.openadsdk.core.Ym;

import android.util.Pair;
import android.view.View;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;
import java.util.Set;

public class Jcg {
    protected VastProperties EjP;
    private final AdSession HiB;
    protected String TKC;
    private final AdEvents vS;
    private boolean Jcg = false;
    protected boolean Sj = false;
    protected int sP = 0;

    public Jcg(AdSession adSession, AdEvents adEvents, View view) {
        this.HiB = adSession;
        this.vS = adEvents;
        this.TKC = adSession.getAdSessionId();
        Sj(view);
    }

    public void EjP() {
        Sj(3);
    }

    void Sj(float f10, boolean z10) {
    }

    void TKC() {
        Sj(4);
    }

    void sP(int i10) {
    }

    public void Sj(boolean z10) {
    }

    void sP() {
        Sj(1);
    }

    public void Sj(boolean z10, float f10) {
    }

    void Sj(View view) {
        AdSession adSession;
        if (view == null || (adSession = this.HiB) == null) {
            return;
        }
        adSession.registerAdView(view);
    }

    public void Sj(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        AdSession adSession = this.HiB;
        if (adSession != null) {
            adSession.addFriendlyObstruction(view, friendlyObstructionPurpose, null);
        }
    }

    boolean Sj() {
        return this.Sj;
    }

    public void Sj(int i10) {
        int i11;
        if (this.HiB == null || this.vS == null || !HiB.TKC()) {
            return;
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4 || (i11 = this.sP) == 0 || i11 == 4) {
                        return;
                    }
                    this.HiB.finish();
                    this.Sj = false;
                } else {
                    if (this.Jcg) {
                        return;
                    }
                    int i12 = this.sP;
                    if (i12 != 1 && i12 != 2) {
                        return;
                    }
                    this.vS.impressionOccurred();
                    this.Jcg = true;
                }
            } else {
                if (this.sP != 0) {
                    return;
                }
                this.HiB.start();
                if (this.EjP == null) {
                    this.EjP = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
                }
                this.vS.loaded(this.EjP);
                this.Sj = true;
                this.EjP = null;
            }
        } else {
            if (this.sP != 0) {
                return;
            }
            this.HiB.start();
            this.vS.loaded();
            this.Sj = true;
        }
        this.sP = i10;
    }

    public void Sj(Set<Pair<View, FriendlyObstructionPurpose>> set) {
        for (Pair<View, FriendlyObstructionPurpose> pair : set) {
            Sj((View) pair.first, (FriendlyObstructionPurpose) pair.second);
        }
    }
}
