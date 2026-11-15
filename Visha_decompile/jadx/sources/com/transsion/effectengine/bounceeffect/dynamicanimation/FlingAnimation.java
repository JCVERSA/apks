package com.transsion.effectengine.bounceeffect.dynamicanimation;

import androidx.annotation.FloatRange;

public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final z1OoOdo mFlingForce;

    public static final class z1OoOdo {
        public float z1OoOdo = -4.2f;
        public final DynamicAnimation.z1OoOcatch z1OoOfor = new DynamicAnimation.z1OoOcatch();
        public float z1OoOif;

        public final void z1OoOdo(float f) {
            this.z1OoOif = f * 62.5f;
        }
    }

    public FlingAnimation(z1OoOfor z1ooofor) {
        super(z1ooofor);
        z1OoOdo z1ooodo = new z1OoOdo();
        this.mFlingForce = z1ooodo;
        z1ooodo.z1OoOdo(getValueThreshold());
    }

    @Override
    public float getAcceleration(float f, float f2) {
        return f2 * this.mFlingForce.z1OoOdo;
    }

    public float getDestination() {
        float f = this.mValue;
        float f2 = this.mVelocity;
        float f3 = f - (f2 / this.mFlingForce.z1OoOdo);
        float fSignum = Math.signum(f2);
        z1OoOdo z1ooodo = this.mFlingForce;
        return ((fSignum * z1ooodo.z1OoOif) / z1ooodo.z1OoOdo) + f3;
    }

    public float getDuration() {
        return (float) ((Math.log((Math.signum(this.mVelocity) * this.mFlingForce.z1OoOif) / this.mVelocity) * 1000.0d) / ((double) this.mFlingForce.z1OoOdo));
    }

    public float getFriction() {
        return this.mFlingForce.z1OoOdo / (-4.2f);
    }

    @Override
    public boolean isAtEquilibrium(float f, float f2) {
        if (f < this.mMaxValue && f > this.mMinValue) {
            z1OoOdo z1ooodo = this.mFlingForce;
            z1ooodo.getClass();
            if (Math.abs(f2) >= z1ooodo.z1OoOif) {
                return false;
            }
        }
        return true;
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        this.mFlingForce.z1OoOdo = f * (-4.2f);
        return this;
    }

    @Override
    public void setValueThreshold(float f) {
        this.mFlingForce.z1OoOdo(f);
    }

    @Override
    public boolean updateValueAndVelocity(long j) {
        z1OoOdo z1ooodo = this.mFlingForce;
        float f = this.mValue;
        float f2 = this.mVelocity;
        z1ooodo.z1OoOfor.z1OoOif = (float) (Math.exp((j / 1000.0f) * z1ooodo.z1OoOdo) * ((double) f2));
        DynamicAnimation.z1OoOcatch z1ooocatch = z1ooodo.z1OoOfor;
        float f3 = z1ooocatch.z1OoOif;
        z1ooocatch.z1OoOdo = ((f3 - f2) / z1ooodo.z1OoOdo) + f;
        if (Math.abs(f3) < z1ooodo.z1OoOif) {
            z1ooodo.z1OoOfor.z1OoOif = 0.0f;
        }
        DynamicAnimation.z1OoOcatch z1ooocatch2 = z1ooodo.z1OoOfor;
        float f4 = z1ooocatch2.z1OoOdo;
        this.mValue = f4;
        float f5 = z1ooocatch2.z1OoOif;
        this.mVelocity = f5;
        float f6 = this.mMinValue;
        if (f4 < f6) {
            this.mValue = f6;
            return true;
        }
        float f7 = this.mMaxValue;
        if (f4 <= f7) {
            return isAtEquilibrium(f4, f5);
        }
        this.mValue = f7;
        return true;
    }

    public <K> FlingAnimation(K k, z1OoOif<K> z1oooif) {
        super(k, z1oooif);
        z1OoOdo z1ooodo = new z1OoOdo();
        this.mFlingForce = z1ooodo;
        z1ooodo.z1OoOdo(getValueThreshold());
    }

    @Override
    public FlingAnimation setMaxValue(float f) {
        super.setMaxValue(f);
        return this;
    }

    @Override
    public FlingAnimation setMinValue(float f) {
        super.setMinValue(f);
        return this;
    }

    @Override
    public FlingAnimation setStartVelocity(float f) {
        super.setStartVelocity(f);
        return this;
    }
}
