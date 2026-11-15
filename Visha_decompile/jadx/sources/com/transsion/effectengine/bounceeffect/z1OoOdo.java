package com.transsion.effectengine.bounceeffect;

import android.widget.EdgeEffect;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public final class z1OoOdo extends RecyclerView.EdgeEffectFactory implements z1OoOfor {
    public BounceEdgeEffect z1OoOdo;
    public BounceEdgeEffect z1OoOfor;
    public BounceEdgeEffect z1OoOif;
    public BounceEdgeEffect z1OoOint;
    public OverScrollBounceEffectDecoratorBase z1OoOnew;

    @Override
    @NonNull
    public final EdgeEffect createEdgeEffect(@NonNull RecyclerView recyclerView, int i) {
        if (i == 0) {
            BounceEdgeEffect bounceEdgeEffect = new BounceEdgeEffect(recyclerView, i, this.z1OoOnew);
            this.z1OoOdo = bounceEdgeEffect;
            return bounceEdgeEffect;
        }
        if (i == 1) {
            BounceEdgeEffect bounceEdgeEffect2 = new BounceEdgeEffect(recyclerView, i, this.z1OoOnew);
            this.z1OoOfor = bounceEdgeEffect2;
            return bounceEdgeEffect2;
        }
        if (i == 2) {
            BounceEdgeEffect bounceEdgeEffect3 = new BounceEdgeEffect(recyclerView, i, this.z1OoOnew);
            this.z1OoOif = bounceEdgeEffect3;
            return bounceEdgeEffect3;
        }
        if (i != 3) {
            return super.createEdgeEffect(recyclerView, i);
        }
        BounceEdgeEffect bounceEdgeEffect4 = new BounceEdgeEffect(recyclerView, i, this.z1OoOnew);
        this.z1OoOint = bounceEdgeEffect4;
        return bounceEdgeEffect4;
    }

    @Override
    public final void z1OoOdo() {
        BounceEdgeEffect bounceEdgeEffect = this.z1OoOdo;
        if (bounceEdgeEffect != null) {
            bounceEdgeEffect.cancelBounceAnimation();
        }
        BounceEdgeEffect bounceEdgeEffect2 = this.z1OoOif;
        if (bounceEdgeEffect2 != null) {
            bounceEdgeEffect2.cancelBounceAnimation();
        }
        BounceEdgeEffect bounceEdgeEffect3 = this.z1OoOfor;
        if (bounceEdgeEffect3 != null) {
            bounceEdgeEffect3.cancelBounceAnimation();
        }
        BounceEdgeEffect bounceEdgeEffect4 = this.z1OoOint;
        if (bounceEdgeEffect4 != null) {
            bounceEdgeEffect4.cancelBounceAnimation();
        }
    }

    @Override
    public final boolean z1OoOdo(BounceEdgeEffect bounceEdgeEffect) {
        BounceEdgeEffect bounceEdgeEffect2 = this.z1OoOfor;
        boolean zIsBounceEdgeAnimRunning = (bounceEdgeEffect2 == null || bounceEdgeEffect2 == bounceEdgeEffect) ? false : bounceEdgeEffect2.isBounceEdgeAnimRunning();
        BounceEdgeEffect bounceEdgeEffect3 = this.z1OoOint;
        return (bounceEdgeEffect3 == null || bounceEdgeEffect3 == bounceEdgeEffect) ? zIsBounceEdgeAnimRunning : zIsBounceEdgeAnimRunning | bounceEdgeEffect3.isBounceEdgeAnimRunning();
    }
}
