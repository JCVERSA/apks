package com.cloud.hisavana.sdk.common.widget.expandmenu;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R;

public class AdExpandMenuItemView extends LinearLayout {
    public ImageView b;
    public TextView c;
    public ImageView d;

    public enum Type {
        PERSONALISE_CLOSE,
        ADVERTISER_INFO,
        COPY_LINK
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Type.values().length];
            a = iArr;
            try {
                iArr[Type.PERSONALISE_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Type.ADVERTISER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Type.COPY_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AdExpandMenuItemView(Context context) {
        this(context, null, 0);
    }

    public final void a() {
        this.b = (ImageView) findViewById(R.id.left_image_view);
        this.c = (TextView) findViewById(R.id.message_text_view);
        this.d = (ImageView) findViewById(R.id.right_image_view);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            setBackgroundColor(Color.parseColor("#F7F7F8"));
        } else if (action == 1 || action == 3) {
            setBackgroundColor(-1);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setData(Type type) {
        if (this.b == null || this.c == null || this.d == null) {
            return;
        }
        int i = a.a[type.ordinal()];
        if (i == 1) {
            this.b.setImageResource(R.drawable.hs_ad_heart);
            this.c.setText(R.string.interstitial_close);
            this.d.setVisibility(0);
        } else if (i == 2) {
            this.b.setImageResource(R.drawable.hs_ad_info);
            this.c.setText(R.string.about_the_advertiser);
            this.d.setVisibility(0);
        } else {
            if (i != 3) {
                return;
            }
            this.b.setImageResource(R.drawable.hs_ad_link);
            this.c.setText(R.string.copy_link);
            this.d.setVisibility(8);
        }
    }

    public AdExpandMenuItemView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdExpandMenuItemView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.ad_expand_menu_item_layout, this);
        a();
    }
}
