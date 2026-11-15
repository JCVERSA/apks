package com.aliyun.subtitle;

import android.widget.RelativeLayout;
import java.util.Map;

public class LocationStyle {
    public static final int Location_Bottom = 8;
    public static final int Location_Center = 64;
    public static final int Location_CenterH = 16;
    public static final int Location_CenterV = 32;
    public static final int Location_Left = 1;
    public static final int Location_Right = 4;
    public static final int Location_Top = 2;

    public static void setLocation(RelativeLayout.LayoutParams layoutParams, Map<String, Object> map, int i10) {
        if (map != null && map.containsKey(SubtitleView.EXTRA_LOCATION__INT)) {
            i10 = ((Integer) map.get(SubtitleView.EXTRA_LOCATION__INT)).intValue();
        }
        if ((i10 & 8) == 8) {
            layoutParams.addRule(12);
        }
        if ((i10 & 1) == 1) {
            layoutParams.addRule(9);
        }
        if ((i10 & 2) == 2) {
            layoutParams.addRule(10);
        }
        if ((i10 & 4) == 4) {
            layoutParams.addRule(11);
        }
        if ((i10 & 16) == 16) {
            layoutParams.addRule(14);
        }
        if ((i10 & 32) == 32) {
            layoutParams.addRule(15);
        }
        if ((i10 & 64) == 64) {
            layoutParams.addRule(13);
        }
    }
}
