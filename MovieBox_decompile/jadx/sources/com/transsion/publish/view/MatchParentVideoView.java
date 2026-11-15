package com.transsion.publish.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;

public class MatchParentVideoView extends VideoView {

    private int f48552a;

    private int f48553b;

    private int f48554c;

    private int f48555d;

    private int f48556e;

    public MatchParentVideoView(Context context) {
        this(context, null);
    }

    public int getVideoHeight() {
        return this.f48553b;
    }

    public int getVideoWidth() {
        return this.f48552a;
    }

    @Override
    public void setVideoPath(String str) {
        super.setVideoPath(str);
    }

    public MatchParentVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MatchParentVideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f48552a = 0;
        this.f48553b = 0;
        this.f48554c = 0;
        this.f48555d = 0;
        this.f48556e = 0;
    }
}
