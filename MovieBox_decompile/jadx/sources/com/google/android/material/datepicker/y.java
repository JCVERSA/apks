package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$layout;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

class y extends RecyclerView.Adapter {

    private final MaterialCalendar f28089a;

    class a implements View.OnClickListener {

        final int f28090a;

        a(int i10) {
            this.f28090a = i10;
        }

        @Override
        public void onClick(View view) {
            y.this.f28089a.p0(y.this.f28089a.g0().clamp(Month.b(this.f28090a, y.this.f28089a.i0().f28017a)));
            y.this.f28089a.q0(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    public static class b extends RecyclerView.a0 {

        final TextView f28092a;

        b(TextView textView) {
            super(textView);
            this.f28092a = textView;
        }
    }

    y(MaterialCalendar materialCalendar) {
        this.f28089a = materialCalendar;
    }

    private View.OnClickListener h(int i10) {
        return new a(i10);
    }

    @Override
    public int getItemCount() {
        return this.f28089a.g0().getYearSpan();
    }

    int i(int i10) {
        return i10 - this.f28089a.g0().getStart().f28018b;
    }

    int j(int i10) {
        return this.f28089a.g0().getStart().f28018b + i10;
    }

    @Override
    public void onBindViewHolder(b bVar, int i10) {
        int iJ = j(i10);
        bVar.f28092a.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(iJ)));
        TextView textView = bVar.f28092a;
        textView.setContentDescription(j.k(textView.getContext(), iJ));
        com.google.android.material.datepicker.b bVarH0 = this.f28089a.h0();
        Calendar calendarQ = x.q();
        com.google.android.material.datepicker.a aVar = calendarQ.get(1) == iJ ? bVarH0.f28044f : bVarH0.f28042d;
        Iterator<Long> it = this.f28089a.j0().getSelectedDays().iterator();
        while (it.hasNext()) {
            calendarQ.setTimeInMillis(it.next().longValue());
            if (calendarQ.get(1) == iJ) {
                aVar = bVarH0.f28043e;
            }
        }
        aVar.d(bVar.f28092a);
        bVar.f28092a.setOnClickListener(h(iJ));
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_year, viewGroup, false));
    }
}
