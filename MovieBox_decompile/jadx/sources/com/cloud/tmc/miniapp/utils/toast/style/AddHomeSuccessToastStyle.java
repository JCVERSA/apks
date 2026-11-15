package com.cloud.tmc.miniapp.utils.toast.style;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import kotlin.jvm.internal.Intrinsics;

public final class AddHomeSuccessToastStyle implements IToastStyle<View> {
    @Override
    public View createView(Context context) {
        Intrinsics.h(context, "context");
        View inflate = View.inflate(context, R.layout.mini_toast_add_home_success_layout, null);
        ((TextView) inflate.findViewById(R.id.tv_text_add_home_msg)).setId(android.R.id.message);
        Intrinsics.g(inflate, "inflate");
        return inflate;
    }

    @Override
    public int getGravity() {
        return 80;
    }

    @Override
    public float getHorizontalMargin() {
        return IToastStyle.DefaultImpls.getHorizontalMargin(this);
    }

    @Override
    public ToastType getToastType() {
        return ToastType.NONE.INSTANCE;
    }

    @Override
    public float getVerticalMargin() {
        return IToastStyle.DefaultImpls.getVerticalMargin(this);
    }

    @Override
    public int getXOffset() {
        return IToastStyle.DefaultImpls.getXOffset(this);
    }

    @Override
    public int getYOffset() {
        return IToastStyle.DefaultImpls.getYOffset(this);
    }
}
