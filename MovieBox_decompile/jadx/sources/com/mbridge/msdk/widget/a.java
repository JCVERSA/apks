package com.mbridge.msdk.widget;

import android.view.View;
import java.util.Calendar;

public abstract class a implements View.OnClickListener {

    private long f39202a = 0;

    protected abstract void a(View view);

    @Override
    public void onClick(View view) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (timeInMillis - this.f39202a > 2000) {
            this.f39202a = timeInMillis;
            a(view);
        }
    }
}
