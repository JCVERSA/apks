package com.transsion.widgetslib.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.util.AttributeSet;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.d;
import java.util.Arrays;

public class OSMultiCheckPreference extends OSDialogPreference {
    public CharSequence[] q;
    public String[] r;
    public boolean[] s;
    public boolean[] t;
    public String u;

    public class a implements DialogInterface.OnMultiChoiceClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            OSMultiCheckPreference.this.s[i] = z;
        }
    }

    public OSMultiCheckPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OsListPreference, i, i2);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(R.styleable.OsListPreference_entries);
        this.q = textArray;
        if (textArray != null) {
            setEntries(textArray);
        }
        o(typedArrayObtainStyledAttributes.getTextArray(R.styleable.OsListPreference_entryValues));
        typedArrayObtainStyledAttributes.recycle();
    }

    public CharSequence[] getEntries() {
        return this.q;
    }

    public String[] getEntryValues() {
        return this.r;
    }

    @Override
    public CharSequence getSummary() {
        String str = this.u;
        return str == null ? super.getSummary() : str;
    }

    public boolean[] getValues() {
        return this.s;
    }

    @Override
    public void h(boolean z) {
        super.h(z);
        if (z && callChangeListener(getValues())) {
            return;
        }
        boolean[] zArr = this.t;
        boolean[] zArr2 = this.s;
        System.arraycopy(zArr, 0, zArr2, 0, zArr2.length);
    }

    @Override
    public void i(d.a aVar) {
        super.i(aVar);
        if (this.q == null || this.r == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        boolean[] zArr = this.s;
        this.t = Arrays.copyOf(zArr, zArr.length);
        aVar.l(this.q, this.s, new a());
    }

    public final void o(CharSequence[] charSequenceArr) {
        setValues(null);
        if (charSequenceArr != null) {
            this.r = new String[charSequenceArr.length];
            for (int i = 0; i < charSequenceArr.length; i++) {
                this.r[i] = charSequenceArr[i].toString();
            }
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
        setValues(savedState.values);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.values = getValues();
        return savedState;
    }

    @Override
    public void onSetInitialValue(boolean z, Object obj) {
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.q = charSequenceArr;
        this.s = new boolean[charSequenceArr.length];
        this.t = new boolean[charSequenceArr.length];
    }

    public void setEntryValues(String[] strArr) {
        this.r = strArr;
        Arrays.fill(this.s, false);
        Arrays.fill(this.t, false);
    }

    @Override
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.u != null) {
            this.u = null;
        } else {
            if (charSequence == null || charSequence.equals(this.u)) {
                return;
            }
            this.u = charSequence.toString();
        }
    }

    public void setValues(boolean[] zArr) {
        boolean[] zArr2 = this.s;
        if (zArr2 != null) {
            Arrays.fill(zArr2, false);
            Arrays.fill(this.t, false);
            if (zArr != null) {
                boolean[] zArr3 = this.s;
                System.arraycopy(zArr, 0, zArr3, 0, zArr.length < zArr3.length ? zArr.length : zArr3.length);
            }
        }
    }

    public static class SavedState extends Preference.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean[] values;

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
            this.values = parcel.createBooleanArray();
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBooleanArray(this.values);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setEntries(@ArrayRes int i) {
        setEntries(getContext().getResources().getTextArray(i));
    }

    public void setEntryValues(@ArrayRes int i) {
        o(getContext().getResources().getTextArray(i));
    }

    public OSMultiCheckPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public OSMultiCheckPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.OsDialogPreferenceStyle);
    }
}
