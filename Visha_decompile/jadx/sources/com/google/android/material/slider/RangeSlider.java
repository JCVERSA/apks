package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import java.util.ArrayList;
import java.util.List;

public class RangeSlider extends BaseSlider<RangeSlider, OnChangeListener, OnSliderTouchListener> {
    private float minSeparation;
    private int separationUnit;

    public interface OnChangeListener extends BaseOnChangeListener<RangeSlider> {
        @Override
        void onValueChange(@NonNull RangeSlider rangeSlider, float f, boolean z);
    }

    public interface OnSliderTouchListener extends BaseOnSliderTouchListener<RangeSlider> {
        @Override
        void onStartTrackingTouch(@NonNull RangeSlider rangeSlider);

        @Override
        void onStopTrackingTouch(@NonNull RangeSlider rangeSlider);
    }

    public static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new Parcelable.Creator<RangeSliderState>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public RangeSliderState createFromParcel(Parcel parcel) {
                return new RangeSliderState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public RangeSliderState[] newArray(int i) {
                return new RangeSliderState[i];
            }
        };
        private float minSeparation;
        private int separationUnit;

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.minSeparation);
            parcel.writeInt(this.separationUnit);
        }

        public RangeSliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private RangeSliderState(Parcel parcel) {
            super(parcel.readParcelable(RangeSliderState.class.getClassLoader()));
            this.minSeparation = parcel.readFloat();
            this.separationUnit = parcel.readInt();
        }
    }

    public RangeSlider(@NonNull Context context) {
        this(context, null);
    }

    private static List<Float> convertToFloat(TypedArray typedArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < typedArray.length(); i++) {
            arrayList.add(Float.valueOf(typedArray.getFloat(i, -1.0f)));
        }
        return arrayList;
    }

    @Override
    public void addOnChangeListener(@NonNull BaseOnChangeListener baseOnChangeListener) {
        super.addOnChangeListener(baseOnChangeListener);
    }

    @Override
    public void addOnSliderTouchListener(@NonNull BaseOnSliderTouchListener baseOnSliderTouchListener) {
        super.addOnSliderTouchListener(baseOnSliderTouchListener);
    }

    @Override
    public void clearOnChangeListeners() {
        super.clearOnChangeListeners();
    }

    @Override
    public void clearOnSliderTouchListeners() {
        super.clearOnSliderTouchListeners();
    }

    @Override
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return super.getAccessibilityClassName();
    }

    @Override
    public int getActiveThumbIndex() {
        return super.getActiveThumbIndex();
    }

    @Override
    public int getFocusedThumbIndex() {
        return super.getFocusedThumbIndex();
    }

    @Override
    @Px
    public int getHaloRadius() {
        return super.getHaloRadius();
    }

    @Override
    @NonNull
    public ColorStateList getHaloTintList() {
        return super.getHaloTintList();
    }

    @Override
    public int getLabelBehavior() {
        return super.getLabelBehavior();
    }

    @Override
    public float getMinSeparation() {
        return this.minSeparation;
    }

    @Override
    public float getStepSize() {
        return super.getStepSize();
    }

    @Override
    public float getThumbElevation() {
        return super.getThumbElevation();
    }

    @Override
    @Px
    public int getThumbHeight() {
        return super.getThumbHeight();
    }

    @Override
    @Px
    public int getThumbRadius() {
        return super.getThumbRadius();
    }

    @Override
    public ColorStateList getThumbStrokeColor() {
        return super.getThumbStrokeColor();
    }

    @Override
    public float getThumbStrokeWidth() {
        return super.getThumbStrokeWidth();
    }

    @Override
    @NonNull
    public ColorStateList getThumbTintList() {
        return super.getThumbTintList();
    }

    @Override
    public int getThumbTrackGapSize() {
        return super.getThumbTrackGapSize();
    }

    @Override
    @Px
    public int getThumbWidth() {
        return super.getThumbWidth();
    }

    @Override
    @Px
    public int getTickActiveRadius() {
        return super.getTickActiveRadius();
    }

    @Override
    @NonNull
    public ColorStateList getTickActiveTintList() {
        return super.getTickActiveTintList();
    }

    @Override
    @Px
    public int getTickInactiveRadius() {
        return super.getTickInactiveRadius();
    }

    @Override
    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return super.getTickInactiveTintList();
    }

    @Override
    @NonNull
    public ColorStateList getTickTintList() {
        return super.getTickTintList();
    }

    @Override
    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return super.getTrackActiveTintList();
    }

    @Override
    @Px
    public int getTrackHeight() {
        return super.getTrackHeight();
    }

    @Override
    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return super.getTrackInactiveTintList();
    }

    @Override
    public int getTrackInsideCornerSize() {
        return super.getTrackInsideCornerSize();
    }

    @Override
    @Px
    public int getTrackSidePadding() {
        return super.getTrackSidePadding();
    }

    @Override
    public int getTrackStopIndicatorSize() {
        return super.getTrackStopIndicatorSize();
    }

    @Override
    @NonNull
    public ColorStateList getTrackTintList() {
        return super.getTrackTintList();
    }

    @Override
    @Px
    public int getTrackWidth() {
        return super.getTrackWidth();
    }

    @Override
    public float getValueFrom() {
        return super.getValueFrom();
    }

    @Override
    public float getValueTo() {
        return super.getValueTo();
    }

    @Override
    @NonNull
    public List<Float> getValues() {
        return super.getValues();
    }

    @Override
    public boolean hasLabelFormatter() {
        return super.hasLabelFormatter();
    }

    @Override
    public boolean isTickVisible() {
        return super.isTickVisible();
    }

    @Override
    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        return super.onKeyUp(i, keyEvent);
    }

    @Override
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.minSeparation = rangeSliderState.minSeparation;
        int i = rangeSliderState.separationUnit;
        this.separationUnit = i;
        setSeparationUnit(i);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.minSeparation = this.minSeparation;
        rangeSliderState.separationUnit = this.separationUnit;
        return rangeSliderState;
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void removeOnChangeListener(@NonNull BaseOnChangeListener baseOnChangeListener) {
        super.removeOnChangeListener(baseOnChangeListener);
    }

    @Override
    public void removeOnSliderTouchListener(@NonNull BaseOnSliderTouchListener baseOnSliderTouchListener) {
        super.removeOnSliderTouchListener(baseOnSliderTouchListener);
    }

    @Override
    public void setCustomThumbDrawable(@DrawableRes int i) {
        super.setCustomThumbDrawable(i);
    }

    @Override
    public void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        super.setCustomThumbDrawablesForValues(iArr);
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    @Override
    public void setFocusedThumbIndex(int i) {
        super.setFocusedThumbIndex(i);
    }

    @Override
    public void setHaloRadius(@IntRange(from = 0) @Px int i) {
        super.setHaloRadius(i);
    }

    @Override
    public void setHaloRadiusResource(@DimenRes int i) {
        super.setHaloRadiusResource(i);
    }

    @Override
    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override
    public void setLabelBehavior(int i) {
        super.setLabelBehavior(i);
    }

    @Override
    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        super.setLabelFormatter(labelFormatter);
    }

    public void setMinSeparation(@Dimension float f) {
        this.minSeparation = f;
        this.separationUnit = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f) {
        this.minSeparation = f;
        this.separationUnit = 1;
        setSeparationUnit(1);
    }

    @Override
    public void setStepSize(float f) {
        super.setStepSize(f);
    }

    @Override
    public void setThumbElevation(float f) {
        super.setThumbElevation(f);
    }

    @Override
    public void setThumbElevationResource(@DimenRes int i) {
        super.setThumbElevationResource(i);
    }

    @Override
    public void setThumbHeight(@IntRange(from = 0) @Px int i) {
        super.setThumbHeight(i);
    }

    @Override
    public void setThumbHeightResource(@DimenRes int i) {
        super.setThumbHeightResource(i);
    }

    @Override
    public void setThumbRadius(@IntRange(from = 0) @Px int i) {
        super.setThumbRadius(i);
    }

    @Override
    public void setThumbRadiusResource(@DimenRes int i) {
        super.setThumbRadiusResource(i);
    }

    @Override
    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    @Override
    public void setThumbStrokeColorResource(@ColorRes int i) {
        super.setThumbStrokeColorResource(i);
    }

    @Override
    public void setThumbStrokeWidth(float f) {
        super.setThumbStrokeWidth(f);
    }

    @Override
    public void setThumbStrokeWidthResource(@DimenRes int i) {
        super.setThumbStrokeWidthResource(i);
    }

    @Override
    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        super.setThumbTintList(colorStateList);
    }

    @Override
    public void setThumbTrackGapSize(@Px int i) {
        super.setThumbTrackGapSize(i);
    }

    @Override
    public void setThumbWidth(@IntRange(from = 0) @Px int i) {
        super.setThumbWidth(i);
    }

    @Override
    public void setThumbWidthResource(@DimenRes int i) {
        super.setThumbWidthResource(i);
    }

    @Override
    public void setTickActiveRadius(@IntRange(from = 0) @Px int i) {
        super.setTickActiveRadius(i);
    }

    @Override
    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override
    public void setTickInactiveRadius(@IntRange(from = 0) @Px int i) {
        super.setTickInactiveRadius(i);
    }

    @Override
    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    @Override
    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        super.setTickTintList(colorStateList);
    }

    @Override
    public void setTickVisible(boolean z) {
        super.setTickVisible(z);
    }

    @Override
    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override
    public void setTrackHeight(@IntRange(from = 0) @Px int i) {
        super.setTrackHeight(i);
    }

    @Override
    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    @Override
    public void setTrackInsideCornerSize(@Px int i) {
        super.setTrackInsideCornerSize(i);
    }

    @Override
    public void setTrackStopIndicatorSize(@Px int i) {
        super.setTrackStopIndicatorSize(i);
    }

    @Override
    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackTintList(colorStateList);
    }

    @Override
    public void setValueFrom(float f) {
        super.setValueFrom(f);
    }

    @Override
    public void setValueTo(float f) {
        super.setValueTo(f);
    }

    @Override
    public void setValues(@NonNull Float... fArr) {
        super.setValues(fArr);
    }

    public RangeSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    @Override
    public void setCustomThumbDrawable(@NonNull Drawable drawable) {
        super.setCustomThumbDrawable(drawable);
    }

    @Override
    public void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        super.setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override
    public void setValues(@NonNull List<Float> list) {
        super.setValues(list);
    }

    public RangeSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.RangeSlider, i, BaseSlider.DEF_STYLE_RES, new int[0]);
        int i2 = R.styleable.RangeSlider_values;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            setValues(convertToFloat(typedArrayObtainStyledAttributes.getResources().obtainTypedArray(typedArrayObtainStyledAttributes.getResourceId(i2, 0))));
        }
        this.minSeparation = typedArrayObtainStyledAttributes.getDimension(R.styleable.RangeSlider_minSeparation, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
