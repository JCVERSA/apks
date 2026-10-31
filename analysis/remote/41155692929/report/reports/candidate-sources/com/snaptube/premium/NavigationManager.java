package com.snaptube.premium;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.annotation.Keep;
import androidx.fragment.app.FragmentActivity;
import com.dayuwuxian.clean.base.CleanDetailActivity;
import com.dayuwuxian.clean.base.PhotoCleanDetailActivity;
import com.dayuwuxian.clean.ui.base.CleanBaseActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.player_guide.PlayerGuideAdPos;
import com.snaptube.premium.activity.CleanActivity;
import com.snaptube.premium.activity.CleanSettingActivity;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.activity.GPInstallTipActivity;
import com.snaptube.premium.activity.InsideScanActivity;
import com.snaptube.premium.activity.InstallGuideOverlayActivity;
import com.snaptube.premium.activity.LockFromInsideActivity;
import com.snaptube.premium.activity.MultiSelectActivity;
import com.snaptube.premium.activity.PhoneBoostActivity;
import com.snaptube.premium.activity.PlayerGuideActivity;
import com.snaptube.premium.activity.SwitchStorageActivity;
import com.snaptube.premium.activity.VaultActivity;
import com.snaptube.premium.activity.VideoPlaybackActivity;
import com.snaptube.premium.activity.VideoPlaybackActivityTransTheme;
import com.snaptube.premium.activity.VideoWebViewActivity;
import com.snaptube.premium.activity.YouTubeLoginActivity;
import com.snaptube.premium.activity.YoutubeVideoWebViewActivity;
import com.snaptube.premium.ads.SplashAdManager;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.fragment.youtube.popup.YtLoginPopFragment;
import com.snaptube.premium.hybrid.HybridWebViewActivity;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.mything.MyThingItem;
import com.snaptube.premium.navigator.LaunchFlag;
import com.snaptube.premium.navigator.STNavigator;
import com.snaptube.premium.preview.audio.LocalMediaPreviewActivity;
import com.snaptube.premium.search.SearchConst$SearchType;
import com.snaptube.premium.search.local.VaultLocalSearchActivity;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.premium.selfupgrade.normal.NormalUpdateActivity;
import com.snaptube.premium.share.GenericFileProvider;
import com.snaptube.premium.sites.SpeeddialInfo;
import com.snaptube.premium.user.activity.MeAboutActivity;
import com.snaptube.premium.user.activity.MePoliciesActivity;
import com.snaptube.premium.utils.WindowPlayUtils;
import com.snaptube.premium.vault.ui.ImagePreviewActivity;
import com.snaptube.premium.views.CommonPopupView;
import com.snaptube.premium.whatsapp.gallery.GalleryActivity;
import com.snaptube.search.view.SocialLoginPopupFragment;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.zendesk.ZendeskActivity;
import java.io.File;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.pubnative.mediation.adapter.model.FallbackNativeAdModel;
import o.ah3;
import o.ap3;
import o.az7;
import o.b13;
import o.b88;
import o.bq5;
import o.c77;
import o.e57;
import o.f64;
import o.gg2;
import o.kf9;
import o.kh2;
import o.kz3;
import o.mr;
import o.no9;
import o.op8;
import o.q23;
import o.r6;
import o.s5;
import o.sz6;
import o.th9;
import o.ut7;
import o.vq6;
import o.wb5;
import o.yj8;
import o.yq3;

public class NavigationManager {
    public static final String a = ut7.a("VllOUV9ZTFFXVg==");
    public static final String b = ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFnVhZ2xwcXZ/a2d2eW5xf3lsfQ==");
    public static final String c = ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFnV9Z3Z5bnF/eWx9");
    public static final String d = ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFmt9eWp7cGdseXpndnlucX95bH0=");
    public static final String e = ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFkhUWUFnVV1cUVk=");
    public static final String f = ut7.a("VUFMUFFWXw==");
    public static final String g = ut7.a("VllOUV9ZTFFXVg==");
    public static final String h = ut7.a("Z0hZW1NZX10WVFdbWVQ=");
    public static final String i = ut7.a("S1ZZSExNWl1ZSEgWW1dV");
    public static final String j = ut7.a("UExMSEsCFxdLVllITE1aXVlISBZbV1U=");
    public static final String k = ut7.a("TFFMVF0=");
    public static final String l = ut7.a("TlFcXVdnTFFMVF0=");
    public static final String m = ut7.a("W1dNVkw=");
    public static final String n = ut7.a("SFRZQWdbV01WTA==");

    public static final String f398o = ut7.a("W1lMXV9XSkE=");
    public static final String p = ut7.a("TUpU");
    public static final String q = ut7.a("W1RRW1NnTFFVXQ==");
    public static final String r = ut7.a("WllbU19KV01WXGdbV1RXSg==");
    public static final String s = ut7.a("S1BXT2dZXFxKXUtLZ1pZSg==");
    public static final String t = ut7.a("S1BXT2dMV1dUWllK");
    public static final String u = ut7.a("S1BXT2dLTFlMTUtnWllK");
    public static final String v = ut7.a("WU1MV2dcV09WVFdZXA==");
    public static final String w = ut7.a("XlFWUUtQZ1dWZ1pZW1NnSEpdS0tdXA==");
    public static final String x = ut7.a("Vl1PZ09dWmdMWVo=");
    public static final String y = ut7.a("SFdL");
    public static final String z = ut7.a("SFNfZ0pdXl1KSl1K");
    public static final String A = ut7.a("S11dU2dIV0s=");
    public static final String B = ut7.a("V0hdVmdVXVxRWWdIWUpZVQ==");
    public static final String C = ut7.a("VFdfZ1xXT1ZUV1lcZ01KVA==");
    public static final String D = ut7.a("W0pZW1NnW1dcXQ==");
    public static final String E = ut7.a("S1BXT2dZW0xRV1ZaWUo=");
    public static final String F = ut7.a("WVRUV09nS09RSF1aWVtT");
    public static final String G = ut7.a("UVZbV19WUUxXZ1VXXF0=");
    public static final String H = ut7.a("WVxnWlRXW1M=");
    public static final String I = ut7.a("UUtnXkpXVWdPXVo=");
    public static final String J = ut7.a("UUtnWllbU2cKZ1BXVV1nSFlfXQ==");
    public static final String K = ut7.a("SE1LUGdbVFFbU2dMUVVd");
    public static final String L = ut7.a("TUtdZ09dWmdMUUxUXQ==");
    public static final String M = ut7.a("UUtnS1BXT2dVV0pdZ1VdVk0=");
    public static final String N = ut7.a("UUtnS1BXT2dKXVRXWVxnVV1WTQ==");
    public static final String O = ut7.a("UUtnS1BXT2dLUFlKXWdVXVZN");
    public static final String P = ut7.a("UUtnS1BXT2daSldPS11KZ1lc");
    public static final String Q = ut7.a("XldKW11nS1BXTw==");
    public static final String R = ut7.a("S1BXT2dbV05dSmdaXw==");
    public static final String S = ut7.a("TUtdZ1tZW1Bd");
    public static final String T = ut7.a("XVZMSllWW10=");
    public static final String U = ut7.a("UUtnXkpXVWdKXUxKQQ==");
    public static final String V = ut7.a("UUtnVFdbUw==");
    public static final String W = ut7.a("XUBMSllL");
    public static final String X = ut7.a("TFdIUVs=");
    public static final String Y = ut7.a("VU1LUVs=");
    public static final String Z = ut7.a("TFdIUVtL");
    public static final String a0 = ut7.a("XkpXVQ==");
    public static final String b0 = ut7.a("WVtMUVdW");
    public static final String c0 = ut7.a("WVxnSFdL");
    public static final String d0 = ut7.a("WVxLXVZLXWdLTUhIV0pMXVw=");
    public static final String e0 = ut7.a("UUtnVllOZ01IZ0pdTE1KVg==");
    public static final String f0 = ut7.a("WUhI");
    public static final String g0 = ut7.a("WUhI");
    public static final String h0 = ut7.a("VFFLTA==");
    public static final String i0 = ut7.a("W1lMXV9XSkE=");
    public static final String j0 = ut7.a("S11MTFFWXw==");
    public static final String k0 = ut7.a("Xl1dXFpZW1M=");
    public static final String l0 = ut7.a("S1FMXUs=");
    public static final String m0 = ut7.a("WVxc");
    public static final String n0 = ut7.a("W0pdXFFMSw==");
    public static final String p0 = ut7.a("F11ASFRXSl0X");
    public static final String q0 = ut7.a("F1RRS0wXQVdNTE1aXQ==");
    public static final String r0 = ut7.a("F1RRS0wX");
    public static final String s0 = ut7.a("F0xZWhc=");
    public static final String t0 = ut7.a("F0xZWhdLXVlKW1A=");
    public static final String u0 = ut7.a("F1RRS0wXS0hdW1FZVBdcXUxZUVQ=");
    public static final String v0 = ut7.a("F1xdTFlRVA==");
    public static final String w0 = ut7.a("F09ZTFtQ");
    public static final String x0 = ut7.a("F05RXF1X");
    public static final String y0 = ut7.a("F19ZVV0=");
    public static final String z0 = ut7.a("F15dXVxaWVtTF15XSlU=");
    public static final String A0 = ut7.a("F09dWg==");
    public static final String B0 = ut7.a("F0JdVlxdS1MXXl1dXFpZW1M=");
    public static final String C0 = ut7.a("F1RRS0wXW1BZVlZdVEs=");
    public static final String D0 = ut7.a("F0xZWhdbSl1ZTFdK");
    public static final String E0 = ut7.a("F0xZWhdbSl1ZTFdKSw==");
    public static final String F0 = ut7.a("F0xZWhdQWUtQbFlfF0hZX10=");
    public static final String G0 = ut7.a("F1RRS0wXWllWVl1KSw==");
    public static final String H0 = ut7.a("F1RRS0wXS11UXhdQUUtMV0pB");
    public static final String I0 = ut7.a("F1RRS0wXS11UXhdUV05dXBdOUVxdV0s=");
    public static final String J0 = ut7.a("F1RRS0wXS11UXhdUV05dXBdLVllIVFFLTEs=");
    public static final String K0 = ut7.a("F1RRS0wXW0pdWUxXShdKXVtXVVVdVlwXS1FUXVZM");
    public static final String L0 = ut7.a("F1RRS0wXW0pdWUxXShdKXVtXVVVdVlwXVV1cUU1V");
    public static final String M0 = ut7.a("S0hdXVxcUVlUAhcXTFlaSw==");
    public static final String N0 = ut7.a("S0hdXVxcUVlUAhcXTFlaSxdRVltXX1ZRTFc=");
    public static final String O0 = ut7.a("S1ZZSExNWl0WUVZMXVZMFllbTFFXVhZ8d292dHd5fA==");
    public static final String P0 = ut7.a("S1ZZSExNWl0WUVZMXVZMFllbTFFXVhZ3aH12Z299em5xfW8=");
    public static final String Q0 = ut7.a("S1ZZSExNWl0WUVZMXVZMFllbTFFXVhZ2fW9nb316Z2x5eg==");
    public static final String R0 = ut7.a("W1RRW1NnVFdf");
    public static final String S0 = ut7.a("S1ZZSExNWl0=");
    public static final String T0 = ut7.a("W1RdWVY=");
    public static final String U0 = ut7.a("TllNVEw=");
    public static final String V0 = ut7.a("XldKW11nTUhcWUxd");
    public static final String W0 = ut7.a("TlFcXVdnXF1MWVFU");
    public static final String X0 = ut7.a("S11MTFFWXw==");
    public static final String Y0 = ut7.a("TFdXVEtnW11WTF1K");
    public static final String Z0 = ut7.a("a11ZSltQc11B");
    public static final String a1 = ut7.a("W1dVFllWXEpXUVwWTl1WXFFWXw==");
    public static final String b1 = ut7.a("T11a");
    public static final String c1 = ut7.a("WUhI");
    public static final String d1 = ut7.a("WkpXT0tdSg==");
    public static final String e1 = ut7.a("VllMUU5d");
    public static final String f1 = ut7.a("XllUVFpZW1M=");
    public static final String g1 = ut7.a("WUhIT1lUVA==");
    public static final String h1 = ut7.a("WkpXT0tdSmdeWVRUWllbU2dNSlQ=");
    public static final String i1 = ut7.a("WUhIZ0tMWUpMZ0hXSw==");
    public static final String j1 = ut7.a("WVtMUVdWZ0tdVlw=");
    public static final String k1 = ut7.a("XF1dSGdUUVZTZ0tMWUpM");
    public static final String l1 = ut7.a("UVZMXVZM");
    public static final String m1 = ut7.a("UVZMXVZMZ15XSlpRXFxdVg==");
    public static final String n1 = ut7.a("TFdXVFpZSg==");
    public static final String o1 = ut7.a("W1RRSGdRVkxdSlZZVA==");
    public static final String p1 = ut7.a("W1RRSGdRVkxdSlZZVGdIVFlBVFFLTA==");
    public static final String q1 = ut7.a("W1RRSFpXWUpcFUhKV1VITA==");
    public static final String r1 = ut7.a("VFlKU0hUWUFdSmdLXVlKW1BnSl1LTVRM");
    public static final String s1 = ut7.a("W1BXV0tdZ15XSlVZTA==");
    public static final String t1 = ut7.a("Sl1eXUpKXUo=");
    public static final String u1 = ut7.a("WUhIZ0tMWUpMZ0hZSllV");
    public static final String v1 = ut7.a("Vl1dXH5NVFRrW0pdXVY=");
    public static final String w1 = ut7.a("XkpXVW4K");
    public static final String x1 = ut7.a("Sl1LTFlKTGdOUVxdV2dIVFlB");
    public static final String y1 = ut7.a("UFFcXWdMV1dUWllK");
    public static final String[] o0 = {"com.android.browser", "com.android.chrome", "com.sec.android.app.sbrowser"};
    public static String z1 = "from_music_shortcut";

    public class a implements b {
        public final String a;
        public final SpeeddialInfo b;
        public final boolean c;
        public final String d;
        public final String e;

        public a(String str, SpeeddialInfo speeddialInfo, boolean z, String str2, String str3) {
            this.a = str;
            this.b = speeddialInfo;
            this.c = z;
            this.d = str2;
            this.e = str3;
        }

        @Override
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            NavigationManager.a(this.b, str, FallbackNativeAdModel.NETWORK_NAME, str, this.c, this.d);
        }

        @Override
        public void b(Intent intent) {
            intent.putExtra(IntentUtil.POS, this.a);
        }

        @Override
        public void c(String str) {
            NavigationManager.a(this.b, this.e, MBridgeConstans.DYNAMIC_VIEW_WX_APP, str, this.c, this.d);
        }
    }

    public interface b {
        void a(String str);

        void b(Intent intent);

        void c(String str);
    }

    public static Intent A(Context context, String str) {
        Intent intent = new Intent();
        intent.setPackage(context.getPackageName());
        intent.setClass(context, VideoWebViewActivity.class);
        intent.setAction(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(Uri.parse(str));
        intent.putExtra(ut7.a("S1BXT2dZW0xRV1ZaWUo="), false);
        intent.putExtra(ut7.a("S1BXT2dZXFxKXUtLZ1pZSg=="), false);
        intent.putExtra(ut7.a("S1BXT2dMV1dUWllK"), false);
        return intent;
    }

    public static void A0(Context context, String str, String str2, String str3) {
        if (sz6.d(context, str)) {
            return;
        }
        Intent intentM = m(context, str, str2, str2, str3, null, str3, null);
        intentM.setFlags(335544320);
        Bundle bundle = new Bundle(intentM.getExtras());
        bundle.putString(ut7.a("WVtMUVdW"), ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFmt9eWp7cA=="));
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdVUUBdXGdKXUtNVEw="), bundle, LaunchFlag.SINGLE_TASK);
    }

    public static boolean B(String str) {
        return ut7.a("WVtMUVdWZ0tdVlw=").equals(str) || ut7.a("W1RRSA==").equals(str) || ut7.a("VldMUV5RW1lMUVdW").equals(str);
    }

    public static void B0(Context context, String str, String str2) {
        if (TextUtils.isEmpty(kf9.g(str))) {
            return;
        }
        STNavigator.a.a(context, ut7.a("F0tQV0pMS2dIVFlB"), op8.d(str, null, null, kf9.g(str), str2).getExtras(), LaunchFlag.SINGLE_TOP);
    }

    public static boolean C(String str) {
        return ut7.a("S11MTFFWX2ddVkxKWVZbXQ==").equals(str) || ut7.a("XFdPVlRXWVxnXldKVVlMZ11ATEpZW0xnXllRVA==").equals(str) || ut7.a("XFdPVlRXWVxnTFlLU2ddQExKWVtMZ15ZUVQ=").equals(str) || ut7.a("XkpXVWdPWUxbUGdcXUxZUVQ=").equals(str) || ut7.a("XkpXVWdbV1VVXVZM").equals(str);
    }

    public static void C0(Context context, String str, CommonPopupView.g gVar) {
        FragmentActivity fragmentActivityC;
        if (!az7.U(context) || (fragmentActivityC = s5.c(context)) == null || fragmentActivityC.getSupportFragmentManager() == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(ut7.a("S11ZSltQZ0tRTF0="), str);
        bundle.putBoolean(ut7.a("S1FMXWdUV19RVmdfTVFcXQ=="), true);
        SocialLoginPopupFragment.INSTANCE.b(fragmentActivityC.getSupportFragmentManager(), bundle, false, gVar);
    }

    public static void D(Context context) {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) context.getSystemService(ut7.a("WVtMUU5RTEE="))).getAppTasks();
        int size = appTasks == null ? 0 : appTasks.size();
        for (int i2 = 0; i2 < size; i2++) {
            ActivityManager.AppTask appTask = appTasks.get(i2);
            ActivityManager.RecentTaskInfo taskInfo = appTask.getTaskInfo();
            if (taskInfo != null && no9.a(taskInfo) != null && no9.a(taskInfo).getComponent() != null && ExploreActivity.class.getName().equals(no9.a(taskInfo).getComponent().getClassName())) {
                try {
                    appTask.moveToFront();
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        Intent intent = new Intent(context, (Class<?>) ExploreActivity.class);
        intent.setPackage(PhoenixApplication.z().getPackageName());
        intent.setFlags(335544320);
        try {
            bq5.e(context, 0, intent, 134217728, true).send();
        } catch (PendingIntent.CanceledException e3) {
            e3.printStackTrace();
            e(context);
        }
    }

    public static void D0(Context context) {
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdLSF1dXGdcUVlU"), null, LaunchFlag.SINGLE_TOP);
    }

    public static void E(Context context, String str, List list, List list2, List list3, boolean z2) {
        String feedbackUrl = GlobalConfig.getFeedbackUrl();
        if (ut7.a("Ql1WXF1LUw==").equalsIgnoreCase(feedbackUrl)) {
            if (!th9.g()) {
                th9.f(PhoenixApplication.C().F(), PhoenixApplication.C().b().x0(), new kh2(PhoenixApplication.z()));
            }
            ZendeskActivity.C0(context);
        } else if (yj8.l(feedbackUrl)) {
            O0(context, feedbackUrl, 0);
        }
    }

    public static void E0(Context context, SpeeddialInfo speeddialInfo, boolean z2, String str) {
        F0(context, speeddialInfo, false, str, null);
    }

    public static void F(Context context, String str, boolean z2) {
        E(context, str, null, null, null, z2);
    }

    public static void F0(Context context, SpeeddialInfo speeddialInfo, boolean z2, String str, String str2) {
        if (speeddialInfo == null) {
            return;
        }
        String url = speeddialInfo.getUrl();
        if (TextUtils.isEmpty(url)) {
            return;
        }
        if (URLUtil.isNetworkUrl(url)) {
            R0(context, url, speeddialInfo.getTitle(), false, str, null, true, 0);
            k1(speeddialInfo, url, ut7.a("T11a"), speeddialInfo.getUrl(), z2, str2);
        } else if (url.startsWith(ut7.a("UVZMXVZMAhcX"))) {
            h0(context, url, speeddialInfo.getTitle(), new a(str, speeddialInfo, z2, str2, url));
        }
    }

    public static void G(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) PhoneBoostActivity.class);
        intent.putExtra(ut7.a("W1RdWVZnXkpXVQ=="), str);
        intent.putExtra(ut7.a("XkpZX1VdVkxnVllVXQ=="), CleanBaseActivity.m);
        l1(context, intent);
    }

    public static void G0(Context context) {
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdLTVpnW1BZVlZdVGdUUUtM"), null, LaunchFlag.STANDARD);
    }

    public static void H(Context context, String str, String str2, String str3) {
        I(context, str, str2, str3, null);
    }

    public static void H0(Context context, String str, List list) {
        try {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                if (q23.W(str2)) {
                    context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str2));
                }
            }
            b88.g(context, R.string.install_first, str);
        } catch (Exception unused) {
        }
    }

    public static void I(Context context, String str, String str2, String str3, String str4) {
        Uri uriBuild = Uri.parse(ut7.a("UExMSEsCFxdLVllITE1aXVlISBZbV1U=")).buildUpon().path(ut7.a("F1RRS0wXQVdNTE1aXRdIVFlBVFFLTA==")).appendQueryParameter(ut7.a("TUpU"), str).build();
        Intent intent = new Intent(context, (Class<?>) MultiSelectActivity.class);
        intent.setData(uriBuild);
        intent.putExtra(ut7.a("SFdL"), str2);
        if (!TextUtils.isEmpty(str3)) {
            intent.putExtra(ut7.a("Sl1eXUpKXUo="), str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            intent.putExtra(ut7.a("Uk1VSGdMQUhd"), str4);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXSw=="), str2);
            intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXS2dWXU8="), str2);
        }
        intent.putExtra(ut7.a("Xk1UVGdNSlQ="), str);
        intent.setFlags(335544320);
        l1(context, intent);
    }

    public static void I0(Activity activity, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(ut7.a("U11BZ0xXV1RaWUpnS11MTFFWX2dLTFlKTGdeSldV"), i2);
        STNavigator.a.a(activity, ut7.a("F0tdTExRVl9nVldMUV5RW1lMUVdW"), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static void J(Context context, long j2) {
        Intent intent = new Intent(context, (Class<?>) SwitchStorageActivity.class);
        intent.putExtra(ut7.a("XUBMSllnSl1JTVFKXVxnS1FCXQ=="), j2);
        intent.setFlags(335544320);
        l1(context, intent);
    }

    public static void J0(Context context, String str, ArrayList arrayList) {
    }

    public static void K(Context context, String str) {
        l1(context, n(context, str));
    }

    public static void K0(Context context, String str, String str2, boolean z2, String str3, int i2, int i3, String str4, Bundle bundle) {
        Uri.Builder builderAppendQueryParameter = Uri.parse(ut7.a("UExMSEsCFxdLVllITE1aXVlISBZbV1U=")).buildUpon().encodedPath(ut7.a("F09ZTFtQ")).appendQueryParameter(ut7.a("TUpU"), str2);
        Intent intent = new Intent();
        intent.setData(builderAppendQueryParameter.build());
        intent.putExtra(ut7.a("UUtnXVZMXUpnSFFIZ1FVVV1cUVlMXVRB"), true);
        intent.putExtra(ut7.a("UUtnW1lITFFXVmdXVg=="), z2);
        intent.putExtra(ut7.a("U11BZ1BRS0xXSkFnUVw="), str3);
        intent.putExtra(ut7.a("UF1RX1BM"), i2);
        intent.putExtra(ut7.a("T1FcTFA="), i3);
        intent.putExtra(ut7.a("W1dOXUpnTUpU"), str4);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra(ut7.a("SFRZQVRRS0xtSlQ="), str);
        } else if (!TextUtils.isEmpty(kf9.a(str2))) {
            intent.putExtra(ut7.a("SFRZQVRRS0xtSlQ="), str2);
        }
        intent.setClass(context, VideoPlaybackActivity.class);
        intent.addFlags(67108864);
        l1(context, intent);
    }

    public static void L(Context context) {
        l1(context, new Intent(context, (Class<?>) MeAboutActivity.class));
    }

    public static void L0(Context context, String str, boolean z2, Bundle bundle, Bundle bundle2, boolean z3, long j2, String str2) {
        Intent intent = new Intent(context, (Class<?>) LocalMediaPreviewActivity.class);
        intent.setFlags(805306368);
        intent.setPackage(context.getPackageName());
        intent.putExtra(ut7.a("fWBsanlndX18cXlnbGFofQ=="), ut7.a("bGFofWducXx9dw=="));
        intent.putExtra(ut7.a("XUBMSllnUUtnS11bSl1MZ1VdXFFZ"), z2);
        intent.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWdX18cXlncXw="), str);
        f64.b(z2);
        String string = bundle != null ? bundle.getString(ut7.a("SFdLUUxRV1ZnS1dNSltd")) : null;
        if (!TextUtils.isEmpty(string)) {
            intent.putExtra(ut7.a("XkpXVQ=="), string);
        }
        intent.putExtra(ut7.a("XUBMSllnTEpRX19dSmdMWV8="), str2);
        intent.putExtra(ut7.a("fWBsanlnaHR5YWdvcH12Z2p9eXxh"), z3);
        intent.putExtra(ut7.a("SFRZQWdLTFlKTGdIV0tRTFFXVg=="), j2);
        intent.putExtra(ut7.a("Sl1IV0pMZ0hZSllVSw=="), bundle);
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        l1(context, intent);
    }

    public static void M(Context context, int i2) {
        N(context, i2, null, false, null, null, null, null);
    }

    public static void M0(Context context, String str, String str2) {
        ProductionEnv.d(ut7.a("VllOUV9ZTFFXVg=="), ut7.a("VllOUV9ZTF1sV29ZTFtQ"));
        N0(context, str, str2, false);
    }

    public static void N(Context context, int i2, String str, boolean z2, Bundle bundle, Bundle bundle2, String str2, String str3) {
        Intent intent = new Intent(context, (Class<?>) LocalMediaPreviewActivity.class);
        intent.setFlags(805306368);
        intent.setPackage(context.getPackageName());
        intent.putExtra(ut7.a("V0hMUVdWZ1lbTFFXVg=="), i2);
        intent.putExtra(ut7.a("XUBMSllnSFRZQWdRXA=="), str);
        intent.putExtra(ut7.a("fWBsanlndX18cXlnbGFofQ=="), ut7.a("bGFofWd5bXxxdw=="));
        intent.putExtra(ut7.a("XUBMSllnUUtnS11bSl1MZ1VdXFFZ"), z2);
        f64.b(z2);
        intent.putExtra(ut7.a("XkpXVQ=="), str2);
        intent.putExtra(ut7.a("XUBMSllnTEpRX19dSmdMWV8="), str3);
        intent.putExtra(ut7.a("Sl1IV0pMZ0hZSllVSw=="), bundle);
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        l1(context, intent);
    }

    public static void N0(Context context, String str, String str2, boolean z2) {
        ProductionEnv.d(ut7.a("VllOUV9ZTFFXVg=="), ut7.a("VllOUV9ZTF1sV29ZTFtQ"));
        Intent intentQ = q(context, str, str2);
        intentQ.putExtra(ut7.a("TlFcXVdnUUtnVFFOXQ=="), z2);
        intentQ.putExtra(ut7.a("WU1MUFdKZ1FLZ1RRTl0="), z2);
        Bundle bundle = new Bundle();
        bundle.putParcelable(ut7.a("UVZMXVZM"), intentQ);
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdOUVxdV2dIVFlB"), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static void O(Context context, String str) {
        l1(context, g(context, str));
    }

    public static void O0(Context context, String str, int i2) {
        R0(context, str, null, false, null, null, false, i2);
    }

    public static void P(Context context, String str) {
        Q(context, str, CleanBaseActivity.c);
    }

    public static void P0(Context context, String str, String str2, boolean z2, String str3) {
        Q0(context, str, str2, z2, str3, null, true);
    }

    public static void Q(Context context, String str, String str2) {
        l1(context, h(context, str, str2));
    }

    public static void Q0(Context context, String str, String str2, boolean z2, String str3, String str4, boolean z3) {
        R0(context, str, str2, z2, str3, str4, false, !z3 ? 1 : 0);
    }

    public static void R(Context context) {
        l1(context, new Intent(context, (Class<?>) CleanSettingActivity.class));
    }

    public static void R0(Context context, String str, String str2, boolean z2, String str3, String str4, boolean z3, int i2) {
        if (TextUtils.isEmpty(str)) {
            ProductionEnv.throwExceptForDebugging(new NullPointerException(ut7.a("TUpUGFFLGFZNVFQUGExRTFRdGAUY") + str2 + ut7.a("FBhIV0sYBQ==") + str3 + ut7.a("FBhUV198V09WVFdZXG1KVBgFGA==") + str4));
            return;
        }
        Intent intent = new Intent();
        intent.setPackage(context.getPackageName());
        intent.setClass(context, YoutubeVideoWebViewActivity.class);
        intent.setAction(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(Uri.parse(str));
        intent.putExtra(ut7.a("TFFMVF0="), str2);
        intent.putExtra(ut7.a("WU1MV2dcV09WVFdZXA=="), z2);
        intent.putExtra(ut7.a("SFdL"), str3);
        intent.putExtra(ut7.a("W1RRW1NnTFFVXQ=="), SystemClock.elapsedRealtime());
        j1(intent, i2);
        if (str4 != null) {
            intent.putExtra(ut7.a("VFdfZ1xXT1ZUV1lcZ01KVA=="), str4);
        }
        Bundle bundle = new Bundle(intent.getExtras());
        bundle.putString(ut7.a("TUpU"), intent.getDataString());
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdPXVo="), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static void S(Activity activity) {
        Intent intent = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setPackage(activity.getPackageName());
        intent.setData(j(ut7.a("W0pdXFFMSw==")));
        l1(activity, intent);
    }

    public static boolean S0(Context context, Intent intent) {
        Bundle bundle = new Bundle(intent.getExtras());
        bundle.putString(ut7.a("TUpU"), intent.getDataString());
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdPXVo="), bundle, LaunchFlag.SINGLE_TOP);
        return true;
    }

    public static void T(Context context, String str, String str2, Bundle bundle) {
        Intent intentQ = q(context, str2, ut7.a(""));
        intentQ.putExtras(bundle);
        Bundle bundle2 = new Bundle();
        intentQ.setClass(context, ExploreActivity.class);
        bundle2.putParcelable(ut7.a("UVZMXVZM"), intentQ);
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        if (!TextUtils.isEmpty(str)) {
            intentQ.putExtra(ut7.a("SFRZQVRRS0xtSlQ="), str);
        }
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdOUVxdV2dIVFlB"), bundle2, LaunchFlag.SINGLE_TOP);
    }

    public static boolean T0(Context context, String str, int i2) {
        if (context == null) {
            return false;
        }
        Intent intent = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(Uri.parse(str));
        for (String str2 : o0) {
            if (e57.k(context, str2)) {
                intent.setPackage(str2);
                if (l1(context, intent)) {
                    return true;
                }
            }
        }
        j1(intent, i2);
        intent.setPackage(null);
        return l1(context, intent);
    }

    public static boolean U(Context context, Intent intent) {
        intent.setPackage(ut7.a("W1dVFllWXEpXUVwWTl1WXFFWXw=="));
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            return l1(context, intent);
        }
        if (intent.getData() == null) {
            return false;
        }
        String queryParameter = intent.getData().getQueryParameter(ut7.a("UVw="));
        if (TextUtils.isEmpty(queryParameter)) {
            return false;
        }
        String str = ut7.a("UExMSEsCFxdIVFlBFl9XV19UXRZbV1UXS0xXSl0XWUhISxdcXUxZUVRLB1FcBQ==") + queryParameter;
        Intent intent2 = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent2.setData(Uri.parse(str));
        return l1(context, intent2);
    }

    public static void U0(Context context, String str, String str2, String str3, String str4) {
        Intent intent = new Intent();
        intent.putExtra(ut7.a("UUtnWllbU2cKZ1BXVV1nSFlfXQ=="), true);
        intent.setPackage(context.getPackageName());
        intent.setClass(context, YoutubeVideoWebViewActivity.class);
        intent.setAction(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(Uri.parse(str));
        intent.putExtra(ut7.a("S1BXT2dZW0xRV1ZaWUo="), true);
        intent.putExtra(ut7.a("S1BXT2dZXFxKXUtLZ1pZSg=="), false);
        intent.putExtra(ut7.a("S1BXT2dMV1dUWllK"), false);
        intent.putExtra(ut7.a("Sl1eXUpKXUo="), str3);
        intent.putExtra(ut7.a("Xk1UVGdNSlQ="), str);
        intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXSw=="), str2);
        intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXS2dWXU8="), str2);
        intent.putExtra(ut7.a("SFdL"), str4);
        S0(context, intent);
    }

    public static boolean V(Context context, String str, String str2) {
        return W(context, str, str2, null, null);
    }

    public static boolean V0(Context context, String str, int i2) {
        Intent intentA = A(context, str);
        j1(intentA, i2);
        return l1(context, intentA);
    }

    public static boolean W(Context context, String str, String str2, String str3, String str4) {
        Intent intentW = w(context, str, str2, str3, str4);
        if (intentW == null) {
            return false;
        }
        return l1(context, intentW);
    }

    public static void W0(Context context) {
        try {
            if (q23.W(Config.t2())) {
                context.startActivity(context.getPackageManager().getLaunchIntentForPackage(Config.t2()));
            } else {
                b88.g(context, R.string.install_first, ut7.a("b1BZTEt5SEg="));
            }
        } catch (Exception unused) {
        }
    }

    public static boolean X(Context context, Uri uri, int i2) {
        if (context == null) {
            return false;
        }
        Intent intent = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(uri);
        if (TextUtils.equals(uri.getHost() + uri.getPath(), ut7.a("SFRZQRZfV1dfVF0WW1dVF0tMV0pdF1lISEsXXF1MWVFUSw==")) && ap3.j(context, ut7.a("W1dVFllWXEpXUVwWTl1WXFFWXw==")) && gg2.c()) {
            intent.setPackage(ut7.a("W1dVFllWXEpXUVwWTl1WXFFWXw=="));
            if (l1(context, intent)) {
                return true;
            }
        }
        for (String str : o0) {
            if (e57.k(context, str)) {
                intent.setPackage(str);
                if (l1(context, intent)) {
                    return true;
                }
            }
        }
        j1(intent, i2);
        intent.setPackage(null);
        return l1(context, intent);
    }

    public static void X0(Context context, String str) {
        l1(context, s(context, str));
    }

    public static boolean Y(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) GPInstallTipActivity.class);
        intent.putExtra(ut7.a("XUBMSllnX01RXF1nTFFIZ1xdS1tKUUhMUVdW"), str);
        intent.putExtra(ut7.a("XUBMSllnX01RXF1nTFFIZ1tMWQ=="), str2);
        intent.addFlags(268435456);
        return l1(context, intent);
    }

    public static void Y0(Context context, Intent intent, String str, String str2) {
        Z0(context, intent, str, str2, true, null);
    }

    public static void Z(Context context, ArrayList arrayList, String str, int i2) {
        Intent intent = new Intent(context, (Class<?>) GalleryActivity.class);
        intent.putExtra(ut7.a("U11BZ0hXS1FMUVdW"), i2);
        intent.putExtra(ut7.a("SFdLUUxRV1ZnS1dNSltd"), str);
        intent.putExtra(ut7.a("U11BZ1RRS0w="), arrayList);
        l1(context, intent);
    }

    public static void Z0(Context context, Intent intent, String str, String str2, boolean z2, String str3) {
        Intent intent2 = new Intent(context, (Class<?>) YouTubeLoginActivity.class);
        intent2.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWeXtscXd2"), 0);
        intent2.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWcXZsfXZsZ3l+bH1qZ3R3f3F2"), intent);
        intent2.putExtra(ut7.a("XkpXVQ=="), str);
        intent2.putExtra(ut7.a("SFdLUUxRV1ZnS1dNSltd"), str2);
        intent2.putExtra(ut7.a("XkpXVW4K"), str3);
        if (!C(str)) {
            y1(context, intent2);
        } else {
            intent2.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa3B3b2d0d39xdmd0eXZ8cXZ/Z2h5f30="), z2);
            l1(context, intent2);
        }
    }

    public static void a(SpeeddialInfo speeddialInfo, String str, String str2, String str3, boolean z2, String str4) {
        k1(speeddialInfo, str, str2, str3, z2, str4);
    }

    public static void a0(Context context) {
        STNavigator.a.a(context, ut7.a("F0hUWUFnUFdVXQ=="), null, LaunchFlag.SINGLE_TASK);
    }

    public static void a1(Context context, String str) {
        Z0(context, null, str, null, true, null);
    }

    public static void b(Context context) {
        Intent intent = new Intent(context, (Class<?>) ExploreActivity.class);
        intent.setPackage(PhoenixApplication.z().getPackageName());
        intent.setAction(ut7.a("S1ZZSExNWl0WUVZMXVZMFllbTFFXVhZ5e2xxd3Znan1rbHlqbGd5e2xxbnFsYQ=="));
        intent.setFlags(335544320);
        l1(context, intent);
    }

    public static void b0(Context context, Bundle bundle) {
        STNavigator.a.a(context, ut7.a("F0hUWUFnUFdVXQ=="), bundle, LaunchFlag.SINGLE_TASK);
    }

    public static void b1(Context context, String str, String str2) {
        Z0(context, null, str, str2, true, null);
    }

    public static void c(Context context) {
        Intent intent = new Intent(context, (Class<?>) ExploreActivity.class);
        intent.setAction(ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFmt9eWp7cGdseXpndnlucX95bH0="));
        intent.setPackage(PhoenixApplication.z().getPackageName());
        if (ExploreActivity.G) {
            intent.setFlags(67108864);
        } else {
            intent.setFlags(268435456);
        }
        l1(context, intent);
    }

    public static void c0(Context context, SearchConst$SearchType searchConst$SearchType) {
        d0(context, searchConst$SearchType, null, null, false);
    }

    public static void c1(Context context, Intent intent, String str, String str2, String str3) {
        Z0(context, intent, str, str2, false, str3);
    }

    public static void d(Context context) {
        Intent intent = new Intent(context, (Class<?>) ExploreActivity.class);
        intent.setPackage(PhoenixApplication.z().getPackageName());
        if (ExploreActivity.G) {
            intent.setFlags(67108864);
        } else {
            intent.setFlags(268435456);
        }
        l1(context, intent);
    }

    public static void d0(Context context, SearchConst$SearchType searchConst$SearchType, String str, String str2, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putString(ut7.a("a11ZSltQc11B"), str);
        bundle.putString(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ2xhaH0="), searchConst$SearchType.getTypeKey());
        bundle.putString(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ35qd3U="), str2);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ2ltfWph"), str);
            bundle.putBoolean(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ2twd29na21/f31rbHF3dg=="), z2);
        }
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdQV0xnSU1dSkE="), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static void d1(Context context, String str) {
        Z0(context, null, str, str, false, str);
    }

    public static void e(Context context) {
        Intent intent = new Intent(context, (Class<?>) ExploreActivity.class);
        intent.setPackage(PhoenixApplication.z().getPackageName());
        intent.setFlags(335544320);
        l1(context, intent);
    }

    public static boolean e0(Context context, String str, boolean z2, String str2, String str3) {
        Intent intent = new Intent();
        intent.setClass(context, HybridWebViewActivity.class);
        intent.setAction(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(Uri.parse(str));
        intent.putExtra(ut7.a("WUpfZ1NdQWdLUFdNVFxnUFFcXWdMV1dUWllK"), z2);
        intent.putExtra(ut7.a("SFdL"), str3);
        intent.putExtra(ut7.a("WUpfZ1NdQWdMUUxUXQ=="), str2);
        String uri = intent.toUri(1);
        ProductionEnv.d(ut7.a("VllOUV9ZTFFXVg=="), ut7.a("VllOUV9ZTF1sV3BBWkpRXG9dWktRTF0CGA==") + uri);
        return l1(context, intent);
    }

    public static void e1(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) YouTubeLoginActivity.class);
        intent.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWeXtscXd2"), 0);
        intent.putExtra(ut7.a("XkpXVQ=="), str);
        intent.putExtra(ut7.a("SFdLUUxRV1ZnS1dNSltd"), str);
        intent.putExtra(ut7.a("XkpXVW4K"), str);
        intent.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa3B3b2d0d39xdmd0eXZ8cXZ/Z2h5f30="), false);
        l1(context, intent);
    }

    @Keep
    private static void exitForCrack(int i2) {
        Context contextZ = PhoenixApplication.z();
        Intent intent = new Intent(contextZ, (Class<?>) Config.k);
        intent.setAction(ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFn1gcWxnfndqZ3tqeXtz"));
        intent.setFlags(67108864);
        if (-1 != i2) {
            intent.putExtra(ut7.a("W0pZW1NnW1dcXQ=="), i2);
        }
        l1(contextZ, intent);
    }

    public static void f(Context context) {
        Intent intentMakeMainActivity = Intent.makeMainActivity(new ComponentName(context, (Class<?>) ExploreActivity.class));
        intentMakeMainActivity.setFlags(268435456);
        context.startActivity(intentMakeMainActivity);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(0, 0);
        }
    }

    public static void f0(Context context, String str, boolean z2) {
        ImagePreviewActivity.INSTANCE.a(context, str, z2);
    }

    public static void f1(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Intent intent = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
            intent.setDataAndType(Uri.parse(str), ut7.a("Sl1LV01KW10XXldUXF1K"));
            intent.setFlags(268435457);
            context.startActivity(intent);
        } catch (Exception e2) {
            ProductionEnv.errorLog(ut7.a("dllOUV9ZTFFXVnVZVllfXUo="), e2.getMessage());
            g1(context, str);
        }
    }

    public static Intent g(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) CleanActivity.class);
        intent.putExtra(ut7.a("W1RdWVZnXkpXVQ=="), str);
        intent.putExtra(ut7.a("XkpZX1VdVkxnVllVXQ=="), ut7.a("ellMTF1KQXRRS0x3Sn1WXA=="));
        return intent;
    }

    public static boolean g0(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) InstallGuideOverlayActivity.class);
        intent.putExtra(ut7.a("XUBMSllnWUhIZ1ZZVV0="), str);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra(ut7.a("XUBMSllnVV1cUVlnVllVXQ=="), str2);
        }
        intent.addFlags(268435456);
        return l1(context, intent);
    }

    public static void g1(Context context, String str) {
        try {
            Uri uriC = GenericFileProvider.c(context, new File(str));
            Intent intent = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFndofXZnfHd7bXV9dmxnbGp9fQ=="));
            if (Build.VERSION.SDK_INT >= 26) {
                intent.putExtra(ut7.a("WVZcSldRXBZISldOUVxdShZdQExKWRZxdnFscXl0Z21qcQ=="), uriC);
            }
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e2) {
            ProductionEnv.errorLog(ut7.a("dllOUV9ZTFFXVnVZVllfXUo="), e2.getMessage());
        }
    }

    public static Intent h(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) CleanActivity.class);
        intent.putExtra(ut7.a("W1RdWVZnXkpXVQ=="), str);
        intent.putExtra(ut7.a("XkpZX1VdVkxnVllVXQ=="), str2);
        intent.putExtra(ut7.a("XkpXVWdRVktRXF1nWUhI"), SplashAdManager.d0().j0());
        return intent;
    }

    public static void h0(Context context, String str, String str2, b bVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Intent intentH1 = h1(context, str);
            if (bVar != null) {
                bVar.b(intentH1);
            }
            b13.a(context, intentH1);
            if (l1(context, intentH1) && bVar != null) {
                bVar.c(intentH1.getPackage());
                return;
            }
            String stringExtra = intentH1.getStringExtra(ut7.a("WkpXT0tdSmdeWVRUWllbU2dNSlQ="));
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            P0(context, stringExtra, str2, false, ut7.a("S0hdXVxcUVlUZ1lbTFFOUUxB"));
            if (bVar != null) {
                bVar.a(stringExtra);
            }
        } catch (URISyntaxException e2) {
            ProductionEnv.errorLog(ut7.a("VllOUV9ZTFFXVg=="), ProductionEnv.getStackTraceString(e2));
        }
    }

    public static Intent h1(Context context, String str) throws URISyntaxException {
        Intent uri = Intent.parseUri(str, 1);
        if (ut7.a("Z0hZW1NZX10WVFdbWVQ=").equals(uri.getPackage())) {
            uri.setPackage(context.getPackageName());
        }
        return uri;
    }

    public static String i(String str, String str2, String str3, String str4, String str5) {
        HashMap map = new HashMap();
        map.put(ut7.a("TUxVZ1tZVUhZUV9W"), str);
        map.put(ut7.a("TUxVZ0tXTUpbXQ=="), str2);
        map.put(ut7.a("TUxVZ1VdXFFNVQ=="), str3);
        map.put(ut7.a("TUxVZ0xdSlU="), str4);
        map.put(ut7.a("TUxVZ1tXVkxdVkw="), str5);
        String strA = ut7.a("");
        for (Map.Entry entry : map.entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                if (strA.length() > 0) {
                    strA = strA + ut7.a("Hg==");
                }
                strA = strA + Uri.encode((String) entry.getKey()) + ut7.a("BQ==") + Uri.encode((String) entry.getValue());
            }
        }
        return Uri.encode(strA);
    }

    public static void i0(Context context, String str) {
        l1(context, k(context, str));
    }

    public static void i1(Context context, String str, String str2, boolean z2, String str3, String str4, boolean z3) {
        Intent intent = new Intent();
        intent.setPackage(context.getPackageName());
        intent.setClass(context, YoutubeVideoWebViewActivity.class);
        intent.setAction(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
        intent.setData(Uri.parse(str));
        intent.putExtra(ut7.a("TFFMVF0="), str2);
        intent.putExtra(ut7.a("WU1MV2dcV09WVFdZXA=="), z2);
        intent.putExtra(ut7.a("SFdL"), str3);
        if (str4 != null) {
            intent.putExtra(ut7.a("VFdfZ1xXT1ZUV1lcZ01KVA=="), str4);
        }
        Bundle bundle = new Bundle(intent.getExtras());
        bundle.putString(ut7.a("TUpU"), intent.getDataString());
        bundle.putBoolean(ut7.a("UUtnXkpXVWdKXUxKQQ=="), z3);
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdPXVo="), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static Uri j(String... strArr) {
        Uri uriWithAppendedPath = Uri.parse(ut7.a("WUhIAhcXWUhIFw=="));
        for (String str : strArr) {
            uriWithAppendedPath = Uri.withAppendedPath(uriWithAppendedPath, str);
        }
        return uriWithAppendedPath;
    }

    public static void j0(Context context, Map map, boolean z2) {
        Intent intent = new Intent(context, (Class<?>) LocalMediaPreviewActivity.class);
        intent.setFlags(805306368);
        intent.setPackage(context.getPackageName());
        if (map != null && !map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str != null && str2 != null) {
                    intent.putExtra(str, str2);
                }
            }
        }
        intent.putExtra(ut7.a("XUBMSllnXFFLWVpUXWdZSEhnX01RXF0="), z2);
        l1(context, intent);
    }

    public static void j1(Intent intent, int i2) {
        if (i2 == 0) {
            intent.putExtra(ut7.a("UUtnS1BXT2daSldPS11KZ1lc"), true);
            return;
        }
        if (i2 == 1) {
            intent.putExtra(ut7.a("UUtnS1BXT2daSldPS11KZ1lc"), false);
        } else {
            if (i2 != 2) {
                return;
            }
            intent.putExtra(ut7.a("WVxLXVZLXWdLTUhIV0pMXVw="), true);
            intent.putExtra(ut7.a("UUtnS1BXT2daSldPS11KZ1lc"), false);
        }
    }

    public static Intent k(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) CleanActivity.class);
        intent.putExtra(ut7.a("W1RdWVZnXkpXVQ=="), str);
        intent.putExtra(ut7.a("XkpZX1VdVkxnVllVXQ=="), CleanBaseActivity.k);
        return intent;
    }

    public static void k0(Context context, boolean z2) {
        if (z2) {
            Intent intent = new Intent(context, (Class<?>) VaultLocalSearchActivity.class);
            intent.putExtra(ut7.a("UUtnVFdbUw=="), z2);
            l1(context, intent);
        } else {
            String strA = ut7.a("F0tdWUpbUGdUV1tZVA==");
            Bundle bundle = new Bundle();
            bundle.putBoolean(ut7.a("UUtnVFdbUw=="), z2);
            STNavigator.a.a(context, strA, bundle, LaunchFlag.SINGLE_TOP);
        }
    }

    public static void k1(SpeeddialInfo speeddialInfo, String str, String str2, String str3, boolean z2, String str4) {
        ah3 ah3VarT = t(speeddialInfo, str);
        if (z2) {
            str4 = ut7.a("WkpXT0tdSg==");
        }
        ah3VarT.setProperty(ut7.a("Uk1VSGdMQUhd"), str2);
        ah3VarT.setProperty(ut7.a("SFdLUUxRV1ZnS1dNSltd"), str4);
        if (!TextUtils.isEmpty(str3)) {
            String strA = ut7.a(ut7.a("WUhI").equals(str2) ? "WUhIZ0hZW1NZX10=" : "UFdLTA==");
            if (!ut7.a("WUhI").equals(str2)) {
                str3 = yj8.g(str3);
            }
            ah3VarT.setProperty(strA, str3);
        }
        vq6.K().g(ah3VarT);
    }

    public static Intent l(Context context, MyThingItem myThingItem, String str) {
        Intent intent = new Intent();
        intent.setAction(ut7.a("SFBXXVZRQBZRVkxdVkwWWVtMUVdWFnVhZ2xwcXZ/a2d2eW5xf3lsfQ=="));
        intent.setData(new Uri.Builder().scheme(ut7.a("VllOUV9ZTFFXVg==")).authority(ut7.a("VUFMUFFWXw==")).path(myThingItem.name()).build());
        intent.setFlags(!(context instanceof Activity) ? 335544320 : 67108864);
        intent.putExtra(ut7.a("XkpXVWdMWV8="), str);
        intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXS2dWXU8="), x(str));
        intent.setPackage(PhoenixApplication.z().getPackageName());
        return intent;
    }

    public static void l0(Context context, UpgradeConfig upgradeConfig, String str) {
        NormalUpdateActivity.INSTANCE.a(context, upgradeConfig, str);
    }

    public static boolean l1(Context context, Intent intent) {
        return m1(context, intent, null);
    }

    public static Intent m(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        return new Intent().setAction(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFmt9eWp7cA==")).setPackage(context.getPackageName()).putExtra(ut7.a("SU1dSkE="), str).putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ2ltfWph"), str).putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ2xhaH0="), str3).putExtra(ut7.a("S11ZSltQZ0xBSF0="), str2).putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ35qd3U="), str4).putExtra(ut7.a("SFdL"), str4).putExtra(ut7.a("U11BZ1FWTF1WTGdeSldVZ1BXTGdJTV1KUV1L"), false).putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWfWBsanlna310fXtsZ3x9fnltdGxnbHl6"), str5).putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa315antwZ3t0cXtzZ35qd3U="), str6).putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWcm11aGdsYWh9"), str7);
    }

    public static void m0(Context context, String str) {
        if (!wb5.c(context)) {
            n0(context);
            return;
        }
        Intent intent = new Intent(ut7.a("WVZcSldRXBZLXUxMUVZfSxZ7cHl2dn10Z3Z3bHF+cXt5bHF3dmdrfWxscXZ/aw=="));
        intent.putExtra(ut7.a("WVZcSldRXBZISldOUVxdShZdQExKWRZ5aGhnaHl7c3l/fQ=="), context.getPackageName());
        intent.putExtra(ut7.a("WVZcSldRXBZISldOUVxdShZdQExKWRZ7cHl2dn10Z3F8"), str);
        l1(context, intent);
    }

    public static boolean m1(Context context, Intent intent, Bundle bundle) {
        return n1(context, intent, bundle, true, false, false);
    }

    public static Intent n(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(ut7.a("W1RdWVZnXkpXVQ=="), str);
        Intent intent = new Intent(context, (Class<?>) PhotoCleanDetailActivity.class);
        intent.putExtra(ut7.a("XkpZX1VdVkxnVllVXWdTXUE="), CleanDetailActivity.INSTANCE.a());
        intent.putExtra(ut7.a("XkpZX1VdVkxnWUpfS2dTXUE="), bundle);
        return intent;
    }

    public static void n0(Context context) {
        ut7.a("SFlbU1lfXQ==");
        ut7.a("WUhIZ0hZW1NZX10=");
        ut7.a("WUhIZ01RXA==");
        ut7.a("WVZcSldRXBZISldOUVxdShZdQExKWRZ5aGhnaHl7c3l/fQ==");
        Intent intent = new Intent();
        try {
            intent.setAction(ut7.a("WVZcSldRXBZLXUxMUVZfSxZ5aGhndndscX5xe3lscXd2Z2t9bGxxdn9r"));
            intent.putExtra(ut7.a("WUhIZ0hZW1NZX10="), ut7.a("W1dVFktWWUhMTVpdFkhKXVVRTVU="));
            intent.putExtra(ut7.a("WUhIZ01RXA=="), PhoenixApplication.z().getApplicationInfo().uid);
            intent.putExtra(ut7.a("WVZcSldRXBZISldOUVxdShZdQExKWRZ5aGhnaHl7c3l/fQ=="), ut7.a("W1dVFktWWUhMTVpdFkhKXVVRTVU="));
            if (context.getPackageManager().resolveActivity(intent, 0) != null) {
                context.startActivity(intent);
            } else {
                intent.setAction(ut7.a("WVZcSldRXBZLXUxMUVZfSxZ5aGh0cXt5bHF3dmd8fWx5cXRrZ2t9bGxxdn9r"));
                intent.setData(Uri.fromParts(ut7.a("SFlbU1lfXQ=="), ut7.a("W1dVFktWWUhMTVpdFkhKXVVRTVU="), null));
                intent.addFlags(268435456);
                l1(context, intent);
            }
        } catch (ActivityNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean n1(Context context, Intent intent, Bundle bundle, boolean z2, boolean z3, boolean z4) {
        if (intent != null && context != null) {
            ProductionEnv.debugLog(ut7.a("VllOUV9ZTFFXVg=="), ut7.a("S1leXWtMWUpMeVtMUU5RTEEYXldKGFFWTF1WTAIY") + yq3.a(intent));
            try {
                if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                if (z3) {
                    mr.c(intent, z4);
                }
                context.startActivity(intent, bundle);
                return true;
            } catch (Exception e2) {
                ProductionEnv.logException(ut7.a("dllOUV9ZTFFXVn1AW11ITFFXVg=="), e2);
                if (z3) {
                    mr.f();
                }
            }
        }
        return false;
    }

    public static Intent o(Context context, String str, String str2) {
        return r(context, str, str2);
    }

    public static void o0(Context context) {
        Intent intent = new Intent(context, (Class<?>) PlayerGuideActivity.class);
        intent.addFlags(536870912);
        l1(context, intent);
    }

    public static boolean o1(Activity activity, Intent intent, int i2) {
        return p1(activity, intent, i2, null);
    }

    public static Intent p(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) InsideScanActivity.class);
        intent.putExtra(ut7.a("W1RdWVZnXkpXVQ=="), str);
        return intent;
    }

    public static void p0(Context context, PlayerGuideAdPos playerGuideAdPos, boolean z2, String str) {
        Intent intent = new Intent(context, (Class<?>) PlayerGuideActivity.class);
        intent.putExtra(ut7.a("XUBMSllnTEpZW1NnXUBIV0tNSl0="), z2);
        intent.putExtra(ut7.a("XUBMSllnWVxnSFdLZ1ZZVV0="), playerGuideAdPos.getName());
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra(ut7.a("XUBMSllnVV1cUVlnXlFUXWdWWVVd"), str);
        }
        intent.setFlags(536870912);
        l1(context, intent);
    }

    public static boolean p1(Activity activity, Intent intent, int i2, Bundle bundle) {
        try {
            if (bundle != null) {
                activity.startActivityForResult(intent, i2, bundle);
                return true;
            }
            activity.startActivityForResult(intent, i2);
            return true;
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging(e2);
            return false;
        }
    }

    public static Intent q(Context context, String str, String str2) {
        Uri.Builder builderAppendQueryParameter = Uri.parse(ut7.a("UExMSEsCFxdLVllITE1aXVlISBZbV1U=")).buildUpon().encodedPath(ut7.a("F09ZTFtQ")).appendQueryParameter(ut7.a("TUpU"), str);
        Intent intent = new Intent();
        intent.setData(builderAppendQueryParameter.build());
        intent.putExtra(ut7.a("SFdL"), str2);
        if (!TextUtils.isEmpty(kf9.a(str))) {
            intent.putExtra(ut7.a("SFRZQVRRS0xtSlQ="), str);
        }
        intent.setClass(context, z());
        return intent;
    }

    public static void q0(Context context, String str, String str2) {
        Intent intentO = o(context, str, str2);
        Bundle bundle = new Bundle();
        bundle.putParcelable(ut7.a("UVZMXVZM"), intentO);
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdOUVxdV2dIVFlB"), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static boolean q1(Context context, String str) {
        return r1(context, str, null);
    }

    public static Intent r(Context context, String str, String str2) {
        Uri.Builder builderEncodedPath = Uri.parse(ut7.a("UExMSEsCFxdLVllITE1aXVlISBZbV1U=")).buildUpon().encodedPath(ut7.a("F09ZTFtQ"));
        Intent intent = new Intent();
        intent.setData(builderEncodedPath.build());
        intent.putExtra(ut7.a("SFRZQVRRS0xtSlQ="), str);
        intent.putExtra(ut7.a("SFdL"), str2);
        intent.putExtra(ut7.a("UUtoVFlBVFFLTA=="), true);
        intent.setClass(context, z());
        intent.setData(Uri.parse(str));
        return intent;
    }

    public static void r0(Context context) {
        l1(context, new Intent(context, (Class<?>) MePoliciesActivity.class));
    }

    public static boolean r1(Context context, String str, String str2) {
        return u1(context, str, str2, null, null, false);
    }

    public static Intent s(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) CleanActivity.class);
        intent.putExtra(ut7.a("W1RdWVZnXkpXVQ=="), str);
        intent.putExtra(ut7.a("XkpZX1VdVkxnVllVXQ=="), ut7.a("b1BZTEt5SEh0UUtMd0p9Vlw="));
        return intent;
    }

    public static void s0(Context context, String str) {
        l1(context, y(context, str));
    }

    public static boolean s1(Context context, String str, String str2, String str3, String str4, String str5) {
        return t1(context, str, str2, str3, str4, str5, false);
    }

    public static ah3 t(SpeeddialInfo speeddialInfo, String str) {
        return new ReportPropertyBuilder().setEventName(ut7.a("e1RRW1M=")).setAction(ut7.a("S0hdXVxnXFFZVGdbVFFbUw==")).setProperty(ut7.a("TUpR"), str).setProperty(ut7.a("TFFMVF0="), speeddialInfo.getTitle());
    }

    public static void t0(Context context, String str, String str2, int i2) {
        Intent intent = new Intent(context, (Class<?>) VaultActivity.class);
        intent.putExtra(ut7.a("XlFUXWdIWUxQ"), str);
        intent.putExtra(ut7.a("TllNVExnXkpXVQ=="), str2);
        intent.putExtra(ut7.a("VV1cUVlnTEFIXQ=="), i2);
        l1(context, intent);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0062 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0063  */
    /* JADX WARN: Code duplicated, block: B:26:0x0069  */
    /* JADX WARN: Code duplicated, block: B:28:0x0087  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    public static boolean t1(Context context, String str, String str2, String str3, String str4, String str5, boolean z2) {
        Intent launchIntentForPackage;
        Intent intent;
        if (TextUtils.isEmpty(str) || !ap3.j(context, str)) {
            return false;
        }
        if (TextUtils.isEmpty(str5)) {
            if (TextUtils.isEmpty(str4)) {
                launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            } else {
                Intent intent2 = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="));
                intent2.setComponent(new ComponentName(str, str4));
                intent = intent2;
            }
            if (intent == null) {
                return false;
            }
            if (!TextUtils.isEmpty(str2)) {
                intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXSw=="), str2);
                intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXS2dWXU8="), str2);
                if (TextUtils.equals(str, ut7.a("W1dVFlxBT0AWVFlKU0hUWUFdSg=="))) {
                    kz3.a.d(intent, context);
                }
            }
            if (!TextUtils.isEmpty(str3)) {
                intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hZSllV"), str3);
            }
            return n1(context, intent, null, false, true, z2);
        }
        launchIntentForPackage = null;
        try {
            if (str5.startsWith(ut7.a("UVZMXVZMAg=="))) {
                launchIntentForPackage = Intent.parseUri(str5, 1);
            }
        } catch (Throwable unused) {
        }
        if (launchIntentForPackage == null) {
            launchIntentForPackage = new Intent();
            launchIntentForPackage.setData(Uri.parse(str5));
            launchIntentForPackage.setPackage(str);
        }
        intent = launchIntentForPackage;
        if (intent == null) {
            return false;
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXSw=="), str2);
            intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hXS2dWXU8="), str2);
            if (TextUtils.equals(str, ut7.a("W1dVFlxBT0AWVFlKU0hUWUFdSg=="))) {
                kz3.a.d(intent, context);
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            intent.putExtra(ut7.a("WUhIZ0tMWUpMZ0hZSllV"), str3);
        }
        return n1(context, intent, null, false, true, z2);
    }

    public static void u() {
        exitForCrack(-1);
    }

    public static void u0(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) VaultActivity.class);
        intent.addFlags(32768);
        intent.addFlags(67108864);
        intent.putExtra(ut7.a("TllNVExnXkpXVQ=="), str);
        l1(context, intent);
    }

    public static boolean u1(Context context, String str, String str2, String str3, String str4, boolean z2) {
        return t1(context, str, str2, str3, str4, null, z2);
    }

    public static Intent v(Context context, String str, String str2) {
        return w(context, str, str2, null, null);
    }

    public static void v0(Context context, List list, boolean z2, String str) {
        Intent intent = new Intent(context, (Class<?>) LockFromInsideActivity.class);
        intent.setAction(ut7.a("WVtMUVdWZ15KV1VnUVZWXUo="));
        intent.putExtra(ut7.a("UUtnVFdbUw=="), z2);
        intent.putExtra(ut7.a("XkpXVQ=="), str);
        intent.putStringArrayListExtra(ut7.a("XFlMWWdIWUxQSw=="), new ArrayList<>(list));
        l1(context, intent);
    }

    public static boolean v1(Context context, Intent intent) {
        try {
            c77.b(context, intent);
            return true;
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging(ut7.a("a0xZSkxrXUpOUVtdfUBbXUhMUVdW"), e2);
            return false;
        }
    }

    public static Intent w(Context context, String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str4)) {
            str4 = ut7.a("VVlKU11MAhcXXF1MWVFUSwdRXAU=");
        }
        String str5 = str4 + str;
        if (!TextUtils.isEmpty(str2)) {
            str5 = str5 + ut7.a("HkpdXl1KSl1KBQ==") + str2;
        }
        if (!TextUtils.isEmpty(str3)) {
            str5 = str5 + ut7.a("Hg==") + str3;
        }
        Intent intent = new Intent(ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFm5xfW8="), Uri.parse(str5));
        ActivityInfo activityInfoE = r6.e(context, intent, ut7.a("W1dVFllWXEpXUVwWTl1WXFFWXw=="));
        if (activityInfoE == null) {
            return null;
        }
        intent.setComponent(new ComponentName(activityInfoE.applicationInfo.packageName, activityInfoE.name));
        intent.setFlags(270532608);
        return intent;
    }

    public static void w0(Context context, String str) {
        l1(context, p(context, str));
    }

    public static boolean w1(Context context, Intent intent) {
        try {
            context.startService(intent);
            return true;
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging(ut7.a("a0xZSkxrXUpOUVtdfUBbXUhMUVdW"), e2);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    public static String x(String str) {
        byte b2;
        int iHashCode = str.hashCode();
        if (iHashCode != 406483632) {
            if (iHashCode != 1031605977) {
                if (iHashCode == 1871081184 && str.equals(ut7.a("XFdPVlRXWVxnXlFWUUtQZ1ZXTFFeUVtZTFFXVg=="))) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
            } else if (str.equals(ut7.a("XFdPVlRXWVxnXUpKV0pnVldMUV5RW1lMUVdW"))) {
                b2 = 2;
            } else {
                b2 = -1;
            }
        } else if (str.equals(ut7.a("XFdPVlRXWVxRVl9nVldMUV5RW1lMUVdW"))) {
            b2 = 0;
        } else {
            b2 = -1;
        }
        if (b2 == 0) {
            return ut7.a("VldMUV5RW1lMUVdWZ1xXT1ZUV1lcUVZf");
        }
        if (b2 != 1) {
            return b2 != 2 ? ut7.a("VldMUV5RW1lMUVdWZ1xXT1ZUV1lcZ1dMUF1K") : ut7.a("VldMUV5RW1lMUVdWZ1xXT1ZUV1lcZ15ZUVQ=");
        }
        return ut7.a("VldMUV5RW1lMUVdWZ1xXT1ZUV1lcZ1dT");
    }

    public static void x0(Context context, String str, String str2, String str3) {
        if (sz6.d(context, str)) {
            return;
        }
        Bundle bundle = new Bundle(m(context, str, str2, str2, str3, null, str3, null).getExtras());
        bundle.putString(ut7.a("WVtMUVdW"), ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFmt9eWp7cA=="));
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdVUUBdXGdKXUtNVEw="), bundle, LaunchFlag.STANDARD);
    }

    public static void x1(Context context) {
        b88.l(context, R.string.no_browser);
    }

    public static Intent y(Context context, String str) {
        if (context == null) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) VaultActivity.class);
        intent.putExtra(ut7.a("TllNVExnXkpXVQ=="), str);
        return intent;
    }

    public static void y0(Context context, String str, String str2, String str3, String str4) {
        if (sz6.d(context, str)) {
            return;
        }
        Bundle bundle = new Bundle(m(context, str, str2, str2, str3, null, str3, null).getExtras());
        bundle.putString(ut7.a("WVtMUVdW"), ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFmt9eWp7cA=="));
        bundle.putString(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWe3d2bH12bGdtanQ="), str4);
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdVUUBdXGdKXUtNVEw="), bundle, LaunchFlag.SINGLE_TOP);
    }

    public static void y1(Context context, Intent intent) {
        FragmentActivity fragmentActivityC;
        if (!az7.U(context) || (fragmentActivityC = s5.c(context)) == null || fragmentActivityC.getSupportFragmentManager() == null) {
            return;
        }
        intent.putExtra(ut7.a("SFBXXVZRQBZRVkxdVkwWXUBMSlkWa3B3b2d0d39xdmd0eXZ8cXZ/Z2h5f30="), false);
        YtLoginPopFragment.b3(fragmentActivityC.getSupportFragmentManager(), intent);
    }

    public static Class z() {
        return WindowPlayUtils.h() ? VideoPlaybackActivity.class : VideoPlaybackActivityTransTheme.class;
    }

    public static void z0(Context context, String str, String str2, String str3, String str4) {
        if (sz6.d(context, str)) {
            return;
        }
        Bundle bundle = new Bundle(m(context, str, str2, str3, str4, null, str4, null).getExtras());
        bundle.putString(ut7.a("WVtMUVdW"), ut7.a("WVZcSldRXBZRVkxdVkwWWVtMUVdWFmt9eWp7cA=="));
        STNavigator.a.a(context, ut7.a("F0tdWUpbUGdVUUBdXGdKXUtNVEw="), bundle, LaunchFlag.STANDARD);
    }
}
