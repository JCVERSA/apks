package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;

class n extends RecyclerView.Adapter {

    private final CalendarConstraints f28074a;

    private final DateSelector f28075b;

    private final DayViewDecorator f28076c;

    private final MaterialCalendar.k f28077d;

    private final int f28078e;

    class a implements AdapterView.OnItemClickListener {

        final MaterialCalendarGridView f28079a;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f28079a = materialCalendarGridView;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            if (this.f28079a.getAdapter().r(i10)) {
                n.this.f28077d.a(this.f28079a.getAdapter().getItem(i10).longValue());
            }
        }
    }

    public static class b extends RecyclerView.a0 {

        final TextView f28081a;

        final MaterialCalendarGridView f28082b;

        b(LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R$id.month_title);
            this.f28081a = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f28082b = (MaterialCalendarGridView) linearLayout.findViewById(R$id.month_grid);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    n(Context context, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, MaterialCalendar.k kVar) {
        Month start = calendarConstraints.getStart();
        Month end = calendarConstraints.getEnd();
        Month openAt = calendarConstraints.getOpenAt();
        if (start.compareTo(openAt) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (openAt.compareTo(end) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f28078e = (m.f28066g * MaterialCalendar.k0(context)) + (MaterialDatePicker.m0(context) ? MaterialCalendar.k0(context) : 0);
        this.f28074a = calendarConstraints;
        this.f28075b = dateSelector;
        this.f28076c = dayViewDecorator;
        this.f28077d = kVar;
        setHasStableIds(true);
    }

    @Override
    public int getItemCount() {
        return this.f28074a.getMonthSpan();
    }

    @Override
    public long getItemId(int i10) {
        return this.f28074a.getStart().k(i10).j();
    }

    Month h(int i10) {
        return this.f28074a.getStart().k(i10);
    }

    CharSequence i(int i10) {
        return h(i10).i();
    }

    int j(Month month) {
        return this.f28074a.getStart().l(month);
    }

    @Override
    public void onBindViewHolder(b bVar, int i10) {
        Month monthK = this.f28074a.getStart().k(i10);
        bVar.f28081a.setText(monthK.i());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f28082b.findViewById(R$id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthK.equals(materialCalendarGridView.getAdapter().f28068a)) {
            m mVar = new m(monthK, this.f28075b, this.f28074a, this.f28076c);
            materialCalendarGridView.setNumColumns(monthK.f28019c);
            materialCalendarGridView.setAdapter((ListAdapter) mVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().q(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.m0(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.n(-1, this.f28078e));
        return new b(linearLayout, true);
    }
}
