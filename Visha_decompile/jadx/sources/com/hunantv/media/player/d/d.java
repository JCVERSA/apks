package com.hunantv.media.player.d;

import com.hunantv.media.player.utils.ArrayUtil;

public class d {
    public static boolean a = false;
    private static final String[] b = {"VIVO Y66I", "SLA-AL", "SLA-TL", "NEM-AL10", "OPPO A83", "GIONEE S10C", "Redmi Note 5A", "OPPO A57", "HUAWEI MLA-AL10", "V1813A", "KOB-W09", "OPPO R11", "Redmi 6", "Mi-4c", "FLA-AL10", "V1901A"};

    public static boolean a(String str) {
        return ArrayUtil.inArrayIgnoreCase(b, str);
    }
}
