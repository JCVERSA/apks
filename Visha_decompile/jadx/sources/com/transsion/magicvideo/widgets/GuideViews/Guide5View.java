package com.transsion.magicvideo.widgets.GuideViews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.magicvideo.R;

public class Guide5View extends GuideView {
    public Guide5View(@NonNull Context context) {
        super(context);
    }

    @Override
    public View g(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.video_gestures_guide_fifth, viewGroup, true);
    }

    @Override
    public void r() {
        super.r();
        setAndPlayGuideLottie("translate_gesture_open_data.json");
    }

    @Override
    public void t() {
        super.t();
        setAndPlayGuideLottie("translate_gesture.json");
    }

    @Override
    public void u() {
        super.u();
        setAndPlayGuideLottie("translate_gesture_tablet_data.json");
    }

    public Guide5View(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Guide5View(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
