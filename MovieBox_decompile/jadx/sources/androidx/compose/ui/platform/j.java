package androidx.compose.ui.platform;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

public final class j implements q0 {

    private final ClipboardManager f5515a;

    public j(ClipboardManager clipboardManager) {
        this.f5515a = clipboardManager;
    }

    @Override
    public AnnotatedString a() {
        ClipData primaryClip = this.f5515a.getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        ClipData.Item itemAt = primaryClip.getItemAt(0);
        return k.a(itemAt != null ? itemAt.getText() : null);
    }

    @Override
    public boolean b() {
        ClipDescription primaryClipDescription = this.f5515a.getPrimaryClipDescription();
        if (primaryClipDescription != null) {
            return primaryClipDescription.hasMimeType("text/*");
        }
        return false;
    }

    @Override
    public void c(AnnotatedString annotatedString) {
        this.f5515a.setPrimaryClip(ClipData.newPlainText("plain text", k.b(annotatedString)));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public j(Context context) {
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        this((ClipboardManager) systemService);
    }
}
