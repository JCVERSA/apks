package com.transsion.widgetslib.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class OSEditTextPreference extends OSDialogPreference {
    public EditText q;
    public String r;
    public boolean s;

    public OSEditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.q = new EditText(context, attributeSet);
        this.q.setId(olb.F("com.android.internal.R$id", "edit"));
        this.q.setBackgroundResource(R.drawable.os_dialog_edittext_bg);
        this.q.setEnabled(true);
    }

    @Override
    public boolean e() {
        return true;
    }

    @Override
    public void f(View view) {
        super.f(view);
        EditText editText = this.q;
        editText.setText(getText());
        ViewParent parent = editText.getParent();
        if (parent != view) {
            if (parent != null) {
                ((ViewGroup) parent).removeView(editText);
            }
            n(view, editText);
        }
    }

    public EditText getEditText() {
        return this.q;
    }

    public String getText() {
        return this.r;
    }

    @Override
    public void h(boolean z) {
        super.h(z);
        if (z) {
            String string = this.q.getText().toString();
            if (callChangeListener(string)) {
                setText(string);
            }
        }
    }

    public void n(View view, EditText editText) {
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.edittext_container);
        if (viewGroup != null) {
            viewGroup.addView(editText, -1, -2);
        }
    }

    @Override
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.text);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.text = getText();
        return savedState;
    }

    @Override
    public void onSetInitialValue(boolean z, Object obj) {
        setText(z ? getPersistedString(this.r) : (String) obj);
    }

    public void setText(String str) {
        boolean zEquals = TextUtils.equals(this.r, str);
        if (zEquals && this.s) {
            return;
        }
        this.r = str;
        this.s = true;
        persistString(str);
        if (zEquals) {
            return;
        }
        notifyDependencyChange(shouldDisableDependents());
        notifyChanged();
    }

    @Override
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.r) || super.shouldDisableDependents();
    }

    public static class SavedState extends Preference.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String text;

        public class a implements Parcelable.Creator {
            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.text = parcel.readString();
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public OSEditTextPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public OSEditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.OsEditTextPreferenceStyle);
    }
}
