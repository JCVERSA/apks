package com.transsion.widgetslib.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.View;
import android.view.Window;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import com.transsion.widgetslib.widget.timepicker.wheel.WheelView;
import defpackage.olb;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

public class a {
    public Context a;
    public d.a b;
    public Calendar c;
    public OSDateTimePicker d;
    public c e;
    public d f;
    public String g;
    public int h;
    public int i;
    public boolean j;
    public b k;
    public int l;
    public Calendar m;
    public Calendar n;
    public OSDateTimePicker.j o;

    public class C0263a implements OSDateTimePicker.j {
        public C0263a() {
        }

        @Override
        public void a(OSDateTimePicker oSDateTimePicker, Calendar calendar) {
            a.this.c = calendar;
            a.this.o();
        }
    }

    public static class b extends Handler {
        public final WeakReference a;

        public b(a aVar) {
            super(Looper.getMainLooper());
            this.a = new WeakReference(aVar);
        }

        @Override
        public void handleMessage(Message message) {
            a aVar = (a) this.a.get();
            if (aVar != null && message.what == 1001) {
                if (aVar.d != null) {
                    aVar.d.finishEditing();
                }
                aVar.j = false;
            }
        }
    }

    public interface c {
        void a(OSDateTimePicker oSDateTimePicker, Calendar calendar, int i, int i2, int i3, int i4, int i5, int i6);
    }

    public a(Context context, int i, int i2, int i3) {
        this(context, false, i, i2, i3);
    }

    public final void g() {
        b bVar = this.k;
        if (bVar != null) {
            bVar.removeMessages(1001);
            this.k = null;
        }
    }

    public OSDateTimePicker getDateTimePicker() {
        return this.d;
    }

    public d h() {
        s();
        d dVarA = this.b.a();
        this.f = dVarA;
        dVarA.l();
        x();
        this.d.setWheelBackgroundColor(0);
        Window window = this.f.getWindow();
        if (window != null) {
            window.setSoftInputMode(32);
            w(window);
        }
        return this.f;
    }

    public void i() {
        d dVar = this.f;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        g();
        this.f.dismiss();
    }

    public final String j() {
        return new SimpleDateFormat(DateFormat.is24HourFormat(this.a) ? OSDateTimePicker.FORMAT_H_M : "h:mm a", Locale.getDefault()).format(this.c.getTime());
    }

    public final String k() {
        if (OSDateTimePicker.FORMAT_Y_M_D.equals(this.g)) {
            return olb.H0(DateUtils.formatDateTime(this.a, this.c.getTimeInMillis(), 22));
        }
        if (OSDateTimePicker.FORMAT_H_M.equals(this.g)) {
            return j();
        }
        String strH0 = olb.H0(DateUtils.formatDateTime(this.a, this.c.getTimeInMillis(), 22));
        String strJ = j();
        if (strH0 == null) {
            strH0 = "";
        }
        if (strJ == null) {
            strJ = "";
        }
        String language = Locale.getDefault().getLanguage();
        if ("ar".equals(language) || "ur".equals(language) || "ku".equals(language)) {
            return strH0 + "، " + strJ;
        }
        if ("he".equals(language) || "iw".equals(language)) {
            return strH0 + ", " + strJ;
        }
        return strH0 + " " + strJ;
    }

    public boolean l() {
        d dVar = this.f;
        return dVar != null && dVar.isShowing();
    }

    public final void m(DialogInterface.OnDismissListener onDismissListener, DialogInterface dialogInterface) {
        g();
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
    }

    public final WindowInsetsCompat n(View view, WindowInsetsCompat windowInsetsCompat) {
        b bVar;
        if (windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime())) {
            this.j = true;
            b bVar2 = this.k;
            if (bVar2 != null) {
                bVar2.removeMessages(1001);
            }
        } else if (this.j && (bVar = this.k) != null) {
            bVar.sendEmptyMessageDelayed(1001, 300L);
        }
        return windowInsetsCompat;
    }

    public final void o() {
        if (this.e != null && l()) {
            c cVar = this.e;
            OSDateTimePicker oSDateTimePicker = this.d;
            Calendar calendar = this.c;
            cVar.a(oSDateTimePicker, calendar, calendar.get(1), this.c.get(2), this.c.get(5), this.c.get(11), this.c.get(12), this.c.get(9));
        }
        if (l()) {
            x();
        }
    }

    public a p(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.b.n(charSequence, onClickListener);
        return this;
    }

    public a q(c cVar) {
        this.e = cVar;
        return this;
    }

    public a r(final DialogInterface.OnDismissListener onDismissListener) {
        this.b.s(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                this.b.m(onDismissListener, dialogInterface);
            }
        });
        return this;
    }

    public final void s() {
        if (this.c == null) {
            this.c = Calendar.getInstance();
        }
        View viewInflate = View.inflate(this.a, R.layout.os_picker_date_time_layout, null);
        OSDateTimePicker oSDateTimePicker = (OSDateTimePicker) viewInflate.findViewById(R.id.datePicker);
        this.d = oSDateTimePicker;
        if (this.l == 3) {
            oSDateTimePicker.setCustomLimit(this.m, this.n);
        }
        this.d.init(this.c, this.g, this.l);
        int i = this.h;
        if (i != 0 || this.i != 0) {
            this.d.setYearDuration(i, this.i);
        }
        this.d.setOnDateChangeListener(this.o);
        this.d.setOnDialogDismissListener(new WheelView.d() {
            @Override
            public final void onDialogDismiss() {
                this.a.i();
            }
        });
        this.b.E(viewInflate);
    }

    public void setDimAmount(float f) {
        d dVar = this.f;
        if (dVar != null) {
            dVar.setDimAmount(f);
        }
    }

    public void setFormat(String str) {
        this.g = str;
    }

    public a t(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.b.w(charSequence, onClickListener);
        return this;
    }

    public a u(CharSequence charSequence) {
        this.b.C(charSequence);
        return this;
    }

    public void v(int i, int i2) {
        this.h = i;
        this.i = i2;
    }

    public final void w(Window window) {
        this.k = new b(this);
        ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.a.n(view, windowInsetsCompat);
            }
        });
    }

    public final void x() {
        d dVar = this.f;
        if (dVar != null) {
            dVar.setTitle(k());
        }
    }

    public a(Context context, boolean z, int i, int i2, int i3) {
        this.g = OSDateTimePicker.FORMAT_Y_M_D_H_M;
        this.j = false;
        this.l = 0;
        this.o = new C0263a();
        this.a = context;
        this.b = new d.a(context, z);
        Calendar calendar = Calendar.getInstance();
        this.c = calendar;
        calendar.set(1, i);
        this.c.set(2, i2);
        this.c.set(5, i3);
    }
}
