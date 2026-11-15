package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;

public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    private static final int[] f28256d = {R.attr.state_checked};

    private boolean f28257a;

    private boolean f28258b;

    private boolean f28259c;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        boolean f28260a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel) {
            this.f28260a = parcel.readInt() == 1;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f28260a ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel);
        }
    }

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(CheckableImageButton.this.isCheckable());
            accessibilityNodeInfoCompat.setChecked(CheckableImageButton.this.isChecked());
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public boolean isCheckable() {
        return this.f28258b;
    }

    @Override
    public boolean isChecked() {
        return this.f28257a;
    }

    public boolean isPressable() {
        return this.f28259c;
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        if (!this.f28257a) {
            return super.onCreateDrawableState(i10);
        }
        int[] iArr = f28256d;
        return View.mergeDrawableStates(super.onCreateDrawableState(i10 + iArr.length), iArr);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f28260a);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f28260a = this.f28257a;
        return savedState;
    }

    public void setCheckable(boolean z10) {
        if (this.f28258b != z10) {
            this.f28258b = z10;
            sendAccessibilityEvent(0);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        if (!this.f28258b || this.f28257a == z10) {
            return;
        }
        this.f28257a = z10;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z10) {
        this.f28259c = z10;
    }

    @Override
    public void setPressed(boolean z10) {
        if (this.f28259c) {
            super.setPressed(z10);
        }
    }

    @Override
    public void toggle() {
        setChecked(!this.f28257a);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28258b = true;
        this.f28259c = true;
        ViewCompat.setAccessibilityDelegate(this, new a());
    }
}
