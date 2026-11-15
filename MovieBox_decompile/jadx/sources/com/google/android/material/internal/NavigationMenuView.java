package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class NavigationMenuView extends RecyclerView implements androidx.appcompat.view.menu.m {
    public NavigationMenuView(Context context) {
        this(context, null);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override
    public void initialize(androidx.appcompat.view.menu.f fVar) {
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setLayoutManager(new LinearLayoutManager(context, 1, false));
    }
}
