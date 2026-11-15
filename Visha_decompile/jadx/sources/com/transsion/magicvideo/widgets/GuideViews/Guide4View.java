package com.transsion.magicvideo.widgets.GuideViews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.magicvideo.R;
import defpackage.woc;

public class Guide4View extends GuideView {
    public Guide4View(@NonNull Context context) {
        super(context);
    }

    @Override
    public View g(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.video_gestures_guide_fouth, viewGroup, true);
    }

    @Override
    public void q(woc wocVar) {
        super.q(wocVar);
    }

    @Override
    public void r() {
        super.r();
        setAndPlayGuideLottie("scale_gesture_open_data.json");
    }

    @Override
    public void t() {
        super.t();
        setAndPlayGuideLottie("scale_gesture.json");
    }

    @Override
    public void u() {
        super.u();
        setAndPlayGuideLottie("scale_gesture_tablet_data.json");
    }

    public Guide4View(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Guide4View(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
