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
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$string;

public class AdExpandMenuItemView extends LinearLayout {

    private ImageView f21659a;

    private TextView f21660b;

    private ImageView f21661c;

    public enum Type {
        PERSONALISE_CLOSE,
        ADVERTISER_INFO,
        COPY_LINK
    }

    static class a {

        static final int[] f21662a;

        static {
            int[] iArr = new int[Type.values().length];
            f21662a = iArr;
            try {
                iArr[Type.PERSONALISE_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21662a[Type.ADVERTISER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21662a[Type.COPY_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AdExpandMenuItemView(Context context) {
        this(context, null, 0);
    }

    private void a() {
        this.f21659a = (ImageView) findViewById(R$id.left_image_view);
        this.f21660b = (TextView) findViewById(R$id.message_text_view);
        this.f21661c = (ImageView) findViewById(R$id.right_image_view);
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
        if (this.f21659a == null || this.f21660b == null || this.f21661c == null) {
            return;
        }
        int i10 = a.f21662a[type.ordinal()];
        if (i10 == 1) {
            this.f21659a.setImageResource(R$drawable.hs_ad_heart);
            this.f21660b.setText(R$string.interstitial_close);
            this.f21661c.setVisibility(0);
        } else if (i10 == 2) {
            this.f21659a.setImageResource(R$drawable.hs_ad_info);
            this.f21660b.setText(R$string.about_the_advertiser);
            this.f21661c.setVisibility(0);
        } else {
            if (i10 != 3) {
                return;
            }
            this.f21659a.setImageResource(R$drawable.hs_ad_link);
            this.f21660b.setText(R$string.copy_link);
            this.f21661c.setVisibility(8);
        }
    }

    public AdExpandMenuItemView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdExpandMenuItemView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R$layout.ad_expand_menu_item_layout, this);
        a();
    }
}
