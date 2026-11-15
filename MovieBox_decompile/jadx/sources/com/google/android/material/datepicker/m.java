package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R$layout;
import com.google.android.material.timepicker.TimeModel;
import java.util.Collection;
import java.util.Iterator;

class m extends BaseAdapter {

    static final int f28066g = x.s().getMaximum(4);

    private static final int f28067h = (x.s().getMaximum(5) + x.s().getMaximum(7)) - 1;

    final Month f28068a;

    final DateSelector f28069b;

    private Collection f28070c;

    b f28071d;

    final CalendarConstraints f28072e;

    final DayViewDecorator f28073f;

    m(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        this.f28068a = month;
        this.f28069b = dateSelector;
        this.f28072e = calendarConstraints;
        this.f28073f = dayViewDecorator;
        this.f28070c = dateSelector.getSelectedDays();
    }

    private String c(Context context, long j10) {
        return j.e(context, j10, l(j10), k(j10), g(j10));
    }

    private void f(Context context) {
        if (this.f28071d == null) {
            this.f28071d = new b(context);
        }
    }

    private boolean j(long j10) {
        Iterator<Long> it = this.f28069b.getSelectedDays().iterator();
        while (it.hasNext()) {
            if (x.a(j10) == x.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private boolean l(long j10) {
        return x.q().getTimeInMillis() == j10;
    }

    private void o(TextView textView, long j10, int i10) {
        boolean z10;
        a aVar;
        a aVar2;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        String strC = c(context, j10);
        textView.setContentDescription(strC);
        boolean zIsValid = this.f28072e.getDateValidator().isValid(j10);
        if (zIsValid) {
            textView.setEnabled(true);
            boolean zJ = j(j10);
            textView.setSelected(zJ);
            if (zJ) {
                aVar2 = this.f28071d.f28040b;
            } else {
                aVar2 = l(j10) ? this.f28071d.f28041c : this.f28071d.f28039a;
            }
            aVar = aVar2;
            z10 = zJ;
        } else {
            textView.setEnabled(false);
            z10 = false;
            aVar = this.f28071d.f28045g;
        }
        DayViewDecorator dayViewDecorator = this.f28073f;
        if (dayViewDecorator == null || i10 == -1) {
            aVar.d(textView);
            return;
        }
        Month month = this.f28068a;
        int i11 = month.f28018b;
        int i12 = month.f28017a;
        ColorStateList backgroundColor = dayViewDecorator.getBackgroundColor(context, i11, i12, i10, zIsValid, z10);
        boolean z11 = z10;
        aVar.e(textView, backgroundColor, this.f28073f.getTextColor(context, i11, i12, i10, zIsValid, z11));
        Drawable compoundDrawableLeft = this.f28073f.getCompoundDrawableLeft(context, i11, i12, i10, zIsValid, z11);
        Drawable compoundDrawableTop = this.f28073f.getCompoundDrawableTop(context, i11, i12, i10, zIsValid, z11);
        Drawable compoundDrawableRight = this.f28073f.getCompoundDrawableRight(context, i11, i12, i10, zIsValid, z11);
        boolean z12 = z10;
        textView.setCompoundDrawables(compoundDrawableLeft, compoundDrawableTop, compoundDrawableRight, this.f28073f.getCompoundDrawableBottom(context, i11, i12, i10, zIsValid, z12));
        textView.setContentDescription(this.f28073f.getContentDescription(context, i11, i12, i10, zIsValid, z12, strC));
    }

    private void p(MaterialCalendarGridView materialCalendarGridView, long j10) {
        if (Month.d(j10).equals(this.f28068a)) {
            int iH = this.f28068a.h(j10);
            o((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(iH) - materialCalendarGridView.getFirstVisiblePosition()), j10, iH);
        }
    }

    int a(int i10) {
        return b() + (i10 - 1);
    }

    int b() {
        return this.f28068a.f(this.f28072e.getFirstDayOfWeek());
    }

    @Override
    public Long getItem(int i10) {
        if (i10 < b() || i10 > m()) {
            return null;
        }
        return Long.valueOf(this.f28068a.g(n(i10)));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0054  */
    @Override
    public TextView getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        f(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_day, viewGroup, false);
        }
        int iB = i10 - b();
        if (iB >= 0) {
            Month month = this.f28068a;
            if (iB >= month.f28020d) {
                textView.setVisibility(8);
                textView.setEnabled(false);
                i11 = -1;
            } else {
                i11 = iB + 1;
                textView.setTag(month);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(i11)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
            i11 = -1;
        }
        Long item = getItem(i10);
        if (item == null) {
            return textView;
        }
        o(textView, item.longValue(), i11);
        return textView;
    }

    boolean g(long j10) {
        Iterator<androidx.core.util.e> it = this.f28069b.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Object obj = it.next().f7959b;
            if (obj != null && ((Long) obj).longValue() == j10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int getCount() {
        return f28067h;
    }

    @Override
    public long getItemId(int i10) {
        return i10 / this.f28068a.f28019c;
    }

    boolean h(int i10) {
        return i10 % this.f28068a.f28019c == 0;
    }

    @Override
    public boolean hasStableIds() {
        return true;
    }

    boolean i(int i10) {
        return (i10 + 1) % this.f28068a.f28019c == 0;
    }

    boolean k(long j10) {
        Iterator<androidx.core.util.e> it = this.f28069b.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Object obj = it.next().f7958a;
            if (obj != null && ((Long) obj).longValue() == j10) {
                return true;
            }
        }
        return false;
    }

    int m() {
        return (b() + this.f28068a.f28020d) - 1;
    }

    int n(int i10) {
        return (i10 - b()) + 1;
    }

    public void q(MaterialCalendarGridView materialCalendarGridView) {
        Iterator it = this.f28070c.iterator();
        while (it.hasNext()) {
            p(materialCalendarGridView, ((Long) it.next()).longValue());
        }
        DateSelector dateSelector = this.f28069b;
        if (dateSelector != null) {
            Iterator<Long> it2 = dateSelector.getSelectedDays().iterator();
            while (it2.hasNext()) {
                p(materialCalendarGridView, it2.next().longValue());
            }
            this.f28070c = this.f28069b.getSelectedDays();
        }
    }

    boolean r(int i10) {
        return i10 >= b() && i10 <= m();
    }
}
