package ru.zdevs.zarchiver.ui.editor;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.OverScroller;
import ru.zdevs.zarchiver.R;

public final class c implements GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {

    public final c1.a f1891a;

    public final Drawable f1893c;

    public final Drawable[] f1894d;

    public final OverScroller f1895e;

    public final GestureDetector f1896f;

    public int f1897g;

    public int f1898h;

    public a f1892b = null;

    public boolean f1899i = false;

    public interface a extends ViewTreeObserver.OnTouchModeChangeListener {
        void c(Canvas canvas, int i2, int i3, int i4, int i5);

        boolean onTouchEvent(MotionEvent motionEvent);
    }

    public class b implements a {

        public final RectF f1900a;

        public boolean f1901b;

        public boolean f1902c;

        public long f1903d;

        public final int f1904e;

        public b(int i2) {
            RectF rectF = new RectF();
            this.f1900a = rectF;
            this.f1902c = false;
            this.f1901b = false;
            this.f1904e = i2;
            this.f1903d = i2 == 0 ? 0L : System.currentTimeMillis() + ((long) i2);
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
        }

        @Override
        public final void c(Canvas canvas, int i2, int i3, int i4, int i5) {
            long j2 = this.f1903d;
            c cVar = c.this;
            if (j2 != 0 && j2 < System.currentTimeMillis()) {
                cVar.g(0);
                return;
            }
            RectF rectF = this.f1900a;
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
            if (i2 < 0 || i3 < 0) {
                return;
            }
            int intrinsicWidth = i2 - (cVar.f1893c.getIntrinsicWidth() / 2);
            float f2 = intrinsicWidth;
            float f3 = i3;
            canvas.translate(f2, f3);
            Drawable drawable = cVar.f1893c;
            drawable.draw(canvas);
            canvas.translate(-intrinsicWidth, -i3);
            rectF.set(f2, f3, drawable.getIntrinsicWidth() + intrinsicWidth, drawable.getIntrinsicHeight() + i3);
        }

        @Override
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            c cVar = c.this;
            if (actionMasked == 0) {
                if (!this.f1900a.contains(motionEvent.getX(), motionEvent.getY())) {
                    return false;
                }
                this.f1902c = true;
                this.f1901b = true;
                this.f1903d = 0L;
                cVar.f1891a.setCursorBlink(false);
                c1.a aVar = cVar.f1891a;
                ((EditableView) aVar).k(-2);
                ((EditableView) aVar).q(0, true);
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (!this.f1901b) {
                        return false;
                    }
                    this.f1902c = false;
                    int iA = cVar.a(motionEvent);
                    ((EditableView) cVar.f1891a).s(iA, iA, -1);
                    return true;
                }
                if (actionMasked != 3) {
                    return this.f1901b;
                }
            }
            if (!this.f1901b) {
                return false;
            }
            ((EditableView) cVar.f1891a).q(0, false);
            c1.a aVar2 = cVar.f1891a;
            EditableView editableView = (EditableView) aVar2;
            if (editableView.f1824m != null && editableView.f1825n == 1) {
                ((EditableView) aVar2).k(-1);
            } else if (this.f1902c) {
                ((EditableView) aVar2).t(1);
                return true;
            }
            int i2 = this.f1904e;
            this.f1903d = i2 != 0 ? System.currentTimeMillis() + ((long) i2) : 0L;
            this.f1901b = false;
            aVar2.setCursorBlink(true);
            return true;
        }

        @Override
        public final void onTouchModeChanged(boolean z2) {
            if (z2) {
                return;
            }
            c.this.f1892b = null;
        }
    }

    public class C0038c implements a {

        public final RectF f1906a;

        public final RectF f1907b;

        public int f1908c;

        public C0038c() {
            RectF rectF = new RectF();
            this.f1907b = rectF;
            RectF rectF2 = new RectF();
            this.f1906a = rectF2;
            this.f1908c = 0;
            rectF2.set(-1.0f, -1.0f, -1.0f, -1.0f);
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
        }

        @Override
        public final void c(Canvas canvas, int i2, int i3, int i4, int i5) {
            RectF rectF = this.f1906a;
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
            RectF rectF2 = this.f1907b;
            rectF2.set(-1.0f, -1.0f, -1.0f, -1.0f);
            c cVar = c.this;
            if (i2 >= 0 && i3 >= 0) {
                int intrinsicWidth = cVar.f1894d[0].getIntrinsicWidth();
                int i6 = i2 - ((intrinsicWidth / 4) + (intrinsicWidth / 2));
                float f2 = i6;
                float f3 = i3;
                canvas.translate(f2, f3);
                Drawable[] drawableArr = cVar.f1894d;
                drawableArr[0].draw(canvas);
                canvas.translate(-i6, -i3);
                rectF.set(f2, f3, i6 + intrinsicWidth, drawableArr[0].getIntrinsicHeight() + i3);
            }
            if (i4 < 0 || i5 < 0) {
                return;
            }
            int intrinsicWidth2 = cVar.f1894d[1].getIntrinsicWidth();
            int i7 = i4 - (intrinsicWidth2 / 4);
            float f4 = i7;
            float f5 = i5;
            canvas.translate(f4, f5);
            Drawable[] drawableArr2 = cVar.f1894d;
            drawableArr2[1].draw(canvas);
            canvas.translate(-i7, -i5);
            rectF2.set(f4, f5, i7 + intrinsicWidth2, drawableArr2[1].getIntrinsicHeight() + i5);
        }

        @Override
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            c cVar = c.this;
            if (actionMasked == 0) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (this.f1906a.contains(x2, y2)) {
                    this.f1908c = 1;
                } else {
                    if (!this.f1907b.contains(x2, y2)) {
                        return false;
                    }
                    this.f1908c = 2;
                }
                ((EditableView) cVar.f1891a).k(-2);
                ((EditableView) cVar.f1891a).q(this.f1908c, true);
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f1908c == 0) {
                        return false;
                    }
                    int iA = cVar.a(motionEvent);
                    int i2 = this.f1908c;
                    if (i2 == 1) {
                        int selectionEnd = cVar.f1891a.getSelectionEnd();
                        if (iA >= selectionEnd) {
                            iA = selectionEnd - 1;
                        }
                        ((EditableView) cVar.f1891a).s(iA, selectionEnd, -1);
                    } else if (i2 == 2) {
                        int selectionStart = cVar.f1891a.getSelectionStart();
                        if (iA <= selectionStart) {
                            iA = selectionStart + 1;
                        }
                        ((EditableView) cVar.f1891a).s(selectionStart, iA, 1);
                    }
                    return true;
                }
                if (actionMasked != 3) {
                    return this.f1908c != 0;
                }
            }
            if (this.f1908c == 0) {
                return false;
            }
            this.f1908c = 0;
            ((EditableView) cVar.f1891a).q(0, false);
            ((EditableView) cVar.f1891a).k(-1);
            return true;
        }

        @Override
        public final void onTouchModeChanged(boolean z2) {
            if (z2) {
                return;
            }
            c.this.f1892b = null;
        }
    }

    public c(Context context, c1.a aVar, c1.e eVar) {
        this.f1891a = aVar;
        Drawable drawableH = z0.c.h(context, R.drawable.text_select_handle_middle);
        this.f1893c = drawableH;
        drawableH.setBounds(0, 0, drawableH.getIntrinsicWidth(), drawableH.getIntrinsicHeight());
        Drawable[] drawableArr = {drawableH, drawableH};
        this.f1894d = drawableArr;
        Drawable drawableH2 = z0.c.h(context, R.drawable.text_select_handle_left);
        drawableH2.setBounds(0, 0, drawableH2.getIntrinsicWidth(), drawableArr[0].getIntrinsicHeight());
        Drawable drawableH3 = z0.c.h(context, R.drawable.text_select_handle_right);
        drawableH3.setBounds(0, 0, drawableH3.getIntrinsicWidth(), drawableArr[1].getIntrinsicHeight());
        if (Build.VERSION.SDK_INT >= 21) {
            drawableH.setTint(eVar.b((byte) 10));
            drawableArr[0].setTint(eVar.b((byte) 10));
            drawableArr[1].setTint(eVar.b((byte) 10));
        }
        OverScroller overScroller = new OverScroller(context);
        this.f1895e = overScroller;
        overScroller.startScroll(0, 0, 0, 0, 0);
        GestureDetector gestureDetector = new GestureDetector(context, this);
        this.f1896f = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
    }

    public final int a(MotionEvent motionEvent) {
        int iB = b();
        int iC = c();
        float intrinsicHeight = this.f1893c.getIntrinsicHeight();
        float x2 = motionEvent.getX() + iB;
        float y2 = motionEvent.getY() + iC;
        c1.a aVar = this.f1891a;
        return ((EditableView) aVar).h(x2, (y2 - aVar.getLineHeight()) - intrinsicHeight);
    }

    public final int b() {
        return this.f1895e.getCurrX();
    }

    public final int c() {
        return this.f1895e.getCurrY();
    }

    public final void d(MotionEvent motionEvent, boolean z2) {
        OverScroller overScroller = this.f1895e;
        float x2 = motionEvent.getX() + overScroller.getCurrX();
        float y2 = motionEvent.getY() + overScroller.getCurrY();
        c1.a aVar = this.f1891a;
        int iH = ((EditableView) aVar).h(x2, y2);
        int[] iArr = aVar.getEditable().f1861g;
        int i2 = iArr[0];
        if (i2 != -1 && i2 <= iH && iH <= iArr[1]) {
            if (z2) {
                ((EditableView) aVar).t(2);
                return;
            }
            return;
        }
        ru.zdevs.zarchiver.ui.editor.b editable = aVar.getEditable();
        int[] iArrJ = editable.j(iH);
        int i3 = iArrJ[0];
        int i4 = iArrJ[1];
        EditableView editableView = (EditableView) aVar;
        if (!editableView.hasFocus()) {
            editableView.requestFocus();
            if (!editableView.hasFocus()) {
                editableView.requestFocusFromTouch();
            }
        }
        InputMethodManager inputMethodManager = editableView.f1821j;
        inputMethodManager.viewClicked(editableView);
        inputMethodManager.showSoftInput(editableView, 0);
        aVar.getInputConnection().beginBatchEdit();
        editableView.s(iArrJ[0], iArrJ[1], -1);
        editable.n(16);
        aVar.getInputConnection().endBatchEdit();
    }

    public final void e() {
        OverScroller overScroller = this.f1895e;
        overScroller.forceFinished(true);
        overScroller.startScroll(0, 0, 0, 0, 0);
        this.f1897g = 0;
        this.f1898h = 0;
    }

    public final void f(int i2, int i3, boolean z2) {
        if (i2 < 0) {
            i2 = 0;
        } else {
            int i4 = this.f1897g;
            if (i2 > i4) {
                i2 = i4;
            }
        }
        if (i3 < 0) {
            i3 = 0;
        } else {
            int i5 = this.f1898h;
            if (i3 > i5) {
                i3 = i5;
            }
        }
        EditableView editableView = (EditableView) this.f1891a;
        editableView.k(800);
        editableView.k(-3);
        h(i2, i3, z2);
    }

    public final void g(int i2) {
        if (i2 == 0) {
            this.f1892b = null;
        } else if (i2 == 1 || i2 == 3) {
            this.f1892b = new b(i2 == 1 ? 0 : 5000);
        } else {
            this.f1892b = new C0038c();
        }
    }

    public final void h(int i2, int i3, boolean z2) {
        OverScroller overScroller = this.f1895e;
        overScroller.forceFinished(true);
        overScroller.startScroll(overScroller.getCurrX(), overScroller.getCurrY(), i2 - overScroller.getCurrX(), i3 - overScroller.getCurrY(), z2 ? 100 : 250);
        if (z2) {
            overScroller.abortAnimation();
        }
    }

    @Override
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        d(motionEvent, false);
        return true;
    }

    @Override
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override
    public final boolean onDown(MotionEvent motionEvent) {
        OverScroller overScroller = this.f1895e;
        if (!overScroller.isFinished()) {
            overScroller.forceFinished(true);
            this.f1891a.postInvalidate();
        }
        this.f1899i = true;
        return true;
    }

    @Override
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        c1.a aVar = this.f1891a;
        ((EditableView) aVar).k(1000);
        OverScroller overScroller = this.f1895e;
        overScroller.forceFinished(true);
        overScroller.fling(overScroller.getCurrX(), overScroller.getCurrY(), (int) (-f2), (int) (-f3), 0, this.f1897g, 0, this.f1898h, 0, 0);
        aVar.postInvalidate();
        return true;
    }

    @Override
    public final void onLongPress(MotionEvent motionEvent) {
        d(motionEvent, true);
    }

    @Override
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        c1.a aVar = this.f1891a;
        ((EditableView) aVar).k(600);
        OverScroller overScroller = this.f1895e;
        overScroller.forceFinished(true);
        int currX = overScroller.getCurrX();
        float f4 = currX + f2;
        int i2 = this.f1897g;
        if (f4 > i2) {
            f2 = i2 - currX;
        } else if (f4 < 0.0f) {
            f2 = 0.0f;
        }
        int currY = overScroller.getCurrY();
        float f5 = currY + f3;
        int i3 = this.f1898h;
        if (f5 > i3) {
            f3 = i3 - currY;
        } else if (f5 < 0.0f) {
            f3 = 0.0f;
        }
        if (f2 == 0.0f && f3 == 0.0f) {
            return false;
        }
        overScroller.startScroll(currX, currY, (int) f2, (int) f3, 0);
        aVar.postInvalidate();
        return true;
    }

    @Override
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        c1.a aVar = this.f1891a;
        EditableView editableView = (EditableView) aVar;
        if (editableView.f1824m != null && editableView.f1825n == 1) {
            editableView.u();
        }
        ru.zdevs.zarchiver.ui.editor.b editable = aVar.getEditable();
        OverScroller overScroller = this.f1895e;
        float x2 = motionEvent.getX() + overScroller.getCurrX();
        float y2 = motionEvent.getY() + overScroller.getCurrY();
        EditableView editableView2 = (EditableView) aVar;
        int iH = editableView2.h(x2, y2);
        if (editableView2.f1824m != null && editableView2.f1825n == 0) {
            int[] iArr = editable.f1861g;
            editableView2.u();
            if (iH >= iArr[0] && iH < iArr[1]) {
                return true;
            }
        }
        if (!editableView2.hasFocus()) {
            editableView2.requestFocus();
            if (!editableView2.hasFocus()) {
                editableView2.requestFocusFromTouch();
            }
        }
        InputMethodManager inputMethodManager = editableView2.f1821j;
        inputMethodManager.viewClicked(editableView2);
        inputMethodManager.showSoftInput(editableView2, 0);
        aVar.getInputConnection().beginBatchEdit();
        editableView2.s(iH, iH, -1);
        editable.n(64);
        aVar.getInputConnection().endBatchEdit();
        return true;
    }

    @Override
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
