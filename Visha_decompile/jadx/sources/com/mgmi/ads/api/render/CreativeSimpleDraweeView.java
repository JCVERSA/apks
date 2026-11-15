package com.mgmi.ads.api.render;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.mgmi.model.VASTAd;
import defpackage.dkd;

public class CreativeSimpleDraweeView extends ImageView {
    protected long a;
    protected long b;
    Runnable c;
    private a d;
    private boolean e;
    private float f;
    private float g;
    private int h;
    private VASTAd i;

    public interface a {
        void a(View view, dkd dkdVar, String str);

        void a(VASTAd vASTAd, String str);
    }

    public CreativeSimpleDraweeView(Context context) {
        super(context);
        this.a = 1L;
        this.b = 20L;
        this.c = new Runnable() {
            @Override
            public void run() {
                if (CreativeSimpleDraweeView.this.d == null || CreativeSimpleDraweeView.this.e) {
                    return;
                }
                CreativeSimpleDraweeView.this.e = true;
                CreativeSimpleDraweeView.this.d.a(CreativeSimpleDraweeView.this.i, "cli_4");
            }
        };
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.h == 0) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f = x;
            this.g = y;
            if (2 == this.h) {
                this.e = false;
                postDelayed(this.c, this.a * 1000);
            }
        } else if (action == 1) {
            int i = this.h;
            if (2 == i) {
                removeCallbacks(this.c);
                if (!this.e && this.d != null) {
                    this.e = true;
                    this.d.a(this, b(motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getX(), motionEvent.getY()), "cli_1");
                }
            } else if (1 == i) {
                a aVar = this.d;
                if (aVar != null) {
                    aVar.a(this.i, "cli_1");
                }
            } else if (3 == i) {
                float f = x - this.f;
                float f2 = y - this.g;
                if (Math.abs(f) > this.b || Math.abs(f2) > this.b) {
                    a aVar2 = this.d;
                    if (aVar2 != null) {
                        aVar2.a(this.i, "scroll");
                    }
                } else if (this.d != null) {
                    this.d.a(this, a(motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getX(), motionEvent.getY()), "cli_1");
                }
            } else if (this.d != null) {
                this.d.a(this, a(motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getX(), motionEvent.getY()), "cli_1");
            }
        } else if (action == 3 && 2 == this.h) {
            removeCallbacks(this.c);
        }
        return true;
    }

    public void setClickType(int i) {
        this.h = i;
    }

    public void setTouch(a aVar) {
        this.d = aVar;
    }

    private dkd b(float f, float f2, float f3, float f4) {
        return new dkd(f, f2, f3, f4, getMeasuredWidth(), getMeasuredHeight());
    }

    private dkd a(float f, float f2, float f3, float f4) {
        return new dkd(f, f2, f3, f4, getMeasuredWidth(), getMeasuredHeight());
    }
}
