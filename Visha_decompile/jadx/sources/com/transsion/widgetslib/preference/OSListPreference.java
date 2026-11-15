package com.transsion.widgetslib.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.d;

public class OSListPreference extends OSDialogPreference {
    public CharSequence[] q;
    public CharSequence[] r;
    public String s;
    public String t;
    public int u;
    public boolean v;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            OSListPreference.this.u = i;
            OSListPreference.this.onClick(dialogInterface, -1);
            OSListPreference.this.j();
        }
    }

    public OSListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OsListPreference, i, i2);
        this.q = typedArrayObtainStyledAttributes.getTextArray(R.styleable.OsListPreference_entries);
        this.r = typedArrayObtainStyledAttributes.getTextArray(R.styleable.OsListPreference_entryValues);
        typedArrayObtainStyledAttributes.recycle();
    }

    public CharSequence[] getEntries() {
        return this.q;
    }

    public CharSequence getEntry() {
        CharSequence[] charSequenceArr;
        int iP = p();
        if (iP < 0 || (charSequenceArr = this.q) == null) {
            return null;
        }
        return charSequenceArr[iP];
    }

    public CharSequence[] getEntryValues() {
        return this.r;
    }

    @Override
    public CharSequence getSummary() {
        CharSequence entry = getEntry();
        String str = this.t;
        if (str == null) {
            return super.getSummary();
        }
        if (entry == null) {
            entry = "";
        }
        return String.format(str, entry);
    }

    public String getValue() {
        return this.s;
    }

    @Override
    public void h(boolean z) {
        int i;
        CharSequence[] charSequenceArr;
        super.h(z);
        if (!z || (i = this.u) < 0 || (charSequenceArr = this.r) == null) {
            return;
        }
        String string = charSequenceArr[i].toString();
        if (callChangeListener(string)) {
            setValue(string);
        }
    }

    @Override
    public void i(d.a aVar) {
        super.i(aVar);
        if (this.q == null || this.r == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        int iP = p();
        this.u = iP;
        aVar.z(this.q, iP, new a());
        aVar.w(null, null);
    }

    public int o(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.r) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.r[length].equals(str)) {
                return length;
            }
        }
        return -1;
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
        setValue(savedState.value);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.value = getValue();
        return savedState;
    }

    @Override
    public void onSetInitialValue(boolean z, Object obj) {
        setValue(z ? getPersistedString(this.s) : (String) obj);
    }

    public final int p() {
        return o(this.s);
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.q = charSequenceArr;
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.r = charSequenceArr;
    }

    @Override
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.t != null) {
            this.t = null;
        } else {
            if (charSequence == null || charSequence.equals(this.t)) {
                return;
            }
            this.t = charSequence.toString();
        }
    }

    public void setValue(String str) {
        boolean zEquals = TextUtils.equals(this.s, str);
        if (zEquals && this.v) {
            return;
        }
        this.s = str;
        this.v = true;
        persistString(str);
        if (zEquals) {
            return;
        }
        notifyChanged();
    }

    public void setValueIndex(int i) {
        CharSequence[] charSequenceArr = this.r;
        if (charSequenceArr != null) {
            setValue(charSequenceArr[i].toString());
        }
    }

    public static class SavedState extends Preference.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String value;

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
            this.value = parcel.readString();
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.value);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setEntries(@ArrayRes int i) {
        setEntries(getContext().getResources().getTextArray(i));
    }

    public void setEntryValues(@ArrayRes int i) {
        setEntryValues(getContext().getResources().getTextArray(i));
    }

    @RequiresApi(api = 21)
    public OSListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    @RequiresApi(api = 21)
    public OSListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.OsDialogPreferenceStyle);
    }
}
