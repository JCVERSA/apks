package com.transsion.playercommon.widgets;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.timepicker.wheel.WheelView;
import java.util.ArrayList;
import java.util.List;

public class CustomTimePicker extends LinearLayout {
    public WheelView b;
    public WheelView c;
    public Context d;
    public c e;
    public int f;
    public int g;
    public Runnable h;
    public Handler i;

    public class a implements WheelView.g {
        public a() {
        }

        @Override
        public void a(int i, int i2) {
            CustomTimePicker.this.f = i2;
            CustomTimePicker.this.i.removeCallbacks(CustomTimePicker.this.h);
            CustomTimePicker.this.i.postDelayed(CustomTimePicker.this.h, 200L);
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

    public class b implements WheelView.g {
        public b() {
        }

        @Override
        public void a(int i, int i2) {
            CustomTimePicker.this.g = i2;
            CustomTimePicker.this.i.removeCallbacks(CustomTimePicker.this.h);
            CustomTimePicker.this.i.postDelayed(CustomTimePicker.this.h, 200L);
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

    public interface c {
        void a(int i, int i2);
    }

    public CustomTimePicker(Context context) {
        super(context);
        this.h = new Runnable() {
            @Override
            public void run() {
                if (CustomTimePicker.this.e != null) {
                    CustomTimePicker.this.e.a(CustomTimePicker.this.f, CustomTimePicker.this.g);
                }
            }
        };
        this.i = new Handler();
        this.d = context;
        init();
    }

    public int getmSelectedHour() {
        return this.f;
    }

    public int getmSelectedMin() {
        return this.g;
    }

    public final void h() {
        i();
        j();
        k();
    }

    public final void i() {
        WheelView wheelView = (WheelView) findViewById(R.id.hourWheel);
        this.b = wheelView;
        wheelView.setWheelBackgroundColor(android.R.color.transparent);
        this.b.setData(intToIntegerList(getResources().getIntArray(R.array.hour)));
        this.b.setSelectedItemPosition(0);
        this.b.setCyclic(true);
        this.b.setOnWheelChangedListener(new a());
    }

    public void init() {
        LayoutInflater.from(this.d).inflate(R.layout.custom_picker_date_layout, (ViewGroup) this, true);
        h();
    }

    public List<Integer> intToIntegerList(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(new Integer(i));
        }
        return arrayList;
    }

    public final void j() {
        WheelView wheelView = (WheelView) findViewById(R.id.minWheel);
        this.c = wheelView;
        wheelView.setWheelBackgroundColor(android.R.color.transparent);
        this.c.setData(intToIntegerList(getResources().getIntArray(R.array.minute)));
        this.c.setSelectedItemPosition(0);
        this.c.setCyclic(true);
        this.c.setOnWheelChangedListener(new b());
    }

    public final void k() {
        WheelView wheelView = this.c;
        if (wheelView != null) {
            ((LinearLayout.LayoutParams) wheelView.getLayoutParams()).setMarginStart(this.d.getResources().getDimensionPixelOffset(R.dimen.wheel_distance));
        }
    }

    public void removeTimeChangeUpdate() {
        this.i.removeCallbacks(this.h);
    }

    public void setOnTimeChangeListener(c cVar) {
        this.e = cVar;
    }

    public CustomTimePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = new Runnable() {
            @Override
            public void run() {
                if (CustomTimePicker.this.e != null) {
                    CustomTimePicker.this.e.a(CustomTimePicker.this.f, CustomTimePicker.this.g);
                }
            }
        };
        this.i = new Handler();
        this.d = context;
        init();
    }
}
