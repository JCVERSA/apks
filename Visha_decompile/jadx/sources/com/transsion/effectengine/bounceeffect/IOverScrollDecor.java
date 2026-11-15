package com.transsion.effectengine.bounceeffect;

public interface IOverScrollDecor {
    void disable();

    void enable();

    void enableNestedScrollMode(boolean z);

    boolean isInIdleState();

    void notifyNestedScrollEdgeReached(boolean z);

    void notifyNestedScrollFarEdgeReached(boolean z);

    void setAvoidVelocity(boolean z);

    void setCardMode(boolean z);

    void setCenterDisplayMode(boolean z);

    void setDialogMode(boolean z);

    void setDiffFrictionFactor(boolean z);

    void setDoubleFriction(boolean z);

    void setDragBounceParameters(float f, float f2, float f3, float f4, float f5, float f6);

    void setDragSpringParameters(float f, float f2);

    void setFlingBounceParameters(float f, float f2);

    void setFullDragFollowEnabled(boolean z);

    void setGridMode(boolean z);

    void setIsRefreshRateLimited(boolean z);

    void setOverScrollListener(IOverScrollListener iOverScrollListener);

    void setUseInitialFrictionFactor(boolean z);

    void setVibrateEnable(boolean z);
}
