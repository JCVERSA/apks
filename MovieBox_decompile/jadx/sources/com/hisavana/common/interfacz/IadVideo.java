package com.hisavana.common.interfacz;

import android.content.Context;
import java.lang.ref.WeakReference;

public interface IadVideo {
    boolean canShow();

    boolean isLoaded();

    void show(WeakReference<Context> weakReference, String str, String str2);
}
