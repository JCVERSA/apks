package com.transsion.widgetsbottomsheet.bottomsheet;

import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBaseCloseBottomSheetDialog;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;", MethodDecl.initName, "()V", "Lzfb;", "initView", "Landroid/view/View;", "view", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "addPage", "(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;", "", "getDragHandlerVisibility", "()Z", "getSupportGesture", "", "getDragSpaceTop", "()I", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class OSBaseCloseBottomSheetDialog extends OSBaseBottomSheetDialog {
    public static final String TAG = "OSBottomSheetCloseDialog";

    public static final void X(OSBaseCloseBottomSheetDialog oSBaseCloseBottomSheetDialog, View view) {
        y45.j(oSBaseCloseBottomSheetDialog, "this$0");
        oSBaseCloseBottomSheetDialog.animateDismiss();
    }

    @Override
    public OSPageView addPage(View view) {
        y45.j(view, "view");
        OSPageView oSPageViewAddPage = super.addPage(view);
        oSPageViewAddPage.setOnTitleCloseIconClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                OSBaseCloseBottomSheetDialog.X(this.b, view2);
            }
        });
        return oSPageViewAddPage;
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    @Override
    public int getDragSpaceTop() {
        return 0;
    }

    @Override
    public boolean getSupportGesture() {
        return false;
    }

    @Override
    public void initView() {
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
