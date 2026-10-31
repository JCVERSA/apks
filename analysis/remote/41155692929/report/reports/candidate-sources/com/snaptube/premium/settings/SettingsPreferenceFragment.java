package com.snaptube.premium.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import com.dayuwuxian.clean.ui.base.CleanBaseActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.navigator.LaunchFlag;
import com.snaptube.premium.navigator.STNavigator;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.premium.settings.clean.HomeSettingsCleanViewModel;
import com.snaptube.premium.user.viewmodel.YtbUserAccountViewModel;
import com.snaptube.premium.views.SettingSummaryIconPreference;
import com.wandoujia.zendesk.FeedbackViewModel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import net.pubnative.mediation.adapter.model.SnaptubeNativeAdModel;
import o.a97;
import o.bb7;
import o.bi2;
import o.bx2;
import o.cy2;
import o.d97;
import o.dk8;
import o.dx2;
import o.ih6;
import o.ix6;
import o.kf5;
import o.me7;
import o.mg8;
import o.oa9;
import o.or3;
import o.pq5;
import o.sh;
import o.sq5;
import o.t14;
import o.ti3;
import o.tu7;
import o.ug5;
import o.ux2;
import o.x24;
import o.xp2;
import o.y24;
import o.za3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J#\u0010\r\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0016H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010\u0005J-\u0010*\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&2\u0014\u0010)\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u001e0(H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0006H\u0002¢\u0006\u0004\b,\u0010\u0005J\u000f\u0010-\u001a\u00020\u0006H\u0002¢\u0006\u0004\b-\u0010\u0005J\u0017\u0010/\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\u000bH\u0002¢\u0006\u0004\b/\u00100J/\u00105\u001a\u00020\u00062\b\b\u0002\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u000603H\u0002¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u001e2\u0006\u00102\u001a\u00020\u000bH\u0002¢\u0006\u0004\b7\u00100R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u001b\u0010A\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010>\u001a\u0004\bD\u0010ER\u001b\u0010K\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010>\u001a\u0004\bI\u0010J¨\u0006L"}, d2 = {"Lcom/snaptube/premium/settings/SettingsPreferenceFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "Lo/za3;", "Lo/ug5;", "<init>", "()V", "Lo/mg8;", "b3", "V2", "Landroid/os/Bundle;", "savedInstanceState", "", "rootKey", "G2", "(Landroid/os/Bundle;Ljava/lang/String;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Landroidx/preference/Preference;", "preference", "", "o2", "(Landroidx/preference/Preference;)Z", "login", "Landroid/content/Intent;", "actionAfterLogin", "O", "(ZLandroid/content/Intent;)V", "", "unReadCount", "f3", "(I)V", "show", "i3", "(Z)V", "e3", "", "preferenceKey", "Lkotlin/Pair;", "info", "j3", "(Ljava/lang/CharSequence;Lkotlin/Pair;)V", "c3", "d3", "key", "Y2", "(Ljava/lang/String;)I", "permissionName", "source", "Lkotlin/Function0;", "onNavigate", "g3", "(Ljava/lang/String;Ljava/lang/String;Lo/bx2;)V", "Z2", "Lo/ti3;", "l", "Lo/ti3;", "userManager", "Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;", "m", "Lo/t14;", "a3", "()Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;", "viewModel", "Lcom/snaptube/premium/settings/clean/HomeSettingsCleanViewModel;", "n", "W2", "()Lcom/snaptube/premium/settings/clean/HomeSettingsCleanViewModel;", "cleanViewModel", "Lcom/wandoujia/zendesk/FeedbackViewModel;", "o", "X2", "()Lcom/wandoujia/zendesk/FeedbackViewModel;", "feedbackViewModel", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsPreferenceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsPreferenceFragment.kt\ncom/snaptube/premium/settings/SettingsPreferenceFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,453:1\n84#2,6:454\n56#2,10:460\n56#2,10:470\n*S KotlinDebug\n*F\n+ 1 SettingsPreferenceFragment.kt\ncom/snaptube/premium/settings/SettingsPreferenceFragment\n*L\n63#1:454,6\n64#1:460,10\n65#1:470,10\n*E\n"})
public final class SettingsPreferenceFragment extends PreferenceFragmentCompat implements za3, ug5 {

    public final ti3 userManager;

    public final t14 viewModel;

    public final t14 cleanViewModel;

    public final t14 feedbackViewModel;

    public static final class a extends tu7 {
        public a() {
        }

        public void c(UpgradeConfig upgradeConfig) {
            if (upgradeConfig == null) {
                SettingsPreferenceFragment.T2(SettingsPreferenceFragment.this, false);
            } else {
                SettingsPreferenceFragment.T2(SettingsPreferenceFragment.this, CheckSelfUpgradeManager.k(CheckSelfUpgradeManager.P(upgradeConfig)));
            }
        }

        @Override
        public void onCompleted() {
        }

        @Override
        public void onError(Throwable th) {
            SettingsPreferenceFragment.T2(SettingsPreferenceFragment.this, false);
        }

        @Override
        public void onNext(Object obj) {
            c((UpgradeConfig) obj);
        }
    }

    public static final class b extends me7 {
        public final String b;
        public final bx2 c;

        public b(String str, bx2 bx2Var) {
            this.b = str;
            this.c = bx2Var;
        }

        @Override
        public void d() {
            if (FragmentKt.d(SettingsPreferenceFragment.this) && sq5.k(this.b)) {
                this.c.invoke();
            }
        }
    }

    public static final class c implements kf5, cy2 {
        public final dx2 a;

        public c(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lo/mg8;", "invoke", "()V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    public static final class AnonymousClass1 extends Lambda implements bx2 {
        public AnonymousClass1() {
            super(0);
        }

        @Override
        public Object invoke() {
            m184invoke();
            return mg8.a;
        }

        public final void m184invoke() {
            FragmentActivity activity = SettingsPreferenceFragment.this.getActivity();
            if (activity != null) {
                NavigationManager.w0(activity, "new_setting");
            }
        }
    }

    public SettingsPreferenceFragment() {
        PhoenixApplication phoenixApplicationC = PhoenixApplication.C();
        or3.e(phoenixApplicationC, "getInstance(...)");
        this.userManager = dk8.a(phoenixApplicationC);
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(YtbUserAccountViewModel.class), new SettingsPreferenceFragment$special$$inlined$activityViewModels$default$1(this), new SettingsPreferenceFragment$special$$inlined$activityViewModels$default$2(this));
        SettingsPreferenceFragment$special$$inlined$viewModels$default$1 settingsPreferenceFragment$special$$inlined$viewModels$default$1 = new SettingsPreferenceFragment$special$$inlined$viewModels$default$1(this);
        this.cleanViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(HomeSettingsCleanViewModel.class), new SettingsPreferenceFragment$special$$inlined$viewModels$default$2(settingsPreferenceFragment$special$$inlined$viewModels$default$1), new SettingsPreferenceFragment$special$$inlined$viewModels$default$3(settingsPreferenceFragment$special$$inlined$viewModels$default$1, this));
        SettingsPreferenceFragment$special$$inlined$viewModels$default$4 settingsPreferenceFragment$special$$inlined$viewModels$default$4 = new SettingsPreferenceFragment$special$$inlined$viewModels$default$4(this);
        this.feedbackViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(FeedbackViewModel.class), new SettingsPreferenceFragment$special$$inlined$viewModels$default$5(settingsPreferenceFragment$special$$inlined$viewModels$default$4), new SettingsPreferenceFragment$special$$inlined$viewModels$default$6(settingsPreferenceFragment$special$$inlined$viewModels$default$4, this));
    }

    public static final HomeSettingsCleanViewModel P2(SettingsPreferenceFragment settingsPreferenceFragment) {
        return settingsPreferenceFragment.W2();
    }

    public static final YtbUserAccountViewModel Q2(SettingsPreferenceFragment settingsPreferenceFragment) {
        return settingsPreferenceFragment.a3();
    }

    public static final void R2(SettingsPreferenceFragment settingsPreferenceFragment) {
        settingsPreferenceFragment.e3();
    }

    public static final void S2(SettingsPreferenceFragment settingsPreferenceFragment, int i) {
        settingsPreferenceFragment.f3(i);
    }

    public static final void T2(SettingsPreferenceFragment settingsPreferenceFragment, boolean z) {
        settingsPreferenceFragment.i3(z);
    }

    public static final void U2(SettingsPreferenceFragment settingsPreferenceFragment, CharSequence charSequence, Pair pair) {
        settingsPreferenceFragment.j3(charSequence, pair);
    }

    private final void V2() {
        CheckSelfUpgradeManager.p(getContext(), "MeFragment").z0(ix6.d()).Y(sh.c()).x0(new a());
    }

    private final YtbUserAccountViewModel a3() {
        return (YtbUserAccountViewModel) this.viewModel.getValue();
    }

    private final void b3() {
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        y24.a(viewLifecycleOwner).d(new SettingsPreferenceFragment$initObserver$1(this, null));
        a3().U().i(getViewLifecycleOwner(), new c(new SettingsPreferenceFragment$initObserver$2(this)));
        a3().T().i(getViewLifecycleOwner(), new c(new SettingsPreferenceFragment$initObserver$3(this)));
        X2().i0().i(getViewLifecycleOwner(), new c(new SettingsPreferenceFragment$initObserver$4(this)));
    }

    public static void h3(SettingsPreferenceFragment settingsPreferenceFragment, String str, String str2, bx2 bx2Var, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sq5.e();
            or3.e(str, "getExternalStoragePermissionName(...)");
        }
        settingsPreferenceFragment.g3(str, str2, bx2Var);
    }

    @Override
    public void G2(Bundle savedInstanceState, String rootKey) {
        y2(R.xml.snaptube_settings);
    }

    @Override
    public void O(boolean login, Intent actionAfterLogin) {
        e3();
    }

    public final HomeSettingsCleanViewModel W2() {
        return (HomeSettingsCleanViewModel) this.cleanViewModel.getValue();
    }

    public final FeedbackViewModel X2() {
        return (FeedbackViewModel) this.feedbackViewModel.getValue();
    }

    public final int Y2(String key) {
        String str;
        switch (key.hashCode()) {
            case -1404727813:
                str = "clean_app_uninstaller";
                break;
            case -847610754:
                str = "clean_junk";
                break;
            case -602937656:
                str = "clean_whatsapp";
                break;
            case -571080299:
                if (key.equals("whatsapp_status_saver")) {
                    return 0;
                }
                return R.drawable.ic_cleaner;
            case -513695187:
                return !key.equals("clean_boost") ? R.drawable.ic_cleaner : R.drawable.ic_boost;
            case -77244819:
                return !key.equals("clean_battery_saver") ? R.drawable.ic_cleaner : R.drawable.ic_battery;
            case 1429105148:
                str = "photo_clean";
                break;
            case 1949314941:
                str = "clean_large_files";
                break;
            default:
                return R.drawable.ic_cleaner;
        }
        key.equals(str);
        return R.drawable.ic_cleaner;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x004c A[RETURN, SYNTHETIC] */
    public final int Z2(String source) {
        switch (source) {
            case "visit_vault":
                return R.string.allow_files_access_to_use_vault;
            case "wa_status":
                return R.string.allow_files_access_to_view_and_download_status;
            case "large_files_cleaner":
                return R.string.allow_files_access_to_clean_junk;
            case "cleaner":
                return R.string.allow_files_access_to_clean_junk;
            case "photo_clean":
                return R.string.access_auth_hint1;
            case "wa_cleaner":
                return R.string.allow_files_access_to_clean_whatsApp;
            default:
                return R.string.storage_dialog_title;
        }
    }

    public final void c3() {
        Integer num = (Integer) X2().i0().f();
        bi2.c("me", Boolean.valueOf((num != null ? num.intValue() : 0) > 0));
        NavigationManager.F(getContext(), SnaptubeNativeAdModel.NETWORK_NAME, Config.K3());
    }

    public final void d3() {
        bb7.q0(getContext(), "me_share_snaptube", "expo", "", Config.T3(getContext()));
    }

    public final void e3() {
        Preference preferenceT1 = t1("setting_account");
        if (preferenceT1 != null) {
            if (!this.userManager.d()) {
                preferenceT1.u0(getString(R.string.youtube_sign_in));
            } else if (this.userManager.f() == null) {
                a3().R();
            } else {
                oa9 oa9VarF = this.userManager.f();
                preferenceT1.u0(oa9VarF != null ? oa9VarF.f() : null);
            }
        }
    }

    public final void f3(int unReadCount) {
        Preference preferenceT1 = t1("setting_feedback");
        if (preferenceT1 == null || !(preferenceT1 instanceof SettingSummaryIconPreference)) {
            return;
        }
        a97 a97Var = new a97(0, "setting_feedback", "", unReadCount > 0 ? 4 : 1, null, null, 48, null);
        SettingSummaryIconPreference settingSummaryIconPreference = (SettingSummaryIconPreference) preferenceT1;
        settingSummaryIconPreference.u0(getString(R.string.new_reply));
        settingSummaryIconPreference.E0(a97Var.f(), a97Var.e());
    }

    public final void g3(String permissionName, String source, bx2 onNavigate) {
        if (sq5.k(permissionName)) {
            onNavigate.invoke();
            return;
        }
        com.snaptube.permission.a aVarA = new com.snaptube.permission.a.C0392a().h(permissionName).e(1).i(new b(permissionName, onNavigate)).c(true).j(source).f(Z2(source)).a();
        or3.e(aVarA, "build(...)");
        pq5.a().f(this, aVarA);
    }

    public final void i3(boolean show) {
        Preference preferenceT1 = t1("setting_about");
        if (preferenceT1 != null) {
            preferenceT1.u0(show ? getString(R.string.drawer_subtitle_upgrade) : "");
        }
        if (show) {
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.t();
        }
    }

    public final void j3(CharSequence preferenceKey, Pair info) {
        String str;
        Preference preferenceT1 = t1(preferenceKey);
        if (preferenceT1 == null || (str = (String) info.getFirst()) == null) {
            return;
        }
        preferenceT1.u0((CharSequence) info.getFirst());
        if (preferenceT1 instanceof SettingSummaryIconPreference) {
            if (((Number) info.getSecond()).intValue() == 4) {
                ((SettingSummaryIconPreference) preferenceT1).D0(Y2(preferenceKey.toString()));
            }
            ((SettingSummaryIconPreference) preferenceT1).E0(str, ((Number) info.getSecond()).intValue());
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public boolean o2(Preference preference) {
        or3.f(preference, "preference");
        String strP = preference.p();
        if (strP != null) {
            switch (strP.hashCode()) {
                case -1717622636:
                    if (strP.equals("setting_feedback")) {
                        c3();
                    }
                    break;
                case -1404727813:
                    if (strP.equals("clean_app_uninstaller")) {
                        W2().z0("clean_app_uninstaller");
                        NavigationManager.Q(getContext(), "new_setting", CleanBaseActivity.h);
                    }
                    break;
                case -1235094956:
                    if (strP.equals("region_language_setting")) {
                        STNavigator sTNavigator = STNavigator.a;
                        Context contextRequireContext = requireContext();
                        or3.e(contextRequireContext, "requireContext(...)");
                        sTNavigator.a(contextRequireContext, "/setting_region_language", null, LaunchFlag.SINGLE_TASK);
                    }
                    break;
                case -1175414562:
                    if (strP.equals("setting_about")) {
                        NavigationManager.L(getContext());
                    }
                    break;
                case -847610754:
                    if (strP.equals("clean_junk")) {
                        W2().z0("clean_junk");
                        h3(this, null, "cleaner", new SettingsPreferenceFragment$onPreferenceTreeClick$4(this), 1, null);
                    }
                    break;
                case -602937656:
                    if (strP.equals("clean_whatsapp")) {
                        W2().z0("clean_whatsapp");
                        h3(this, null, "wa_cleaner", new SettingsPreferenceFragment$onPreferenceTreeClick$7(this), 1, null);
                    }
                    break;
                case -591686768:
                    if (strP.equals("vault_settings")) {
                        h3(this, null, "visit_vault", new SettingsPreferenceFragment$onPreferenceTreeClick$3(this), 1, null);
                    }
                    break;
                case -571080299:
                    if (strP.equals("whatsapp_status_saver")) {
                        W2().B0();
                        h3(this, null, "wa_status", new SettingsPreferenceFragment$onPreferenceTreeClick$2(this), 1, null);
                    }
                    break;
                case -513695187:
                    if (strP.equals("clean_boost")) {
                        W2().z0("clean_boost");
                        NavigationManager.Q(getContext(), "new_setting", CleanBaseActivity.m);
                    }
                    break;
                case -108866804:
                    if (strP.equals("recover_deleted_files_settings")) {
                        h3(this, null, "recycle_bin", new SettingsPreferenceFragment$onPreferenceTreeClick$1(this), 1, null);
                    }
                    break;
                case -77244819:
                    if (strP.equals("clean_battery_saver")) {
                        W2().z0("clean_battery_saver");
                        NavigationManager.O(getContext(), "new_setting");
                    }
                    break;
                case 20377406:
                    if (strP.equals("setting_account")) {
                        if (!this.userManager.d()) {
                            NavigationManager.Z0(requireContext(), null, "setting_entrance", "setting_entrance", true, "setting_entrance");
                        } else {
                            STNavigator sTNavigator2 = STNavigator.a;
                            FragmentActivity fragmentActivityRequireActivity = requireActivity();
                            or3.e(fragmentActivityRequireActivity, "requireActivity(...)");
                            sTNavigator2.a(fragmentActivityRequireActivity, "/setting_account_profile", null, LaunchFlag.SINGLE_TASK);
                        }
                    }
                    break;
                case 418164967:
                    if (strP.equals("setting_enable_push")) {
                        STNavigator sTNavigator3 = STNavigator.a;
                        Context contextRequireContext2 = requireContext();
                        or3.e(contextRequireContext2, "requireContext(...)");
                        sTNavigator3.a(contextRequireContext2, "/setting_notification", null, LaunchFlag.SINGLE_TASK);
                    }
                    break;
                case 1249000954:
                    if (strP.equals("download_settings")) {
                        STNavigator sTNavigator4 = STNavigator.a;
                        Context contextRequireContext3 = requireContext();
                        or3.e(contextRequireContext3, "requireContext(...)");
                        sTNavigator4.a(contextRequireContext3, "/setting_download", null, LaunchFlag.SINGLE_TASK);
                    }
                    break;
                case 1429105148:
                    if (strP.equals("photo_clean")) {
                        W2().z0("photo_clean");
                        h3(this, null, "photo_cleaner", new SettingsPreferenceFragment$onPreferenceTreeClick$5(this), 1, null);
                    }
                    break;
                case 1674547897:
                    if (strP.equals("setting_night_mode")) {
                        STNavigator sTNavigator5 = STNavigator.a;
                        Context contextRequireContext4 = requireContext();
                        or3.e(contextRequireContext4, "requireContext(...)");
                        sTNavigator5.a(contextRequireContext4, "/setting_theme_day_night", null, LaunchFlag.SINGLE_TASK);
                    }
                    break;
                case 1949314941:
                    if (strP.equals("clean_large_files")) {
                        W2().z0("clean_large_files");
                        h3(this, null, "large_files_cleaner", new SettingsPreferenceFragment$onPreferenceTreeClick$6(this), 1, null);
                    }
                    break;
                case 2025086928:
                    if (strP.equals("setting_share_st")) {
                        d3();
                    }
                    break;
            }
        }
        return super.o2(preference);
    }

    @Override
    public void onResume() {
        super.onResume();
        V2();
        d97.r("/new_setting");
        Integer num = (Integer) X2().i0().f();
        d97.h((num != null ? num.intValue() : 0) > 0);
        W2().J0();
        W2().H0();
        if (a3().V()) {
            h3(this, null, "cleaner", new AnonymousClass1(), 1, null);
            a3().Y(false);
        }
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        L2(null);
        B2().setPadding(0, 0, 0, xp2.a(17.0f));
        B2().setClipChildren(false);
        B2().setClipToPadding(false);
        b3();
        e3();
    }
}
