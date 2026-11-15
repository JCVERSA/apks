package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;

public class ContainerFLayout extends FrameLayout {
    public WeakReference b;

    public ContainerFLayout(Context context) {
        super(context);
    }

    public Object getParentViewWrf() {
        WeakReference weakReference = this.b;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setParentViewWrf(Object obj) {
        this.b = new WeakReference(obj);
    }
}
