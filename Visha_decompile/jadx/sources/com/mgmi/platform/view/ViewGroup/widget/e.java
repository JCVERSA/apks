package com.mgmi.platform.view.ViewGroup.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.mgmi.R;
import defpackage.l4d;

public class e extends b<f> {
    private com.mgmi.platform.d a;
    private RelativeLayout b;
    private ProgressBar c;
    private View d;

    public void c() {
        com.mgmi.platform.d dVar = this.a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override
    public void d() {
        super.d();
        c();
    }

    @Override
    public void j() {
        super.j();
        this.a.b();
    }

    @Override
    public void k() {
        super.k();
        this.a.c();
    }

    public void w() {
        com.mgmi.platform.d dVar = this.a;
        if (dVar == null || dVar.d() == null) {
            return;
        }
        this.a.d().setVisibility(4);
    }

    public void x() {
        View view = this.d;
        if (view != null) {
            l4d.f(view, 8);
        }
    }

    @Override
    public View a(f fVar) {
        Context context = this.j;
        if (context == null) {
            return null;
        }
        if (this.b == null) {
            RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(context).inflate(R.layout.mgmi_interact_player_widget_layout, (ViewGroup) null);
            this.b = relativeLayout;
            relativeLayout.findViewById(R.id.closePlay).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    e.this.t();
                }
            });
            this.b.findViewById(R.id.playebg).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    e.this.s();
                }
            });
            this.c = (ProgressBar) this.b.findViewById(R.id.progress_indicator);
            this.d = this.b.findViewById(R.id.player_loading_view);
        }
        return this.b;
    }
}
