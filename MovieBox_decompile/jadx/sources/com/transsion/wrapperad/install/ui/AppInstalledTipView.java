package com.transsion.wrapperad.install.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import ci.e;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.transsion.wrapperad.install.ui.AppInstalledTipView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import tw.a;
import tw.d;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b!\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;", "Landroid/widget/FrameLayout;", "Ltw/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/app/Activity;", "activity", "Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;", "appChangeInfo", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/app/Activity;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V", "widthPX", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(I)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onAppInstalledTipEnd", "()V", "onAppInstalledTipStart", "onActivityResume", "(Landroid/app/Activity;)V", "onActivityPause", "a", "Landroid/app/Activity;", "mActivity", "Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;", "Landroid/view/View;", "c", "Landroid/view/View;", "tipView", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppInstalledTipView extends FrameLayout implements a {

    private Activity mActivity;

    private AppChangeInfo appChangeInfo;

    private View tipView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AppInstalledTipView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    private final void b(final Activity activity, final AppChangeInfo appChangeInfo) {
        TextView textView;
        Object objM453constructorimpl;
        FrameLayout frameLayout;
        ShapeableImageView shapeableImageView;
        Object objM453constructorimpl2;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        if (this.tipView == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.base_ui_app_installed_tip_view_layout, (ViewGroup) null);
            this.tipView = viewInflate;
            addView(viewInflate);
        }
        com.transsion.wrapperad.install.a.f55997a.a(getClassTag() + " --> showView() --> 展示");
        View view = this.tipView;
        if (view != null && (shapeableImageView = (ShapeableImageView) view.findViewById(R$id.ivIcon)) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl2 = Result.m453constructorimpl(Glide.with(getContext()).load2(appChangeInfo.getIcon()).into(shapeableImageView));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl2);
        }
        View view2 = this.tipView;
        if (view2 != null && (frameLayout = (FrameLayout) view2.findViewById(R$id.flContainer)) != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    AppInstalledTipView.c(this.f72873a, appChangeInfo, activity, view3);
                }
            });
        }
        View view3 = this.tipView;
        if (view3 == null || (textView = (TextView) view3.findViewById(R$id.tvTitle)) == null) {
            return;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            String str = appChangeInfo.getAppName() + " app installed.";
            mw.a aVar = mw.a.f66724a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            String appName = appChangeInfo.getAppName();
            if (appName == null) {
                appName = "";
            }
            textView.setText(aVar.b(context, appName, str));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th3));
        }
        Result.m452boximpl(objM453constructorimpl);
    }

    public static final void c(AppInstalledTipView appInstalledTipView, AppChangeInfo appChangeInfo, Activity activity, View view) {
        boolean z10;
        if (e.f16935a.b(appInstalledTipView.getContext(), appChangeInfo.getPackageName())) {
            com.transsion.wrapperad.install.a.f55997a.a(appInstalledTipView.getClassTag() + " --> showView() --> 已安装应用被打开");
            z10 = true;
        } else {
            com.transsion.wrapperad.install.a.f55997a.a(appInstalledTipView.getClassTag() + " --> showView() --> 打开应用失败");
            z10 = false;
        }
        HashMap map = new HashMap();
        map.put("dialog_name", "ad_active");
        map.put("activity_name", activity.getClass().getSimpleName());
        map.put("package_name", appChangeInfo.getPackageName());
        map.put("is_success", String.valueOf(z10));
        h hVar = h.f69682a;
        String simpleName = activity.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        hVar.q(simpleName, "click", map);
        d.f72867a.g();
    }

    private final void d(int widthPX) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.width = widthPX;
        setLayoutParams(layoutParams);
    }

    private final String getClassTag() {
        String simpleName = AppInstalledTipView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void onActivityPause(Activity activity) {
        Intrinsics.h(activity, "activity");
        d.f72867a.j(null);
    }

    public final void onActivityResume(Activity activity) {
        this.mActivity = activity;
        d dVar = d.f72867a;
        AppChangeInfo appChangeInfoH = dVar.h();
        if (activity != null && !Intrinsics.c(appChangeInfoH, this.appChangeInfo) && appChangeInfoH != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "ad_active");
            map.put("activity_name", activity.getClass().getSimpleName());
            map.put("module_name", PushConstants.PUSH_SERVICE_TYPE_SHOW);
            map.put("package_name", appChangeInfoH.getPackageName());
            h hVar = h.f69682a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            hVar.q(simpleName, "dialog_show", map);
        }
        this.appChangeInfo = appChangeInfoH;
        if (appChangeInfoH == null) {
            setVisibility(8);
        } else if (appChangeInfoH != null) {
            setVisibility(0);
            b(activity, appChangeInfoH);
        }
        dVar.j(this);
    }

    @Override
    public void onAppInstalledTipEnd() {
        String packageName;
        Activity activity = this.mActivity;
        if (activity != null && this.appChangeInfo != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "ad_active");
            map.put("activity_name", activity.getClass().getSimpleName());
            AppChangeInfo appChangeInfo = this.appChangeInfo;
            if (appChangeInfo == null || (packageName = appChangeInfo.getPackageName()) == null) {
                packageName = " appChangeInfo == null";
            }
            map.put("package_name", packageName);
            map.put("module_name", "auto_close");
            h hVar = h.f69682a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            hVar.q(simpleName, "dialog_show", map);
        }
        onActivityResume(null);
    }

    @Override
    public void onAppInstalledTipStart() {
        onActivityResume(this.mActivity);
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i10 = newConfig.orientation;
        if (i10 == 1) {
            wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onConfigurationChanged() --> 竖屏 模式", false, 2, null);
            d(y.e() - (a0.a(12.0f) * 2));
            return;
        }
        if (i10 != 2) {
            return;
        }
        wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onConfigurationChanged() --> 横屏 模式", false, 2, null);
        d(a0.a(336.0f));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AppInstalledTipView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public AppInstalledTipView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AppInstalledTipView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
    }
}
