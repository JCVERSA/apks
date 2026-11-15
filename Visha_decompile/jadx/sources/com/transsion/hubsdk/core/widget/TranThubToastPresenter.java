package com.transsion.hubsdk.core.widget;

import android.content.Context;
import android.view.View;
import com.transsion.hubsdk.interfaces.widget.ITranToastPresenterAdapter;
import com.transsion.hubsdk.widget.TranToastPresenter;

public class TranThubToastPresenter implements ITranToastPresenterAdapter {
    @Override
    public View getTextToastView(Context context, CharSequence charSequence) {
        return TranToastPresenter.getTextToastView(context, charSequence);
    }
}
