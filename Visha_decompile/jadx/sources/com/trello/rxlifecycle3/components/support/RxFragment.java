package com.trello.rxlifecycle3.components.support;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.trello.rxlifecycle3.android.FragmentEvent;
import defpackage.ax8;
import defpackage.mc7;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;
import defpackage.zw8;

public abstract class RxFragment extends Fragment implements xk5 {
    private final zd0 lifecycleSubject = zd0.o0();

    @Override
    @NonNull
    @CheckResult
    public final <T> yk5 bindToLifecycle() {
        return ax8.b(this.lifecycleSubject);
    }

    @NonNull
    @CheckResult
    public final mc7<FragmentEvent> lifecycle() {
        return this.lifecycleSubject.F();
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.lifecycleSubject.onNext(FragmentEvent.ATTACH);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.lifecycleSubject.onNext(FragmentEvent.CREATE);
    }

    @Override
    public void onDestroy() {
        this.lifecycleSubject.onNext(FragmentEvent.DESTROY);
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.lifecycleSubject.onNext(FragmentEvent.DESTROY_VIEW);
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        this.lifecycleSubject.onNext(FragmentEvent.DETACH);
        super.onDetach();
    }

    @Override
    public void onPause() {
        this.lifecycleSubject.onNext(FragmentEvent.PAUSE);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.lifecycleSubject.onNext(FragmentEvent.RESUME);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.lifecycleSubject.onNext(FragmentEvent.START);
    }

    @Override
    public void onStop() {
        this.lifecycleSubject.onNext(FragmentEvent.STOP);
        super.onStop();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.lifecycleSubject.onNext(FragmentEvent.CREATE_VIEW);
    }

    @NonNull
    @CheckResult
    public final <T> yk5 bindUntilEvent(@NonNull FragmentEvent fragmentEvent) {
        return zw8.c(this.lifecycleSubject, fragmentEvent);
    }
}
