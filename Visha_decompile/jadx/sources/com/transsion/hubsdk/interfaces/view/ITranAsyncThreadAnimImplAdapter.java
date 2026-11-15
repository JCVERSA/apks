package com.transsion.hubsdk.interfaces.view;

import android.os.Looper;
import android.view.View;

public interface ITranAsyncThreadAnimImplAdapter {
    boolean asyncAnimScheduleTraversals(View view);

    void init(Looper looper);

    void release();

    boolean setViewAlpha(View view, float f);

    boolean setViewScaleX(View view, float f);

    boolean setViewScaleY(View view, float f);

    boolean setViewTranslationX(View view, float f);

    boolean setViewTranslationY(View view, float f);
}
