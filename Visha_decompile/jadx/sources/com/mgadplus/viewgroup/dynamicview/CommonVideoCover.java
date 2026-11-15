package com.mgadplus.viewgroup.dynamicview;

import android.view.View;
import android.widget.RelativeLayout;
import com.mgmi.R;
import defpackage.b9d;
import defpackage.l4d;
import defpackage.s7d;

public class CommonVideoCover extends RelativeLayout implements View.OnClickListener, s7d {
    public b9d b;

    public void a() {
        l4d.f(this, 0);
    }

    @Override
    public void b() {
        l4d.f(this, 8);
    }

    public void c() {
    }

    @Override
    public void d() {
    }

    @Override
    public View getControlView() {
        return this;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.mgmi_cover_left_botton) {
            this.b.g();
        } else if (id == R.id.mgmi_cover_right_botton) {
            this.b.h();
        }
    }

    public void setMediaPlayer(b9d b9dVar) {
        this.b = b9dVar;
    }
}
