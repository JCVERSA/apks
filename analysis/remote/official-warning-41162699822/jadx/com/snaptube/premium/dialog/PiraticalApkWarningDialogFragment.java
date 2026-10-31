package com.snaptube.premium.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.premium.R;
import com.snaptube.premium.fragment.BaseDialogFragment;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.selfupgrade.force.AppForceUpdateHelper;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import o.b88;
import o.bh5;
import o.ft5;
import o.l65;
import o.or3;
import o.pg4;
import o.t14;
import o.vx1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0014\u0010\u0013J!\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0019\u0010\u001e\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u001d\u0010%\u001a\u0004\u0018\u00010 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001d\u0010(\u001a\u0004\u0018\u00010 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\"\u001a\u0004\b'\u0010$R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006-"}, d2 = {"Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;", "Lcom/snaptube/premium/fragment/BaseDialogFragment;", "Lo/bh5;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lo/mg8;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "", "A2", "()I", "z2", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "onBackPressed", "()Z", "K2", "Landroid/view/Window;", "window", "L2", "(Landroid/view/Window;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lo/t14;", "I2", "()Ljava/lang/String;", "mPos", "e", "H2", "mFrom", "", "f", "J", "lastClick", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPiraticalApkWarningDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PiraticalApkWarningDialogFragment.kt\ncom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment\n+ 2 SpannableString.kt\nandroidx/core/text/SpannableStringKt\n*L\n1#1,145:1\n30#2:146\n49#2,2:147\n*S KotlinDebug\n*F\n+ 1 PiraticalApkWarningDialogFragment.kt\ncom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment\n*L\n72#1:146\n76#1:147,2\n*E\n"})
public final class PiraticalApkWarningDialogFragment extends BaseDialogFragment implements bh5 {

    public final t14 mPos = b.b(new PiraticalApkWarningDialogFragment$mPos$2(this));

    public final t14 mFrom = b.b(new PiraticalApkWarningDialogFragment$mFrom$2(this));

    public long lastClick = -1;

    public static void G2(PiraticalApkWarningDialogFragment piraticalApkWarningDialogFragment, View view) {
        J2(piraticalApkWarningDialogFragment, view);
    }

    private final String H2() {
        return (String) this.mFrom.getValue();
    }

    public static final void J2(PiraticalApkWarningDialogFragment piraticalApkWarningDialogFragment, View view) {
        or3.f(piraticalApkWarningDialogFragment, "this$0");
        piraticalApkWarningDialogFragment.K2();
    }

    @Override
    public int A2() {
        return -1;
    }

    public final String I2() {
        return (String) this.mPos.getValue();
    }

    public final void K2() {
        startActivity(Intent.createChooser(new Intent("android.intent.action.VIEW").setData(Uri.parse(GlobalConfig.getOfficialSiteUrl())), ""));
        ReportPropertyBuilder.e().setEventName("Click").setAction("not_an_official_version_popup_go_download").setProperty("position_source", I2()).setProperty("from", H2()).reportEvent();
    }

    public final void L2(Window window) {
        if (window == null) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            window.addFlags(-2013265920);
            window.setStatusBarColor(0);
            Context context = window.getContext();
            or3.e(context, "getContext(...)");
            if (!l65.b(context)) {
                window.getDecorView().setSystemUiVisibility(FragmentTransaction.TRANSIT_EXIT_MASK);
            }
        }
        if (i >= 28) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            or3.e(attributes, "getAttributes(...)");
            pg4.a(attributes, 1);
            window.setAttributes(attributes);
        }
    }

    @Override
    public boolean onBackPressed() {
        if (!or3.a("compulsory_upgrade", H2())) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.lastClick < TimeUnit.SECONDS.toMillis(2L)) {
            AppForceUpdateHelper.a.h();
            return true;
        }
        this.lastClick = jElapsedRealtime;
        b88.l(requireContext(), R.string.toast_double_click_back);
        return true;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.no_frame_dialog_translucent_status);
        ReportPropertyBuilder.e().setEventName("$AppViewScreen").setAction("not_an_official_version_popup").setProperty("position_source", I2()).setProperty("from", H2()).reportEvent();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        Dialog dialog = getDialog();
        L2(dialog != null ? dialog.getWindow() : null);
        return inflater.inflate(R.layout.fragment_piratical_apk_warning, container, false);
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
        String string = getString(R.string.update_official);
        or3.e(string, "getString(...)");
        SpannableString spannableStringValueOf = SpannableString.valueOf(string);
        or3.e(spannableStringValueOf, "valueOf(this)");
        try {
            int iD0 = StringsKt__StringsKt.d0(spannableStringValueOf, " ", 0, false, 6, null);
            if (iD0 > 0) {
                Context contextRequireContext = requireContext();
                or3.e(contextRequireContext, "requireContext(...)");
                spannableStringValueOf.setSpan(new vx1(contextRequireContext, R.drawable.bg_update_text), 0, iD0, 17);
            }
        } catch (Exception e) {
            ProductionEnv.printStacktrace(e);
        }
        ((TextView) view.findViewById(R.id.tv_title)).setText(spannableStringValueOf);
        ((TextView) view.findViewById(R.id.tv_log)).setText(getString(R.string.update_official_tips1, GlobalConfig.getOfficialSiteUrl()));
        view.findViewById(R.id.tv_go_download).setOnClickListener(new ft5(this));
        C2(this);
    }

    @Override
    public int z2() {
        return -1;
    }
}
