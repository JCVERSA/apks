package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$id;
import com.google.android.material.internal.f0;
import java.util.Calendar;
import java.util.Iterator;

final class MaterialCalendarGridView extends GridView {

    private final Calendar f27977a;

    private final boolean f27978b;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(int i10, Rect rect) {
        if (i10 == 33) {
            setSelection(getAdapter().m());
        } else if (i10 == 130) {
            setSelection(getAdapter().b());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    private View c(int i10) {
        return getChildAt(i10 - getFirstVisiblePosition());
    }

    private static int d(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean e(Long l10, Long l11, Long l12, Long l13) {
        return l10 == null || l11 == null || l12 == null || l13 == null || l12.longValue() > l11.longValue() || l13.longValue() < l10.longValue();
    }

    @Override
    public m getAdapter() {
        return (m) super.getAdapter();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override
    protected final void onDraw(Canvas canvas) {
        int iA;
        int iD;
        int iA2;
        int iD2;
        int width;
        int i10;
        int right;
        int right2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        m adapter = getAdapter();
        DateSelector dateSelector = adapter.f28069b;
        b bVar = adapter.f28071d;
        int iMax = Math.max(adapter.b(), getFirstVisiblePosition());
        int iMin = Math.min(adapter.m(), getLastVisiblePosition());
        Long item = adapter.getItem(iMax);
        Long item2 = adapter.getItem(iMin);
        Iterator<androidx.core.util.e> it = dateSelector.getSelectedRanges().iterator();
        while (it.hasNext()) {
            androidx.core.util.e next = it.next();
            Object obj = next.f7958a;
            if (obj == null) {
                materialCalendarGridView = this;
            } else if (next.f7959b != null) {
                Long l10 = (Long) obj;
                long jLongValue = l10.longValue();
                Long l11 = (Long) next.f7959b;
                long jLongValue2 = l11.longValue();
                if (!e(item, item2, l10, l11)) {
                    boolean zP = f0.p(this);
                    if (jLongValue < item.longValue()) {
                        if (adapter.h(iMax)) {
                            right2 = 0;
                        } else {
                            right2 = !zP ? materialCalendarGridView.c(iMax - 1).getRight() : materialCalendarGridView.c(iMax - 1).getLeft();
                        }
                        iD = right2;
                        iA = iMax;
                    } else {
                        materialCalendarGridView.f27977a.setTimeInMillis(jLongValue);
                        iA = adapter.a(materialCalendarGridView.f27977a.get(5));
                        iD = d(materialCalendarGridView.c(iA));
                    }
                    if (jLongValue2 > item2.longValue()) {
                        if (adapter.i(iMin)) {
                            right = getWidth();
                        } else {
                            right = !zP ? materialCalendarGridView.c(iMin).getRight() : materialCalendarGridView.c(iMin).getLeft();
                        }
                        iD2 = right;
                        iA2 = iMin;
                    } else {
                        materialCalendarGridView.f27977a.setTimeInMillis(jLongValue2);
                        iA2 = adapter.a(materialCalendarGridView.f27977a.get(5));
                        iD2 = d(materialCalendarGridView.c(iA2));
                    }
                    int itemId = (int) adapter.getItemId(iA);
                    int i11 = iMax;
                    int i12 = iMin;
                    int itemId2 = (int) adapter.getItemId(iA2);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View viewC = materialCalendarGridView.c(numColumns);
                        int top = viewC.getTop() + bVar.f28039a.c();
                        m mVar = adapter;
                        int bottom = viewC.getBottom() - bVar.f28039a.b();
                        if (zP) {
                            int i13 = iA2 > numColumns2 ? 0 : iD2;
                            width = numColumns > iA ? getWidth() : iD;
                            i10 = i13;
                        } else {
                            i10 = numColumns > iA ? 0 : iD;
                            width = iA2 > numColumns2 ? getWidth() : iD2;
                        }
                        canvas.drawRect(i10, top, width, bottom, bVar.f28046h);
                        itemId++;
                        materialCalendarGridView = this;
                        it = it;
                        adapter = mVar;
                    }
                    materialCalendarGridView = this;
                    iMax = i11;
                    iMin = i12;
                }
            }
        }
    }

    @Override
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        if (z10) {
            a(i10, rect);
        } else {
            super.onFocusChanged(false, i10, rect);
        }
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().b()) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(getAdapter().b());
        return true;
    }

    @Override
    public void onMeasure(int i10, int i11) {
        if (!this.f27978b) {
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override
    public void setSelection(int i10) {
        if (i10 < getAdapter().b()) {
            super.setSelection(getAdapter().b());
        } else {
            super.setSelection(i10);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f27977a = x.s();
        if (MaterialDatePicker.m0(getContext())) {
            setNextFocusLeftId(R$id.cancel_button);
            setNextFocusRightId(R$id.confirm_button);
        }
        this.f27978b = MaterialDatePicker.o0(getContext());
        ViewCompat.setAccessibilityDelegate(this, new a());
    }

    @Override
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof m)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), m.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
