package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

public class ContainerLayout extends RelativeLayout {
    public boolean b;
    public float c;
    public float d;
    public long e;
    public long f;
    public int g;
    public float h;
    public float i;
    public float j;
    public float k;
    public b l;
    public e m;
    public a n;
    public Runnable o;
    public WeakReference p;
    public boolean q;

    public interface a {
        void onAttachedToWindow();

        void onDetachedFromWindow();
    }

    public interface b {
        void onClick(View view, float f, float f2, float f3, float f4, float f5, float f6);
    }

    public interface c {
    }

    public interface d {
    }

    public interface e {
        void onVisibility(boolean z);
    }

    public ContainerLayout(Context context) {
        super(context);
        this.e = 1L;
        this.f = 20L;
        this.o = new Runnable() {
            @Override
            public void run() {
                ContainerLayout.this.getClass();
            }
        };
        this.q = false;
    }

    public final void a(float f, float f2, float f3, float f4) {
        b bVar = this.l;
        if (bVar != null) {
            bVar.onClick(this, f, f2, f3, f4, getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public Object getParentViewWrf() {
        WeakReference weakReference = this.p;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override
    public boolean isInLayout() {
        return super.isInLayout();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.n;
        if (aVar != null) {
            aVar.onAttachedToWindow();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.n;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    @Override
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    @Override
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.q) {
            int action = motionEvent.getAction();
            if (action == 0) {
                float x = motionEvent.getX();
                this.i = x;
                this.h = x;
                float y = motionEvent.getY();
                this.k = y;
                this.j = y;
            } else if (action == 1) {
                this.i = motionEvent.getX();
                this.k = motionEvent.getY();
                if (Math.abs(this.i - this.h) < 5.0f || Math.abs(this.k - this.j) < 5.0f) {
                    a(motionEvent.getRawX(), motionEvent.getRawY(), this.i, this.k);
                }
            }
            if (this.l != null) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        if (this.g == 0) {
            return super.onTouchEvent(motionEvent);
        }
        int action2 = motionEvent.getAction();
        if (action2 == 0) {
            this.c = x2;
            this.d = y2;
            if (2 == this.g) {
                this.b = false;
                postDelayed(this.o, this.e * 1000);
            }
        } else if (action2 == 1) {
            int i = this.g;
            if (2 == i) {
                removeCallbacks(this.o);
            } else if (3 == i) {
                float f = x2 - this.c;
                float f2 = y2 - this.d;
                if (Math.abs(f) <= this.f) {
                    Math.abs(f2);
                }
            }
        } else if (action2 == 3 && 2 == this.g) {
            removeCallbacks(this.o);
        }
        return true;
    }

    @Override
    public void onWindowVisibilityChanged(int i) {
        e eVar;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            e eVar2 = this.m;
            if (eVar2 != null) {
                eVar2.onVisibility(true);
                return;
            }
            return;
        }
        if ((i == 4 || i == 8) && (eVar = this.m) != null) {
            eVar.onVisibility(false);
        }
    }

    public void setAttachedToWindowListener(a aVar) {
        this.n = aVar;
    }

    public void setCallback(c cVar) {
    }

    public void setClickType(int i) {
        this.g = i;
    }

    public void setInteractTouch(boolean z) {
        this.q = z;
    }

    public void setOnConfigurationChangedListener(d dVar) {
    }

    public void setParentViewWrf(Object obj) {
        this.p = new WeakReference(obj);
    }

    public void setTapclickListener(b bVar) {
        this.l = bVar;
    }

    public void setVibilityListener(e eVar) {
        this.m = eVar;
    }

    public ContainerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 1L;
        this.f = 20L;
        this.o = new Runnable() {
            @Override
            public void run() {
                ContainerLayout.this.getClass();
            }
        };
        this.q = false;
    }

    public ContainerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = 1L;
        this.f = 20L;
        this.o = new Runnable() {
            @Override
            public void run() {
                ContainerLayout.this.getClass();
            }
        };
        this.q = false;
    }
}
