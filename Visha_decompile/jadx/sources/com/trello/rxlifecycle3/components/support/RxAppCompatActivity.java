package com.trello.rxlifecycle3.components.support;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import com.trello.rxlifecycle3.android.ActivityEvent;
import defpackage.ax8;
import defpackage.mc7;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;
import defpackage.zw8;

public abstract class RxAppCompatActivity extends AppCompatActivity implements xk5 {
    private final zd0 lifecycleSubject = zd0.o0();

    @Override
    @NonNull
    @CheckResult
    public final <T> yk5 bindToLifecycle() {
        return ax8.a(this.lifecycleSubject);
    }

    @NonNull
    @CheckResult
    public final mc7<ActivityEvent> lifecycle() {
        return this.lifecycleSubject.F();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.lifecycleSubject.onNext(ActivityEvent.CREATE);
    }

    @Override
    public void onDestroy() {
        this.lifecycleSubject.onNext(ActivityEvent.DESTROY);
        super.onDestroy();
    }

    @Override
    public void onPause() {
        this.lifecycleSubject.onNext(ActivityEvent.PAUSE);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.lifecycleSubject.onNext(ActivityEvent.RESUME);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.lifecycleSubject.onNext(ActivityEvent.START);
    }

    @Override
    public void onStop() {
        this.lifecycleSubject.onNext(ActivityEvent.STOP);
        super.onStop();
    }

    @NonNull
    @CheckResult
    public final <T> yk5 bindUntilEvent(@NonNull ActivityEvent activityEvent) {
        return zw8.c(this.lifecycleSubject, activityEvent);
    }
}
