package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.transsion.playercommon.R;

public class NotificationView extends LinearLayout {
    public TextView b;

    public NotificationView(Context context) {
        this(context, null);
    }

    public void setText(String str) {
        this.b.setText(str);
    }

    public NotificationView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setText(@StringRes int i) {
        this.b.setText(i);
    }

    public NotificationView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.notification_view, (ViewGroup) this, true);
        this.b = (TextView) findViewById(R.id.tv_open);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NotificationView);
            this.b.setText(typedArrayObtainStyledAttributes.getResourceId(R.styleable.NotificationView_notify_text, R.string.downing_notify_notice_n));
            typedArrayObtainStyledAttributes.recycle();
        }
        setBackgroundResource(R.drawable.notify_view_bg);
    }
}
