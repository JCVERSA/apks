package com.yanzhenjie.recyclerview.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import defpackage.ubc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class StickyNestedScrollView extends NestedScrollView {
    public static final String FLAG_HASTRANSPARENCY = "-hastransparency";
    public static final String FLAG_NONCONSTANT = "-nonconstant";
    public static final String STICKY_TAG = "sticky";
    public ArrayList b;
    public View c;
    public float d;
    public final Runnable e;
    public int f;
    public boolean g;
    public boolean h;
    public boolean i;
    public int j;
    public Drawable k;
    public boolean l;
    public List m;

    public interface a {
    }

    public StickyNestedScrollView(Context context) {
        this(context, null);
    }

    public void addOnViewStickyListener(a aVar) {
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.add(aVar);
    }

    @Override
    public void addView(View view) {
        super.addView(view);
        h(view);
    }

    public void clearOnViewStickyListener() {
        List list = this.m;
        if (list != null) {
            list.clear();
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.c != null) {
            canvas.save();
            canvas.translate(getPaddingLeft() + this.f, getScrollY() + this.d + (this.h ? getPaddingTop() : 0));
            canvas.clipRect(0.0f, this.h ? -this.d : 0.0f, getWidth() - this.f, this.c.getHeight() + this.j + 1);
            if (this.k != null) {
                this.k.setBounds(0, this.c.getHeight(), this.c.getWidth(), this.c.getHeight() + this.j);
                this.k.draw(canvas);
            }
            canvas.clipRect(0.0f, this.h ? -this.d : 0.0f, getWidth(), this.c.getHeight());
            if (l(this.c).contains(FLAG_HASTRANSPARENCY)) {
                p(this.c);
                this.c.draw(canvas);
                n(this.c);
            } else {
                this.c.draw(canvas);
            }
            canvas.restore();
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.g = true;
        }
        if (this.g) {
            boolean z = this.c != null;
            this.g = z;
            if (z) {
                this.g = motionEvent.getY() <= ((float) this.c.getHeight()) + this.d && motionEvent.getX() >= ((float) j(this.c)) && motionEvent.getX() <= ((float) k(this.c));
            }
        } else if (this.c == null) {
            this.g = false;
        }
        if (this.g) {
            motionEvent.offsetLocation(0.0f, ((getScrollY() + this.d) - m(this.c)) * (-1.0f));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final boolean f(View view) {
        if (!l(view).contains(STICKY_TAG)) {
            return false;
        }
        this.b.add(view);
        return true;
    }

    public final void g() {
        float fMin;
        Iterator it = this.b.iterator();
        View view = null;
        View view2 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            View view3 = (View) it.next();
            int iM = (m(view3) - getScrollY()) + (this.h ? 0 : getPaddingTop());
            if (iM <= 0) {
                if (view != null) {
                    if (iM > (m(view) - getScrollY()) + (this.h ? 0 : getPaddingTop())) {
                    }
                }
                view = view3;
            } else {
                if (view2 != null) {
                    if (iM < (m(view2) - getScrollY()) + (this.h ? 0 : getPaddingTop())) {
                    }
                }
                view2 = view3;
            }
        }
        if (view == null) {
            if (this.c != null) {
                List list = this.m;
                if (list != null) {
                    Iterator it2 = list.iterator();
                    if (it2.hasNext()) {
                        ubc.a(it2.next());
                        throw null;
                    }
                }
                r();
                return;
            }
            return;
        }
        if (view2 == null) {
            fMin = 0.0f;
        } else {
            fMin = Math.min(0, ((m(view2) - getScrollY()) + (this.h ? 0 : getPaddingTop())) - view.getHeight());
        }
        this.d = fMin;
        View view4 = this.c;
        if (view != view4) {
            if (view4 != null) {
                List list2 = this.m;
                if (list2 != null) {
                    Iterator it3 = list2.iterator();
                    if (it3.hasNext()) {
                        ubc.a(it3.next());
                        throw null;
                    }
                }
                r();
            }
            this.f = j(view);
            q(view);
            List list3 = this.m;
            if (list3 != null) {
                Iterator it4 = list3.iterator();
                if (it4.hasNext()) {
                    ubc.a(it4.next());
                    throw null;
                }
            }
        }
    }

    public final void h(View view) {
        if (f(view) || !(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            h(viewGroup.getChildAt(i));
        }
    }

    public final int i(View view) {
        int bottom = view.getBottom();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            bottom += view.getBottom();
        }
        return bottom;
    }

    public final int j(View view) {
        int left = view.getLeft();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            left += view.getLeft();
        }
        return left;
    }

    public final int k(View view) {
        int right = view.getRight();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            right += view.getRight();
        }
        return right;
    }

    public final String l(View view) {
        return String.valueOf(view.getTag());
    }

    public final int m(View view) {
        int top = view.getTop();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            top += view.getTop();
        }
        return top;
    }

    public final void n(View view) {
        view.setAlpha(0.0f);
    }

    public void notifyStickyAttributeChanged() {
        o();
    }

    public final void o() {
        if (this.c != null) {
            r();
        }
        this.b.clear();
        h(getChildAt(0));
        g();
        invalidate();
    }

    @Override
    public void onDetachedFromWindow() {
        removeCallbacks(this.e);
        super.onDetachedFromWindow();
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.i) {
            this.h = true;
        }
        o();
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        g();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.g) {
            motionEvent.offsetLocation(0.0f, (getScrollY() + this.d) - m(this.c));
        }
        if (motionEvent.getAction() == 0) {
            this.l = false;
        }
        if (this.l) {
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setAction(0);
            super.onTouchEvent(motionEventObtain);
            this.l = false;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.l = true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void p(View view) {
        view.setAlpha(1.0f);
    }

    public final void q(View view) {
        this.c = view;
        if (view != null) {
            if (l(view).contains(FLAG_HASTRANSPARENCY)) {
                n(this.c);
            }
            if (l(this.c).contains(FLAG_NONCONSTANT)) {
                post(this.e);
            }
        }
    }

    public final void r() {
        if (l(this.c).contains(FLAG_HASTRANSPARENCY)) {
            p(this.c);
        }
        this.c = null;
        removeCallbacks(this.e);
    }

    public void removeOnViewStickyListener(a aVar) {
        List list = this.m;
        if (list != null) {
            list.remove(aVar);
        }
    }

    @Override
    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.h = z;
        this.i = true;
    }

    public void setShadowDrawable(Drawable drawable) {
        this.k = drawable;
    }

    public void setShadowHeight(int i) {
        this.j = i;
    }

    public void setup() {
        this.b = new ArrayList();
    }

    public StickyNestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.scrollViewStyle);
    }

    public StickyNestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new Runnable() {
            @Override
            public void run() {
                if (StickyNestedScrollView.this.c != null) {
                    StickyNestedScrollView stickyNestedScrollView = StickyNestedScrollView.this;
                    int iJ = stickyNestedScrollView.j(stickyNestedScrollView.c);
                    StickyNestedScrollView stickyNestedScrollView2 = StickyNestedScrollView.this;
                    int i2 = stickyNestedScrollView2.i(stickyNestedScrollView2.c);
                    StickyNestedScrollView stickyNestedScrollView3 = StickyNestedScrollView.this;
                    StickyNestedScrollView.this.invalidate(iJ, i2, stickyNestedScrollView3.k(stickyNestedScrollView3.c), (int) (StickyNestedScrollView.this.getScrollY() + StickyNestedScrollView.this.c.getHeight() + StickyNestedScrollView.this.d));
                }
                StickyNestedScrollView.this.postDelayed(this, 16L);
            }
        };
        this.j = 10;
        this.l = true;
        setup();
    }

    @Override
    public void addView(View view, int i) {
        super.addView(view, i);
        h(view);
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        h(view);
    }

    @Override
    public void addView(View view, int i, int i2) {
        super.addView(view, i, i2);
        h(view);
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        h(view);
    }
}
