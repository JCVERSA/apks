package com.mgtv.ssp.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.log.e;

public abstract class BaseFragment extends RootFragment {
    protected boolean a;
    private String b = "BaseFragment";

    private void e() {
    }

    public boolean c() {
        return false;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.a = false;
    }

    @Override
    public void onPause() {
        super.onPause();
        String simpleName = getClass().getSimpleName();
        e.b(this.b, "BaseFragment " + simpleName + " onPause", true);
    }

    @Override
    public void onResume() {
        super.onResume();
        e();
        String simpleName = getClass().getSimpleName();
        e.b(this.b, "BaseFragment " + simpleName + " onResume", true);
        this.a = true;
    }

    @Override
    public void onStop() {
        super.onStop();
        this.a = false;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (c()) {
            return;
        }
        e();
    }
}
