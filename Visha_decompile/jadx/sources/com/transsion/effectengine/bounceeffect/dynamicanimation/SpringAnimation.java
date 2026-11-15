package com.transsion.effectengine.bounceeffect.dynamicanimation;

import android.util.AndroidRuntimeException;
import android.util.Log;
import androidx.annotation.MainThread;

public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    private static final String TAG = "SpringAnimation";
    private static final float UNSET = Float.MAX_VALUE;
    private boolean mEndRequested;
    private float mPendingPosition;
    private z1OoOint mSpring;

    public SpringAnimation(z1OoOfor z1ooofor) {
        super(z1ooofor);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    private void sanityCheck() {
        if (this.mSpring == null) {
            this.mSpring = new z1OoOint(0.0f).z1OoOif(200.0f).z1OoOdo(1.0f);
            Log.e(TAG, "Incomplete SpringAnimation: Either final\"\n                    + \" position or a spring force needs to be set.");
        }
        double d = (float) this.mSpring.z1OoOchar;
        if (d > this.mMaxValue) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d < this.mMinValue) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }

    public void animateToFinalPosition(float f) {
        if (isRunning()) {
            this.mPendingPosition = f;
            return;
        }
        if (this.mSpring == null) {
            this.mSpring = new z1OoOint(f);
        }
        this.mSpring.z1OoOchar = f;
        start();
    }

    public boolean canSkipToEnd() {
        return this.mSpring.z1OoOif > 0.0d;
    }

    @Override
    @MainThread
    public void cancel() {
        super.cancel();
        float f = this.mPendingPosition;
        if (f != Float.MAX_VALUE) {
            z1OoOint z1oooint = this.mSpring;
            if (z1oooint == null) {
                this.mSpring = new z1OoOint(f);
            } else {
                z1oooint.z1OoOchar = f;
            }
            this.mPendingPosition = Float.MAX_VALUE;
        }
    }

    @Override
    public float getAcceleration(float f, float f2) {
        z1OoOint z1oooint = this.mSpring;
        float f3 = f - ((float) z1oooint.z1OoOchar);
        double d = z1oooint.z1OoOdo;
        return (float) (((-(d * d)) * ((double) f3)) - (((d * 2.0d) * z1oooint.z1OoOif) * ((double) f2)));
    }

    public z1OoOint getSpring() {
        return this.mSpring;
    }

    @Override
    public boolean isAtEquilibrium(float f, float f2) {
        z1OoOint z1oooint = this.mSpring;
        z1oooint.getClass();
        return ((double) Math.abs(f2)) < z1oooint.z1OoOnew && ((double) Math.abs(f - ((float) z1oooint.z1OoOchar))) < z1oooint.z1OoOint;
    }

    public SpringAnimation setSpring(z1OoOint z1oooint) {
        this.mSpring = z1oooint;
        return this;
    }

    @Override
    public void setValueThreshold(float f) {
    }

    public void skipToEnd() {
        if (!canSkipToEnd()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (!getAnimationHandler().z1OoOnew.z1OoOdo()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.mRunning) {
            this.mEndRequested = true;
        }
    }

    @Override
    @MainThread
    public void start() {
        sanityCheck();
        z1OoOint z1oooint = this.mSpring;
        double valueThreshold = getValueThreshold();
        z1oooint.getClass();
        double dAbs = Math.abs(valueThreshold);
        z1oooint.z1OoOint = dAbs;
        z1oooint.z1OoOnew = dAbs * 62.5d;
        super.start();
    }

    @Override
    public boolean updateValueAndVelocity(long j) {
        z1OoOint z1oooint;
        double d;
        double d2;
        long j2;
        if (this.mEndRequested) {
            float f = this.mPendingPosition;
            if (f != Float.MAX_VALUE) {
                this.mSpring.z1OoOchar = f;
                this.mPendingPosition = Float.MAX_VALUE;
            }
            this.mValue = (float) this.mSpring.z1OoOchar;
            this.mVelocity = 0.0f;
            this.mEndRequested = false;
            return true;
        }
        if (this.mPendingPosition != Float.MAX_VALUE) {
            j2 = j / 2;
            DynamicAnimation.z1OoOcatch z1ooocatchZ1OoOdo = this.mSpring.z1OoOdo(this.mValue, this.mVelocity, j2);
            z1oooint = this.mSpring;
            z1oooint.z1OoOchar = this.mPendingPosition;
            this.mPendingPosition = Float.MAX_VALUE;
            d = z1ooocatchZ1OoOdo.z1OoOdo;
            d2 = z1ooocatchZ1OoOdo.z1OoOif;
        } else {
            z1oooint = this.mSpring;
            d = this.mValue;
            d2 = this.mVelocity;
            j2 = j;
        }
        DynamicAnimation.z1OoOcatch z1ooocatchZ1OoOdo2 = z1oooint.z1OoOdo(d, d2, j2);
        this.mValue = z1ooocatchZ1OoOdo2.z1OoOdo;
        this.mVelocity = z1ooocatchZ1OoOdo2.z1OoOif;
        float fMax = Math.max(this.mValue, this.mMinValue);
        this.mValue = fMax;
        float fMin = Math.min(fMax, this.mMaxValue);
        this.mValue = fMin;
        if (!isAtEquilibrium(fMin, this.mVelocity)) {
            return false;
        }
        this.mValue = (float) this.mSpring.z1OoOchar;
        this.mVelocity = 0.0f;
        return true;
    }

    public SpringAnimation(z1OoOfor z1ooofor, float f) {
        super(z1ooofor);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new z1OoOint(f);
    }

    public <K> SpringAnimation(K k, z1OoOif<K> z1oooif) {
        super(k, z1oooif);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    public <K> SpringAnimation(K k, z1OoOif<K> z1oooif, float f) {
        super(k, z1oooif);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new z1OoOint(f);
    }
}
