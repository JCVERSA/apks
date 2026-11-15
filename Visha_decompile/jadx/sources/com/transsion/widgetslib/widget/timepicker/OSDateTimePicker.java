package com.transsion.widgetslib.widget.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.icu.text.SimpleDateFormat;
import android.os.Handler;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.RawRes;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.timepicker.wheel.WheelView;
import defpackage.olb;
import defpackage.vob;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

public class OSDateTimePicker extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int END_YEAR = 2100;
    public static final String FORMAT_H_M = "HH:mm";
    public static final String FORMAT_M_D = "MM-dd";
    public static final String FORMAT_M_D_H_M = "MM-dd HH:mm";
    public static final String FORMAT_Y_M_D = "yyyy-MM-dd";
    public static final String FORMAT_Y_M_D_H_M = "yyyy-MM-dd HH:mm";
    public static final int LIMIT_CUSTOM = 3;
    public static final int LIMIT_FUTURE = 1;
    public static final int LIMIT_NONE = 0;
    public static final int LIMIT_PAST = 2;
    public static final int START_YEAR = 1900;
    public boolean A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public int F;
    public final Calendar G;
    public List H;
    public Calendar I;
    public Calendar J;
    public boolean K;
    public boolean L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public Calendar b;
    public final Handler b0;
    public WheelView c;
    public final Runnable c0;
    public WheelView d;
    public boolean d0;
    public WheelView e;
    public Runnable e0;
    public WheelView f;
    public WheelView g;
    public WheelView h;
    public WheelView i;
    public ArrayList j;
    public j k;
    public WheelView.e l;
    public WheelView.g m;
    public int mEndYear;
    public ArrayList<String> mMonthList;
    public int mStartYear;
    public WheelView.g n;
    public WheelView.g o;
    public WheelView.g p;
    public WheelView.g q;
    public WheelView.g r;
    public WheelView.g s;
    public boolean t;
    public String u;
    public Context v;
    public final int w;
    public String x;
    public Vibrator y;
    public VibrationEffect z;

    public class a implements WheelView.e {
        public a() {
        }

        @Override
        public void a(WheelView wheelView, int i, String str) {
            OSDateTimePicker.q(OSDateTimePicker.this);
            OSDateTimePicker.this.y0();
        }
    }

    public class b extends i {
        public b(int i) {
            super(i);
        }

        @Override
        public void a(int i, int i2) {
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.b.set(1, OSDateTimePicker.this.mStartYear + i2);
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.q0(1);
        }
    }

    public class c extends i {
        public c(int i) {
            super(i);
        }

        @Override
        public void a(int i, int i2) {
            if (OSDateTimePicker.this.H != null && i2 >= 0 && i2 < OSDateTimePicker.this.H.size()) {
                i2 = ((Integer) OSDateTimePicker.this.H.get(i2)).intValue();
            }
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.b.set(2, i2);
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.q0(2);
        }
    }

    public class d extends i {
        public d(int i) {
            super(i);
        }

        @Override
        public void a(int i, int i2) {
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.b.set(5, OSDateTimePicker.this.C + i2);
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.s0();
            OSDateTimePicker.this.t0();
            OSDateTimePicker.this.q0(3);
        }
    }

    public class e implements WheelView.g {
        public e() {
        }

        @Override
        public void a(int i, int i2) {
            Log.d("OSDateTimePicker", "newvalue" + i2 + "oldvalue" + i);
            OSDateTimePicker.this.f.setOnWheelChangedListener(null);
            if (OSDateTimePicker.this.E) {
                OSDateTimePicker.this.E = false;
                OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                return;
            }
            Object itemData = OSDateTimePicker.this.f.getItemData(i2);
            Object itemData2 = OSDateTimePicker.this.f.getItemData(i);
            Integer num = itemData instanceof Integer ? (Integer) itemData : null;
            Integer num2 = itemData2 instanceof Integer ? (Integer) itemData2 : null;
            if (i2 > i) {
                if (num == null || num2 == null) {
                    if (i2 - i > 10) {
                        Log.d("OSDateTimePicker", "when newValue > oldValue newValue - oldValue > 10 +1 ");
                        OSDateTimePicker oSDateTimePicker = OSDateTimePicker.this;
                        oSDateTimePicker.C0(Math.max(oSDateTimePicker.b.get(1) - 1, OSDateTimePicker.this.mStartYear), true);
                        boolean z = OSDateTimePicker.this.L;
                        OSDateTimePicker.this.L = false;
                        OSDateTimePicker.this.A0();
                        OSDateTimePicker.this.B0();
                        OSDateTimePicker.this.K();
                        OSDateTimePicker.this.e0();
                        OSDateTimePicker.this.L = z;
                        OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                        return;
                    }
                    OSDateTimePicker.this.b.set(6, num != null ? num.intValue() : i2 + OSDateTimePicker.this.D);
                } else {
                    if (num.intValue() < num2.intValue()) {
                        Log.d("OSDateTimePicker", "when newValue > oldValue realNew < realOld > 10  -1 ");
                        OSDateTimePicker oSDateTimePicker2 = OSDateTimePicker.this;
                        oSDateTimePicker2.C0(Math.min(oSDateTimePicker2.b.get(1) + 1, OSDateTimePicker.this.mEndYear), false);
                        boolean z2 = OSDateTimePicker.this.L;
                        OSDateTimePicker.this.L = false;
                        OSDateTimePicker.this.A0();
                        OSDateTimePicker.this.B0();
                        OSDateTimePicker.this.K();
                        OSDateTimePicker.this.e0();
                        OSDateTimePicker.this.L = z2;
                        OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                        OSDateTimePicker.this.E = true;
                        return;
                    }
                    if (i2 - i > 10) {
                        Log.d("OSDateTimePicker", "when newValue > oldValue newValue - oldValue > 10 +1 ");
                        OSDateTimePicker oSDateTimePicker3 = OSDateTimePicker.this;
                        oSDateTimePicker3.C0(Math.max(oSDateTimePicker3.b.get(1) - 1, OSDateTimePicker.this.mStartYear), true);
                        boolean z3 = OSDateTimePicker.this.L;
                        OSDateTimePicker.this.L = false;
                        OSDateTimePicker.this.A0();
                        OSDateTimePicker.this.B0();
                        OSDateTimePicker.this.K();
                        OSDateTimePicker.this.e0();
                        OSDateTimePicker.this.L = z3;
                        OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                        return;
                    }
                    OSDateTimePicker.this.b.set(6, num.intValue());
                }
            } else if (i2 < i) {
                if (num == null || num2 == null) {
                    if (i - i2 > 10) {
                        OSDateTimePicker oSDateTimePicker4 = OSDateTimePicker.this;
                        oSDateTimePicker4.C0(Math.min(oSDateTimePicker4.b.get(1) + 1, OSDateTimePicker.this.mEndYear), false);
                        boolean z4 = OSDateTimePicker.this.L;
                        OSDateTimePicker.this.L = false;
                        OSDateTimePicker.this.A0();
                        OSDateTimePicker.this.B0();
                        OSDateTimePicker.this.K();
                        OSDateTimePicker.this.e0();
                        OSDateTimePicker.this.L = z4;
                        OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                        return;
                    }
                    OSDateTimePicker.this.b.set(6, num != null ? num.intValue() : i2 + OSDateTimePicker.this.D);
                } else {
                    if (num.intValue() > num2.intValue()) {
                        Log.d("OSDateTimePicker", "when newValue < oldValue realNew > realOld +1 " + OSDateTimePicker.this.b.get(1) + OSDateTimePicker.this.mStartYear);
                        OSDateTimePicker oSDateTimePicker5 = OSDateTimePicker.this;
                        oSDateTimePicker5.C0(Math.max(oSDateTimePicker5.b.get(1) - 1, OSDateTimePicker.this.mStartYear), true);
                        boolean z5 = OSDateTimePicker.this.L;
                        OSDateTimePicker.this.L = false;
                        OSDateTimePicker.this.A0();
                        OSDateTimePicker.this.B0();
                        OSDateTimePicker.this.K();
                        OSDateTimePicker.this.e0();
                        OSDateTimePicker.this.L = z5;
                        OSDateTimePicker.this.E = true;
                        OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                        return;
                    }
                    if (i - i2 > 10) {
                        Log.d("OSDateTimePicker", "when newValue < oldValue oldValue - newValue > 10 +1 ");
                        OSDateTimePicker oSDateTimePicker6 = OSDateTimePicker.this;
                        oSDateTimePicker6.C0(Math.min(oSDateTimePicker6.b.get(1) + 1, OSDateTimePicker.this.mEndYear), false);
                        boolean z6 = OSDateTimePicker.this.L;
                        OSDateTimePicker.this.L = false;
                        OSDateTimePicker.this.A0();
                        OSDateTimePicker.this.B0();
                        OSDateTimePicker.this.K();
                        OSDateTimePicker.this.e0();
                        OSDateTimePicker.this.L = z6;
                        OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
                        return;
                    }
                    OSDateTimePicker.this.b.set(6, num.intValue());
                }
            }
            OSDateTimePicker.this.f.setOnWheelChangedListener(OSDateTimePicker.this.p);
            boolean z7 = OSDateTimePicker.this.L;
            OSDateTimePicker.this.L = false;
            OSDateTimePicker.this.A0();
            OSDateTimePicker.this.B0();
            OSDateTimePicker.this.K();
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.L = z7;
        }

        @Override
        public void b(int i) {
        }

        @Override
        public void c(int i) {
        }

        @Override
        public void d(int i) {
        }
    }

    public class f extends i {
        public f(int i) {
            super(i);
        }

        @Override
        public void a(int i, int i2) {
            if (OSDateTimePicker.this.j.size() == 1) {
                int i3 = !((String) OSDateTimePicker.this.j.get(0)).equals(OSDateTimePicker.this.N(true)) ? 1 : 0;
                if (i2 != 0) {
                    OSDateTimePicker.this.g.setSelectedItemPosition(0);
                }
                i2 = i3;
            }
            int i4 = OSDateTimePicker.this.G.get(9);
            if (OSDateTimePicker.this.Y()) {
                if (OSDateTimePicker.this.F == 1 && i2 < i4) {
                    OSDateTimePicker.this.g.setSelectedItemPosition(OSDateTimePicker.this.j.size() != 1 ? i4 : 0);
                } else if (OSDateTimePicker.this.F == 2 && i2 > i4) {
                    OSDateTimePicker.this.g.setSelectedItemPosition(OSDateTimePicker.this.j.size() != 1 ? i4 : 0);
                }
                i2 = i4;
            }
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.b.set(9, i2);
            OSDateTimePicker.this.B = -1;
            OSDateTimePicker.this.s0();
            OSDateTimePicker.this.t0();
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.q0(5);
        }
    }

    public class g extends i {
        public g(int i) {
            super(i);
        }

        @Override
        public void a(int i, int i2) {
            int iIntValue;
            Object itemData = OSDateTimePicker.this.h.getItemData(i2);
            if (itemData instanceof Integer) {
                iIntValue = ((Integer) itemData).intValue();
            } else {
                if (!OSDateTimePicker.this.t) {
                    i2 = ((i2 + 11) % 12) + 1;
                }
                iIntValue = i2;
            }
            if (OSDateTimePicker.this.t) {
                OSDateTimePicker.this.b.set(11, iIntValue);
            } else {
                OSDateTimePicker.this.b.set(10, iIntValue % 12);
            }
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.t0();
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.q0(6);
        }
    }

    public class h extends i {
        public h(int i) {
            super(i);
        }

        @Override
        public void a(int i, int i2) {
            Object itemData = OSDateTimePicker.this.i.getItemData(i2);
            if (itemData instanceof Integer) {
                i2 = ((Integer) itemData).intValue();
            }
            OSDateTimePicker.this.b.set(12, i2);
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.e0();
            OSDateTimePicker.this.q0(7);
        }
    }

    public abstract class i implements WheelView.g {
        public final int a;

        public i(int i) {
            this.a = i;
        }

        @Override
        public void b(int i) {
            OSDateTimePicker.this.L = true;
            OSDateTimePicker.this.q0(this.a);
        }

        @Override
        public void c(int i) {
        }

        @Override
        public void d(int i) {
        }
    }

    public interface j {
        void a(OSDateTimePicker oSDateTimePicker, Calendar calendar);
    }

    public interface k {
    }

    public OSDateTimePicker(Context context) {
        super(context);
        this.b = Calendar.getInstance();
        this.mMonthList = new ArrayList<>();
        this.j = new ArrayList();
        this.mStartYear = START_YEAR;
        this.mEndYear = 2100;
        this.l = new a();
        this.w = 5;
        this.x = getClass().getSimpleName();
        this.B = -1;
        this.C = 1;
        this.D = 1;
        this.E = false;
        this.F = 0;
        this.G = Calendar.getInstance();
        this.K = false;
        this.L = false;
        this.M = 0;
        this.N = 0;
        this.O = -1;
        this.P = -1;
        this.Q = -1;
        this.R = -1;
        this.S = -1;
        this.T = -1;
        this.U = -1;
        this.V = -1;
        this.W = -1;
        this.a0 = -1;
        this.b0 = new Handler();
        this.c0 = new Runnable() {
            @Override
            public void run() {
                OSDateTimePicker.this.M();
            }
        };
        this.d0 = true;
        this.e0 = new Runnable() {
            @Override
            public void run() {
                OSDateTimePicker.this.a0();
            }
        };
        this.v = context;
    }

    private int getSelectedHourOfDay() {
        if (this.t) {
            return this.b.get(11);
        }
        int i2 = this.b.get(10);
        return this.b.get(9) == 1 ? (i2 + 12) % 24 : i2;
    }

    public static k q(OSDateTimePicker oSDateTimePicker) {
        oSDateTimePicker.getClass();
        return null;
    }

    public final void A0() {
        if (this.L || this.h == null) {
            return;
        }
        s0();
    }

    public final void B0() {
        if (this.L || this.i == null) {
            return;
        }
        t0();
    }

    public final void C0(int i2, boolean z) {
        Log.d("OSDateTimePicker", "yearvalue: " + i2);
        Calendar calendar = this.b;
        calendar.set(6, calendar.getMinimum(6));
        this.b.set(1, i2);
        Calendar calendar2 = this.b;
        calendar2.set(6, z ? calendar2.getActualMaximum(6) : calendar2.getMinimum(6));
        if (i2 == this.mStartYear || i2 == this.mEndYear) {
            this.K = true;
            u0();
            return;
        }
        WheelView wheelView = this.f;
        if (wheelView != null) {
            WheelView.g gVar = this.p;
            wheelView.setOnWheelChangedListener(null);
            this.f.abortFinishScroll();
            ArrayList arrayList = new ArrayList();
            for (int i3 = 1; i3 <= this.b.getActualMaximum(6); i3++) {
                arrayList.add(Integer.valueOf(i3));
            }
            this.f.setData(arrayList);
            int i4 = this.b.get(6);
            this.f.setCyclic(true);
            this.f.setSelectedItemPosition(i4 - 1);
            this.f.safeResetScrollOffsetY(0);
            this.f.setOnWheelChangedListener(gVar);
            this.W = -1;
            this.a0 = -1;
        }
    }

    public final void D0() {
        if (this.f != null) {
            u0();
        }
    }

    public final void H(int i2) {
        switch (i2) {
            case 1:
                WheelView wheelView = this.c;
                if (wheelView != null) {
                    f0(this.mStartYear + wheelView.getSelectedItemPosition());
                }
                break;
            case 2:
                WheelView wheelView2 = this.d;
                if (wheelView2 != null) {
                    int selectedItemPosition = wheelView2.getSelectedItemPosition();
                    List list = this.H;
                    if (list != null && selectedItemPosition >= 0 && selectedItemPosition < list.size()) {
                        selectedItemPosition = ((Integer) this.H.get(selectedItemPosition)).intValue();
                    }
                    d0(selectedItemPosition);
                }
                break;
            case 3:
                WheelView wheelView3 = this.e;
                if (wheelView3 != null) {
                    c0(this.C + wheelView3.getSelectedItemPosition());
                }
                break;
            case 4:
                WheelView wheelView4 = this.f;
                if (wheelView4 != null) {
                    int selectedItemPosition2 = wheelView4.getSelectedItemPosition();
                    Object itemData = this.f.getItemData(selectedItemPosition2);
                    Integer num = itemData instanceof Integer ? (Integer) itemData : null;
                    this.b.set(6, num != null ? num.intValue() : selectedItemPosition2 + this.D);
                    A0();
                    B0();
                    K();
                    e0();
                }
                break;
            case 5:
                s0();
                t0();
                K();
                e0();
                break;
            case 6:
                if (!this.t && this.g != null) {
                    L();
                }
                t0();
                K();
                e0();
                break;
            case 7:
                K();
                e0();
                break;
        }
    }

    public final void I(WheelView wheelView, List list, int i2, boolean z, boolean z2, boolean z3, WheelView.g gVar) {
        if (z || z2) {
            wheelView.setOnWheelChangedListener(null);
            if (z && list != null) {
                wheelView.setData(list);
                wheelView.setCyclic(z3);
            }
            if (wheelView.mIsTouchStatus) {
                wheelView.safeResetScrollOffsetY(i2);
            } else {
                wheelView.abortFinishScroll();
                wheelView.setSelectedItemPosition(i2);
            }
            wheelView.setOnWheelChangedListener(gVar);
        }
    }

    public final void J() {
        WheelView wheelView = this.c;
        if (wheelView != null) {
            wheelView.setOnInputInvalidListener(this.l);
        }
        WheelView wheelView2 = this.d;
        if (wheelView2 != null) {
            wheelView2.setOnInputInvalidListener(this.l);
        }
        WheelView wheelView3 = this.e;
        if (wheelView3 != null) {
            wheelView3.setOnInputInvalidListener(this.l);
        }
    }

    public final void K() {
        j jVar;
        if (this.L || (jVar = this.k) == null) {
            return;
        }
        jVar.a(this, this.b);
    }

    public final void L() {
        if (this.h == null || this.g == null || this.t) {
            return;
        }
        int i2 = this.b.get(10);
        if (i2 == 0) {
            i2 = 12;
        }
        int i3 = this.B;
        if (i3 == -1) {
            this.B = i2;
            return;
        }
        if ((i2 == 12 && i3 == 11) || (i2 == 11 && i3 == 12)) {
            if (this.j.size() != 1) {
                int i4 = this.g.getSelectedItemPosition() != 0 ? 0 : 1;
                WheelView.g gVar = this.s;
                this.g.setOnWheelChangedListener(null);
                this.g.setSelectedItemPosition(i4);
                this.g.setOnWheelChangedListener(gVar);
                this.b.set(9, i4);
                s0();
                t0();
            }
        }
        this.B = i2;
    }

    public final void M() {
        if (this.L) {
            this.L = false;
            int i2 = this.N;
            this.N = 0;
            if ((i2 & 2) != 0) {
                H(1);
                return;
            }
            if ((i2 & 4) != 0) {
                H(2);
                return;
            }
            if ((i2 & 8) != 0) {
                H(3);
                return;
            }
            if ((i2 & 16) != 0) {
                H(4);
                return;
            }
            if ((i2 & 32) != 0) {
                H(5);
                return;
            }
            if ((i2 & 64) != 0) {
                H(6);
            } else if ((i2 & 128) != 0) {
                H(7);
            } else {
                H(this.M);
            }
        }
    }

    public final String N(boolean z) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, z ? 10 : 14);
        return new SimpleDateFormat("aa").format(calendar.getTime());
    }

    public final int O(int i2) {
        return (int) ((i2 * g0()) + 0.5f);
    }

    public final void P() {
        String str = this.u;
        str.hashCode();
        switch (str) {
            case "yyyy-MM-dd HH:mm":
                W();
                V();
                Q();
                R();
                S();
                break;
            case "MM-dd HH:mm":
                T();
                R();
                S();
                break;
            case "yyyy-MM-dd":
                W();
                V();
                Q();
                break;
            case "HH:mm":
                R();
                S();
                break;
            case "MM-dd":
                V();
                Q();
                break;
        }
    }

    public final void Q() {
        if (this.e == null) {
            this.e = (WheelView) findViewById(R.id.dayWheel);
        }
        this.e.setVisibility(0);
        this.e.setVisibleItems(5);
        if (FORMAT_Y_M_D.equals(this.u)) {
            this.e.setEditingEnabled(true);
            this.e.setDayWheel(true);
        } else {
            this.e.setEditingEnabled(false);
        }
        this.S = -1;
        this.T = -1;
        r0();
        d dVar = new d(3);
        this.o = dVar;
        this.e.setOnWheelChangedListener(dVar);
    }

    public final void R() {
        WheelView wheelView = (WheelView) findViewById(R.id.hourWheel);
        this.h = wheelView;
        wheelView.setVisibility(0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.weight = 0.333f;
        this.h.setLayoutParams(layoutParams);
        WheelView wheelView2 = (WheelView) findViewById(R.id.formatWheel);
        this.g = wheelView2;
        wheelView2.setEditingEnabled(false);
        this.t = olb.P(this.v);
        this.h.setHourWheel(true);
        this.h.set24HoursFormat(this.t);
        int i2 = this.t ? this.b.get(11) : this.b.get(10);
        if (this.t) {
            this.g.setVisibility(8);
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < 24; i3++) {
                arrayList.add(Integer.valueOf(i3));
            }
            this.h.setData(arrayList);
            this.B = i2;
            this.h.setSelectedItemPosition(i2);
            s0();
        } else {
            this.g.setVisibility(0);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.g.getLayoutParams();
            layoutParams2.width = 0;
            layoutParams2.weight = 0.333f;
            this.g.setLayoutParams(layoutParams2);
            this.j.clear();
            this.j.add(N(true));
            this.j.add(N(false));
            ArrayList arrayList2 = new ArrayList();
            for (int i4 = 1; i4 < 13; i4++) {
                arrayList2.add(Integer.valueOf(i4));
            }
            this.h.setData(arrayList2);
            int i5 = (i2 + 11) % 12;
            this.B = i5 + 1;
            this.h.setSelectedItemPosition(i5);
            int i6 = this.b.get(9);
            this.g.setData(this.j);
            this.g.setVisibleItems(3);
            this.g.setCyclic(false);
            this.g.setSelectedItemPosition(i6);
            this.g.setAmPmWheel(true);
            f fVar = new f(5);
            this.s = fVar;
            this.g.setOnWheelChangedListener(fVar);
            s0();
            t0();
        }
        this.h.setVisibleItems(5);
        g gVar = new g(6);
        this.q = gVar;
        this.h.setOnWheelChangedListener(gVar);
    }

    public final void S() {
        int i2 = this.b.get(12);
        WheelView wheelView = (WheelView) findViewById(R.id.minWheel);
        this.i = wheelView;
        wheelView.setVisibility(0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.i.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.weight = 0.333f;
        this.i.setLayoutParams(layoutParams);
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < 60; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        this.i.setMinuteWheel(true);
        this.i.setData(arrayList);
        this.i.setSelectedItemPosition(i2);
        this.i.setVisibleItems(5);
        t0();
        h hVar = new h(7);
        this.r = hVar;
        this.i.setOnWheelChangedListener(hVar);
    }

    public final void T() {
        U();
        this.b.get(6);
        WheelView wheelView = (WheelView) findViewById(R.id.monthDayWheel);
        this.f = wheelView;
        wheelView.setVisibility(0);
        this.f.setYearDays(this.b, true);
        this.f.setMonthList(this.mMonthList);
        this.f.setVisibleItems(5);
        this.f.setEditingEnabled(false);
        this.W = -1;
        this.a0 = -1;
        u0();
        e eVar = new e();
        this.p = eVar;
        this.f.setOnWheelChangedListener(eVar);
    }

    public final void U() {
        Resources resources = this.v.getResources();
        this.mMonthList.add(resources.getString(R.string.jan));
        this.mMonthList.add(resources.getString(R.string.feb));
        this.mMonthList.add(resources.getString(R.string.mar));
        this.mMonthList.add(resources.getString(R.string.apr));
        this.mMonthList.add(resources.getString(R.string.may));
        this.mMonthList.add(resources.getString(R.string.jun));
        this.mMonthList.add(resources.getString(R.string.jul));
        this.mMonthList.add(resources.getString(R.string.aug));
        this.mMonthList.add(resources.getString(R.string.sep));
        this.mMonthList.add(resources.getString(R.string.oct));
        this.mMonthList.add(resources.getString(R.string.nov));
        this.mMonthList.add(resources.getString(R.string.dec));
    }

    public final void V() {
        this.b.get(2);
        WheelView wheelView = (WheelView) findViewById(R.id.monthWheel);
        this.d = wheelView;
        wheelView.setVisibility(0);
        U();
        this.U = -1;
        this.V = -1;
        v0();
        this.d.setVisibleItems(5);
        this.d.setEditingEnabled(false);
        c cVar = new c(2);
        this.n = cVar;
        this.d.setOnWheelChangedListener(cVar);
    }

    public final void W() {
        int i2 = this.b.get(1);
        WheelView wheelView = (WheelView) findViewById(R.id.yearWheel);
        this.c = wheelView;
        wheelView.setVisibility(0);
        this.c.setOnWheelChangedListener(null);
        this.c.abortFinishScroll();
        ArrayList arrayList = new ArrayList();
        for (int i3 = this.mStartYear; i3 <= this.mEndYear; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        this.c.setData(arrayList);
        this.c.setVisibleItems(5);
        this.c.setCyclic(false);
        this.c.setNeedMaxPullLimit(true);
        int iMax = Math.max(this.mStartYear, Math.min(i2, this.mEndYear));
        this.c.setSelectedItemPosition(iMax - this.mStartYear);
        this.b.set(1, iMax);
        this.c.setEditingEnabled(true);
        this.c.setYearWheel(true);
        b bVar = new b(1);
        this.m = bVar;
        this.c.setOnWheelChangedListener(bVar);
    }

    public final boolean X() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public final boolean Y() {
        if (FORMAT_H_M.equals(this.u)) {
            return true;
        }
        return this.b.get(1) == this.G.get(1) && this.b.get(2) == this.G.get(2) && this.b.get(5) == this.G.get(5);
    }

    public final void Z() {
        View viewFindViewById = findViewById(R.id.os_wheels_parent);
        if (viewFindViewById != null) {
            viewFindViewById.invalidate();
        }
    }

    public final void a0() {
        Vibrator vibrator;
        VibrationEffect vibrationEffect;
        if (Settings.System.getInt(getContext().getContentResolver(), "haptic_feedback_enabled", 0) != 0 && (vibrator = this.y) != null && vibrator.hasVibrator() && hasWindowFocus()) {
            this.y.cancel();
            if (!olb.Z) {
                this.y.vibrate(new long[]{0, 40}, -1);
                return;
            }
            if (olb.I && olb.a0) {
                vob.d(this.v);
            } else {
                if (!olb.D || (vibrationEffect = this.z) == null) {
                    return;
                }
                this.y.vibrate(vibrationEffect);
            }
        }
    }

    public void abortFinishScroll() {
        WheelView wheelView = this.i;
        if (wheelView != null) {
            wheelView.abortFinishScroll();
        }
        WheelView wheelView2 = this.h;
        if (wheelView2 != null) {
            wheelView2.abortFinishScroll();
        }
        WheelView wheelView3 = this.e;
        if (wheelView3 != null) {
            wheelView3.abortFinishScroll();
        }
        WheelView wheelView4 = this.d;
        if (wheelView4 != null) {
            wheelView4.abortFinishScroll();
        }
        WheelView wheelView5 = this.c;
        if (wheelView5 != null) {
            wheelView5.abortFinishScroll();
        }
        WheelView wheelView6 = this.f;
        if (wheelView6 != null) {
            wheelView6.abortFinishScroll();
        }
        WheelView wheelView7 = this.g;
        if (wheelView7 != null) {
            wheelView7.abortFinishScroll();
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    public final void b0() {
        Calendar calendar;
        boolean z;
        int i2 = this.F;
        if (i2 == 3) {
            Calendar calendar2 = this.I;
            if (calendar2 == null || this.J == null) {
                if (calendar2 == null) {
                    Calendar calendar3 = this.J;
                    if (calendar3 == null || !this.b.after(calendar3)) {
                        calendar = null;
                        z = false;
                    } else {
                        calendar = (Calendar) this.J.clone();
                        calendar.set(11, 0);
                        calendar.set(12, 0);
                        calendar.set(13, 0);
                        calendar.set(14, 0);
                        z = true;
                    }
                } else if (this.b.before(calendar2)) {
                    calendar = (Calendar) this.I.clone();
                    z = true;
                } else {
                    calendar = null;
                    z = false;
                }
            } else if (this.b.before(calendar2) || this.b.after(this.J)) {
                calendar = (Calendar) this.I.clone();
                z = true;
            } else {
                calendar = null;
                z = false;
            }
        } else if (i2 == 1) {
            if (this.b.before(this.G)) {
                calendar = (Calendar) this.G.clone();
                z = true;
            } else {
                calendar = null;
                z = false;
            }
        } else if (i2 == 2 && this.b.after(this.G)) {
            calendar = (Calendar) this.G.clone();
            z = true;
        } else {
            calendar = null;
            z = false;
        }
        if (!z || calendar == null) {
            return;
        }
        this.b.set(1, calendar.get(1));
        this.b.set(2, calendar.get(2));
        this.b.set(5, calendar.get(5));
        this.b.set(11, calendar.get(11));
        this.b.set(12, calendar.get(12));
        this.b.set(13, 0);
        this.b.set(14, 0);
        z0();
        D0();
        A0();
        B0();
    }

    public final void c0(int i2) {
        this.b.set(5, i2);
        A0();
        B0();
        K();
    }

    public final void d0(int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, 1);
        calendar.set(1, this.b.get(1));
        calendar.set(2, i2);
        int actualMaximum = calendar.getActualMaximum(5);
        if (actualMaximum < this.b.get(5)) {
            this.b.set(5, actualMaximum);
        }
        this.b.set(2, i2);
        z0();
        if (this.e == null) {
            Q();
        }
        this.b.set(5, this.C + this.e.getSelectedItemPosition());
        A0();
        B0();
        K();
    }

    public final void e0() {
        Handler handler = getHandler();
        if (!olb.Y || handler == null || handler.hasCallbacks(this.e0)) {
            return;
        }
        handler.postDelayed(this.e0, 50L);
    }

    public final void f0(int i2) {
        int i3 = this.b.get(2);
        int i4 = i3 + 1;
        int i5 = this.b.get(5);
        this.b.set(1, i2);
        if (i4 == 2 && i5 == 29 && !new GregorianCalendar().isLeapYear(i2)) {
            this.b.set(2, i3);
            this.b.set(5, 28);
        }
        if (this.d != null) {
            v0();
        }
        z0();
        D0();
        A0();
        B0();
        K();
    }

    public void finishEditing() {
        WheelView wheelView = this.h;
        if (wheelView != null) {
            wheelView.finishEditing();
        }
        WheelView wheelView2 = this.i;
        if (wheelView2 != null) {
            wheelView2.finishEditing();
        }
        WheelView wheelView3 = this.c;
        if (wheelView3 != null) {
            wheelView3.finishEditing();
        }
        WheelView wheelView4 = this.e;
        if (wheelView4 != null) {
            wheelView4.finishEditing();
        }
    }

    public final float g0() {
        return olb.E0(getContext(), getMeasuredWidth()) / 328.0f;
    }

    public WheelView getDayWheel() {
        return this.e;
    }

    public int getEndYear() {
        return this.mEndYear;
    }

    public WheelView getFormatWheel() {
        return this.g;
    }

    public WheelView getHourWheel() {
        return this.h;
    }

    public WheelView getMinuteWheel() {
        return this.i;
    }

    public WheelView getMonthDayWheel() {
        return this.f;
    }

    public WheelView getMonthWheel() {
        return this.d;
    }

    public int getStartYear() {
        return this.mStartYear;
    }

    public WheelView getYearWheelView() {
        return this.c;
    }

    public final void h0() {
        P();
        if (this.k != null) {
            K();
        }
    }

    public final void i0() {
        WheelView wheelView = this.e;
        if (wheelView != null) {
            wheelView.setOnWheelChangedListener(this.o);
            this.o = null;
            this.e = null;
        }
    }

    public void init(String str) {
        this.b = Calendar.getInstance();
        init(str, 0);
    }

    public boolean is24Format() {
        return this.t;
    }

    public boolean isRequireRelayout() {
        return this.d0;
    }

    public boolean isSoundEffect() {
        return this.A;
    }

    public final void j0() {
        if (this.g != null) {
            this.j.clear();
            this.g.setOnWheelChangedListener(this.s);
            this.s = null;
            this.g = null;
        }
    }

    public final void k0() {
        WheelView wheelView = this.h;
        if (wheelView != null) {
            wheelView.setOnWheelChangedListener(this.q);
            this.q = null;
            this.h = null;
        }
    }

    public final void l0() {
        WheelView wheelView = this.i;
        if (wheelView != null) {
            wheelView.setOnWheelChangedListener(this.r);
            this.r = null;
            this.i = null;
        }
    }

    public final void m0() {
        WheelView wheelView = this.f;
        if (wheelView != null) {
            wheelView.setOnWheelChangedListener(this.p);
            this.p = null;
            this.f = null;
        }
    }

    public final void n0() {
        WheelView wheelView = this.d;
        if (wheelView != null) {
            wheelView.setOnWheelChangedListener(this.n);
            this.n = null;
            this.mMonthList.clear();
            this.d = null;
        }
    }

    public final void o0() {
        WheelView wheelView = this.c;
        if (wheelView != null) {
            wheelView.setOnWheelChangedListener(this.m);
            this.m = null;
            this.c = null;
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    @Override
    public void onGlobalLayout() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        if (isRequireRelayout()) {
            updateMargins();
        }
    }

    @Override
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    public final void p0() {
        LinearLayout linearLayout;
        if (!X() || (linearLayout = (LinearLayout) findViewById(R.id.os_wheels_parent)) == null) {
            return;
        }
        View viewFindViewById = findViewById(R.id.monthWheel);
        View viewFindViewById2 = findViewById(R.id.dayWheel);
        View viewFindViewById3 = findViewById(R.id.yearWheel);
        View viewFindViewById4 = findViewById(R.id.monthDayWheel);
        View viewFindViewById5 = findViewById(R.id.hourWheel);
        View viewFindViewById6 = findViewById(R.id.minWheel);
        View viewFindViewById7 = findViewById(R.id.formatWheel);
        linearLayout.removeAllViews();
        if (viewFindViewById4 != null) {
            linearLayout.addView(viewFindViewById4);
        }
        if (viewFindViewById6 != null) {
            linearLayout.addView(viewFindViewById6);
        }
        if (viewFindViewById5 != null) {
            linearLayout.addView(viewFindViewById5);
        }
        if (viewFindViewById7 != null) {
            linearLayout.addView(viewFindViewById7);
        }
        if (viewFindViewById2 != null) {
            linearLayout.addView(viewFindViewById2);
        }
        if (viewFindViewById != null) {
            linearLayout.addView(viewFindViewById);
        }
        if (viewFindViewById3 != null) {
            linearLayout.addView(viewFindViewById3);
        }
    }

    public final void q0(int i2) {
        this.M = i2;
        this.N = (1 << i2) | this.N;
        this.b0.removeCallbacks(this.c0);
        this.b0.postDelayed(this.c0, 150L);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x009e  */
    public final void r0() {
        int iMax;
        boolean z;
        int iMin;
        ArrayList arrayList;
        if (this.e == null) {
            return;
        }
        int i2 = this.b.get(1);
        int i3 = this.b.get(2);
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i2);
        calendar.set(2, i3);
        calendar.set(5, 1);
        int actualMaximum = calendar.getActualMaximum(5);
        int i4 = this.G.get(1);
        int i5 = this.G.get(2);
        int i6 = this.G.get(5);
        int i7 = this.F;
        if (i7 == 1) {
            if (i2 == i4 && i3 == i5) {
                iMin = Math.min(i6, actualMaximum);
                z = true;
            } else {
                iMin = 1;
                z = false;
            }
        } else if (i7 == 2) {
            if (i2 == i4 && i3 == i5) {
                actualMaximum = Math.min(i6, actualMaximum);
                z = true;
                iMin = 1;
            } else {
                iMin = 1;
                z = false;
            }
        } else if (i7 == 3) {
            Calendar calendar2 = this.I;
            if (calendar2 != null) {
                int i8 = calendar2.get(1);
                int i9 = this.I.get(2);
                if (i2 == i8 && i3 == i9) {
                    iMax = Math.max(1, Math.min(this.I.get(5), actualMaximum));
                    z = true;
                } else {
                    iMax = 1;
                    z = false;
                }
            } else {
                iMax = 1;
                z = false;
            }
            Calendar calendar3 = this.J;
            if (calendar3 != null) {
                int i10 = calendar3.get(1);
                int i11 = this.J.get(2);
                if (i2 == i10 && i3 == i11) {
                    actualMaximum = Math.min(actualMaximum, Math.min(this.J.get(5), actualMaximum));
                    z = true;
                }
            }
            iMin = iMax;
        } else {
            iMin = 1;
            z = false;
        }
        boolean z2 = (iMin == this.S && actualMaximum == this.T) ? false : true;
        if (z2) {
            this.S = iMin;
            this.T = actualMaximum;
            arrayList = new ArrayList();
            for (int i12 = iMin; i12 <= actualMaximum; i12++) {
                arrayList.add(Integer.valueOf(i12));
            }
        } else {
            arrayList = null;
        }
        ArrayList arrayList2 = arrayList;
        int i13 = this.b.get(5);
        int i14 = i13 < iMin ? iMin : i13;
        int i15 = i14 > actualMaximum ? actualMaximum : i14;
        I(this.e, arrayList2, i15 - iMin, z2, i15 != i13, !z, this.o);
        this.b.set(5, i15);
        this.C = iMin;
    }

    public void release() {
        o0();
        n0();
        i0();
        m0();
        k0();
        l0();
        j0();
    }

    /* JADX WARN: Code duplicated, block: B:68:0x010d  */
    public final void s0() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int iMin;
        ArrayList arrayList;
        boolean z5;
        ArrayList arrayList2;
        if (this.h == null) {
            return;
        }
        boolean zY = Y();
        int iMax = this.G.get(11);
        if (this.t) {
            int i2 = this.F;
            int iMin2 = 23;
            if (i2 == 1 && zY) {
                z5 = true;
            } else {
                if (i2 == 2 && zY) {
                    iMin2 = iMax;
                    z5 = true;
                } else {
                    z5 = false;
                }
                iMax = 0;
            }
            if (i2 == 3) {
                int i3 = this.b.get(1);
                int i4 = this.b.get(2);
                int i5 = this.b.get(5);
                Calendar calendar = this.I;
                if (calendar != null && i3 == calendar.get(1) && i4 == this.I.get(2) && i5 == this.I.get(5)) {
                    iMax = Math.max(iMax, this.I.get(11));
                    z5 = true;
                }
                Calendar calendar2 = this.J;
                if (calendar2 != null && i3 == calendar2.get(1) && i4 == this.J.get(2) && i5 == this.J.get(5)) {
                    iMin2 = Math.min(iMin2, this.J.get(11));
                    z5 = true;
                }
            }
            boolean z6 = (iMax == this.Q && iMin2 == this.R) ? false : true;
            if (z6) {
                this.Q = iMax;
                this.R = iMin2;
                arrayList2 = new ArrayList();
                for (int i6 = iMax; i6 <= iMin2; i6++) {
                    arrayList2.add(Integer.valueOf(i6));
                }
            } else {
                arrayList2 = null;
            }
            int i7 = this.b.get(11);
            int i8 = i7 < iMax ? iMax : i7;
            if (i8 <= iMin2) {
                iMin2 = i8;
            }
            I(this.h, arrayList2, iMin2 - iMax, z6, iMin2 != i7, !z5, this.q);
            this.b.set(11, iMin2);
            return;
        }
        int i9 = this.G.get(9);
        int iMax2 = ((this.G.get(10) + 11) % 12) + 1;
        int i10 = this.b.get(9);
        if (zY) {
            int i11 = this.F;
            if (i11 == 1 && i9 == 1) {
                z2 = true;
                z = false;
            } else {
                if (i11 == 2 && i9 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                z2 = false;
            }
        } else {
            z = false;
            z2 = false;
        }
        if (this.F == 3) {
            int i12 = this.b.get(1);
            int i13 = this.b.get(2);
            int i14 = this.b.get(5);
            Calendar calendar3 = this.I;
            boolean z7 = calendar3 != null && i12 == calendar3.get(1) && i13 == this.I.get(2) && i14 == this.I.get(5);
            Calendar calendar4 = this.J;
            boolean z8 = calendar4 != null && i12 == calendar4.get(1) && i13 == this.J.get(2) && i14 == this.J.get(5);
            if (z7 && this.I.get(9) == 1) {
                z2 = true;
            }
            if (z8 && this.J.get(9) == 0) {
                z = true;
            }
        }
        boolean z9 = z || z2;
        WheelView wheelView = this.g;
        if (wheelView != null) {
            WheelView.g gVar = this.s;
            wheelView.setOnWheelChangedListener(null);
            this.j.clear();
            if (!z9) {
                z3 = false;
                this.j.add(N(true));
                this.j.add(N(false));
                this.g.setData(this.j);
                this.g.setSelectedItemPosition(i10);
            } else if (z) {
                this.j.add(N(true));
                this.g.setData(this.j);
                z3 = false;
                this.g.setSelectedItemPosition(0);
                this.b.set(9, 0);
                i10 = 0;
            } else {
                z3 = false;
                this.j.add(N(false));
                this.g.setData(this.j);
                this.g.setSelectedItemPosition(0);
                this.b.set(9, 1);
                i10 = 1;
            }
            this.g.setOnWheelChangedListener(gVar);
        } else {
            z3 = false;
        }
        if (zY) {
            int i15 = this.F;
            if (i15 == 1) {
                if (i10 < i9) {
                    this.b.set(9, i9);
                    WheelView wheelView2 = this.g;
                    if (wheelView2 != null) {
                        WheelView.g gVar2 = this.s;
                        wheelView2.setOnWheelChangedListener(null);
                        this.g.setSelectedItemPosition(i9);
                        this.g.setOnWheelChangedListener(gVar2);
                    }
                    i10 = i9;
                }
                if (i10 == i9) {
                    z4 = true;
                }
                iMin = 12;
            } else if (i15 == 2) {
                if (i10 > i9) {
                    this.b.set(9, i9);
                    WheelView wheelView3 = this.g;
                    if (wheelView3 != null) {
                        WheelView.g gVar3 = this.s;
                        wheelView3.setOnWheelChangedListener(null);
                        this.g.setSelectedItemPosition(i9);
                        this.g.setOnWheelChangedListener(gVar3);
                    }
                    i10 = i9;
                }
                if (i10 == i9) {
                    z4 = true;
                    iMin = iMax2;
                    iMax2 = 1;
                }
            }
            z4 = z3;
            iMax2 = 1;
            iMin = 12;
        } else {
            z4 = z3;
            iMax2 = 1;
            iMin = 12;
        }
        if (this.F == 3) {
            int i16 = this.b.get(1);
            int i17 = this.b.get(2);
            int i18 = this.b.get(5);
            Calendar calendar5 = this.I;
            if (calendar5 != null && i16 == calendar5.get(1) && i17 == this.I.get(2) && i18 == this.I.get(5)) {
                int i19 = this.I.get(9);
                int i20 = ((this.I.get(10) + 11) % 12) + 1;
                if (i10 == i19) {
                    iMax2 = Math.max(iMax2, i20);
                    z4 = true;
                }
            }
            Calendar calendar6 = this.J;
            if (calendar6 != null && i16 == calendar6.get(1) && i17 == this.J.get(2) && i18 == this.J.get(5)) {
                int i21 = this.J.get(9);
                int i22 = ((this.J.get(10) + 11) % 12) + 1;
                if (i10 == i21) {
                    iMin = Math.min(iMin, i22);
                    z4 = true;
                }
            }
        }
        boolean z10 = (iMax2 == this.Q && iMin == this.R) ? z3 : true;
        if (z10) {
            this.Q = iMax2;
            this.R = iMin;
            arrayList = new ArrayList();
            for (int i23 = iMax2; i23 <= iMin; i23++) {
                arrayList.add(Integer.valueOf(i23));
            }
        } else {
            arrayList = null;
        }
        int i24 = ((this.b.get(10) + 11) % 12) + 1;
        int i25 = i24 < iMax2 ? iMax2 : i24;
        int i26 = i25 > iMin ? iMin : i25;
        I(this.h, arrayList, i26 - iMax2, z10, i26 != i24 ? true : z3, !z4, this.q);
        this.b.set(10, i26 % 12);
        this.B = i26;
    }

    public void setBlackMode() {
        WheelView wheelView = this.i;
        if (wheelView != null) {
            wheelView.setBlackMode();
        }
        WheelView wheelView2 = this.h;
        if (wheelView2 != null) {
            wheelView2.setBlackMode();
        }
        WheelView wheelView3 = this.e;
        if (wheelView3 != null) {
            wheelView3.setBlackMode();
        }
        WheelView wheelView4 = this.d;
        if (wheelView4 != null) {
            wheelView4.setBlackMode();
        }
        WheelView wheelView5 = this.c;
        if (wheelView5 != null) {
            wheelView5.setBlackMode();
        }
        WheelView wheelView6 = this.f;
        if (wheelView6 != null) {
            wheelView6.setBlackMode();
        }
        WheelView wheelView7 = this.g;
        if (wheelView7 != null) {
            wheelView7.setBlackMode();
        }
    }

    public void setCustomLimit(Calendar calendar, Calendar calendar2) {
        if (calendar == null && calendar2 == null) {
            this.I = null;
            this.J = null;
            return;
        }
        Calendar calendar3 = calendar != null ? (Calendar) calendar.clone() : null;
        Calendar calendar4 = calendar2 != null ? (Calendar) calendar2.clone() : null;
        if (calendar3 != null && calendar4 != null && calendar3.after(calendar4)) {
            Calendar calendar5 = calendar4;
            calendar4 = calendar3;
            calendar3 = calendar5;
        }
        this.I = calendar3;
        this.J = calendar4;
        if (this.F == 3) {
            b0();
            if (this.d != null) {
                v0();
            }
            z0();
            D0();
            A0();
            B0();
            K();
        }
    }

    public void setMarginStart(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        WheelView wheelView = this.d;
        if (wheelView != null && i3 != 0 && ((LinearLayout.LayoutParams) wheelView.getLayoutParams()).getMarginStart() != i3) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.d.getLayoutParams();
            layoutParams.setMarginStart(i3);
            this.d.setLayoutParams(layoutParams);
        }
        WheelView wheelView2 = this.e;
        if (wheelView2 != null && i4 != 0 && ((LinearLayout.LayoutParams) wheelView2.getLayoutParams()).getMarginStart() != i4) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.e.getLayoutParams();
            layoutParams2.setMarginStart(i4);
            this.e.setLayoutParams(layoutParams2);
        }
        WheelView wheelView3 = this.f;
        if (wheelView3 != null && i5 != 0 && ((LinearLayout.LayoutParams) wheelView3.getLayoutParams()).getMarginStart() != i5) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f.getLayoutParams();
            layoutParams3.setMarginStart(i5);
            this.f.setLayoutParams(layoutParams3);
        }
        WheelView wheelView4 = this.c;
        if (wheelView4 != null && i2 != 0 && ((LinearLayout.LayoutParams) wheelView4.getLayoutParams()).getMarginStart() != i2) {
            LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) this.c.getLayoutParams();
            layoutParams4.setMarginStart(i2);
            this.c.setLayoutParams(layoutParams4);
        }
        WheelView wheelView5 = this.h;
        if (wheelView5 != null && i6 != 0 && ((LinearLayout.LayoutParams) wheelView5.getLayoutParams()).getMarginStart() != i6) {
            LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.h.getLayoutParams();
            layoutParams5.setMarginStart(i6);
            this.h.setLayoutParams(layoutParams5);
        }
        WheelView wheelView6 = this.i;
        if (wheelView6 != null && i7 != 0 && ((LinearLayout.LayoutParams) wheelView6.getLayoutParams()).getMarginStart() != i7) {
            LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) this.i.getLayoutParams();
            layoutParams6.setMarginStart(i7);
            this.i.setLayoutParams(layoutParams6);
        }
        WheelView wheelView7 = this.g;
        if (wheelView7 == null || i8 == 0 || ((LinearLayout.LayoutParams) wheelView7.getLayoutParams()).getMarginStart() == i8) {
            return;
        }
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) this.g.getLayoutParams();
        layoutParams7.setMarginStart(i8);
        this.g.setLayoutParams(layoutParams7);
    }

    public void setOnDateChangeListener(j jVar) {
        this.k = jVar;
        K();
    }

    public void setOnDialogDismissListener(WheelView.d dVar) {
        WheelView wheelView = this.c;
        if (wheelView != null) {
            wheelView.setOnDialogDismissListener(dVar);
        }
        WheelView wheelView2 = this.e;
        if (wheelView2 != null) {
            wheelView2.setOnDialogDismissListener(dVar);
        }
        WheelView wheelView3 = this.h;
        if (wheelView3 != null) {
            wheelView3.setOnDialogDismissListener(dVar);
        }
        WheelView wheelView4 = this.i;
        if (wheelView4 != null) {
            wheelView4.setOnDialogDismissListener(dVar);
        }
    }

    public void setOnWheelInvalidInputListener(k kVar) {
        J();
    }

    public void setRequireRelayout(boolean z) {
        this.d0 = z;
    }

    public void setSoundEffect(boolean z) {
        this.A = z;
        WheelView wheelView = this.i;
        if (wheelView != null) {
            wheelView.setSoundEffect(z);
        }
        WheelView wheelView2 = this.h;
        if (wheelView2 != null) {
            wheelView2.setSoundEffect(z);
        }
        WheelView wheelView3 = this.e;
        if (wheelView3 != null) {
            wheelView3.setSoundEffect(z);
        }
        WheelView wheelView4 = this.d;
        if (wheelView4 != null) {
            wheelView4.setSoundEffect(z);
        }
        WheelView wheelView5 = this.c;
        if (wheelView5 != null) {
            wheelView5.setSoundEffect(z);
        }
        WheelView wheelView6 = this.f;
        if (wheelView6 != null) {
            wheelView6.setSoundEffect(z);
        }
        WheelView wheelView7 = this.g;
        if (wheelView7 != null) {
            wheelView7.setSoundEffect(z);
        }
    }

    @SuppressLint({"ResourceType"})
    public void setSoundEffectResource(@RawRes int i2) {
        WheelView wheelView = this.i;
        if (wheelView != null) {
            wheelView.setSoundEffectResource(i2);
        }
        WheelView wheelView2 = this.h;
        if (wheelView2 != null) {
            wheelView2.setSoundEffectResource(i2);
        }
        WheelView wheelView3 = this.e;
        if (wheelView3 != null) {
            wheelView3.setSoundEffectResource(i2);
        }
        WheelView wheelView4 = this.d;
        if (wheelView4 != null) {
            wheelView4.setSoundEffectResource(i2);
        }
        WheelView wheelView5 = this.c;
        if (wheelView5 != null) {
            wheelView5.setSoundEffectResource(i2);
        }
        WheelView wheelView6 = this.f;
        if (wheelView6 != null) {
            wheelView6.setSoundEffectResource(i2);
        }
        WheelView wheelView7 = this.g;
        if (wheelView7 != null) {
            wheelView7.setSoundEffectResource(i2);
        }
    }

    public void setTimeLimitType(int i2) {
        if (this.F == i2) {
            return;
        }
        this.F = i2;
        b0();
        if (this.d != null) {
            v0();
        }
        z0();
        D0();
        A0();
        B0();
        K();
    }

    public void setWheelBackgroundColor(int i2) {
        w0(this.c, i2);
        w0(this.d, i2);
        w0(this.e, i2);
        w0(this.f, i2);
        w0(this.g, i2);
        w0(this.h, i2);
        w0(this.i, i2);
    }

    public void setWheelBackgroundColorRes(int i2) {
        Context context = this.v;
        if (context != null) {
            setWheelBackgroundColor(ContextCompat.getColor(context, i2));
        }
    }

    public void setWheelTextColor(int i2, int i3) {
        x0(this.c, i2, i3);
        x0(this.d, i2, i3);
        x0(this.e, i2, i3);
        x0(this.f, i2, i3);
        x0(this.g, i2, i3);
        x0(this.h, i2, i3);
        x0(this.i, i2, i3);
    }

    public void setWheelWidth() {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.picker_wheel_width_month);
        if (this.d != null && O(dimensionPixelSize) != this.d.getMeasuredWidth()) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.d.getLayoutParams();
            layoutParams.width = O(dimensionPixelSize);
            this.d.setLayoutParams(layoutParams);
        }
        Resources resources = getResources();
        int i2 = R.dimen.picker_wheel_width_day;
        int dimensionPixelSize2 = resources.getDimensionPixelSize(i2);
        if (this.e != null && O(dimensionPixelSize2) != this.e.getMeasuredWidth()) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.e.getLayoutParams();
            layoutParams2.width = O(getResources().getDimensionPixelSize(i2));
            this.e.setLayoutParams(layoutParams2);
        }
        Resources resources2 = getResources();
        int i3 = R.dimen.picker_wheel_width_month_day;
        int dimensionPixelSize3 = resources2.getDimensionPixelSize(i3);
        if (this.f != null && O(dimensionPixelSize3) != this.f.getMeasuredWidth()) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f.getLayoutParams();
            layoutParams3.width = O(getResources().getDimensionPixelSize(i3));
            this.f.setLayoutParams(layoutParams3);
        }
        Resources resources3 = getResources();
        int i4 = R.dimen.picker_wheel_width_year;
        int dimensionPixelSize4 = resources3.getDimensionPixelSize(i4);
        if (this.c != null && O(dimensionPixelSize4) != this.c.getMeasuredWidth()) {
            LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) this.c.getLayoutParams();
            layoutParams4.width = O(getResources().getDimensionPixelSize(i4));
            this.c.setLayoutParams(layoutParams4);
        }
        Resources resources4 = getResources();
        int i5 = R.dimen.picker_wheel_width_hour;
        int dimensionPixelSize5 = resources4.getDimensionPixelSize(i5);
        if (this.h != null && O(dimensionPixelSize5) != this.h.getMeasuredWidth()) {
            LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.h.getLayoutParams();
            layoutParams5.width = O(getResources().getDimensionPixelSize(i5));
            this.h.setLayoutParams(layoutParams5);
        }
        Resources resources5 = getResources();
        int i6 = R.dimen.picker_wheel_width_minute;
        int dimensionPixelSize6 = resources5.getDimensionPixelSize(i6);
        if (this.i != null && O(dimensionPixelSize6) != this.i.getMeasuredWidth()) {
            LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) this.i.getLayoutParams();
            layoutParams6.width = O(getResources().getDimensionPixelSize(i6));
            this.i.setLayoutParams(layoutParams6);
        }
        Resources resources6 = getResources();
        int i7 = R.dimen.picker_wheel_width_format;
        int dimensionPixelSize7 = resources6.getDimensionPixelSize(i7);
        if (this.g == null || O(dimensionPixelSize7) == this.g.getMeasuredWidth()) {
            return;
        }
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) this.g.getLayoutParams();
        layoutParams7.width = O(getResources().getDimensionPixelSize(i7));
        this.g.setLayoutParams(layoutParams7);
    }

    public void setYearDuration(int i2, int i3) {
        if (i3 < i2) {
            return;
        }
        this.mStartYear = i2;
        this.mEndYear = i3;
        if (this.I == null) {
            this.I = Calendar.getInstance();
        }
        if (this.J == null) {
            this.J = Calendar.getInstance();
        }
        this.I.set(1, i2);
        this.J.set(1, i3);
        WheelView wheelView = this.c;
        if (wheelView != null) {
            WheelView.g gVar = this.m;
            wheelView.setOnWheelChangedListener(null);
            ArrayList arrayList = new ArrayList();
            for (int i4 = this.mStartYear; i4 <= this.mEndYear; i4++) {
                arrayList.add(Integer.valueOf(i4));
            }
            this.c.setData(arrayList);
            int iMax = Math.max(this.mStartYear, Math.min(this.b.get(1), this.mEndYear));
            this.c.setSelectedItemPosition(iMax - this.mStartYear);
            this.b.set(1, iMax);
            this.c.setOnWheelChangedListener(gVar);
            if (this.d != null) {
                v0();
            }
            z0();
            D0();
            A0();
            B0();
            K();
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
    public final void t0() {
        boolean z;
        ArrayList arrayList;
        if (this.i == null) {
            return;
        }
        boolean zY = Y();
        int i2 = this.G.get(11);
        int iMax = this.G.get(12);
        int selectedHourOfDay = getSelectedHourOfDay();
        int iMin = 59;
        if (zY) {
            int i3 = this.F;
            if (i3 == 1) {
                if (selectedHourOfDay == i2) {
                    z = true;
                } else {
                    z = false;
                    iMax = 0;
                }
            } else if (i3 == 2 && selectedHourOfDay == i2) {
                iMin = iMax;
                iMax = 0;
                z = true;
            } else {
                z = false;
                iMax = 0;
            }
        } else {
            z = false;
            iMax = 0;
        }
        if (this.F == 3) {
            int i4 = this.b.get(1);
            int i5 = this.b.get(2);
            int i6 = this.b.get(5);
            Calendar calendar = this.I;
            if (calendar != null && i4 == calendar.get(1) && i5 == this.I.get(2) && i6 == this.I.get(5) && selectedHourOfDay == this.I.get(11)) {
                iMax = Math.max(iMax, this.I.get(12));
                z = true;
            }
            Calendar calendar2 = this.J;
            if (calendar2 != null && i4 == calendar2.get(1) && i5 == this.J.get(2) && i6 == this.J.get(5) && selectedHourOfDay == this.J.get(11)) {
                iMin = Math.min(iMin, this.J.get(12));
                z = true;
            }
        }
        boolean z2 = (iMax == this.O && iMin == this.P) ? false : true;
        if (z2) {
            this.O = iMax;
            this.P = iMin;
            arrayList = new ArrayList();
            for (int i7 = iMax; i7 <= iMin; i7++) {
                arrayList.add(Integer.valueOf(i7));
            }
        } else {
            arrayList = null;
        }
        ArrayList arrayList2 = arrayList;
        int i8 = this.b.get(12);
        int i9 = i8 < iMax ? iMax : i8;
        if (i9 <= iMin) {
            iMin = i9;
        }
        I(this.i, arrayList2, iMin - iMax, z2, iMin != i8, !z, this.r);
        this.b.set(12, iMin);
    }

    public final void u0() {
        int iMin;
        int iMax;
        WheelView wheelView = this.f;
        if (wheelView == null) {
            return;
        }
        WheelView.g gVar = this.p;
        wheelView.setOnWheelChangedListener(null);
        this.f.abortFinishScroll();
        int i2 = this.b.get(1);
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i2);
        calendar.set(6, 1);
        int actualMaximum = calendar.getActualMaximum(6);
        int i3 = this.G.get(1);
        int i4 = this.G.get(6);
        ArrayList arrayList = new ArrayList();
        int i5 = this.F;
        if (i5 == 1) {
            if (i2 == i3) {
                iMax = Math.min(i4, actualMaximum);
                StringBuilder sb = new StringBuilder();
                sb.append("maxDaysOfYear: ");
                int i6 = actualMaximum - iMax;
                sb.append(i6);
                Log.d("OSDateTimePicker", sb.toString());
                for (int i7 = iMax; i7 <= actualMaximum; i7++) {
                    arrayList.add(Integer.valueOf(i7));
                }
                arrayList.add(1);
                arrayList.add(2);
                arrayList.add(3);
                arrayList.add(4);
                if (this.K) {
                    this.E = true;
                    this.f.safeResetScrollOffsetY(i6 + 1);
                    this.K = false;
                }
            } else {
                iMax = 1;
            }
        } else if (i5 == 2) {
            if (i2 == i3) {
                iMin = Math.min(i4, actualMaximum);
                arrayList.add(Integer.valueOf(Math.max(1, actualMaximum - 3)));
                arrayList.add(Integer.valueOf(Math.max(1, actualMaximum - 2)));
                arrayList.add(Integer.valueOf(Math.max(1, actualMaximum - 1)));
                arrayList.add(Integer.valueOf(actualMaximum));
                for (int i8 = 1; i8 <= iMin; i8++) {
                    arrayList.add(Integer.valueOf(i8));
                }
                if (this.K) {
                    this.E = true;
                    this.f.safeResetScrollOffsetY(4);
                    this.K = false;
                }
                actualMaximum = iMin;
            }
            iMax = 1;
        } else {
            if (i5 == 3) {
                Calendar calendar2 = this.I;
                if (calendar2 != null || this.J != null) {
                    int i9 = this.mStartYear;
                    int i10 = this.mEndYear;
                    if (calendar2 != null) {
                        i9 = calendar2.get(1);
                    }
                    Calendar calendar3 = this.J;
                    if (calendar3 != null) {
                        i10 = calendar3.get(1);
                    }
                    Calendar calendar4 = this.I;
                    if (calendar4 != null && this.J != null && i9 == i10 && i2 == i9) {
                        iMax = Math.max(1, Math.min(calendar4.get(6), actualMaximum));
                        actualMaximum = Math.min(actualMaximum, Math.min(this.J.get(6), actualMaximum));
                        for (int i11 = iMax; i11 <= actualMaximum; i11++) {
                            arrayList.add(Integer.valueOf(i11));
                        }
                    } else if (calendar4 == null || i2 != i9) {
                        Calendar calendar5 = this.J;
                        if (calendar5 == null || i2 != i10) {
                            for (int i12 = 1; i12 <= actualMaximum; i12++) {
                                arrayList.add(Integer.valueOf(i12));
                            }
                        } else {
                            iMin = Math.min(actualMaximum, Math.min(calendar5.get(6), actualMaximum));
                            arrayList.add(Integer.valueOf(Math.max(1, actualMaximum - 3)));
                            arrayList.add(Integer.valueOf(Math.max(1, actualMaximum - 2)));
                            arrayList.add(Integer.valueOf(Math.max(1, actualMaximum - 1)));
                            arrayList.add(Integer.valueOf(actualMaximum));
                            for (int i13 = 1; i13 <= iMin; i13++) {
                                arrayList.add(Integer.valueOf(i13));
                            }
                            if (this.K) {
                                this.E = true;
                                this.f.safeResetScrollOffsetY(4);
                                this.K = false;
                            }
                            actualMaximum = iMin;
                        }
                    } else {
                        iMax = Math.max(1, Math.min(calendar4.get(6), actualMaximum));
                        for (int i14 = iMax; i14 <= actualMaximum; i14++) {
                            arrayList.add(Integer.valueOf(i14));
                        }
                        arrayList.add(1);
                        arrayList.add(2);
                        arrayList.add(3);
                        arrayList.add(4);
                        if (this.K) {
                            this.E = true;
                            this.f.safeResetScrollOffsetY((actualMaximum - iMax) + 1);
                        }
                    }
                }
            } else {
                for (int i15 = 1; i15 <= actualMaximum; i15++) {
                    arrayList.add(Integer.valueOf(i15));
                }
            }
            iMax = 1;
        }
        boolean z = (iMax == 1 && actualMaximum == this.b.getActualMaximum(6)) ? false : true;
        int i16 = this.b.get(6);
        if (i16 < iMax) {
            i16 = iMax;
        }
        if (i16 > actualMaximum) {
            i16 = actualMaximum;
        }
        int i17 = 0;
        while (true) {
            if (i17 >= arrayList.size()) {
                i17 = 0;
                break;
            } else if (((Integer) arrayList.get(i17)).intValue() == i16) {
                break;
            } else {
                i17++;
            }
        }
        boolean z2 = (iMax == this.W && actualMaximum == this.a0 && !this.K) ? false : true;
        if (z2) {
            this.W = iMax;
            this.a0 = actualMaximum;
            this.f.setData(arrayList);
            this.f.setCyclic(!z);
        }
        boolean z3 = i16 != this.b.get(6);
        if (z2 || z3) {
            WheelView wheelView2 = this.f;
            if (!wheelView2.mIsTouchStatus) {
                wheelView2.abortFinishScroll();
                this.f.setSelectedItemPosition(i17);
            } else if (this.K) {
                wheelView2.safeResetScrollOffsetY(i17 + 1);
            } else {
                wheelView2.safeResetScrollOffsetY(i17);
            }
        }
        this.K = false;
        Log.d(this.x, "setMonthDayWheelDataByLimit: " + i17);
        this.b.set(6, i16);
        this.D = iMax;
        this.f.setOnWheelChangedListener(gVar);
    }

    public void updateDate(int i2, int i3, int i4) {
        Calendar calendar = this.b;
        if (calendar != null) {
            calendar.set(1, i2);
            this.b.set(2, i3);
            this.b.set(5, i4);
            release();
            h0();
        }
    }

    public void updateDateTime(int i2, int i3, int i4, int i5, int i6) {
        Calendar calendar = this.b;
        if (calendar != null) {
            calendar.set(1, i2);
            this.b.set(2, i3);
            this.b.set(5, i4);
            this.b.set(11, i5);
            this.b.set(12, i6);
            release();
            h0();
        }
    }

    public void updateMargins() {
        String str = this.u;
        str.hashCode();
        switch (str) {
            case "MM-dd HH:mm":
                if (this.t) {
                    this.g.setVisibility(8);
                    WheelView wheelView = this.f;
                    if (wheelView != null) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) wheelView.getLayoutParams();
                        layoutParams.width = 0;
                        layoutParams.weight = 0.4f;
                        this.f.setLayoutParams(layoutParams);
                    }
                    WheelView wheelView2 = this.h;
                    if (wheelView2 != null) {
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) wheelView2.getLayoutParams();
                        layoutParams2.width = 0;
                        layoutParams2.weight = 0.2f;
                        this.h.setLayoutParams(layoutParams2);
                    }
                    WheelView wheelView3 = this.i;
                    if (wheelView3 != null) {
                        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) wheelView3.getLayoutParams();
                        layoutParams3.width = 0;
                        layoutParams3.weight = 0.26f;
                        this.i.setLayoutParams(layoutParams3);
                    }
                    break;
                } else {
                    this.g.setVisibility(0);
                    WheelView wheelView4 = this.f;
                    if (wheelView4 != null) {
                        LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) wheelView4.getLayoutParams();
                        layoutParams4.width = 0;
                        layoutParams4.weight = 0.37f;
                        this.f.setLayoutParams(layoutParams4);
                    }
                    WheelView wheelView5 = this.h;
                    if (wheelView5 != null) {
                        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) wheelView5.getLayoutParams();
                        layoutParams5.width = 0;
                        layoutParams5.weight = 0.15f;
                        this.h.setLayoutParams(layoutParams5);
                    }
                    WheelView wheelView6 = this.i;
                    if (wheelView6 != null) {
                        LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) wheelView6.getLayoutParams();
                        layoutParams6.width = 0;
                        layoutParams6.weight = 0.15f;
                        this.i.setLayoutParams(layoutParams6);
                    }
                    WheelView wheelView7 = this.g;
                    if (wheelView7 != null) {
                        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) wheelView7.getLayoutParams();
                        layoutParams7.width = 0;
                        layoutParams7.weight = 0.27f;
                        this.g.setLayoutParams(layoutParams7);
                    }
                    break;
                }
                break;
            case "yyyy-MM-dd":
                WheelView wheelView8 = this.d;
                if (wheelView8 != null) {
                    LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) wheelView8.getLayoutParams();
                    layoutParams8.width = 0;
                    layoutParams8.weight = 0.33f;
                    this.d.setLayoutParams(layoutParams8);
                }
                WheelView wheelView9 = this.c;
                if (wheelView9 != null) {
                    LinearLayout.LayoutParams layoutParams9 = (LinearLayout.LayoutParams) wheelView9.getLayoutParams();
                    layoutParams9.width = 0;
                    layoutParams9.weight = 0.33f;
                    this.c.setLayoutParams(layoutParams9);
                }
                WheelView wheelView10 = this.e;
                if (wheelView10 != null) {
                    LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) wheelView10.getLayoutParams();
                    layoutParams10.width = 0;
                    layoutParams10.weight = 0.2f;
                    this.e.setLayoutParams(layoutParams10);
                    break;
                }
                break;
            case "HH:mm":
                if (this.t) {
                    this.g.setVisibility(8);
                    WheelView wheelView11 = this.h;
                    if (wheelView11 != null) {
                        LinearLayout.LayoutParams layoutParams11 = (LinearLayout.LayoutParams) wheelView11.getLayoutParams();
                        layoutParams11.width = 0;
                        layoutParams11.weight = 0.43f;
                        this.h.setLayoutParams(layoutParams11);
                    }
                    WheelView wheelView12 = this.i;
                    if (wheelView12 != null) {
                        LinearLayout.LayoutParams layoutParams12 = (LinearLayout.LayoutParams) wheelView12.getLayoutParams();
                        layoutParams12.width = 0;
                        layoutParams12.weight = 0.43f;
                        this.i.setLayoutParams(layoutParams12);
                    }
                    break;
                } else {
                    this.g.setVisibility(0);
                    WheelView wheelView13 = this.h;
                    if (wheelView13 != null) {
                        LinearLayout.LayoutParams layoutParams13 = (LinearLayout.LayoutParams) wheelView13.getLayoutParams();
                        layoutParams13.width = 0;
                        layoutParams13.weight = 0.29f;
                        this.h.setLayoutParams(layoutParams13);
                    }
                    WheelView wheelView14 = this.i;
                    if (wheelView14 != null) {
                        LinearLayout.LayoutParams layoutParams14 = (LinearLayout.LayoutParams) wheelView14.getLayoutParams();
                        layoutParams14.width = 0;
                        layoutParams14.weight = 0.29f;
                        this.i.setLayoutParams(layoutParams14);
                    }
                    WheelView wheelView15 = this.g;
                    if (wheelView15 != null) {
                        LinearLayout.LayoutParams layoutParams15 = (LinearLayout.LayoutParams) wheelView15.getLayoutParams();
                        layoutParams15.width = 0;
                        layoutParams15.weight = 0.27f;
                        this.g.setLayoutParams(layoutParams15);
                    }
                    break;
                }
                break;
        }
    }

    public void updateTime(int i2, int i3) {
        Calendar calendar = this.b;
        if (calendar != null) {
            calendar.set(11, i2);
            this.b.set(12, i3);
            release();
            h0();
        }
    }

    public final void v0() {
        Calendar calendar;
        boolean z;
        int i2 = this.G.get(1);
        int i3 = this.G.get(2);
        int i4 = this.b.get(1);
        int i5 = this.F;
        int iMin = 11;
        if (i5 != 1) {
            if (i5 == 2) {
                if (i4 == i2) {
                    iMin = Math.min(11, i3);
                }
            } else if (i5 == 3 && (calendar = this.I) != null && this.J != null) {
                int i6 = calendar.get(1);
                int i7 = this.J.get(1);
                int i8 = i4 == i6 ? this.I.get(2) : 0;
                iMin = i4 == i7 ? this.J.get(2) : 11;
                i3 = i8;
            }
            i3 = 0;
        } else if (i4 != i2) {
            i3 = 0;
        }
        boolean z2 = (i3 == this.U && iMin == this.V) ? false : true;
        ArrayList arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        if (z2) {
            this.U = i3;
            this.V = iMin;
            while (i3 <= iMin) {
                arrayList.add(this.mMonthList.get(i3));
                arrayList2.add(Integer.valueOf(i3));
                i3++;
            }
            this.H = arrayList2;
        } else {
            List list = this.H;
            if (list == null) {
                while (i3 <= iMin) {
                    arrayList2.add(Integer.valueOf(i3));
                    i3++;
                }
                this.H = arrayList2;
            } else {
                arrayList2 = list;
            }
        }
        int iIndexOf = arrayList2.indexOf(Integer.valueOf(this.b.get(2)));
        if (iIndexOf < 0) {
            iIndexOf = this.F == 2 ? arrayList2.size() - 1 : 0;
            this.b.set(2, ((Integer) arrayList2.get(iIndexOf)).intValue());
            z = true;
        } else {
            z = false;
        }
        WheelView wheelView = this.d;
        if (!z2) {
            arrayList = null;
        }
        I(wheelView, arrayList, iIndexOf, z2, z, arrayList2.size() >= 12, this.n);
    }

    public final void w0(WheelView wheelView, int i2) {
        if (wheelView != null) {
            wheelView.setWheelBackgroundColor(i2);
        }
    }

    public final void x0(WheelView wheelView, int i2, int i3) {
        if (wheelView != null) {
            wheelView.setTextSecondColor(i2);
            wheelView.setTextSelectColor(i3);
        }
    }

    public final void y0() {
        CharSequence text;
        int i2 = this.F;
        if (i2 == 1) {
            text = this.v.getText(R.string.os_date_time_future_limit);
        } else {
            text = i2 == 2 ? this.v.getText(R.string.os_date_time_past_limit) : this.v.getText(R.string.os_date_time_valid_limit);
        }
        Toast toast = new Toast(this.v);
        TextView textView = new TextView(this.v);
        textView.setText(text);
        textView.setTextColor(getResources().getColor(R.color.os_toast_text_color));
        textView.setCompoundDrawablePadding(olb.h(this.v, 8));
        try {
            Drawable applicationIcon = this.v.getPackageManager().getApplicationIcon(this.v.getApplicationInfo());
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_fontsize_icon);
            applicationIcon.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            textView.setCompoundDrawables(applicationIcon, null, null, null);
        } catch (Exception unused) {
        }
        textView.setBackgroundResource(R.drawable.os_toast_background);
        toast.setView(textView);
        toast.setDuration(0);
        toast.show();
    }

    public final void z0() {
        if (this.e != null) {
            r0();
        }
    }

    public void init(Calendar calendar, String str, int i2) {
        if (calendar == null) {
            calendar = Calendar.getInstance();
        }
        this.b = calendar;
        init(str, i2);
    }

    public void init(Calendar calendar, String str) {
        if (calendar == null) {
            calendar = Calendar.getInstance();
        }
        this.b = calendar;
        init(str, 0);
    }

    public void init(String str, int i2) {
        this.O = -1;
        this.P = -1;
        this.Q = -1;
        this.R = -1;
        this.u = str;
        this.F = i2;
        LayoutInflater.from(this.v).inflate(R.layout.os_picker_date_layout, (ViewGroup) this, true);
        int i3 = this.F;
        if (i3 == 2) {
            this.mStartYear = START_YEAR;
            setYearDuration(START_YEAR, this.G.get(1));
        } else if (i3 == 1) {
            this.mEndYear = 2100;
            setYearDuration(this.G.get(1), this.mEndYear);
        } else if (i3 == 3) {
            Calendar calendar = this.I;
            if (calendar != null && this.J != null) {
                this.mStartYear = calendar.get(1);
                int i4 = this.J.get(1);
                this.mEndYear = i4;
                setYearDuration(this.mStartYear, i4);
            } else {
                this.mStartYear = START_YEAR;
                this.mEndYear = 2100;
                if (calendar != null) {
                    this.mStartYear = calendar.get(1);
                } else {
                    Calendar calendar2 = this.J;
                    if (calendar2 != null) {
                        this.mEndYear = calendar2.get(1);
                    }
                }
                setYearDuration(this.mStartYear, this.mEndYear);
            }
        } else {
            this.mStartYear = START_YEAR;
            this.mEndYear = 2100;
            setYearDuration(START_YEAR, 2100);
        }
        b0();
        P();
        this.y = (Vibrator) this.v.getSystemService("vibrator");
        if (olb.Z && olb.D) {
            this.z = VibrationEffect.createOneShot(2023913039L, -1);
        }
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.Z();
            }
        }, 60L);
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        J();
        p0();
    }

    public OSDateTimePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = Calendar.getInstance();
        this.mMonthList = new ArrayList<>();
        this.j = new ArrayList();
        this.mStartYear = START_YEAR;
        this.mEndYear = 2100;
        this.l = new a();
        this.w = 5;
        this.x = getClass().getSimpleName();
        this.B = -1;
        this.C = 1;
        this.D = 1;
        this.E = false;
        this.F = 0;
        this.G = Calendar.getInstance();
        this.K = false;
        this.L = false;
        this.M = 0;
        this.N = 0;
        this.O = -1;
        this.P = -1;
        this.Q = -1;
        this.R = -1;
        this.S = -1;
        this.T = -1;
        this.U = -1;
        this.V = -1;
        this.W = -1;
        this.a0 = -1;
        this.b0 = new Handler();
        this.c0 = new Runnable() {
            @Override
            public void run() {
                OSDateTimePicker.this.M();
            }
        };
        this.d0 = true;
        this.e0 = new Runnable() {
            @Override
            public void run() {
                OSDateTimePicker.this.a0();
            }
        };
        this.v = context;
    }
}
