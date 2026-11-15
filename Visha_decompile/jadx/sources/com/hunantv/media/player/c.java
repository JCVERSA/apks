package com.hunantv.media.player;

import android.content.Context;
import androidx.appcompat.widget.AppCompatImageView;

public class c extends AppCompatImageView {
    private com.hunantv.media.player.f.c a;

    public c(Context context) {
        super(context);
        a(context);
    }

    public void a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.a.a(i, i2);
        requestLayout();
    }

    @Override
    public void onMeasure(int i, int i2) {
        this.a.c(i, i2);
        setMeasuredDimension(this.a.b(), this.a.c());
    }

    public void setAspectRatio(int i) {
        this.a.b(i);
        requestLayout();
    }

    public void setVideoRotation(int i) {
        this.a.a(i);
        setRotation(i);
    }

    private void a(Context context) {
        this.a = new com.hunantv.media.player.f.c(this);
        setBackgroundColor(0);
    }
}
