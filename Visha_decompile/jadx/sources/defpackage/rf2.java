package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.net.Uri;
import androidx.webkit.internal.AssetHelper;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionCopyToClipboardContent;
import com.yandex.div2.DivActionTyped;
import kotlin.NoWhenBranchMatchedException;

public final class rf2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.h)) {
            return false;
        }
        e(((DivActionTyped.h) divActionTyped).c().a, div2View, oj3Var);
        return true;
    }

    public final ClipData b(DivActionCopyToClipboardContent.b bVar, oj3 oj3Var) {
        return new ClipData("Copied text", new String[]{AssetHelper.DEFAULT_MIME_TYPE}, new ClipData.Item((String) bVar.c().a.b(oj3Var)));
    }

    public final ClipData c(DivActionCopyToClipboardContent.c cVar, oj3 oj3Var) {
        return new ClipData("Copied url", new String[]{"text/uri-list"}, new ClipData.Item((Uri) cVar.c().a.b(oj3Var)));
    }

    public final ClipData d(DivActionCopyToClipboardContent divActionCopyToClipboardContent, oj3 oj3Var) {
        if (divActionCopyToClipboardContent instanceof DivActionCopyToClipboardContent.b) {
            return b((DivActionCopyToClipboardContent.b) divActionCopyToClipboardContent, oj3Var);
        }
        if (divActionCopyToClipboardContent instanceof DivActionCopyToClipboardContent.c) {
            return c((DivActionCopyToClipboardContent.c) divActionCopyToClipboardContent, oj3Var);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void e(DivActionCopyToClipboardContent divActionCopyToClipboardContent, Div2View div2View, oj3 oj3Var) {
        Object systemService = div2View.getContext().getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        if (clipboardManager == null) {
            xi.i("Failed to access clipboard manager!");
        } else {
            clipboardManager.setPrimaryClip(d(divActionCopyToClipboardContent, oj3Var));
        }
    }
}
