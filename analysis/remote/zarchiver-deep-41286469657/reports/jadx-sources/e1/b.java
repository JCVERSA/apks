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
import android.widget.ListAdapter;
import android.widget.ListView;
import d0.h;

public final class b extends ListView implements AbsListView.OnScrollListener, View.OnTouchListener, c {

    public int f706a;

    public int f707b;

    public int f708c;

    public int f709d;

    public boolean f710e;

    public int f711f;

    public final a f712g;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            b.this.setFastScrollAlwaysVisible(false);
        }
    }

    public b(Context context) {
        super(context);
        this.f712g = new a();
        setFitsSystemWindows(true);
        setOnScrollListener(this);
        setOnTouchListener(this);
        this.f706a = 0;
        this.f708c = -1;
        this.f707b = -1;
        this.f711f = 8;
    }

    @Override
    public int getClickRawX() {
        return this.f707b;
    }

    @Override
    public int getClickRawY() {
        return this.f708c;
    }

    @Override
    public int getMaxVisibleItemCount() {
        return this.f711f;
    }

    @Override
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        fitSystemWindows(new Rect(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()));
        return windowInsets;
    }

    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        this.f707b = -1;
        this.f708c = -1;
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f711f = (getMeasuredHeight() / t0.b.f2090k) + 1;
    }

    @Override
    public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
    }

    @Override
    public final void onScrollStateChanged(AbsListView absListView, int i2) {
        boolean z2 = true;
        if (this.f710e) {
            a aVar = this.f712g;
            if (i2 != 0) {
                setFastScrollAlwaysVisible(true);
                removeCallbacks(aVar);
            } else {
                postDelayed(aVar, 1500L);
            }
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        boolean z3 = firstVisiblePosition >= this.f709d;
        if (i2 == 1 || i2 == 2) {
            this.f709d = firstVisiblePosition;
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
        this.f707b = (int) motionEvent.getRawX();
        this.f708c = (int) motionEvent.getRawY();
        if (motionEvent.getAction() == 0) {
            this.f706a = motionEvent.getButtonState();
        }
        if (this.f706a == 2 && motionEvent.getAction() == 1 && motionEvent.getEventTime() - motionEvent.getDownTime() < ViewConfiguration.getLongPressTimeout()) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            view.performClick();
            if (iPointToPosition >= 0 && getOnItemLongClickListener() != null) {
                getOnItemLongClickListener().onItemLongClick(null, null, iPointToPosition, -7L);
            }
            this.f706a = 0;
            return true;
        }
        if (this.f706a != 4 || motionEvent.getAction() != 1) {
            if (motionEvent.getButtonState() == 4) {
                return true;
            }
            int buttonState = motionEvent.getButtonState();
            int i2 = this.f706a;
            return (buttonState != i2 || i2 == 0 || i2 == 1) ? false : true;
        }
        int iPointToPosition2 = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        view.performClick();
        if (iPointToPosition2 >= 0 && getOnItemClickListener() != null) {
            getOnItemClickListener().onItemClick(null, null, iPointToPosition2, -8L);
        }
        this.f706a = 0;
        return true;
    }

    @Override
    public void setAdapter(Adapter adapter) {
        setAdapter((ListAdapter) adapter);
    }

    @Override
    public void setFastScrollEnabled(boolean z2) {
        super.setFastScrollEnabled(z2);
        this.f710e = z2;
        setVerticalScrollBarEnabled(!z2);
    }

    @Override
    public void setAdapter(ListAdapter listAdapter) {
        if (this.f710e) {
            removeCallbacks(this.f712g);
            setFastScrollAlwaysVisible(false);
        }
        super.setAdapter(listAdapter);
    }
}
