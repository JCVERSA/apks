package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.util.zzau;
import defpackage.ejf;
import java.util.ArrayList;

public final class zzdoh extends FrameLayout {
    public final zzau b;

    public zzdoh(Context context, @NonNull View view, @NonNull zzau zzauVar) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.b = zzauVar;
    }

    @Override
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.b.zzm(motionEvent);
        return false;
    }

    @Override
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt != null && (childAt instanceof ejf)) {
                arrayList.add((ejf) childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ejf) arrayList.get(i2)).destroy();
        }
    }
}
