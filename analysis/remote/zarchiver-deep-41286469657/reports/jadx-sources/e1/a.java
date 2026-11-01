package e1;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowInsets;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import d0.h;

public final class a extends GridView implements AbsListView.OnScrollListener, View.OnTouchListener, c {

    public int f698a;

    public int f699b;

    public int f700c;

    public int f701d;

    public boolean f702e;

    public int f703f;

    public final RunnableC0012a f704g;

    public class RunnableC0012a implements Runnable {
        public RunnableC0012a() {
        }

        @Override
        public final void run() {
            a.this.setFastScrollAlwaysVisible(false);
        }
    }

    public a(Context context) {
        super(context);
        this.f704g = new RunnableC0012a();
        setOnScrollListener(this);
        setOnTouchListener(this);
        setVerticalSpacing(5);
        setHorizontalSpacing(5);
        setStretchMode(2);
        setGravity(17);
        this.f698a = 0;
        this.f700c = -1;
        this.f699b = -1;
        this.f703f = 8;
        double d2 = t0.b.f2090k * 1.6f;
        Double.isNaN(d2);
        Double.isNaN(d2);
        Double.isNaN(d2);
        setColumnWidth((int) (d2 * 1.1d));
        setNumColumns(-1);
    }

    @Override
    public int getClickRawX() {
        return this.f699b;
    }

    @Override
    public int getClickRawY() {
        return this.f700c;
    }

    @Override
    public int getMaxVisibleItemCount() {
        return this.f703f;
    }

    @Override
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        fitSystemWindows(new Rect(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()));
        return windowInsets;
    }

    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        this.f699b = -1;
        this.f700c = -1;
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth() * getMeasuredHeight();
        int i4 = t0.b.f2090k;
        this.f703f = (((measuredWidth / i4) / i4) * 2) / 3;
    }

    @Override
    public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
    }

    @Override
    public final void onScrollStateChanged(AbsListView absListView, int i2) {
        boolean z2 = true;
        if (this.f702e) {
            RunnableC0012a runnableC0012a = this.f704g;
            if (i2 != 0) {
                setFastScrollAlwaysVisible(true);
                removeCallbacks(runnableC0012a);
            } else {
                postDelayed(runnableC0012a, 1500L);
            }
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        boolean z3 = firstVisiblePosition >= this.f701d;
        if (i2 == 1 || i2 == 2) {
            this.f701d = firstVisiblePosition;
        } else {
            z2 = false;
        }
        h hVar = (h) getAdapter();
        if (hVar != null) {
            hVar.k(z2, z3);
        }
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.f699b = (int) motionEvent.getRawX();
        this.f700c = (int) motionEvent.getRawY();
        if (motionEvent.getAction() == 0) {
            this.f698a = motionEvent.getButtonState();
        }
        if (this.f698a == 2 && motionEvent.getAction() == 1 && motionEvent.getEventTime() - motionEvent.getDownTime() < ViewConfiguration.getLongPressTimeout()) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            view.performClick();
            if (iPointToPosition >= 0 && getOnItemLongClickListener() != null) {
                getOnItemLongClickListener().onItemLongClick(null, null, iPointToPosition, -7L);
            }
            this.f698a = 0;
            return true;
        }
        if (this.f698a != 4 || motionEvent.getAction() != 1) {
            if (motionEvent.getButtonState() == 4) {
                return true;
            }
            int buttonState = motionEvent.getButtonState();
            int i2 = this.f698a;
            return (buttonState != i2 || i2 == 0 || i2 == 1) ? false : true;
        }
        int iPointToPosition2 = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        view.performClick();
        if (iPointToPosition2 >= 0 && getOnItemClickListener() != null) {
            getOnItemClickListener().onItemClick(null, null, iPointToPosition2, -8L);
        }
        this.f698a = 0;
        return true;
    }

    @Override
    public void setAdapter(Adapter adapter) {
        setAdapter((ListAdapter) adapter);
    }

    @Override
    public void setFastScrollEnabled(boolean z2) {
        super.setFastScrollEnabled(z2);
        this.f702e = z2;
    }

    @Override
    public void setAdapter(ListAdapter listAdapter) {
        if (this.f702e) {
            removeCallbacks(this.f704g);
            setFastScrollAlwaysVisible(false);
        }
        super.setAdapter(listAdapter);
    }
}
