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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import java.util.ArrayList;
import java.util.List;

public class RangeSlider extends BaseSlider {
    private float B0;
    private int C0;

    static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new a();
        private float minSeparation;
        private int separationUnit;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public RangeSliderState createFromParcel(Parcel parcel) {
                return new RangeSliderState(parcel);
            }

            @Override
            public RangeSliderState[] newArray(int i10) {
                return new RangeSliderState[i10];
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.minSeparation);
            parcel.writeInt(this.separationUnit);
        }

        RangeSliderState(Parcelable parcelable) {
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

    private static List F0(TypedArray typedArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < typedArray.length(); i10++) {
            arrayList.add(Float.valueOf(typedArray.getFloat(i10, -1.0f)));
        }
        return arrayList;
    }

    @Override
    public void addOnChangeListener(@NonNull com.google.android.material.slider.a aVar) {
        super.addOnChangeListener(aVar);
    }

    @Override
    public void addOnSliderTouchListener(@NonNull b bVar) {
        super.addOnSliderTouchListener(bVar);
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
        return this.B0;
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
    public int getThumbHeight() {
        return super.getThumbHeight();
    }

    @Override
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
    public int getThumbWidth() {
        return super.getThumbWidth();
    }

    @Override
    public int getTickActiveRadius() {
        return super.getTickActiveRadius();
    }

    @Override
    @NonNull
    public ColorStateList getTickActiveTintList() {
        return super.getTickActiveTintList();
    }

    @Override
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
    public boolean onKeyDown(int i10, @NonNull KeyEvent keyEvent) {
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i10, @NonNull KeyEvent keyEvent) {
        return super.onKeyUp(i10, keyEvent);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.B0 = rangeSliderState.minSeparation;
        int i10 = rangeSliderState.separationUnit;
        this.C0 = i10;
        setSeparationUnit(i10);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.minSeparation = this.B0;
        rangeSliderState.separationUnit = this.C0;
        return rangeSliderState;
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void removeOnChangeListener(@NonNull com.google.android.material.slider.a aVar) {
        super.removeOnChangeListener(aVar);
    }

    @Override
    public void removeOnSliderTouchListener(@NonNull b bVar) {
        super.removeOnSliderTouchListener(bVar);
    }

    @Override
    public void setCustomThumbDrawable(int i10) {
        super.setCustomThumbDrawable(i10);
    }

    @Override
    public void setCustomThumbDrawablesForValues(@NonNull int... iArr) {
        super.setCustomThumbDrawablesForValues(iArr);
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
    }

    @Override
    public void setFocusedThumbIndex(int i10) {
        super.setFocusedThumbIndex(i10);
    }

    @Override
    public void setHaloRadius(int i10) {
        super.setHaloRadius(i10);
    }

    @Override
    public void setHaloRadiusResource(int i10) {
        super.setHaloRadiusResource(i10);
    }

    @Override
    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override
    public void setLabelBehavior(int i10) {
        super.setLabelBehavior(i10);
    }

    @Override
    public void setLabelFormatter(@Nullable d dVar) {
        super.setLabelFormatter(dVar);
    }

    public void setMinSeparation(float f10) {
        this.B0 = f10;
        this.C0 = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f10) {
        this.B0 = f10;
        this.C0 = 1;
        setSeparationUnit(1);
    }

    @Override
    public void setStepSize(float f10) {
        super.setStepSize(f10);
    }

    @Override
    public void setThumbElevation(float f10) {
        super.setThumbElevation(f10);
    }

    @Override
    public void setThumbElevationResource(int i10) {
        super.setThumbElevationResource(i10);
    }

    @Override
    public void setThumbHeight(int i10) {
        super.setThumbHeight(i10);
    }

    @Override
    public void setThumbHeightResource(int i10) {
        super.setThumbHeightResource(i10);
    }

    @Override
    public void setThumbRadius(int i10) {
        super.setThumbRadius(i10);
    }

    @Override
    public void setThumbRadiusResource(int i10) {
        super.setThumbRadiusResource(i10);
    }

    @Override
    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    @Override
    public void setThumbStrokeColorResource(int i10) {
        super.setThumbStrokeColorResource(i10);
    }

    @Override
    public void setThumbStrokeWidth(float f10) {
        super.setThumbStrokeWidth(f10);
    }

    @Override
    public void setThumbStrokeWidthResource(int i10) {
        super.setThumbStrokeWidthResource(i10);
    }

    @Override
    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        super.setThumbTintList(colorStateList);
    }

    @Override
    public void setThumbTrackGapSize(int i10) {
        super.setThumbTrackGapSize(i10);
    }

    @Override
    public void setThumbWidth(int i10) {
        super.setThumbWidth(i10);
    }

    @Override
    public void setThumbWidthResource(int i10) {
        super.setThumbWidthResource(i10);
    }

    @Override
    public void setTickActiveRadius(int i10) {
        super.setTickActiveRadius(i10);
    }

    @Override
    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override
    public void setTickInactiveRadius(int i10) {
        super.setTickInactiveRadius(i10);
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
    public void setTickVisible(boolean z10) {
        super.setTickVisible(z10);
    }

    @Override
    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override
    public void setTrackHeight(int i10) {
        super.setTrackHeight(i10);
    }

    @Override
    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    @Override
    public void setTrackInsideCornerSize(int i10) {
        super.setTrackInsideCornerSize(i10);
    }

    @Override
    public void setTrackStopIndicatorSize(int i10) {
        super.setTrackStopIndicatorSize(i10);
    }

    @Override
    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackTintList(colorStateList);
    }

    @Override
    public void setValueFrom(float f10) {
        super.setValueFrom(f10);
    }

    @Override
    public void setValueTo(float f10) {
        super.setValueTo(f10);
    }

    @Override
    public void setValues(@NonNull Float... fArr) {
        super.setValues(fArr);
    }

    public RangeSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.sliderStyle);
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

    public RangeSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.RangeSlider, i10, BaseSlider.f28850w0, new int[0]);
        if (typedArrayI.hasValue(R$styleable.RangeSlider_values)) {
            setValues(F0(typedArrayI.getResources().obtainTypedArray(typedArrayI.getResourceId(R$styleable.RangeSlider_values, 0))));
        }
        this.B0 = typedArrayI.getDimension(R$styleable.RangeSlider_minSeparation, 0.0f);
        typedArrayI.recycle();
    }
}
