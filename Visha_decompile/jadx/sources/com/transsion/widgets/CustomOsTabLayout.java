package com.transsion.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.transsion.common.R;
import com.transsion.widgetslib.widget.tablayout.OSTabLayout;
import com.transsion.widgetslib.widget.tablayout.TabLayout;

public class CustomOsTabLayout extends OSTabLayout {
    private int disableColor;
    private int disableSelectedColor;
    private int normalColor;
    private int selectedColor;

    public CustomOsTabLayout(Context context) {
        super(context);
        init();
    }

    private void init() {
        Resources.Theme theme = getContext().getTheme();
        this.normalColor = getResources().getColor(R.color.os_text_secondary_color, theme);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color, R.attr.os_platform_disabled_color});
        this.selectedColor = typedArrayObtainStyledAttributes.getColor(0, getResources().getColor(R.color.os_platform_basic_color_hios));
        this.disableSelectedColor = typedArrayObtainStyledAttributes.getColor(1, getResources().getColor(R.color.os_platform_disabled_ims_solid_color_hios));
        this.disableColor = getResources().getColor(R.color.text_disabled_color, theme);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setTabChildEnable(boolean z) {
        TabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.setTabChildEnable(z);
            if (z) {
                tabLayout.setTabTextColors(this.normalColor, this.selectedColor);
            } else {
                tabLayout.setTabTextColors(this.disableColor, this.disableSelectedColor);
            }
        }
    }

    public CustomOsTabLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
