package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;

public class ib extends vS {
    public ib(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        View view = new View(context);
        this.Zq = view;
        addView(view, getWidgetLayoutParams());
    }

    @Override
    public boolean uA() {
        super.uA();
        this.Zq.setBackgroundColor(this.f20273aa.LqL());
        return true;
    }
}
