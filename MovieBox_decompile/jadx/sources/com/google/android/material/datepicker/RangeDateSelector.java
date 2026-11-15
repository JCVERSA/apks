package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

public class RangeDateSelector implements DateSelector<androidx.core.util.e> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();

    @Nullable
    private CharSequence error;
    private String invalidRangeStartError;

    @Nullable
    private SimpleDateFormat textInputFormat;
    private final String invalidRangeEndError = " ";

    @Nullable
    private Long selectedStartItem = null;

    @Nullable
    private Long selectedEndItem = null;

    @Nullable
    private Long proposedTextStart = null;

    @Nullable
    private Long proposedTextEnd = null;

    class a extends e {

        final TextInputLayout f28022i;

        final TextInputLayout f28023j;

        final o f28024k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, o oVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f28022i = textInputLayout2;
            this.f28023j = textInputLayout3;
            this.f28024k = oVar;
        }

        @Override
        void f() {
            RangeDateSelector.this.proposedTextStart = null;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28022i, this.f28023j, this.f28024k);
        }

        @Override
        void g(Long l10) {
            RangeDateSelector.this.proposedTextStart = l10;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28022i, this.f28023j, this.f28024k);
        }
    }

    class b extends e {

        final TextInputLayout f28026i;

        final TextInputLayout f28027j;

        final o f28028k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, o oVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f28026i = textInputLayout2;
            this.f28027j = textInputLayout3;
            this.f28028k = oVar;
        }

        @Override
        void f() {
            RangeDateSelector.this.proposedTextEnd = null;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28026i, this.f28027j, this.f28028k);
        }

        @Override
        void g(Long l10) {
            RangeDateSelector.this.proposedTextEnd = l10;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28026i, this.f28027j, this.f28028k);
        }
    }

    class c implements Parcelable.Creator {
        c() {
        }

        @Override
        public RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.selectedStartItem = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.selectedEndItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override
        public RangeDateSelector[] newArray(int i10) {
            return new RangeDateSelector[i10];
        }
    }

    private void clearInvalidRange(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.invalidRangeStartError.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean isValidRange(long j10, long j11) {
        return j10 <= j11;
    }

    private void setInvalidRange(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.invalidRangeStartError);
        textInputLayout2.setError(" ");
    }

    private void updateError(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            this.error = textInputLayout.getError();
        } else if (TextUtils.isEmpty(textInputLayout2.getError())) {
            this.error = null;
        } else {
            this.error = textInputLayout2.getError();
        }
    }

    public void updateIfValidTextProposal(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull o oVar) {
        Long l10 = this.proposedTextStart;
        if (l10 == null || this.proposedTextEnd == null) {
            clearInvalidRange(textInputLayout, textInputLayout2);
            oVar.a();
        } else if (isValidRange(l10.longValue(), this.proposedTextEnd.longValue())) {
            this.selectedStartItem = this.proposedTextStart;
            this.selectedEndItem = this.proposedTextEnd;
            oVar.b(getSelection());
        } else {
            setInvalidRange(textInputLayout, textInputLayout2);
            oVar.a();
        }
        updateError(textInputLayout, textInputLayout2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public int getDefaultThemeResId(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return za.b.d(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R$dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R$attr.materialCalendarTheme : R$attr.materialCalendarFullscreenTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override
    public int getDefaultTitleResId() {
        return R$string.mtrl_picker_range_header_title;
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
        Long l10 = this.selectedStartItem;
        if (l10 != null) {
            arrayList.add(l10);
        }
        Long l11 = this.selectedEndItem;
        if (l11 != null) {
            arrayList.add(l11);
        }
        return arrayList;
    }

    @Override
    @NonNull
    public Collection<androidx.core.util.e> getSelectedRanges() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new androidx.core.util.e(this.selectedStartItem, this.selectedEndItem));
        return arrayList;
    }

    @Override
    @NonNull
    public String getSelectionContentDescription(@NonNull Context context) {
        Resources resources = context.getResources();
        androidx.core.util.e eVarA = j.a(this.selectedStartItem, this.selectedEndItem);
        Object obj = eVarA.f7958a;
        String string = obj == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : (String) obj;
        Object obj2 = eVarA.f7959b;
        return resources.getString(R$string.mtrl_picker_announce_current_range_selection, string, obj2 == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : (String) obj2);
    }

    @Override
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.selectedStartItem;
        if (l10 == null && this.selectedEndItem == null) {
            return resources.getString(R$string.mtrl_picker_range_header_unselected);
        }
        Long l11 = this.selectedEndItem;
        if (l11 == null) {
            return resources.getString(R$string.mtrl_picker_range_header_only_start_selected, j.c(l10.longValue()));
        }
        if (l10 == null) {
            return resources.getString(R$string.mtrl_picker_range_header_only_end_selected, j.c(l11.longValue()));
        }
        androidx.core.util.e eVarA = j.a(l10, l11);
        return resources.getString(R$string.mtrl_picker_range_header_selected, eVarA.f7958a, eVarA.f7959b);
    }

    @Override
    public boolean isSelectionComplete() {
        Long l10 = this.selectedStartItem;
        return (l10 == null || this.selectedEndItem == null || !isValidRange(l10.longValue(), this.selectedEndItem.longValue())) ? false : true;
    }

    @Override
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull o oVar) {
        View viewInflate = layoutInflater.inflate(R$layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.k.b()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.invalidRangeStartError = viewInflate.getResources().getString(R$string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatG = this.textInputFormat;
        boolean z10 = simpleDateFormatG != null;
        if (!z10) {
            simpleDateFormatG = x.g();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatG;
        Long l10 = this.selectedStartItem;
        if (l10 != null) {
            editText.setText(simpleDateFormat.format(l10));
            this.proposedTextStart = this.selectedStartItem;
        }
        Long l11 = this.selectedEndItem;
        if (l11 != null) {
            editText2.setText(simpleDateFormat.format(l11));
            this.proposedTextEnd = this.selectedEndItem;
        }
        String pattern = z10 ? simpleDateFormat.toPattern() : x.h(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        textInputLayout2.setPlaceholderText(pattern);
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, oVar));
        editText2.addTextChangedListener(new b(pattern, simpleDateFormat, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, oVar));
        h.c(editText, editText2);
        return viewInflate;
    }

    @Override
    public void select(long j10) {
        Long l10 = this.selectedStartItem;
        if (l10 == null) {
            this.selectedStartItem = Long.valueOf(j10);
        } else if (this.selectedEndItem == null && isValidRange(l10.longValue(), j10)) {
            this.selectedEndItem = Long.valueOf(j10);
        } else {
            this.selectedEndItem = null;
            this.selectedStartItem = Long.valueOf(j10);
        }
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
        parcel.writeValue(this.selectedStartItem);
        parcel.writeValue(this.selectedEndItem);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NonNull
    public androidx.core.util.e getSelection() {
        return new androidx.core.util.e(this.selectedStartItem, this.selectedEndItem);
    }

    @Override
    public void setSelection(@NonNull androidx.core.util.e eVar) {
        Object obj = eVar.f7958a;
        if (obj != null && eVar.f7959b != null) {
            androidx.core.util.i.a(isValidRange(((Long) obj).longValue(), ((Long) eVar.f7959b).longValue()));
        }
        Object obj2 = eVar.f7958a;
        this.selectedStartItem = obj2 == null ? null : Long.valueOf(x.a(((Long) obj2).longValue()));
        Object obj3 = eVar.f7959b;
        this.selectedEndItem = obj3 != null ? Long.valueOf(x.a(((Long) obj3).longValue())) : null;
    }
}
