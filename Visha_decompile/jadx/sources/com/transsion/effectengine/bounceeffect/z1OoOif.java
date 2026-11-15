package com.transsion.effectengine.bounceeffect;

import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import com.transsion.effectengine.bounceeffect.dynamicanimation.SpringAnimation;

public final class z1OoOif extends OverScrollBounceEffectDecoratorBase {

    public class z1OoOdo extends OverScrollBounceEffectDecoratorBase.z1OoOint {
        public z1OoOdo() {
        }

        @Override
        public final boolean z1OoOdo(View view, MotionEvent motionEvent, OverScrollBounceEffectDecoratorBase.z1OoOif z1oooif) {
            String str;
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int x = (int) (motionEvent.getX(0) + iArr[0] + 0.5f);
            int y = (int) (motionEvent.getY(0) + iArr[1] + 0.5f);
            z1OoOif z1oooif2 = z1OoOif.this;
            if (z1oooif2.mInitialTouchX == Integer.MAX_VALUE || z1oooif2.mInitialTouchY == Integer.MAX_VALUE) {
                z1oooif2.mLastTouchX = x;
                z1oooif2.mInitialTouchX = x;
                z1oooif2.mLastTouchY = y;
                z1oooif2.mInitialTouchY = y;
                this.z1OoOfor = false;
                str = "touch move but not down yet";
            } else {
                int i = x - z1oooif2.mLastTouchX;
                int i2 = y - z1oooif2.mLastTouchY;
                if (Math.abs(i) <= 1000 && Math.abs(i2) <= 1000) {
                    z1OoOif z1oooif3 = z1OoOif.this;
                    z1oooif3.mLastTouchX = x;
                    z1oooif3.mLastTouchY = y;
                    if (z1oooif3.mIdleState != z1oooif && z1oooif3.mBounceBackState != z1oooif) {
                        this.z1OoOfor = false;
                    } else {
                        if (Math.abs(i2) > Math.abs(i)) {
                            this.z1OoOdo = view.getTranslationX();
                            this.z1OoOnew = x - z1OoOif.this.mInitialTouchX;
                            float f = i;
                            this.z1OoOif = f;
                            this.z1OoOint = f > 0.0f;
                            return true;
                        }
                        if (!this.z1OoOfor && Math.abs(i) > z1OoOif.this.mTouchSlop && i != 0) {
                            this.z1OoOfor = true;
                        }
                    }
                    this.z1OoOnew = x - z1OoOif.this.mInitialTouchX;
                    this.z1OoOdo = view.getTranslationX();
                    float f2 = i;
                    this.z1OoOif = f2;
                    this.z1OoOint = f2 > 0.0f;
                    if (this.z1OoOtry && z1OoOif.this.mIdleState == z1oooif) {
                        this.z1OoOint = this.z1OoObyte;
                    }
                    return false;
                }
                str = "current move distance exception need abandon dx=" + i + " dy=" + i2;
            }
            Log.e(OverScrollBounceEffectDecoratorBase.TAG, str);
            return false;
        }
    }

    public z1OoOif(com.transsion.effectengine.bounceeffect.adapters.z1OoOfor z1ooofor) {
        super(z1ooofor);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c1  */
    @Override
    public final void createAnimation() {
        float f;
        View view = this.mViewAdapter.getView();
        float translationX = view.getTranslationX();
        SpringAnimation springAnimation = this.mTranslationAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "cancel animator");
        } else {
            this.mTranslationAnimation = new SpringAnimation(view, DynamicAnimation.TRANSLATION_X);
        }
        if (this.mCustomDragBounceParameters) {
            if (Math.abs(translationX) < ((double) this.mScreenWidth) * 0.286d) {
                OverScrollBounceEffectDecoratorBase.stiffness = this.mDragStiffnessLow;
                f = this.mDragDampingLow;
            } else if (Math.abs(translationX) > ((double) this.mScreenWidth) * 0.571d) {
                OverScrollBounceEffectDecoratorBase.stiffness = this.mDragStiffnessHigh;
                f = this.mDragDampingHigh;
            } else {
                OverScrollBounceEffectDecoratorBase.stiffness = this.mDragStiffnessMedium;
                f = this.mDragDampingMedium;
            }
        } else if (this.mBigDpModeEnabled) {
            if (Math.abs(translationX) < ((double) this.mScreenWidth) * 0.286d) {
                OverScrollBounceEffectDecoratorBase.stiffness = 390.0f;
                f = 1.3f;
            } else if (Math.abs(translationX) > ((double) this.mScreenWidth) * 0.571d) {
                OverScrollBounceEffectDecoratorBase.stiffness = 330.0f;
                f = 1.1f;
            } else {
                OverScrollBounceEffectDecoratorBase.stiffness = 360.0f;
                f = 1.2f;
            }
        } else if (this.mSmallDpModeEnabled) {
            Math.abs(translationX);
            OverScrollBounceEffectDecoratorBase.stiffness = 180.0f;
            f = 0.6f;
        } else if (Math.abs(translationX) < ((double) this.mScreenWidth) * 0.286d) {
            OverScrollBounceEffectDecoratorBase.stiffness = 360.0f;
            f = 1.2f;
        } else if (Math.abs(translationX) > ((double) this.mScreenWidth) * 0.571d) {
            OverScrollBounceEffectDecoratorBase.stiffness = 300.0f;
            f = 1.0f;
        } else {
            OverScrollBounceEffectDecoratorBase.stiffness = 330.0f;
            f = 1.1f;
        }
        OverScrollBounceEffectDecoratorBase.damping = f;
        this.mTranslationAnimation.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(OverScrollBounceEffectDecoratorBase.stiffness).z1OoOdo(OverScrollBounceEffectDecoratorBase.damping));
        Log.d(OverScrollBounceEffectDecoratorBase.TAG, "createAnimation stiffness=" + OverScrollBounceEffectDecoratorBase.stiffness + " damping=" + OverScrollBounceEffectDecoratorBase.damping + " CurrentOffset=" + translationX + " mScreenWidth=" + this.mScreenWidth);
    }

    @Override
    public final OverScrollBounceEffectDecoratorBase.z1OoOint createMotionAttributes() {
        return new z1OoOdo();
    }

    @Override
    public final float getFrictionFactor(float f, float f2, boolean z, boolean z2) {
        int i = this.mViewAdapter.getView().getContext().getResources().getDisplayMetrics().widthPixels;
        if (i >= 1) {
            if (this.mFullDragFollowEnabled) {
                return 1.0f;
            }
            return Math.min(1.0f, (!z ? 1.0f : frictionFactor((Math.abs(f) - Math.abs(f2)) / i)) * (requireOptParams() ? 0.94f : 1.0f));
        }
        Log.e(OverScrollBounceEffectDecoratorBase.TAG, "viewPortLength:" + i);
        return 1.0f;
    }

    @Override
    public final float getTranslationProperty(View view) {
        return view.getTranslationX();
    }

    @Override
    public final float getVelocity(VelocityTracker velocityTracker) {
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, 5000.0f);
        float xVelocity = velocityTracker.getXVelocity();
        if (Math.abs(xVelocity) <= 500.0f) {
            return 0.0f;
        }
        float f = xVelocity - 500.0f;
        return xVelocity > 500.0f ? (f * 3000.0f) / 4500.0f : ((-f) * 3000.0f) / 4500.0f;
    }

    @Override
    public final boolean isBounceEdgeAnimRunning(BounceEdgeEffect bounceEdgeEffect) {
        return false;
    }

    @Override
    public final boolean isVertical() {
        return false;
    }

    @Override
    public final boolean sanityCheck(View view) {
        float translationX = view.getTranslationX();
        if (translationX <= Float.MAX_VALUE && translationX >= -3.4028235E38f) {
            return true;
        }
        Log.e(OverScrollBounceEffectDecoratorBase.TAG, "view tanslationX:" + translationX);
        view.setTranslationX(0.0f);
        return false;
    }

    @Override
    public final void translateView(View view, float f) {
        IOverScrollListener iOverScrollListener = this.mOverScrollListener;
        if (iOverScrollListener != null) {
            iOverScrollListener.onOverScrollUpdated(f);
        }
        view.setTranslationX(f);
    }

    @Override
    public final void translateViewAndEvent(View view, float f, MotionEvent motionEvent) {
        view.setTranslationX(f);
        motionEvent.offsetLocation(f - motionEvent.getX(0), 0.0f);
    }
}
