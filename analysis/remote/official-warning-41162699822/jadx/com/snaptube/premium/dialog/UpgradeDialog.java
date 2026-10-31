package com.snaptube.premium.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.premium.R;
import com.snaptube.premium.fragment.BaseDialogFragment;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import kotlin.Metadata;
import o.or3;
import o.sh8;
import o.th8;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0016\u0010\u0003R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/snaptube/premium/dialog/UpgradeDialog;", "Lcom/snaptube/premium/fragment/BaseDialogFragment;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lo/mg8;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "v", "N2", "(Landroid/view/View;)V", "M2", "J2", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/TextView;", "I2", "()Landroid/widget/TextView;", "O2", "(Landroid/widget/TextView;)V", "versionTextView", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class UpgradeDialog extends BaseDialogFragment {

    public TextView versionTextView;

    public static void G2(UpgradeDialog upgradeDialog, View view) {
        K2(upgradeDialog, view);
    }

    public static void H2(UpgradeDialog upgradeDialog, View view) {
        L2(upgradeDialog, view);
    }

    public static final void K2(UpgradeDialog upgradeDialog, View view) {
        or3.f(upgradeDialog, "this$0");
        or3.c(view);
        upgradeDialog.N2(view);
    }

    public static final void L2(UpgradeDialog upgradeDialog, View view) {
        or3.f(upgradeDialog, "this$0");
        or3.c(view);
        upgradeDialog.M2(view);
    }

    public final TextView I2() {
        TextView textView = this.versionTextView;
        if (textView != null) {
            return textView;
        }
        or3.w("versionTextView");
        return null;
    }

    public final void J2() {
        String string;
        Context context = getContext();
        if (context != null) {
            try {
                string = context.getResources().getString(R.string.current_value, context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
                or3.e(string, "getString(...)");
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                string = "";
            }
            I2().setText(string);
        }
    }

    public final void M2(View v) {
        or3.f(v, "v");
        dismiss();
    }

    public final void N2(View v) {
        or3.f(v, "v");
        CheckSelfUpgradeManager.S("intent_upgrade_dialog", true);
        CheckSelfUpgradeManager.q(getContext(), "click_intent_upgrade_dialog_update_now");
        dismiss();
    }

    public final void O2(TextView textView) {
        or3.f(textView, "<set-?>");
        this.versionTextView = textView;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.upgrade_dialog, container, false);
        or3.e(viewInflate, "inflate(...)");
        View viewFindViewById = viewInflate.findViewById(R.id.tv_version);
        or3.e(viewFindViewById, "findViewById(...)");
        O2((TextView) viewFindViewById);
        viewInflate.findViewById(R.id.btn_upgrade).setOnClickListener(new sh8(this));
        viewInflate.findViewById(R.id.btn_ignore).setOnClickListener(new th8(this));
        return viewInflate;
    }

    @Override
    public void onStart() {
        super.onStart();
        setCancelable(false);
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Window window;
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        J2();
    }
}
