package com.app.hubert.guide.lifecycle;

import android.app.Fragment;
import defpackage.dq5;
import defpackage.q54;

public class ListenerFragment extends Fragment {
    public q54 b;

    public void a(q54 q54Var) {
        this.b = q54Var;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        dq5.a("onDestroy: ");
        q54 q54Var = this.b;
        if (q54Var != null) {
            q54Var.onDestroy();
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        q54 q54Var = this.b;
        if (q54Var != null) {
            q54Var.a();
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        dq5.a("onStart: ");
        q54 q54Var = this.b;
        if (q54Var != null) {
            q54Var.onStart();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        q54 q54Var = this.b;
        if (q54Var != null) {
            q54Var.onStop();
        }
    }
}
