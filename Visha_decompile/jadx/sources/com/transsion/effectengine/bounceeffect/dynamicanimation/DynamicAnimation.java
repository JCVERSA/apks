package com.transsion.effectengine.bounceeffect.dynamicanimation;

import android.annotation.SuppressLint;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.transsion.effectengine.bounceeffect.BounceEdgeEffect;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import java.util.ArrayList;

public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOdo.z1OoOif {

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;
    private static final float THRESHOLD_MULTIPLIER = 0.75f;
    private static final float UNSET = Float.MAX_VALUE;
    private com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOdo mAnimationHandler;
    private final ArrayList<z1OoOclass> mEndListeners;
    private long mLastFrameTime;
    float mMaxValue;
    float mMinValue;
    private float mMinVisibleChange;
    final com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOif mProperty;
    boolean mRunning;
    boolean mStartValueIsSet;
    final Object mTarget;
    private final ArrayList<z1OoOconst> mUpdateListeners;
    float mValue;
    float mVelocity;
    public static final z1OoOfinal TRANSLATION_X = new z1OoObyte();
    public static final z1OoOfinal TRANSLATION_Y = new z1OoOcase();
    public static final z1OoOfinal TRANSLATION_Z = new z1OoOchar();
    public static final z1OoOfinal SCALE_X = new z1OoOelse();
    public static final z1OoOfinal SCALE_Y = new z1OoOgoto();
    public static final z1OoOfinal ROTATION = new z1OoOlong();
    public static final z1OoOfinal ROTATION_X = new z1OoOthis();
    public static final z1OoOfinal ROTATION_Y = new z1OoOvoid();
    public static final z1OoOfinal X = new z1OoObreak();
    public static final z1OoOfinal Y = new z1OoOdo();
    public static final z1OoOfinal Z = new z1OoOif();
    public static final z1OoOfinal ALPHA = new z1OoOfor();
    public static final z1OoOfinal SCROLL_X = new z1OoOint();
    public static final z1OoOfinal SCROLL_Y = new z1OoOnew();

    public class z1OoObreak extends z1OoOfinal {
        public z1OoObreak() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getX();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setX(f);
        }
    }

    public class z1OoObyte extends z1OoOfinal {
        public z1OoObyte() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getTranslationX();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setTranslationX(f);
        }
    }

    public class z1OoOcase extends z1OoOfinal {
        public z1OoOcase() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getTranslationY();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setTranslationY(f);
        }
    }

    public static class z1OoOcatch {
        public float z1OoOdo;
        public float z1OoOif;
    }

    public class z1OoOchar extends z1OoOfinal {
        public z1OoOchar() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getTranslationZ();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setTranslationZ(f);
        }
    }

    public interface z1OoOclass {
        void z1OoOdo(DynamicAnimation dynamicAnimation, boolean z, float f, float f2);
    }

    public interface z1OoOconst {
        void z1OoOdo(DynamicAnimation dynamicAnimation, float f, float f2);
    }

    public class z1OoOdo extends z1OoOfinal {
        public z1OoOdo() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getY();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setY(f);
        }
    }

    public class z1OoOelse extends z1OoOfinal {
        public z1OoOelse() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getScaleX();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setScaleX(f);
        }
    }

    public static abstract class z1OoOfinal extends com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOif<View> {
        public z1OoOfinal() {
        }

        public z1OoOfinal(int i) {
            this();
        }
    }

    public class z1OoOfor extends z1OoOfinal {
        public z1OoOfor() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getAlpha();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setAlpha(f);
        }
    }

    public class z1OoOgoto extends z1OoOfinal {
        public z1OoOgoto() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getScaleY();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setScaleY(f);
        }
    }

    public class z1OoOif extends z1OoOfinal {
        public z1OoOif() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getZ();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setZ(f);
        }
    }

    public class z1OoOint extends z1OoOfinal {
        public z1OoOint() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getScrollX();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setScrollX((int) f);
        }
    }

    public class z1OoOlong extends z1OoOfinal {
        public z1OoOlong() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getRotation();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setRotation(f);
        }
    }

    public class z1OoOnew extends z1OoOfinal {
        public z1OoOnew() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getScrollY();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setScrollY((int) f);
        }
    }

    public class z1OoOthis extends z1OoOfinal {
        public z1OoOthis() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getRotationX();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setRotationX(f);
        }
    }

    public class z1OoOtry extends com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOif {
        @Override
        public final float z1OoOdo(Object obj) {
            throw null;
        }

        @Override
        public final void z1OoOdo(Object obj, float f) {
            throw null;
        }
    }

    public class z1OoOvoid extends z1OoOfinal {
        public z1OoOvoid() {
            super(0);
        }

        @Override
        public final float z1OoOdo(View view) {
            return view.getRotationY();
        }

        @Override
        public final void z1OoOdo(View view, float f) {
            view.setRotationY(f);
        }
    }

    public DynamicAnimation(com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOfor z1ooofor) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -3.4028235E38f;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = null;
        this.mProperty = new z1OoOtry();
        this.mMinVisibleChange = 1.0f;
    }

    private void endAnimationInternal(boolean z) {
        this.mRunning = false;
        getAnimationHandler().z1OoOif(this);
        this.mLastFrameTime = 0L;
        this.mStartValueIsSet = false;
        for (int i = 0; i < this.mEndListeners.size(); i++) {
            if (this.mEndListeners.get(i) != null) {
                this.mEndListeners.get(i).z1OoOdo(this, z, this.mValue, this.mVelocity);
            }
        }
        removeNullEntries(this.mEndListeners);
    }

    private float getPropertyValue() {
        return this.mProperty.z1OoOdo(this.mTarget);
    }

    private static <T> void removeEntry(ArrayList<T> arrayList, T t) {
        int iIndexOf = arrayList.indexOf(t);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
        }
    }

    private static <T> void removeNullEntries(@NonNull ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void startAnimationInternal() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        if (!this.mStartValueIsSet) {
            this.mValue = getPropertyValue();
        }
        float f = this.mValue;
        if (f > this.mMaxValue || f < this.mMinValue) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        getAnimationHandler().z1OoOdo(this);
    }

    public T addEndListener(z1OoOclass z1oooclass) {
        if (!this.mEndListeners.contains(z1oooclass)) {
            this.mEndListeners.add(z1oooclass);
        }
        return this;
    }

    public T addUpdateListener(z1OoOconst z1oooconst) {
        if (isRunning()) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!this.mUpdateListeners.contains(z1oooconst)) {
            this.mUpdateListeners.add(z1oooconst);
        }
        return this;
    }

    @MainThread
    public void cancel() {
        if (!getAnimationHandler().z1OoOnew.z1OoOdo()) {
            throw new AndroidRuntimeException("Animations may only be canceled from the same thread as the animation handler");
        }
        if (this.mRunning) {
            endAnimationInternal(true);
        }
    }

    @Override
    public boolean doAnimationFrame(long j) {
        long j2 = this.mLastFrameTime;
        if (j2 != 0) {
            this.mLastFrameTime = j;
            boolean zUpdateValueAndVelocity = updateValueAndVelocity(j - j2);
            float fMin = Math.min(this.mValue, this.mMaxValue);
            this.mValue = fMin;
            float fMax = Math.max(fMin, this.mMinValue);
            this.mValue = fMax;
            setPropertyValue(fMax);
            if (zUpdateValueAndVelocity) {
                endAnimationInternal(false);
            }
            return zUpdateValueAndVelocity;
        }
        this.mLastFrameTime = j;
        float f = this.mValue;
        if (f != 0.0f) {
            setPropertyValue(f);
            return false;
        }
        boolean zUpdateValueAndVelocity2 = updateValueAndVelocity((long) (1000.0f / BounceEdgeEffect.mCurrentRefreshRate));
        float fMin2 = Math.min(this.mValue, this.mMaxValue);
        this.mValue = fMin2;
        float fMax2 = Math.max(fMin2, this.mMinValue);
        this.mValue = fMax2;
        setPropertyValue(fMax2);
        if (zUpdateValueAndVelocity2) {
            endAnimationInternal(false);
        }
        return zUpdateValueAndVelocity2;
    }

    public abstract float getAcceleration(float f, float f2);

    @NonNull
    public com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOdo getAnimationHandler() {
        if (this.mAnimationHandler == null) {
            this.mAnimationHandler = com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOdo.z1OoOdo();
        }
        return this.mAnimationHandler;
    }

    public float getMinimumVisibleChange() {
        return this.mMinVisibleChange;
    }

    public float getValueThreshold() {
        return this.mMinVisibleChange * 0.75f;
    }

    public abstract boolean isAtEquilibrium(float f, float f2);

    public boolean isRunning() {
        return this.mRunning;
    }

    public void removeEndListener(z1OoOclass z1oooclass) {
        removeEntry(this.mEndListeners, z1oooclass);
    }

    public void removeUpdateListener(z1OoOconst z1oooconst) {
        removeEntry(this.mUpdateListeners, z1oooconst);
    }

    public void setAnimationHandler(@NonNull com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOdo z1ooodo) {
        if (this.mRunning) {
            throw new AndroidRuntimeException("Animations are still running and the animationhandler should not be set at this timming");
        }
        this.mAnimationHandler = z1ooodo;
    }

    public T setMaxValue(float f) {
        this.mMaxValue = f;
        return this;
    }

    public T setMinValue(float f) {
        this.mMinValue = f;
        return this;
    }

    public T setMinimumVisibleChange(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.mMinVisibleChange = f;
        setValueThreshold(f * 0.75f);
        return this;
    }

    public void setPropertyValue(float f) {
        this.mProperty.z1OoOdo(this.mTarget, f);
        for (int i = 0; i < this.mUpdateListeners.size(); i++) {
            if (this.mUpdateListeners.get(i) != null) {
                this.mUpdateListeners.get(i).z1OoOdo(this, this.mValue, this.mVelocity);
            }
        }
        removeNullEntries(this.mUpdateListeners);
    }

    public T setStartValue(float f) {
        this.mValue = f;
        this.mStartValueIsSet = true;
        return this;
    }

    public T setStartVelocity(float f) {
        this.mVelocity = f;
        return this;
    }

    public abstract void setValueThreshold(float f);

    @MainThread
    public void start() {
        if (!getAnimationHandler().z1OoOnew.z1OoOdo()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.mRunning) {
            return;
        }
        startAnimationInternal();
    }

    public abstract boolean updateValueAndVelocity(long j);

    public <K> DynamicAnimation(K k, com.transsion.effectengine.bounceeffect.dynamicanimation.z1OoOif<K> z1oooif) {
        this.mVelocity = 0.0f;
        this.mValue = Float.MAX_VALUE;
        this.mStartValueIsSet = false;
        this.mRunning = false;
        this.mMaxValue = Float.MAX_VALUE;
        this.mMinValue = -3.4028235E38f;
        this.mLastFrameTime = 0L;
        this.mEndListeners = new ArrayList<>();
        this.mUpdateListeners = new ArrayList<>();
        this.mTarget = k;
        this.mProperty = z1oooif;
        this.mMinVisibleChange = (z1oooif == ROTATION || z1oooif == ROTATION_X || z1oooif == ROTATION_Y) ? 0.1f : z1oooif == ALPHA ? 0.00390625f : (z1oooif == SCALE_X || z1oooif == SCALE_Y) ? 0.002f : 1.0f;
    }
}
