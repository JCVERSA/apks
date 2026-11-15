package com.cloud.tmc.miniapp.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.render.IWebViewFactory;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.StatusAction;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.widget.LoadingTextView;
import com.cloud.tmc.miniapp.widget.NativeTitleBar;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniutils.util.ColorUtils;
import com.cloud.tmc.miniutils.util.EmptyUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.render.system.SystemWebView;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

public class WebViewActivity extends BaseActivity implements WebviewPageEventCallback, WebviewPageCallback, StatusAction {
    private static final String APP_ID = "open webview";
    public static final Companion Companion = new Companion(null);

    private IWebView f23025wb;
    private final Lazy mStatusLayout$delegate = LazyKt.b(new Function0<StatusLayout>() {
        {
            super(0);
        }

        @Override
        public final StatusLayout invoke() {
            return (StatusLayout) this.this$0.findViewById(R.id.sl_status);
        }
    });
    private final Lazy mFlWb$delegate = LazyKt.b(new Function0<FrameLayout>() {
        {
            super(0);
        }

        @Override
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_wb);
        }
    });
    private final Lazy mLayoutTitle$delegate = LazyKt.b(new Function0<NativeTitleBar>() {
        {
            super(0);
        }

        @Override
        public final NativeTitleBar invoke() {
            return (NativeTitleBar) this.this$0.findViewById(R.id.title_native_Bar);
        }
    });
    private final Lazy mPb$delegate = LazyKt.b(new Function0<ProgressBar>() {
        {
            super(0);
        }

        @Override
        public final ProgressBar invoke() {
            return (ProgressBar) this.this$0.findViewById(R.id.f22830pb);
        }
    });
    private Boolean mLoadErrorFlag = Boolean.FALSE;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void launch$default(Companion companion, Context context, String str, String str2, String str3, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str2 = null;
            }
            if ((i10 & 8) != 0) {
                str3 = null;
            }
            companion.launch(context, str, str2, str3);
        }

        @JvmStatic
        public final void launch(Context context, String url, String str, String str2) {
            Intrinsics.h(context, "context");
            Intrinsics.h(url, "url");
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra(TmcConstants.EXTRA_PAGE_URI, url);
            if (str != null) {
                intent.putExtra(TmcConstants.EXTRA_APP_INSTANCE_ID, str);
            }
            if (str2 != null) {
                intent.putExtra(TmcConstants.EXTRA_PAGE_INSTANCE_ID, str2);
            }
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    private final NativeTitleBar getMLayoutTitle() {
        return (NativeTitleBar) this.mLayoutTitle$delegate.getValue();
    }

    private final ProgressBar getMPb() {
        return (ProgressBar) this.mPb$delegate.getValue();
    }

    private final StatusLayout getMStatusLayout() {
        return (StatusLayout) this.mStatusLayout$delegate.getValue();
    }

    @JvmStatic
    public static final void launch(Context context, String str, String str2, String str3) {
        Companion.launch(context, str, str2, str3);
    }

    @Override
    public int getLayoutId() {
        return R.layout.activity_mini_web_view;
    }

    public final FrameLayout getMFlWb() {
        return (FrameLayout) this.mFlWb$delegate.getValue();
    }

    @Override
    public StatusLayout getStatusLayout() {
        return getMStatusLayout();
    }

    public Integer getViewThemeMode() {
        return 1;
    }

    public final IWebView getWb() {
        return this.f23025wb;
    }

    @Override
    public void initData() {
        String string;
        Bundle extras = getIntent().getExtras();
        if (extras == null || (string = extras.getString(TmcConstants.EXTRA_PAGE_URI)) == null) {
            return;
        }
        Intrinsics.g(string, "getString(TmcConstants.EXTRA_PAGE_URI) ?: return");
        this.mLoadErrorFlag = Boolean.FALSE;
        IWebView iWebView = this.f23025wb;
        if (iWebView != null) {
            iWebView.load(string, MapsKt.j(TuplesKt.a("x-tr-devtype", "h5")));
        }
    }

    @Override
    public void initView() {
        try {
            IWebView iWebViewCreateWebView = ((IWebViewFactory) TmcProxy.get(IWebViewFactory.class)).createWebView(this);
            SystemWebView systemWebView = null;
            if (iWebViewCreateWebView != null) {
                iWebViewCreateWebView.registerPageEventCallback(this);
                iWebViewCreateWebView.registerPageCallback(this);
            } else {
                iWebViewCreateWebView = null;
            }
            this.f23025wb = iWebViewCreateWebView;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            FrameLayout mFlWb = getMFlWb();
            if (mFlWb != null) {
                IWebView iWebView = this.f23025wb;
                SystemWebView systemWebView2 = iWebView instanceof SystemWebView ? (SystemWebView) iWebView : null;
                if (systemWebView2 != null) {
                    systemWebView2.setBackgroundColor(ColorUtils.getColor(R.color.mini_color_bg_01));
                    systemWebView2.getSettings().setDomStorageEnabled(true);
                    systemWebView2.setLayoutParams(layoutParams);
                    ViewExtKt.removeSelf(systemWebView2);
                    systemWebView = systemWebView2;
                }
                mFlWb.addView(systemWebView);
            }
            IWebView iWebView2 = this.f23025wb;
            if (iWebView2 != null) {
                iWebView2.setAppId(APP_ID);
            }
            IWebView iWebView3 = this.f23025wb;
            if (iWebView3 != null) {
                iWebView3.setNode(new PageNode(null, "", "", null, null));
            }
            IWebView iWebView4 = this.f23025wb;
            if (iWebView4 != null) {
                iWebView4.create();
            }
            NativeTitleBar mLayoutTitle = getMLayoutTitle();
            if (mLayoutTitle != null) {
                mLayoutTitle.setTitle("");
            }
            NativeTitleBar mLayoutTitle2 = getMLayoutTitle();
            if (mLayoutTitle2 != null) {
                mLayoutTitle2.setonBackClickListener(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m259invoke();
                        return Unit.f64096a;
                    }

                    public final void m259invoke() {
                        WebViewActivity.this.finish();
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e("WebViewActivity", th2);
        }
    }

    @Override
    public boolean isLoadStatusLoadingOrError() {
        return StatusAction.DefaultImpls.isLoadStatusLoadingOrError(this);
    }

    @Override
    public void onConsoleMessage(String consoleMessage) {
        Intrinsics.h(consoleMessage, "consoleMessage");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        IWebView iWebView = this.f23025wb;
        if (iWebView != null) {
            iWebView.destroy();
            this.f23025wb = null;
        }
        FrameLayout mFlWb = getMFlWb();
        if (mFlWb != null) {
            mFlWb.removeAllViews();
        }
    }

    public void onPageFinished(WebView webView, String str) {
        StatusLayout statusLayout = getStatusLayout();
        if (statusLayout != null) {
            statusLayout.OooO0O0();
        }
    }

    @Override
    public void onProgressChanged(WebView webView, int i10) {
        if (i10 == 0) {
            ProgressBar mPb = getMPb();
            if (mPb == null) {
                return;
            }
            mPb.setVisibility(0);
            return;
        }
        if (i10 != 100) {
            ProgressBar mPb2 = getMPb();
            if (mPb2 == null) {
                return;
            }
            mPb2.setProgress(i10);
            return;
        }
        ProgressBar mPb3 = getMPb();
        if (mPb3 == null) {
            return;
        }
        mPb3.setVisibility(8);
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        LoadingTextView loadingTextView;
        this.mLoadErrorFlag = Boolean.TRUE;
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        StatusLayout statusLayout = getStatusLayout();
        if (statusLayout != null && (loadingTextView = statusLayout.OooO0oo) != null) {
            loadingTextView.setVisibility(4);
        }
        if (NetworkUtils.isConnected()) {
            StatusAction.DefaultImpls.showError$default(this, new StatusLayout.OooO0O0() {
                @Override
                public void onRetry(StatusLayout statusLayout2) {
                    StatusLayout statusLayout3 = WebViewActivity.this.getStatusLayout();
                    if (statusLayout3 != null) {
                        statusLayout3.OooO0Oo();
                    }
                    WebViewActivity.this.mLoadErrorFlag = Boolean.FALSE;
                    IWebView wb2 = WebViewActivity.this.getWb();
                    if (wb2 != null) {
                        wb2.reload();
                    }
                }
            }, R.string.loading_error_tv, "", APP_ID, null, 16, null);
        } else {
            StatusAction.DefaultImpls.showNoNetwork$default(this, new StatusLayout.OooO0O0() {
                @Override
                public void onRetry(StatusLayout statusLayout2) {
                    StatusLayout statusLayout3 = WebViewActivity.this.getStatusLayout();
                    if (statusLayout3 != null) {
                        statusLayout3.OooO0Oo();
                    }
                    WebViewActivity.this.mLoadErrorFlag = Boolean.FALSE;
                    IWebView wb2 = WebViewActivity.this.getWb();
                    if (wb2 != null) {
                        wb2.reload();
                    }
                }
            }, 0, null, APP_ID, null, 22, null);
        }
    }

    public void onReceivedTitle(String str) {
        if (!Intrinsics.c(this.mLoadErrorFlag, Boolean.FALSE) || EmptyUtils.textIsEmpty(str)) {
            NativeTitleBar mLayoutTitle = getMLayoutTitle();
            if (mLayoutTitle != null) {
                mLayoutTitle.setTitle("");
                return;
            }
            return;
        }
        NativeTitleBar mLayoutTitle2 = getMLayoutTitle();
        if (mLayoutTitle2 != null) {
            mLayoutTitle2.setTitle(str);
        }
    }

    @Override
    public Boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return com.cloud.tmc.kernel.render.d.a(this, webView, renderProcessGoneDetail);
    }

    @Override
    public void setLoadingProgressConfig(LoadingTextView.LoadingAnimationModel loadingAnimationModel) {
        StatusAction.DefaultImpls.setLoadingProgressConfig(this, loadingAnimationModel);
    }

    public final void setWb(IWebView iWebView) {
        this.f23025wb = iWebView;
    }

    public Boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return com.cloud.tmc.kernel.render.d.b(this, webView, webResourceRequest);
    }

    @Override
    public boolean showComplete() {
        return StatusAction.DefaultImpls.showComplete(this);
    }

    @Override
    public void showCustomErrorLayout(String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showCustomErrorLayout(this, str, str2, str3, oooO0O0, str4, oooO00o);
    }

    @Override
    public void showError(StatusLayout.OooO0O0 oooO0O0, int i10, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showError(this, oooO0O0, i10, str, str2, oooO00o);
    }

    @Override
    public void showErrorLayout(int i10, int i11, int i12, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i10, i11, i12, oooO0O0, z10, z11, oooO00o);
    }

    @Override
    public void showLoading() {
        StatusAction.DefaultImpls.showLoading(this);
    }

    @Override
    public void showLoadingLogo(String str, String str2) {
        StatusAction.DefaultImpls.showLoadingLogo(this, str, str2);
    }

    @Override
    public void showMainLayoutAlpha(float f10) {
        StatusAction.DefaultImpls.showMainLayoutAlpha(this, f10);
    }

    @Override
    public void showNoNetwork(StatusLayout.OooO0O0 oooO0O0, int i10, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showNoNetwork(this, oooO0O0, i10, str, str2, oooO00o);
    }

    @Override
    public void showPhotoEmpty(int i10, int i11, StatusLayout.OooO0O0 oooO0O0) {
        StatusAction.DefaultImpls.showPhotoEmpty(this, i10, i11, oooO0O0);
    }

    @Override
    public void showUnstableNetwork(StatusLayout.OooO0O0 oooO0O0, int i10, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showUnstableNetwork(this, oooO0O0, i10, str, str2, oooO00o);
    }

    @Override
    public void statusLayoutCreateShortCutsSuccess(String str, Function3<? super String, ? super String, ? super String, Unit> function3) {
        StatusAction.DefaultImpls.statusLayoutCreateShortCutsSuccess(this, str, function3);
    }

    @Override
    public void statusLayoutOnResume() {
        StatusAction.DefaultImpls.statusLayoutOnResume(this);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void trackH5Event(String str, AdsDTO adsDTO, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(str3);
            Bundle bundle = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys != null) {
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject.get(next);
                    if (obj != null) {
                        TmcLogger.d("ssp", obj.toString());
                        String simpleName = obj.getClass().getSimpleName();
                        switch (simpleName.hashCode()) {
                            case -1808118735:
                                if (!simpleName.equals("String")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj2 = jSONObject.get(next);
                                    Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.String");
                                    bundle.putString(next, (String) obj2);
                                }
                                break;
                            case -672261858:
                                if (!simpleName.equals("Integer")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj3 = jSONObject.get(next);
                                    Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Int");
                                    bundle.putInt(next, ((Integer) obj3).intValue());
                                }
                                break;
                            case 2374300:
                                if (!simpleName.equals("Long")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj4 = jSONObject.get(next);
                                    Intrinsics.f(obj4, "null cannot be cast to non-null type kotlin.Long");
                                    bundle.putLong(next, ((Long) obj4).longValue());
                                }
                                break;
                            case 1729365000:
                                if (!simpleName.equals("Boolean")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj5 = jSONObject.get(next);
                                    Intrinsics.f(obj5, "null cannot be cast to non-null type kotlin.Boolean");
                                    bundle.putBoolean(next, ((Boolean) obj5).booleanValue());
                                }
                                break;
                            case 2052876273:
                                if (!simpleName.equals("Double")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj6 = jSONObject.get(next);
                                    Intrinsics.f(obj6, "null cannot be cast to non-null type kotlin.Double");
                                    bundle.putDouble(next, ((Double) obj6).doubleValue());
                                }
                                break;
                            default:
                                TmcLogger.d("ssp", "type not supported");
                                break;
                        }
                    }
                }
            }
            if (adsDTO != null) {
                Integer codeSeatType = adsDTO.getCodeSeatType();
                Intrinsics.g(codeSeatType, "info.getCodeSeatType()");
                bundle.putInt("code_seat_type", codeSeatType.intValue());
                bundle.putString("advertiser_id", String.valueOf(adsDTO.getAdvertiserId()));
                bundle.putString("plan_id", String.valueOf(adsDTO.getPlanId()));
                bundle.putString("ad_group_id", String.valueOf(adsDTO.getAdGroupId()));
                bundle.putString("ad_creative_id", String.valueOf(adsDTO.getAdCreativeId()));
                bundle.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundle.putString(TrackingKey.REQUEST_ID, adsDTO.getRequestId());
                bundle.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            }
            bundle.putString("ip_address", DeviceUtil.INSTANCE.getIp());
            bundle.putString("app_id_external", adsDTO != null ? adsDTO.getAppIdExternal() : null);
            bundle.putString("code_seat_id_external", adsDTO != null ? adsDTO.getCodeSeatIdExternal() : null);
            bundle.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForAd(str, str2, "", bundle);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void updateStepAnimation(LoadStepAction loadStepAction) {
        StatusAction.DefaultImpls.updateStepAnimation(this, loadStepAction);
    }

    @Override
    public void showErrorLayout(int i10, int i11, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i10, i11, oooO0O0, str, oooO00o);
    }

    @Override
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, oooO0O0, str, oooO00o);
    }

    @Override
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, charSequence2, oooO0O0, str, z10, z11, oooO00o);
    }

    @Override
    public void hideStatusLoading() {
    }

    @Override
    public void onRequestFocus() {
    }

    @Override
    public void showStatusLoading() {
    }

    @Override
    public void onReceivedIcon(Bitmap bitmap) {
    }

    @Override
    public void onPageStarted(WebView webView, String str) {
    }

    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
    }
}
