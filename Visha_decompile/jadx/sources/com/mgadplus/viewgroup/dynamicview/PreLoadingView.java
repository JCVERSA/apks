package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.mgmi.R;

public class PreLoadingView extends FrameLayout {
    public PreLoadingView(@NonNull Context context) {
        super(context);
        b();
    }

    public void a() {
        setVisibility(8);
    }

    public final void b() {
        LayoutInflater.from(getContext()).inflate(R.layout.mgmi_loading_view, (ViewGroup) this, true);
    }
}
