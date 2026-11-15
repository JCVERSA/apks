package com.trello.rxlifecycle3.components;

import android.app.Activity;
import android.os.Bundle;
import com.trello.rxlifecycle3.android.ActivityEvent;
import defpackage.ax8;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;

public abstract class RxActivity extends Activity implements xk5 {
    public final zd0 b = zd0.o0();

    @Override
    public final yk5 bindToLifecycle() {
        return ax8.a(this.b);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b.onNext(ActivityEvent.CREATE);
    }

    @Override
    public void onDestroy() {
        this.b.onNext(ActivityEvent.DESTROY);
        super.onDestroy();
    }

    @Override
    public void onPause() {
        this.b.onNext(ActivityEvent.PAUSE);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b.onNext(ActivityEvent.RESUME);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.b.onNext(ActivityEvent.START);
    }

    @Override
    public void onStop() {
        this.b.onNext(ActivityEvent.STOP);
        super.onStop();
    }
}
