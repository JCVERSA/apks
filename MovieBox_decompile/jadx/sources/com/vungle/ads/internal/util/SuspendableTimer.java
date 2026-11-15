package com.vungle.ads.internal.util;

import android.os.CountDownTimer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class SuspendableTimer {
    private final double durationSecs;
    private boolean isCanceled;
    private boolean isPaused;
    private double nextDurationSecs;
    private final Function0<Unit> onFinish;
    private final Function0<Unit> onTick;
    private final boolean repeats;
    private long startTimeMillis;
    private CountDownTimer timer;

    public static final class a extends CountDownTimer {
        final SuspendableTimer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(long j10, SuspendableTimer suspendableTimer) {
            super(j10, j10);
            this.this$0 = suspendableTimer;
        }

        @Override
        public void onFinish() {
            SuspendableTimer suspendableTimer = this.this$0;
            suspendableTimer.onFinish.invoke();
            if (!suspendableTimer.repeats || suspendableTimer.isCanceled) {
                suspendableTimer.cancel();
            } else {
                suspendableTimer.setNextDurationSecs$vungle_ads_release(suspendableTimer.durationSecs);
                suspendableTimer.start();
            }
        }

        @Override
        public void onTick(long j10) {
            this.this$0.onTick.invoke();
        }
    }

    public SuspendableTimer(double d10, boolean z10, Function0<Unit> onTick, Function0<Unit> onFinish) {
        Intrinsics.h(onTick, "onTick");
        Intrinsics.h(onFinish, "onFinish");
        this.durationSecs = d10;
        this.repeats = z10;
        this.onTick = onTick;
        this.onFinish = onFinish;
        this.nextDurationSecs = d10;
    }

    private final CountDownTimer createCountdown(long j10) {
        return new a(j10, this);
    }

    private final long getDurationMillis() {
        return (long) (this.durationSecs * ((double) 1000));
    }

    public static void getElapsedMillis$vungle_ads_release$annotations() {
    }

    private final double getElapsedSecs() {
        return getElapsedMillis$vungle_ads_release() / ((long) 1000);
    }

    private final long getNextDurationMillis() {
        return (long) (this.nextDurationSecs * ((double) 1000));
    }

    public static void getNextDurationSecs$vungle_ads_release$annotations() {
    }

    public static void getStartTimeMillis$vungle_ads_release$annotations() {
    }

    public static void getTimer$vungle_ads_release$annotations() {
    }

    public final void cancel() {
        this.isPaused = false;
        this.isCanceled = true;
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    public final long getElapsedMillis$vungle_ads_release() {
        long jCurrentTimeMillis;
        long nextDurationMillis;
        if (this.isPaused) {
            jCurrentTimeMillis = getDurationMillis();
            nextDurationMillis = getNextDurationMillis();
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            nextDurationMillis = this.startTimeMillis;
        }
        return jCurrentTimeMillis - nextDurationMillis;
    }

    public final double getNextDurationSecs$vungle_ads_release() {
        return this.nextDurationSecs;
    }

    public final long getStartTimeMillis$vungle_ads_release() {
        return this.startTimeMillis;
    }

    public final CountDownTimer getTimer$vungle_ads_release() {
        return this.timer;
    }

    public final void pause() {
        if (this.timer == null) {
            return;
        }
        this.nextDurationSecs -= getElapsedSecs();
        this.isPaused = true;
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    public final void reset() {
        cancel();
        start();
    }

    public final void resume() {
        if (this.isPaused) {
            this.isPaused = false;
            start();
        }
    }

    public final void setNextDurationSecs$vungle_ads_release(double d10) {
        this.nextDurationSecs = d10;
    }

    public final void setStartTimeMillis$vungle_ads_release(long j10) {
        this.startTimeMillis = j10;
    }

    public final void setTimer$vungle_ads_release(CountDownTimer countDownTimer) {
        this.timer = countDownTimer;
    }

    public final void start() {
        this.startTimeMillis = System.currentTimeMillis();
        CountDownTimer countDownTimerCreateCountdown = createCountdown(getNextDurationMillis());
        this.timer = countDownTimerCreateCountdown;
        if (countDownTimerCreateCountdown != null) {
            countDownTimerCreateCountdown.start();
        }
    }

    public SuspendableTimer(double d10, boolean z10, Function0 function0, Function0 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(d10, z10, (i10 & 4) != 0 ? new Function0<Unit>() {
            public final void m445invoke() {
            }

            @Override
            public Object invoke() {
                m445invoke();
                return Unit.f64096a;
            }
        } : function0, function1);
    }
}
