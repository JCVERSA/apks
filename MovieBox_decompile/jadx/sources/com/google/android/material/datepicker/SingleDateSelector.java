package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();

    @Nullable
    private CharSequence error;

    @Nullable
    private Long selectedItem;

    @Nullable
    private SimpleDateFormat textInputFormat;

    class a extends e {

        final o f28030i;

        final TextInputLayout f28031j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, o oVar, TextInputLayout textInputLayout2) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f28030i = oVar;
            this.f28031j = textInputLayout2;
        }

        @Override
        void f() {
            SingleDateSelector.this.error = this.f28031j.getError();
            this.f28030i.a();
        }

        @Override
        void g(Long l10) {
            if (l10 == null) {
                SingleDateSelector.this.clearSelection();
            } else {
                SingleDateSelector.this.select(l10.longValue());
            }
            SingleDateSelector.this.error = null;
            this.f28030i.b(SingleDateSelector.this.getSelection());
        }
    }

    class b implements Parcelable.Creator {
        b() {
        }

        @Override
        public SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.selectedItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override
        public SingleDateSelector[] newArray(int i10) {
            return new SingleDateSelector[i10];
        }
    }

    public void clearSelection() {
        this.selectedItem = null;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public int getDefaultThemeResId(Context context) {
        return za.b.d(context, R$attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override
    public int getDefaultTitleResId() {
        return R$string.mtrl_picker_date_header_title;
    }

    @Override
    @Nullable
    public String getError() {
        if (TextUtils.isEmpty(this.error)) {
            return null;
        }
        return this.error.toString();
    }

    @Override
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.selectedItem;
        if (l10 != null) {
            arrayList.add(l10);
        }
        return arrayList;
    }

    @Override
    @NonNull
    public Collection<androidx.core.util.e> getSelectedRanges() {
        return new ArrayList();
    }

    @Override
    @NonNull
    public String getSelectionContentDescription(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.selectedItem;
        return resources.getString(R$string.mtrl_picker_announce_current_selection, l10 == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : j.m(l10.longValue()));
    }

    @Override
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.selectedItem;
        if (l10 == null) {
            return resources.getString(R$string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R$string.mtrl_picker_date_header_selected, j.m(l10.longValue()));
    }

    @Override
    public boolean isSelectionComplete() {
        return this.selectedItem != null;
    }

    @Override
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull o oVar) {
        View viewInflate = layoutInflater.inflate(R$layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.k.b()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatG = this.textInputFormat;
        boolean z10 = simpleDateFormatG != null;
        if (!z10) {
            simpleDateFormatG = x.g();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatG;
        String pattern = z10 ? simpleDateFormat.toPattern() : x.h(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        Long l10 = this.selectedItem;
        if (l10 != null) {
            editText.setText(simpleDateFormat.format(l10));
        }
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, oVar, textInputLayout));
        h.c(editText);
        return viewInflate;
    }

    @Override
    public void select(long j10) {
        this.selectedItem = Long.valueOf(j10);
    }

    @Override
    public void setTextInputFormat(@Nullable SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            simpleDateFormat = (SimpleDateFormat) x.n(simpleDateFormat);
        }
        this.textInputFormat = simpleDateFormat;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeValue(this.selectedItem);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @Nullable
    public Long getSelection() {
        return this.selectedItem;
    }

    @Override
    public void setSelection(@Nullable Long l10) {
        this.selectedItem = l10 == null ? null : Long.valueOf(x.a(l10.longValue()));
    }
}
