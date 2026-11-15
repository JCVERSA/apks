package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;

public abstract class dy0 {
    public static void a(CharSequence charSequence) {
        ((ClipboardManager) Utils.a().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(Utils.a().getPackageName(), charSequence));
    }

    public static void addChangedListener(ClipboardManager.OnPrimaryClipChangedListener onPrimaryClipChangedListener) {
        ((ClipboardManager) Utils.a().getSystemService("clipboard")).addPrimaryClipChangedListener(onPrimaryClipChangedListener);
    }

    public static CharSequence b() {
        CharSequence charSequenceCoerceToText;
        try {
            ClipData primaryClip = ((ClipboardManager) Utils.a().getSystemService("clipboard")).getPrimaryClip();
            return (primaryClip == null || primaryClip.getItemCount() <= 0 || (charSequenceCoerceToText = primaryClip.getItemAt(0).coerceToText(Utils.a())) == null) ? "" : charSequenceCoerceToText;
        } catch (RuntimeException e) {
            LogUtils.m("ClipboardUtils", "getText failed: " + e.getMessage());
            return "";
        }
    }

    public static void removeChangedListener(ClipboardManager.OnPrimaryClipChangedListener onPrimaryClipChangedListener) {
        ((ClipboardManager) Utils.a().getSystemService("clipboard")).removePrimaryClipChangedListener(onPrimaryClipChangedListener);
    }
}
