package com.mbridge.msdk.nativex.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;

public class MBNativeRollView extends LinearLayout {

    private RollingBCView f35825a;

    private Context f35826b;

    private NativeListener.FilpListener f35827c;

    public interface a {
    }

    @SuppressLint({"NewApi"})
    public MBNativeRollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f35825a.dispatchTouchEvent(motionEvent);
    }

    public void setData(List<Frame> list, Context context, String str, a aVar) {
        this.f35825a.setData(list, context, str, aVar);
    }

    public void setFilpListening(NativeListener.FilpListener filpListener) {
        if (filpListener != null) {
            this.f35827c = filpListener;
            this.f35825a.setFilpListening(filpListener);
        }
    }

    public void setFrameWidth(int i10) {
        this.f35825a.setLayoutParams(new LinearLayout.LayoutParams(i10, -2));
    }

    public MBNativeRollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35826b = context;
        RollingBCView rollingBCView = new RollingBCView(context);
        this.f35825a = rollingBCView;
        addView(rollingBCView);
        this.f35825a.setLayoutParams(new LinearLayout.LayoutParams((int) (((double) t0.j(context)) * 0.9d), -2));
        setClipChildren(false);
    }

    public MBNativeRollView(Context context) {
        this(context, null);
    }
}
