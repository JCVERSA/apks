package com.mgtv.ssp.fragment;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.hunantv.imgo.util.ThreadManager;
import com.mgtv.task.g;
import com.mgtv.task.h;
import com.mgtv.task.m;

public abstract class BaseHttpFragment extends BaseFragment {
    private h b;
    private m c;

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getActivity().setRequestedOrientation(1);
        this.b = new h(ThreadManager.getNetWorkExecutorService(), false);
        this.c = new m(getActivity(), this.b, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        h hVar = this.b;
        if (hVar != null) {
            hVar.a((g) null);
        }
        this.c = null;
    }
}
