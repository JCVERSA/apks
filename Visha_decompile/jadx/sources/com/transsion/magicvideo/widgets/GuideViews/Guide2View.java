package com.transsion.magicvideo.widgets.GuideViews;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.transsion.magicvideo.R;
import defpackage.woc;

public class Guide2View extends GuideView {
    public Guide2View(@NonNull Context context) {
        super(context);
    }

    private void setBreakStrategy(TextView textView) {
        textView.setBreakStrategy(0);
        textView.setHyphenationFrequency(4);
    }

    @Override
    public View g(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.video_gestures_guide_second, viewGroup, true);
    }

    @Override
    public void p(View view) {
        super.p(view);
        TextView textView = (TextView) view.findViewById(R.id.tv_rewind_10s);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_pause_play);
        TextView textView3 = (TextView) view.findViewById(R.id.tv_fast_foward_10s);
        setBreakStrategy(textView);
        setBreakStrategy(textView2);
        setBreakStrategy(textView3);
    }

    @Override
    public void q(woc wocVar) {
        super.q(wocVar);
    }

    @Override
    public void r() {
        super.r();
        setAndPlayGuideLottie("second_open_data.json");
    }

    @Override
    public void t() {
        super.t();
        setAndPlayGuideLottie("second_data.json");
    }

    @Override
    public void u() {
        super.u();
        setAndPlayGuideLottie("second_tablet_data.json");
    }
}
