package com.transsion.widgets;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.icu.text.DateTimePatternGenerator;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.common.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

public class ClockView extends AppCompatTextView {
    private static final int AM_PM_STYLE_GONE = 2;
    private static final int AM_PM_STYLE_NORMAL = 0;
    private static final int AM_PM_STYLE_SMALL = 1;
    private static final String CLOCK_SUPER_PARCELABLE = "clock_super_parcelable";
    private static final String TAG = "ClockView";
    private static final String VISIBILITY = "visibility";
    private final int mAmPmStyle;
    private Calendar mCalendar;
    private SimpleDateFormat mClockFormat;
    private String mClockFormatString;
    private SimpleDateFormat mContentDescriptionFormat;
    private final BroadcastReceiver mIntentReceiver;
    private Locale mLocale;
    private boolean mRegistered;
    private final Runnable unRegisterRunnable;

    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        public void lambda$onReceive$0(String str) {
            ClockView.this.mCalendar = Calendar.getInstance(TimeZone.getTimeZone(str));
            if (ClockView.this.mClockFormat != null) {
                ClockView.this.mClockFormat.setTimeZone(ClockView.this.mCalendar.getTimeZone());
            }
        }

        public void lambda$onReceive$1(Locale locale) {
            if (locale.equals(ClockView.this.mLocale)) {
                return;
            }
            ClockView.this.mLocale = locale;
            ClockView.this.mClockFormatString = "";
        }

        public void lambda$onReceive$2() {
            ClockView.this.updateClock();
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                Handler handler = ClockView.this.getHandler();
                if (handler != null && intent != null) {
                    String action = intent.getAction();
                    if ("android.intent.action.TIMEZONE_CHANGED".equals(action)) {
                        final String stringExtra = intent.getStringExtra("time-zone");
                        handler.post(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.lambda$onReceive$0(stringExtra);
                            }
                        });
                    } else if ("android.intent.action.CONFIGURATION_CHANGED".equals(action)) {
                        final Locale locale = ClockView.this.getResources().getConfiguration().locale;
                        handler.post(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.lambda$onReceive$1(locale);
                            }
                        });
                    }
                    handler.post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.lambda$onReceive$2();
                        }
                    });
                }
            } catch (Exception e) {
                Log.e(ClockView.TAG, "mIntentReceiver onReceive error: " + e.getMessage());
            }
        }
    }

    public ClockView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private final CharSequence getSmallTime() {
        SimpleDateFormat simpleDateFormat;
        Context context = getContext();
        String bestPattern = DateTimePatternGenerator.getInstance(context.getResources().getConfiguration().locale).getBestPattern(DateFormat.is24HourFormat(context) ? "Hm" : "hm");
        if (bestPattern.equals(this.mClockFormatString)) {
            simpleDateFormat = this.mClockFormat;
        } else {
            this.mContentDescriptionFormat = new SimpleDateFormat(bestPattern);
            if (this.mAmPmStyle != 0) {
                int i = 0;
                boolean z = false;
                while (true) {
                    if (i >= bestPattern.length()) {
                        i = -1;
                        break;
                    }
                    char cCharAt = bestPattern.charAt(i);
                    if (cCharAt == '\'') {
                        z = !z;
                    }
                    if (!z && cCharAt == 'a') {
                        break;
                    }
                    i++;
                }
                if (i >= 0) {
                    int i2 = i;
                    while (i2 > 0 && Character.isWhitespace(bestPattern.charAt(i2 - 1))) {
                        i2--;
                    }
                    bestPattern = bestPattern.substring(0, i2) + (char) 61184 + bestPattern.substring(i2, i) + CmcdData.OBJECT_TYPE_AUDIO_ONLY + (char) 61185 + bestPattern.substring(i + 1);
                }
            }
            simpleDateFormat = new SimpleDateFormat(bestPattern);
            this.mClockFormat = simpleDateFormat;
            this.mClockFormatString = bestPattern;
        }
        String str = simpleDateFormat.format(this.mCalendar.getTime());
        if (this.mAmPmStyle != 0) {
            int iIndexOf = str.indexOf(61184);
            int iIndexOf2 = str.indexOf(61185);
            if (iIndexOf >= 0 && iIndexOf2 > iIndexOf) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                int i3 = this.mAmPmStyle;
                if (i3 == 2) {
                    spannableStringBuilder.delete(iIndexOf, iIndexOf2 + 1);
                } else if (i3 == 1) {
                    spannableStringBuilder.delete(iIndexOf, iIndexOf2 + 1).append(spannableStringBuilder.subSequence(iIndexOf + 1, iIndexOf2));
                }
                return spannableStringBuilder;
            }
        }
        return str;
    }

    public void lambda$new$0() {
        unRegisterTimeControllerReceiver(getContext());
    }

    private void registerBatteryReceiver(boolean z) {
        if (!z) {
            removeCallbacks(this.unRegisterRunnable);
            postDelayed(this.unRegisterRunnable, 10000L);
        } else {
            if (!this.mRegistered) {
                registerTimeControllerReceiver(getContext());
                this.mRegistered = true;
            }
            updateClock();
        }
    }

    private void unRegisterTimeControllerReceiver(Context context) {
        if (this.mRegistered) {
            context.unregisterReceiver(this.mIntentReceiver);
            this.mRegistered = false;
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mCalendar = Calendar.getInstance(TimeZone.getDefault());
        this.mClockFormatString = "";
        registerBatteryReceiver(getVisibility() == 0);
        updateClock();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.unRegisterRunnable);
        unRegisterTimeControllerReceiver(getContext());
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable(CLOCK_SUPER_PARCELABLE));
        if (bundle.containsKey("visibility")) {
            super.setVisibility(bundle.getInt("visibility"));
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CLOCK_SUPER_PARCELABLE, super.onSaveInstanceState());
        bundle.putInt("visibility", getVisibility());
        return bundle;
    }

    public void registerTimeControllerReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        context.registerReceiver(this.mIntentReceiver, intentFilter);
        this.mRegistered = true;
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        registerBatteryReceiver(i == 0);
    }

    public final void updateClock() {
        Calendar calendar = this.mCalendar;
        if (calendar == null) {
            return;
        }
        calendar.setTimeInMillis(System.currentTimeMillis());
        CharSequence smallTime = getSmallTime();
        Log.e(TAG, "updateClock time:" + ((Object) smallTime));
        setText(smallTime);
        setContentDescription(this.mContentDescriptionFormat.format(this.mCalendar.getTime()));
    }

    public ClockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.unRegisterRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
        this.mIntentReceiver = new AnonymousClass1();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.ClockView, 0, 0);
        try {
            this.mAmPmStyle = typedArrayObtainStyledAttributes.getInt(R.styleable.ClockView_amPmStyle, 2);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
