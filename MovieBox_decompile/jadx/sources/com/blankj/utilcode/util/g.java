package com.blankj.utilcode.util;

import android.content.ClipData;
import android.content.ClipboardManager;

public abstract class g {
    public static void a(CharSequence charSequence) {
        ((ClipboardManager) Utils.a().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(Utils.a().getPackageName(), charSequence));
    }
}
