package com.bytedance.sdk.component.utils;

import java.util.List;

public class Fmk {
    public static boolean Sj(List<?> list) {
        return list == null || list.size() == 0;
    }

    public static boolean sP(List<?> list) {
        return !Sj(list);
    }
}
