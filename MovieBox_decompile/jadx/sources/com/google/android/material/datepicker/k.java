package com.google.android.material.datepicker;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import java.util.Calendar;
import java.util.Locale;

class k extends BaseAdapter {

    private static final int f28061d;

    private final Calendar f28062a;

    private final int f28063b;

    private final int f28064c;

    static {
        f28061d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public k() {
        Calendar calendarS = x.s();
        this.f28062a = calendarS;
        this.f28063b = calendarS.getMaximum(7);
        this.f28064c = calendarS.getFirstDayOfWeek();
    }

    private int b(int i10) {
        int i11 = i10 + this.f28064c;
        int i12 = this.f28063b;
        return i11 > i12 ? i11 - i12 : i11;
    }

    @Override
    public Integer getItem(int i10) {
        if (i10 >= this.f28063b) {
            return null;
        }
        return Integer.valueOf(b(i10));
    }

    @Override
    public int getCount() {
        return this.f28063b;
    }

    @Override
    public long getItemId(int i10) {
        return 0L;
    }

    @Override
    public View getView(int i10, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f28062a.set(7, b(i10));
        textView.setText(this.f28062a.getDisplayName(7, f28061d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R$string.mtrl_picker_day_of_week_column_header), this.f28062a.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public k(int i10) {
        Calendar calendarS = x.s();
        this.f28062a = calendarS;
        this.f28063b = calendarS.getMaximum(7);
        this.f28064c = i10;
    }
}
