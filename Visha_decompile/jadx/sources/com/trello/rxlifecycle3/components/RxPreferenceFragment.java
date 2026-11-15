package com.trello.rxlifecycle3.components;

import android.app.Activity;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.view.View;
import com.trello.rxlifecycle3.android.FragmentEvent;
import defpackage.ax8;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;

public abstract class RxPreferenceFragment extends PreferenceFragment implements xk5 {
    public final zd0 b = zd0.o0();

    @Override
    public final yk5 bindToLifecycle() {
        return ax8.b(this.b);
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.b.onNext(FragmentEvent.ATTACH);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b.onNext(FragmentEvent.CREATE);
    }

    @Override
    public void onDestroy() {
        this.b.onNext(FragmentEvent.DESTROY);
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.b.onNext(FragmentEvent.DESTROY_VIEW);
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        this.b.onNext(FragmentEvent.DETACH);
        super.onDetach();
    }

    @Override
    public void onPause() {
        this.b.onNext(FragmentEvent.PAUSE);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b.onNext(FragmentEvent.RESUME);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.b.onNext(FragmentEvent.START);
    }

    @Override
    public void onStop() {
        this.b.onNext(FragmentEvent.STOP);
        super.onStop();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b.onNext(FragmentEvent.CREATE_VIEW);
    }
}
