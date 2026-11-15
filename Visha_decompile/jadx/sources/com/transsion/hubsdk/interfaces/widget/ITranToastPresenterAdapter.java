package com.transsion.hubsdk.interfaces.widget;

import android.content.Context;
import android.view.View;

public interface ITranToastPresenterAdapter {
    View getTextToastView(Context context, CharSequence charSequence);
}
