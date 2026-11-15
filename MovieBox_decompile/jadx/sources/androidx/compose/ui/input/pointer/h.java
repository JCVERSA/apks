package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;

public final class h {

    private long f4683a;

    private final SparseLongArray f4684b = new SparseLongArray();

    private final SparseBooleanArray f4685c = new SparseBooleanArray();

    private final List f4686d = new ArrayList();

    private int f4687e = -1;

    private int f4688f = -1;

    private final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked != 9) {
                return;
            }
            int pointerId = motionEvent.getPointerId(0);
            if (this.f4684b.indexOfKey(pointerId) < 0) {
                SparseLongArray sparseLongArray = this.f4684b;
                long j10 = this.f4683a;
                this.f4683a = 1 + j10;
                sparseLongArray.put(pointerId, j10);
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (this.f4684b.indexOfKey(pointerId2) < 0) {
            SparseLongArray sparseLongArray2 = this.f4684b;
            long j11 = this.f4683a;
            this.f4683a = 1 + j11;
            sparseLongArray2.put(pointerId2, j11);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.f4685c.put(pointerId2, true);
            }
        }
    }

    private final void b(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType == this.f4687e && source == this.f4688f) {
            return;
        }
        this.f4687e = toolType;
        this.f4688f = source;
        this.f4685c.clear();
        this.f4684b.clear();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x005b  */
    /* JADX WARN: Code duplicated, block: B:14:0x005e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0061  */
    /* JADX WARN: Code duplicated, block: B:18:0x0064  */
    /* JADX WARN: Code duplicated, block: B:20:0x0067  */
    /* JADX WARN: Code duplicated, block: B:22:0x0070  */
    /* JADX WARN: Code duplicated, block: B:23:0x0077  */
    /* JADX WARN: Code duplicated, block: B:24:0x007e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    /* JADX WARN: Code duplicated, block: B:26:0x008c  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fb  */
    private final z d(i0 i0Var, MotionEvent motionEvent, int i10, boolean z10) {
        long j10;
        long jMo116localToScreenMKHz9U;
        long jA;
        long jMo117screenToLocalMKHz9U;
        int toolType;
        int iE;
        int historySize;
        int i11;
        long jC;
        float historicalX;
        long jF = f(motionEvent.getPointerId(i10));
        float pressure = motionEvent.getPressure(i10);
        long jA2 = y.h.a(motionEvent.getX(i10), motionEvent.getY(i10));
        long jG = y.g.g(jA2, 0.0f, 0.0f, 3, null);
        if (i10 != 0) {
            if (Build.VERSION.SDK_INT >= 29) {
                jA = k.f4695a.a(motionEvent, i10);
                jMo117screenToLocalMKHz9U = i0Var.mo117screenToLocalMKHz9U(jA);
            } else {
                j10 = jA2;
                jMo116localToScreenMKHz9U = i0Var.mo116localToScreenMKHz9U(jA2);
            }
            toolType = motionEvent.getToolType(i10);
            if (toolType != 0) {
                iE = h0.f4689a.e();
            } else if (toolType != 1) {
                iE = h0.f4689a.d();
            } else if (toolType != 2) {
                iE = h0.f4689a.c();
            } else if (toolType != 3) {
                iE = h0.f4689a.b();
            } else if (toolType != 4) {
                iE = h0.f4689a.e();
            } else {
                iE = h0.f4689a.a();
            }
            int i12 = iE;
            ArrayList arrayList = new ArrayList(motionEvent.getHistorySize());
            historySize = motionEvent.getHistorySize();
            for (i11 = 0; i11 < historySize; i11++) {
                historicalX = motionEvent.getHistoricalX(i10, i11);
                float historicalY = motionEvent.getHistoricalY(i10, i11);
                if (Float.isInfinite(historicalX) && !Float.isNaN(historicalX) && !Float.isInfinite(historicalY) && !Float.isNaN(historicalY)) {
                    long jA3 = y.h.a(historicalX, historicalY);
                    arrayList.add(new e(motionEvent.getHistoricalEventTime(i11), jA3, jA3, null));
                }
            }
            if (motionEvent.getActionMasked() == 8) {
                jC = y.h.a(motionEvent.getAxisValue(10), (-motionEvent.getAxisValue(9)) + 0.0f);
            } else {
                jC = y.g.f75999b.c();
            }
            return new z(jF, motionEvent.getEventTime(), jMo116localToScreenMKHz9U, j10, z10, pressure, i12, this.f4685c.get(motionEvent.getPointerId(i10), false), arrayList, jC, jG, null);
        }
        jA = y.h.a(motionEvent.getRawX(), motionEvent.getRawY());
        jMo117screenToLocalMKHz9U = i0Var.mo117screenToLocalMKHz9U(jA);
        jMo116localToScreenMKHz9U = jA;
        j10 = jMo117screenToLocalMKHz9U;
        toolType = motionEvent.getToolType(i10);
        if (toolType != 0) {
            iE = h0.f4689a.e();
        } else if (toolType != 1) {
            iE = h0.f4689a.d();
        } else if (toolType != 2) {
            iE = h0.f4689a.c();
        } else if (toolType != 3) {
            iE = h0.f4689a.b();
        } else if (toolType != 4) {
            iE = h0.f4689a.e();
        } else {
            iE = h0.f4689a.a();
        }
        int i13 = iE;
        ArrayList arrayList2 = new ArrayList(motionEvent.getHistorySize());
        historySize = motionEvent.getHistorySize();
        while (i11 < historySize) {
            historicalX = motionEvent.getHistoricalX(i10, i11);
            float historicalY2 = motionEvent.getHistoricalY(i10, i11);
            if (Float.isInfinite(historicalX)) {
            }
        }
        if (motionEvent.getActionMasked() == 8) {
            jC = y.h.a(motionEvent.getAxisValue(10), (-motionEvent.getAxisValue(9)) + 0.0f);
        } else {
            jC = y.g.f75999b.c();
        }
        return new z(jF, motionEvent.getEventTime(), jMo116localToScreenMKHz9U, j10, z10, pressure, i13, this.f4685c.get(motionEvent.getPointerId(i10), false), arrayList2, jC, jG, null);
    }

    private final long f(int i10) {
        long jValueAt;
        int iIndexOfKey = this.f4684b.indexOfKey(i10);
        if (iIndexOfKey >= 0) {
            jValueAt = this.f4684b.valueAt(iIndexOfKey);
        } else {
            jValueAt = this.f4683a;
            this.f4683a = 1 + jValueAt;
            this.f4684b.put(i10, jValueAt);
        }
        return v.b(jValueAt);
    }

    private final boolean g(MotionEvent motionEvent, int i10) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i11 = 0; i11 < pointerCount; i11++) {
            if (motionEvent.getPointerId(i11) == i10) {
                return true;
            }
        }
        return false;
    }

    private final void h(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!this.f4685c.get(pointerId, false)) {
                this.f4684b.delete(pointerId);
                this.f4685c.delete(pointerId);
            }
        }
        if (this.f4684b.size() > motionEvent.getPointerCount()) {
            for (int size = this.f4684b.size() - 1; -1 < size; size--) {
                int iKeyAt = this.f4684b.keyAt(size);
                if (!g(motionEvent, iKeyAt)) {
                    this.f4684b.removeAt(size);
                    this.f4685c.delete(iKeyAt);
                }
            }
        }
    }

    public final y c(MotionEvent motionEvent, i0 i0Var) {
        int actionIndex;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3 || actionMasked == 4) {
            this.f4684b.clear();
            this.f4685c.clear();
            return null;
        }
        b(motionEvent);
        a(motionEvent);
        boolean z10 = actionMasked == 9 || actionMasked == 7 || actionMasked == 10;
        boolean z11 = actionMasked == 8;
        if (z10) {
            this.f4685c.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        this.f4686d.clear();
        int pointerCount = motionEvent.getPointerCount();
        int i10 = 0;
        while (i10 < pointerCount) {
            this.f4686d.add(d(i0Var, motionEvent, i10, (z10 || i10 == actionIndex || (z11 && motionEvent.getButtonState() == 0)) ? false : true));
            i10++;
        }
        h(motionEvent);
        return new y(motionEvent.getEventTime(), this.f4686d, motionEvent);
    }

    public final void e(int i10) {
        this.f4685c.delete(i10);
        this.f4684b.delete(i10);
    }
}
