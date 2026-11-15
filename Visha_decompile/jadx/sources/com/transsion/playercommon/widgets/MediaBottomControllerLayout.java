package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.OSIconTextView;

public class MediaBottomControllerLayout extends FrameLayout {
    public OSIconTextView b;
    public ImageView c;
    public ImageView d;
    public ImageView e;
    public OSIconTextView f;
    public a g;

    public interface a {
        void a();

        void b();

        void c();

        void d();

        void e();
    }

    public MediaBottomControllerLayout(Context context) {
        super(context);
        f(context);
    }

    public final void f(Context context) {
        LayoutInflater.from(context).inflate(R.layout.layout_media_bottom_controller, (ViewGroup) this, true);
        this.b = (OSIconTextView) findViewById(R.id.iv_media_play_repeat);
        this.c = (ImageView) findViewById(R.id.iv_media_play_previous);
        this.d = (ImageView) findViewById(R.id.iv_media_play_pause);
        this.e = (ImageView) findViewById(R.id.iv_media_play_next);
        this.f = (OSIconTextView) findViewById(R.id.iv_media_operate_menu);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.g(view);
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.h(view);
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.i(view);
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j(view);
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.k(view);
            }
        });
    }

    public final void g(View view) {
        a aVar = this.g;
        if (aVar != null) {
            aVar.d();
        }
    }

    public ImageView getPlayPauseImageView() {
        return this.d;
    }

    public final void h(View view) {
        a aVar = this.g;
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void i(View view) {
        a aVar = this.g;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void j(View view) {
        a aVar = this.g;
        if (aVar != null) {
            aVar.b();
        }
    }

    public final void k(View view) {
        a aVar = this.g;
        if (aVar != null) {
            aVar.e();
        }
    }

    public void setOnMediaButtonClickListener(a aVar) {
        this.g = aVar;
    }

    public void updateRepeatBtnState(@StringRes int i) {
        this.b.setText(i);
    }

    public MediaBottomControllerLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        f(context);
    }

    public MediaBottomControllerLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        f(context);
    }
}
