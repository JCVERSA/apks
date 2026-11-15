package com.transsion.wrapperad.activate.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import ci.e;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.ps.activate.PsActivateBean;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import com.transsion.wrapperad.activate.ui.SwipeUpCloseView;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mw.a;
import ni.f;
import qi.h;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J3\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020#H\u0014¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b'\u0010\u0018J\u0015\u0010(\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b(\u0010\u0018R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00107\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010:\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010;¨\u0006="}, d2 = {"Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "widthPX", "", "l", "(I)V", "", "reuse", "f", "(Z)V", "Landroid/app/Activity;", "activity", "h", "(Landroid/app/Activity;)V", "moduleName", "activityName", "packageName", "isOpenSuccess", "e", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onActivityResume", "onActivityPause", "Landroid/view/View;", "a", "Landroid/view/View;", "activateAdView", "Lcom/transsion/ad/ps/activate/PsActivateBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/ps/activate/PsActivateBean;", "activateAd", "", "c", "F", "downY", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "closeThreshold", "Landroid/os/Handler;", "Landroid/os/Handler;", "mHandler", "Landroid/app/Activity;", "mActivity", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SwipeUpCloseView extends FrameLayout {

    private View activateAdView;

    private PsActivateBean activateAd;

    private float downY;

    private final int closeThreshold;

    private final Handler mHandler;

    private Activity mActivity;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeUpCloseView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    private final void e(String moduleName, String activityName, String packageName, Boolean isOpenSuccess) {
        HashMap map = new HashMap();
        map.put("dialog_name", "ad_active_vip");
        map.put("module_name", moduleName);
        map.put("activity_name", activityName);
        if (packageName == null) {
            packageName = "";
        }
        map.put("package_name", packageName);
        map.put("is_open_success", String.valueOf(isOpenSuccess));
        h.f69682a.q("SwipeUpCloseView", "click", map);
    }

    private final void f(boolean reuse) {
        setVisibility(8);
        this.activateAd = null;
        a.f66724a.d(reuse);
    }

    public static final void g(Activity activity, SwipeUpCloseView swipeUpCloseView) {
        PsActivateBean psActivateBeanE = a.f66724a.e(activity);
        if (!Intrinsics.c(psActivateBeanE, swipeUpCloseView.activateAd) && psActivateBeanE != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "ad_active_vip");
            map.put("activity_name", activity.getClass().getSimpleName());
            String packageName = psActivateBeanE.getPackageName();
            if (packageName == null) {
                packageName = "";
            }
            map.put("package_name", packageName);
            h.f69682a.q("LongVodActivateDialog", "dialog_show", map);
        }
        swipeUpCloseView.mActivity = activity;
        swipeUpCloseView.activateAd = psActivateBeanE;
        if (psActivateBeanE == null) {
            swipeUpCloseView.setVisibility(8);
        } else {
            swipeUpCloseView.setVisibility(0);
            swipeUpCloseView.h(activity);
        }
    }

    private final String getClassTag() {
        String simpleName = SwipeUpCloseView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void h(final Activity activity) {
        TextView textView;
        Object objM453constructorimpl;
        String appName;
        ShapeableImageView shapeableImageView;
        ImageView imageView;
        TextView textView2;
        if (this.activateAdView == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.base_ui_activate_ad_view_layout, (ViewGroup) null);
            this.activateAdView = viewInflate;
            addView(viewInflate);
            View view = this.activateAdView;
            if (view != null && (textView2 = (TextView) view.findViewById(R$id.tvBtn)) != null) {
                PsActivateBean psActivateBean = this.activateAd;
                textView2.setText(psActivateBean != null ? psActivateBean.getButtonText() : null);
                textView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        SwipeUpCloseView.i(this.f67388a, activity, view2);
                    }
                });
            }
            View view2 = this.activateAdView;
            if (view2 != null && (imageView = (ImageView) view2.findViewById(R$id.ivClose)) != null) {
                imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view3) {
                        SwipeUpCloseView.k(this.f67390a, activity, view3);
                    }
                });
            }
        }
        View view3 = this.activateAdView;
        if (view3 != null && (shapeableImageView = (ShapeableImageView) view3.findViewById(R$id.ivIcon)) != null) {
            f.a aVar = f.f67269a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            PsActivateBean psActivateBean2 = this.activateAd;
            bVarM.g(psActivateBean2 != null ? psActivateBean2.getIconUrl() : null).d(shapeableImageView);
        }
        View view4 = this.activateAdView;
        if (view4 == null || (textView = (TextView) view4.findViewById(R$id.tvTitle)) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            a aVar2 = a.f66724a;
            Context context2 = getContext();
            Intrinsics.g(context2, "getContext(...)");
            PsActivateBean psActivateBean3 = this.activateAd;
            if (psActivateBean3 == null || (appName = psActivateBean3.getAppName()) == null) {
                appName = "";
            }
            textView.setText(aVar2.a(context2, appName));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m452boximpl(objM453constructorimpl);
    }

    public static final void i(final SwipeUpCloseView swipeUpCloseView, Activity activity, View view) {
        e eVar = e.f16935a;
        Context context = swipeUpCloseView.getContext();
        PsActivateBean psActivateBean = swipeUpCloseView.activateAd;
        boolean zB = eVar.b(context, psActivateBean != null ? psActivateBean.getPackageName() : null);
        if (zB) {
            mw.f.f66730a.n(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SwipeUpCloseView.j(this.f67392a, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            wf.a.C0922a.g(wf.a.f74274a, swipeUpCloseView.getClassTag() + " --> showView() --> 打开应用失败 --> 关闭实效广告", false, 2, null);
        }
        String simpleName = activity.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        PsActivateBean psActivateBean2 = swipeUpCloseView.activateAd;
        swipeUpCloseView.e(MRAIDPresenter.OPEN, simpleName, psActivateBean2 != null ? psActivateBean2.getPackageName() : null, Boolean.valueOf(zB));
        swipeUpCloseView.f(false);
    }

    public static final Unit j(SwipeUpCloseView swipeUpCloseView, boolean z10) {
        if (z10) {
            wf.a.C0922a.g(wf.a.f74274a, swipeUpCloseView.getClassTag() + " --> showView() --> 激活成功", false, 2, null);
        } else {
            wf.a.C0922a.g(wf.a.f74274a, swipeUpCloseView.getClassTag() + " --> showView() --> 激活失败", false, 2, null);
        }
        return Unit.f64096a;
    }

    public static final void k(SwipeUpCloseView swipeUpCloseView, Activity activity, View view) {
        String simpleName = activity.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        PsActivateBean psActivateBean = swipeUpCloseView.activateAd;
        swipeUpCloseView.e("close", simpleName, psActivateBean != null ? psActivateBean.getPackageName() : null, Boolean.FALSE);
        swipeUpCloseView.f(true);
    }

    private final void l(int widthPX) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.width = widthPX;
        setLayoutParams(layoutParams);
    }

    public final void onActivityPause(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.mHandler.removeCallbacksAndMessages(null);
        if (Build.VERSION.SDK_INT < 24 || !activity.isInPictureInPictureMode()) {
            return;
        }
        setVisibility(8);
        wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onActivityPause() --> 画中画模式 --> 关闭实效广告", false, 2, null);
    }

    public final void onActivityResume(final Activity activity) {
        Intrinsics.h(activity, "activity");
        this.mHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SwipeUpCloseView.g(activity, this);
            }
        }, 300L);
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i10 = newConfig.orientation;
        if (i10 == 1) {
            wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onConfigurationChanged() --> 竖屏 模式", false, 2, null);
            l(y.e() - (a0.a(12.0f) * 2));
            return;
        }
        if (i10 != 2) {
            return;
        }
        wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onConfigurationChanged() --> 横屏 模式", false, 2, null);
        l(a0.a(336.0f));
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.downY = event.getY();
            return true;
        }
        if (action == 1 && this.downY - event.getY() > this.closeThreshold) {
            Activity activity = this.mActivity;
            if (activity != null) {
                String simpleName = activity.getClass().getSimpleName();
                Intrinsics.g(simpleName, "getSimpleName(...)");
                PsActivateBean psActivateBean = this.activateAd;
                e("close_swipe", simpleName, psActivateBean != null ? psActivateBean.getPackageName() : null, Boolean.FALSE);
            }
            f(true);
        }
        return super.onTouchEvent(event);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeUpCloseView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public SwipeUpCloseView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeUpCloseView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.closeThreshold = 100;
        this.mHandler = new Handler(Looper.getMainLooper());
    }
}
