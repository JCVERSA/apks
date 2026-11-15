package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.R$string;
import com.google.android.material.internal.a0;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

abstract class e extends a0 {

    private final TextInputLayout f28051a;

    private final String f28052b;

    private final DateFormat f28053c;

    private final CalendarConstraints f28054d;

    private final String f28055e;

    private final Runnable f28056f;

    private Runnable f28057g;

    private int f28058h = 0;

    e(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f28052b = str;
        this.f28053c = dateFormat;
        this.f28051a = textInputLayout;
        this.f28054d = calendarConstraints;
        this.f28055e = textInputLayout.getContext().getString(R$string.mtrl_picker_out_of_range);
        this.f28056f = new Runnable() {
            @Override
            public final void run() {
                this.f28047a.e(str);
            }
        };
    }

    private Runnable c(final long j10) {
        return new Runnable() {
            @Override
            public final void run() {
                this.f28049a.d(j10);
            }
        };
    }

    public void d(long j10) {
        this.f28051a.setError(String.format(this.f28055e, i(j.c(j10))));
        f();
    }

    public void e(String str) {
        TextInputLayout textInputLayout = this.f28051a;
        DateFormat dateFormat = this.f28053c;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R$string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R$string.mtrl_picker_invalid_format_use), i(str)) + "\n" + String.format(context.getString(R$string.mtrl_picker_invalid_format_example), i(dateFormat.format(new Date(x.q().getTimeInMillis())))));
        f();
    }

    private String i(String str) {
        return str.replace(' ', (char) 160);
    }

    @Override
    public void afterTextChanged(Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.f28052b.length() && editable.length() >= this.f28058h) {
            char cCharAt = this.f28052b.charAt(editable.length());
            if (Character.isLetterOrDigit(cCharAt)) {
                return;
            }
            editable.append(cCharAt);
        }
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.f28058h = charSequence.length();
    }

    abstract void f();

    abstract void g(Long l10);

    public void h(View view, Runnable runnable) {
        view.post(runnable);
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.f28051a.removeCallbacks(this.f28056f);
        this.f28051a.removeCallbacks(this.f28057g);
        this.f28051a.setError(null);
        g(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.f28052b.length()) {
            return;
        }
        try {
            Date date = this.f28053c.parse(charSequence.toString());
            this.f28051a.setError(null);
            long time = date.getTime();
            if (this.f28054d.getDateValidator().isValid(time) && this.f28054d.isWithinBounds(time)) {
                g(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableC = c(time);
            this.f28057g = runnableC;
            h(this.f28051a, runnableC);
        } catch (ParseException unused) {
            h(this.f28051a, this.f28056f);
        }
    }
}
