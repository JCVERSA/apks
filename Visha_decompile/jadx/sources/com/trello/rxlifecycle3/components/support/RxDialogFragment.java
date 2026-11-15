package com.trello.rxlifecycle3.components.support;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import com.trello.rxlifecycle3.android.FragmentEvent;
import defpackage.ax8;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;

public abstract class RxDialogFragment extends DialogFragment implements xk5 {
    public final zd0 l = zd0.o0();

    @Override
    public final yk5 bindToLifecycle() {
        return ax8.b(this.l);
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.l.onNext(FragmentEvent.ATTACH);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.l.onNext(FragmentEvent.CREATE);
    }

    @Override
    public void onDestroy() {
        this.l.onNext(FragmentEvent.DESTROY);
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.l.onNext(FragmentEvent.DESTROY_VIEW);
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        this.l.onNext(FragmentEvent.DETACH);
        super.onDetach();
    }

    @Override
    public void onPause() {
        this.l.onNext(FragmentEvent.PAUSE);
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l.onNext(FragmentEvent.RESUME);
    }

    @Override
    public void onStart() {
        super.onStart();
        this.l.onNext(FragmentEvent.START);
    }

    @Override
    public void onStop() {
        this.l.onNext(FragmentEvent.STOP);
        super.onStop();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l.onNext(FragmentEvent.CREATE_VIEW);
    }
}
