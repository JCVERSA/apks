package com.transsion.effectengine.bounceeffect;

import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import com.transsion.effectengine.bounceeffect.dynamicanimation.SpringAnimation;
import defpackage.vyd;

public class VerticalOverScrollBounceEffectDecorator extends OverScrollBounceEffectDecoratorBase {

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
            VerticalOverScrollBounceEffectDecorator verticalOverScrollBounceEffectDecorator = VerticalOverScrollBounceEffectDecorator.this;
            if (verticalOverScrollBounceEffectDecorator.mInitialTouchX == Integer.MAX_VALUE || verticalOverScrollBounceEffectDecorator.mInitialTouchY == Integer.MAX_VALUE) {
                verticalOverScrollBounceEffectDecorator.mLastTouchX = x;
                verticalOverScrollBounceEffectDecorator.mInitialTouchX = x;
                verticalOverScrollBounceEffectDecorator.mLastTouchY = y;
                verticalOverScrollBounceEffectDecorator.mInitialTouchY = y;
                this.z1OoOfor = false;
                str = "touch move but not down yet";
            } else {
                int i = x - verticalOverScrollBounceEffectDecorator.mLastTouchX;
                int i2 = y - verticalOverScrollBounceEffectDecorator.mLastTouchY;
                if (Math.abs(i) <= 1000 && Math.abs(i2) <= 1000) {
                    VerticalOverScrollBounceEffectDecorator verticalOverScrollBounceEffectDecorator2 = VerticalOverScrollBounceEffectDecorator.this;
                    verticalOverScrollBounceEffectDecorator2.mLastTouchX = x;
                    verticalOverScrollBounceEffectDecorator2.mLastTouchY = y;
                    if (verticalOverScrollBounceEffectDecorator2.mIdleState != z1oooif && verticalOverScrollBounceEffectDecorator2.mBounceBackState != z1oooif) {
                        this.z1OoOfor = false;
                    } else {
                        if (Math.abs(i) > Math.abs(i2)) {
                            this.z1OoOdo = view.getTranslationY();
                            this.z1OoOnew = y - VerticalOverScrollBounceEffectDecorator.this.mInitialTouchY;
                            float f = i2;
                            this.z1OoOif = f;
                            this.z1OoOint = f > 0.0f;
                            return true;
                        }
                        if (!this.z1OoOfor && Math.abs(i2) > VerticalOverScrollBounceEffectDecorator.this.mTouchSlop && i2 != 0) {
                            this.z1OoOfor = true;
                        }
                    }
                    this.z1OoOnew = y - VerticalOverScrollBounceEffectDecorator.this.mInitialTouchY;
                    this.z1OoOdo = view.getTranslationY();
                    float f2 = i2;
                    this.z1OoOif = f2;
                    this.z1OoOint = f2 > 0.0f;
                    if (this.z1OoOtry && VerticalOverScrollBounceEffectDecorator.this.mIdleState == z1oooif) {
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

    public VerticalOverScrollBounceEffectDecorator(com.transsion.effectengine.bounceeffect.adapters.z1OoOfor z1ooofor) {
        super(z1ooofor);
    }

    private float convertVelocity(float f, float f2, float f3) {
        float f4;
        if (Math.abs(f) <= 500.0f) {
            return 0.0f;
        }
        float f5 = f - 500.0f;
        if (f > 500.0f) {
            f4 = (f3 - f2) * f5;
        } else {
            f4 = (f3 - f2) * (-f5);
        }
        return f4 / 4500.0f;
    }

    private float getOptimizedFactor(boolean z) {
        float f = (this.mDiffFrictionFactor && z) ? 1.1f : 0.65f;
        if (!isVertical() || this.mUseInitialFrictionFactor) {
            return 1.0f;
        }
        return f;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d4  */
    @Override
    public void createAnimation() {
        float f;
        View view = this.mViewAdapter.getView();
        float translationProperty = getTranslationProperty(view);
        SpringAnimation springAnimation = this.mTranslationAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
            Log.d(OverScrollBounceEffectDecoratorBase.TAG, "cancel animator");
        } else {
            this.mTranslationAnimation = new SpringAnimation(view, DynamicAnimation.TRANSLATION_Y);
        }
        if (this.mCustomDragBounceParameters) {
            if (Math.abs(translationProperty) < ((double) this.mScreenHeight) * 0.286d) {
                OverScrollBounceEffectDecoratorBase.stiffness = this.mDragStiffnessLow;
                f = this.mDragDampingLow;
            } else if (Math.abs(translationProperty) > ((double) this.mScreenHeight) * 0.571d) {
                OverScrollBounceEffectDecoratorBase.stiffness = this.mDragStiffnessHigh;
                f = this.mDragDampingHigh;
            } else {
                OverScrollBounceEffectDecoratorBase.stiffness = this.mDragStiffnessMedium;
                f = this.mDragDampingMedium;
            }
        } else if (this.mBigDpModeEnabled) {
            if (vyd.b) {
                OverScrollBounceEffectDecoratorBase.stiffness = 311.0f;
                f = 1.11f;
            } else if (Math.abs(translationProperty) < ((double) this.mScreenHeight) * 0.286d) {
                OverScrollBounceEffectDecoratorBase.stiffness = 360.0f;
                f = 1.2f;
            } else if (Math.abs(translationProperty) > ((double) this.mScreenHeight) * 0.571d) {
                OverScrollBounceEffectDecoratorBase.stiffness = 300.0f;
                f = 1.0f;
            } else {
                OverScrollBounceEffectDecoratorBase.stiffness = 330.0f;
                f = 1.1f;
            }
        } else if (this.mSmallDpModeEnabled) {
            Math.abs(translationProperty);
            OverScrollBounceEffectDecoratorBase.stiffness = 150.0f;
            f = 0.5f;
        } else if (vyd.b) {
            OverScrollBounceEffectDecoratorBase.stiffness = 311.0f;
            f = 1.11f;
        } else if (Math.abs(translationProperty) < ((double) this.mScreenHeight) * 0.286d) {
            OverScrollBounceEffectDecoratorBase.stiffness = 330.0f;
            f = 1.1f;
        } else if (Math.abs(translationProperty) > ((double) this.mScreenHeight) * 0.571d) {
            OverScrollBounceEffectDecoratorBase.stiffness = 270.0f;
            f = 0.9f;
        } else {
            OverScrollBounceEffectDecoratorBase.stiffness = 300.0f;
            f = 1.0f;
        }
        OverScrollBounceEffectDecoratorBase.damping = f;
        this.mTranslationAnimation.setSpring(new com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOint(0.0f).z1OoOif(OverScrollBounceEffectDecoratorBase.stiffness).z1OoOdo(OverScrollBounceEffectDecoratorBase.damping));
        Log.d(OverScrollBounceEffectDecoratorBase.TAG, "createAnimation stiffness=" + OverScrollBounceEffectDecoratorBase.stiffness + " damping=" + OverScrollBounceEffectDecoratorBase.damping + " CurrentOffset=" + translationProperty + " mScreenHeight=" + this.mScreenHeight);
    }

    @Override
    public OverScrollBounceEffectDecoratorBase.z1OoOint createMotionAttributes() {
        return new z1OoOdo();
    }

    @Override
    public float getFrictionFactor(float f, float f2, boolean z, boolean z2) {
        int i = this.mViewAdapter.getView().getContext().getResources().getDisplayMetrics().heightPixels;
        if (i < 1) {
            Log.e(OverScrollBounceEffectDecoratorBase.TAG, "viewPortLength:" + i);
            return 1.0f;
        }
        if (this.mFullDragFollowEnabled) {
            return 1.0f;
        }
        float fFrictionFactor = !z ? 1.0f : frictionFactor((Math.abs(f) - Math.abs(f2)) / i);
        if (this.mDoubleFrictionEnabled && this.mNestedEdgeReached) {
            fFrictionFactor /= 2.5f;
        }
        return Math.min(1.0f, fFrictionFactor * (requireOptParams() ? getOptimizedFactor(z2) : 1.0f));
    }

    @Override
    public float getTranslationProperty(View view) {
        return view.getTranslationY();
    }

    @Override
    public float getVelocity(VelocityTracker velocityTracker) {
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, 5000.0f);
        return convertVelocity(velocityTracker.getYVelocity(), 0.0f, 3000.0f);
    }

    @Override
    public boolean isBounceEdgeAnimRunning(BounceEdgeEffect bounceEdgeEffect) {
        z1OoOfor z1ooofor = this.mBounceEdgeEffect;
        if (z1ooofor != null) {
            return z1ooofor.z1OoOdo(bounceEdgeEffect);
        }
        return false;
    }

    @Override
    public boolean isVertical() {
        return true;
    }

    @Override
    public boolean sanityCheck(View view) {
        float translationY = view.getTranslationY();
        if (translationY <= Float.MAX_VALUE && translationY >= -3.4028235E38f) {
            return true;
        }
        Log.e(OverScrollBounceEffectDecoratorBase.TAG, "view tanslationY:" + translationY);
        view.setTranslationY(0.0f);
        return false;
    }

    @Override
    public void translateView(View view, float f) {
        IOverScrollListener iOverScrollListener = this.mOverScrollListener;
        if (iOverScrollListener != null) {
            iOverScrollListener.onOverScrollUpdated(f);
        }
        view.setTranslationY(f);
    }

    @Override
    public void translateViewAndEvent(View view, float f, MotionEvent motionEvent) {
        view.setTranslationY(f);
        motionEvent.offsetLocation(f - motionEvent.getY(0), 0.0f);
    }
}
