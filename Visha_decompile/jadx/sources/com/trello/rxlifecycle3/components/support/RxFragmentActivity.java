package com.trello.rxlifecycle3.components.support;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import com.trello.rxlifecycle3.android.ActivityEvent;
import defpackage.ax8;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;

public abstract class RxFragmentActivity extends FragmentActivity implements xk5 {
    public final zd0 N = zd0.o0();

    @Override
    public final yk5 bindToLifecycle() {
        return ax8.a(this.N);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.N.onNext(ActivityEvent.CREATE);
    }

    @Override
    public void onDestroy() {
        this.N.onNext(ActivityEvent.DESTROY);
        super.onDestroy();
    }

    @Override
    public void onPause() {
        this.N.onNext(ActivityEvent.PAUSE);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.N.onNext(ActivityEvent.RESUME);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.N.onNext(ActivityEvent.START);
    }

    @Override
    public void onStop() {
        this.N.onNext(ActivityEvent.STOP);
        super.onStop();
    }
}
