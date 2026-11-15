package com.mgadplus.viewgroup.dynamicview;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mgmi.R;
import defpackage.b9d;
import defpackage.s7d;

public class CommonVideoControl extends RelativeLayout implements View.OnClickListener, s7d {
    public b9d b;
    public ImageView c;
    public ImageView d;
    public boolean e;

    public void a() {
    }

    @Override
    public void b() {
    }

    public void c() {
        this.d.setImageResource(R.drawable.mgmi_feed_play_control_pause);
    }

    @Override
    public void d() {
        if (this.e) {
            this.e = false;
            this.b.a(1.0f, 1.0f);
            this.c.setImageResource(R.drawable.mgmi_icon_ad_voice_open);
        }
    }

    @Override
    public View getControlView() {
        return this;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.mgmi_play_control_playpause) {
            if (this.b.f()) {
                this.b.pause();
                this.d.setImageResource(R.drawable.mgmi_feed_play_control_pause);
                return;
            } else {
                this.b.resume();
                this.d.setImageResource(R.drawable.mgmi_feed_play_control_play);
                return;
            }
        }
        if (id == R.id.mgmi_play_control_mute) {
            if (this.e) {
                this.e = false;
                this.b.a(1.0f, 1.0f);
                this.c.setImageResource(R.drawable.mgmi_icon_ad_voice_open);
            } else {
                this.e = true;
                this.b.a(0.0f, 0.0f);
                this.c.setImageResource(R.drawable.mgmi_icon_ad_voice_close);
            }
        }
    }

    public void setMediaPlayer(@NonNull b9d b9dVar) {
        ImageView imageView;
        ImageView imageView2;
        this.b = b9dVar;
        if (b9dVar != null) {
            boolean zB = b9dVar.b();
            this.e = zB;
            if (zB && (imageView2 = this.c) != null) {
                imageView2.setImageResource(R.drawable.mgmi_icon_ad_voice_close);
            } else {
                if (zB || (imageView = this.c) == null) {
                    return;
                }
                imageView.setImageResource(R.drawable.mgmi_icon_ad_voice_open);
            }
        }
    }
}
