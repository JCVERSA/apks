package com.wh.stat.layout;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.exposure.R;
import defpackage.cl4;
import defpackage.cq5;
import defpackage.fx9;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import org.slf4j.Marker;

public class StatLayout extends FrameLayout implements View.OnTouchListener {
    public Rect b;
    public Field c;
    public int d;

    public class a implements View.OnTouchListener {
        public View.OnTouchListener b;

        public a(View.OnTouchListener onTouchListener) {
            this.b = onTouchListener;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                motionEvent.getAction();
            }
            View.OnTouchListener onTouchListener = this.b;
            if (onTouchListener != null) {
                return onTouchListener.onTouch(view, motionEvent);
            }
            return false;
        }
    }

    public StatLayout(Context context) {
        super(context);
        this.b = new Rect();
        this.d = 0;
    }

    private Field getListenerInfoField() {
        Field declaredField = null;
        try {
            declaredField = View.class.getDeclaredField("mListenerInfo");
            if (!declaredField.isAccessible()) {
                declaredField.setAccessible(true);
            }
            this.c = declaredField;
            return declaredField;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return declaredField;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return declaredField;
        }
    }

    public final void a(View view) {
        Field declaredField;
        try {
            Object obj = getListenerInfoField().get(view);
            if (obj != null) {
                declaredField = obj.getClass().getDeclaredField("mOnTouchListener");
                declaredField.setAccessible(true);
            } else {
                declaredField = null;
            }
            b(obj, declaredField, view);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    public final void b(Object obj, Field field, View view) {
        Object obj2;
        Object obj3 = null;
        if (field != null) {
            try {
                obj2 = field.get(obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return;
            }
        } else {
            obj2 = null;
        }
        if (obj2 instanceof View.OnTouchListener) {
            obj3 = obj2;
        }
        View.OnTouchListener onTouchListener = (View.OnTouchListener) obj3;
        if (onTouchListener == null) {
            view.setOnTouchListener(this);
            return;
        }
        if (onTouchListener instanceof a) {
            return;
        }
        int i = R.id.android_touch_listener;
        if (view.getTag(i) instanceof a) {
            return;
        }
        a aVar = new a(onTouchListener);
        view.setTag(i, aVar);
        field.setAccessible(true);
        field.set(obj, aVar);
    }

    public boolean displayView(View view) {
        fx9 fx9VarE = cl4.f().e();
        view.getGlobalVisibleRect(this.b);
        boolean zContains = fx9VarE.d().contains(this.b);
        cq5.a("displayView 是否包含在屏幕中:" + zContains + ",  id:" + view.getId() + ",  " + this.b.left + Marker.ANY_NON_NULL_MARKER + this.b.top + Marker.ANY_NON_NULL_MARKER + this.b.right + Marker.ANY_NON_NULL_MARKER + this.b.bottom + ", 数据：" + ((String) view.getTag(cl4.f().g())));
        return zContains;
    }

    public ArrayList<View> findDisplayView(View view) {
        ArrayList<View> arrayList = new ArrayList<>();
        if (isVisible(view) && isViewGlobalVisible(view)) {
            arrayList.add(view);
            if (view instanceof ViewGroup) {
                findDisplayViewsInGroup((ViewGroup) view, arrayList);
            }
        }
        return arrayList;
    }

    public void findDisplayViewsInGroup(ViewGroup viewGroup, ArrayList<View> arrayList) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            ArrayList<View> arrayListFindDisplayView = findDisplayView(childAt);
            if (!arrayListFindDisplayView.isEmpty()) {
                arrayList.addAll(arrayListFindDisplayView);
            } else if (isVisible(childAt) && isViewGlobalVisible(childAt)) {
                arrayList.add(childAt);
            }
        }
    }

    public boolean isViewGlobalVisible(View view) {
        return view.getGlobalVisibleRect(this.b);
    }

    public boolean isViewValidRange(View view) {
        int iF = cl4.f().e().f();
        if (iF == 0) {
            return true;
        }
        view.getGlobalVisibleRect(this.b);
        float measuredWidth = view.getMeasuredWidth() * view.getMeasuredHeight() * (iF / 100.0f);
        Rect rect = this.b;
        return measuredWidth <= ((float) ((rect.right - rect.left) * (rect.bottom - rect.top)));
    }

    public boolean isVisible(View view) {
        return view.getVisibility() == 0;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            Math.abs(((int) motionEvent.getRawY()) - this.d);
            cl4.f().b();
            cl4.f().p();
            return false;
        }
        if (motionEvent.getAction() == 2 || motionEvent.getAction() != 0) {
            return false;
        }
        this.d = (int) motionEvent.getRawY();
        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 0) {
            cl4.f().b();
            Iterator<View> it = findDisplayView(getRootView()).iterator();
            while (it.hasNext()) {
                wrapTouch(it.next());
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void wrapTouch(View view) {
        a(view);
    }

    public StatLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.d = 0;
    }

    public StatLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Rect();
        this.d = 0;
    }
}
