package com.transsion.magicvideo.widgets.GuideViews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.magicvideo.R;

public class Guide1View extends GuideView {
    public Guide1View(@NonNull Context context) {
        super(context);
    }

    @Override
    public View g(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.video_gestures_guide, viewGroup, true);
    }

    @Override
    public void r() {
        super.r();
        setAndPlayGuideLottie("first_open_data.json");
    }

    @Override
    public void t() {
        super.t();
        setAndPlayGuideLottie("first_data.json");
    }

    @Override
    public void u() {
        super.u();
        setAndPlayGuideLottie("first_tablet_data.json");
    }

    public Guide1View(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Guide1View(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
