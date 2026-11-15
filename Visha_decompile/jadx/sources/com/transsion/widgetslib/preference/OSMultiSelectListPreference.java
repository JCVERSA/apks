package com.transsion.widgetslib.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.util.AttributeSet;
import androidx.annotation.ArrayRes;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.d;
import java.util.HashSet;
import java.util.Set;

public class OSMultiSelectListPreference extends OSDialogPreference {
    public CharSequence[] q;
    public CharSequence[] r;
    public Set s;
    public Set t;
    public boolean u;

    public class a implements DialogInterface.OnMultiChoiceClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            if (z) {
                OSMultiSelectListPreference oSMultiSelectListPreference = OSMultiSelectListPreference.this;
                oSMultiSelectListPreference.u = OSMultiSelectListPreference.this.t.add(OSMultiSelectListPreference.this.r[i].toString()) | oSMultiSelectListPreference.u;
            } else {
                OSMultiSelectListPreference oSMultiSelectListPreference2 = OSMultiSelectListPreference.this;
                oSMultiSelectListPreference2.u = OSMultiSelectListPreference.this.t.remove(OSMultiSelectListPreference.this.r[i].toString()) | oSMultiSelectListPreference2.u;
            }
        }
    }

    public OSMultiSelectListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.s = new HashSet();
        this.t = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OsListPreference, i, i2);
        this.q = typedArrayObtainStyledAttributes.getTextArray(R.styleable.OsListPreference_entries);
        this.r = typedArrayObtainStyledAttributes.getTextArray(R.styleable.OsListPreference_entryValues);
        typedArrayObtainStyledAttributes.recycle();
    }

    public CharSequence[] getEntries() {
        return this.q;
    }

    public CharSequence[] getEntryValues() {
        return this.r;
    }

    public Set<String> getValues() {
        return this.s;
    }

    @Override
    public void h(boolean z) {
        super.h(z);
        if (z && this.u) {
            Set<String> set = this.t;
            if (callChangeListener(set)) {
                setValues(set);
            }
        }
        this.u = false;
    }

    @Override
    public void i(d.a aVar) {
        super.i(aVar);
        if (this.q == null || this.r == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        aVar.l(this.q, r(), new a());
        this.t.clear();
        this.t.addAll(this.s);
    }

    @Override
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
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
        setValues(z ? getPersistedStringSet(this.s) : (Set) obj);
    }

    public final boolean[] r() {
        CharSequence[] charSequenceArr = this.r;
        int length = charSequenceArr.length;
        Set set = this.s;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = set.contains(charSequenceArr[i].toString());
        }
        return zArr;
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.q = charSequenceArr;
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.r = charSequenceArr;
    }

    public void setValues(Set<String> set) {
        this.s.clear();
        this.s.addAll(set);
        persistStringSet(set);
    }

    public void setEntries(@ArrayRes int i) {
        setEntries(getContext().getResources().getTextArray(i));
    }

    public void setEntryValues(@ArrayRes int i) {
        setEntryValues(getContext().getResources().getTextArray(i));
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Set<String> values;

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
            this.values = new HashSet();
            for (String str : parcel.createStringArray()) {
                this.values.add(str);
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeStringArray((String[]) this.values.toArray(new String[0]));
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public OSMultiSelectListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public OSMultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.OsDialogPreferenceStyle);
    }
}
