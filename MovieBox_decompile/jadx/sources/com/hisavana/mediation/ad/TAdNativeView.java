package com.hisavana.mediation.ad;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.adxlibrary.holder.NativeAdViewHolder;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.CommonViewBinder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.utils.AdLogUtil;
import ee.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TAdNativeView extends RelativeLayout {

    public BaseNativeViewHolder f32346a;

    public boolean f32347b;

    public TAdNativeInfo f32348c;

    public int f32349d;

    public boolean f32350e;

    public final SparseArray<BaseNativeViewHolder> f32351f;

    public TAdNativeView(Context context) {
        this(context, null);
    }

    private final void setBodyView(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setBodyView(view);
        }
    }

    private final void setCallToActionOtherView(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setCallToActionOtherView(view);
        }
    }

    private final void setCallToActionView(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setCallToActionView(view);
        }
    }

    private void setDomain(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setDomain(view);
        }
    }

    private void setFeedback(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setFeedback(view);
        }
    }

    private final void setHeadlineView(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setHeadlineView(view);
        }
    }

    private final void setMaxNativeAdViewBinder(ViewBinder viewBinder) {
        if (this.f32346a != null) {
            CommonViewBinder commonViewBinder = new CommonViewBinder();
            commonViewBinder.titleId = viewBinder.titleId;
            commonViewBinder.iconId = viewBinder.iconId;
            commonViewBinder.callToActionId = viewBinder.callToActionId;
            commonViewBinder.mediaId = viewBinder.mediaId;
            commonViewBinder.adChoicesView = viewBinder.adChoicesView;
            commonViewBinder.descriptionId = viewBinder.descriptionId;
            commonViewBinder.layoutId = viewBinder.layoutId;
            if (viewBinder.layout != null) {
                commonViewBinder.layoutReference = new WeakReference<>(viewBinder.layout);
            }
            this.f32346a.setBinderLayoutId(commonViewBinder);
        }
    }

    private void setNativeAd(TAdNativeInfo tAdNativeInfo) {
        BaseNativeViewHolder baseNativeViewHolder;
        if (tAdNativeInfo == null || (baseNativeViewHolder = this.f32346a) == null) {
            return;
        }
        baseNativeViewHolder.setNativeAd(tAdNativeInfo);
    }

    private void setPrice(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setPrice(view);
        }
    }

    private void setSponsored(View view) {
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.setSponsored(view);
        }
    }

    public void a(@NonNull TAdNativeInfo tAdNativeInfo, @NonNull ViewBinder viewBinder) {
        if (tAdNativeInfo == null) {
            throw new IllegalStateException("AdNativeInfo is null");
        }
        if (tAdNativeInfo.isRelease()) {
            AdLogUtil.Log().w("TAdNativeView", "make sure nativeInfo is valid");
            return;
        }
        this.f32349d = viewBinder.mode;
        if (c(tAdNativeInfo, viewBinder)) {
            b(tAdNativeInfo, viewBinder);
        }
    }

    public final void b(TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        View view;
        View view2;
        View view3;
        AdLogUtil.Log().d("TAdNativeView", "start bindViewInternal");
        View childAt = getChildCount() > 0 ? getChildAt(0) : null;
        if (tAdNativeInfo == null || viewBinder == null || childAt == null) {
            AdLogUtil.Log().w("TAdNativeView", "not prepare to bind data");
            return;
        }
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null && baseNativeViewHolder.isCachedAdView()) {
            AdLogUtil.Log().w("TAdNativeView", "--- get cached adview ---");
            return;
        }
        TextView textView = (TextView) childAt.findViewById(viewBinder.titleId);
        TIconView tIconView = (TIconView) childAt.findViewById(viewBinder.iconId);
        TextView textView2 = (TextView) childAt.findViewById(viewBinder.callToActionId);
        TMediaView tMediaView = (TMediaView) childAt.findViewById(viewBinder.mediaId);
        TextView textView3 = (TextView) childAt.findViewById(viewBinder.descriptionId);
        RatingBar ratingBar = (RatingBar) childAt.findViewById(viewBinder.ratingId);
        TextView textView4 = (TextView) childAt.findViewById(viewBinder.priceId);
        TAdCloseView tAdCloseView = (TAdCloseView) childAt.findViewById(viewBinder.adCloseView);
        View view4 = (TextView) childAt.findViewById(viewBinder.domainId);
        View view5 = (TextView) childAt.findViewById(viewBinder.sponsoredId);
        View view6 = (ImageView) childAt.findViewById(viewBinder.feedbackId);
        try {
            TextView textView5 = (TextView) childAt.findViewById(viewBinder.sourceSizeId);
            if (textView5 != null) {
                view = childAt;
                try {
                    textView5.setText(a(tAdNativeInfo.getSourceSize()));
                } catch (Throwable unused) {
                }
            } else {
                view = childAt;
            }
        } catch (Throwable unused2) {
        }
        if (ratingBar == null || TextUtils.isEmpty(tAdNativeInfo.getRating())) {
            view2 = view6;
        } else {
            AdLogUtil adLogUtilLog = AdLogUtil.Log();
            StringBuilder sb2 = new StringBuilder();
            view2 = view6;
            sb2.append("rating !!!!!!");
            sb2.append(tAdNativeInfo.getRating());
            adLogUtilLog.d("TAdNativeView", sb2.toString());
            try {
                ratingBar.setRating(Float.parseFloat(tAdNativeInfo.getRating()));
            } catch (Exception e10) {
                AdLogUtil.Log().e("TAdNativeView", Log.getStackTraceString(e10));
            }
        }
        if (textView4 != null) {
            setPrice(textView4);
            AdLogUtil.Log().d("TAdNativeView", "price !!!!!!" + tAdNativeInfo.getSaleprice());
            if (!TextUtils.isEmpty(tAdNativeInfo.getSaleprice())) {
                textView4.setText(tAdNativeInfo.getSaleprice());
            }
        }
        if (textView != null) {
            setHeadlineView(textView);
            textView.setText(tAdNativeInfo.getTitle());
        } else {
            AdLogUtil.Log().w("TAdNativeView", "add native has no title!!!!!!");
        }
        if (tIconView != null) {
            a(tIconView, tAdNativeInfo);
        } else {
            AdLogUtil.Log().w("TAdNativeView", "add native has no adIconView!!!!!!");
        }
        if (textView2 != null) {
            textView2.setTag("ad_download");
            setCallToActionView(textView2);
            textView2.setText(tAdNativeInfo.getAdCallToAction());
        } else {
            AdLogUtil.Log().w("TAdNativeView", "add native has no callToAction!!!!!!");
        }
        AdLogUtil.Log().d("TAdNativeView", "setMediaView");
        if (tMediaView != null) {
            a(tMediaView, tAdNativeInfo, viewBinder);
        } else {
            AdLogUtil.Log().w("TAdNativeView", "add native has no mediaView!!!!!!");
        }
        if (textView3 != null) {
            setBodyView(textView3);
            textView3.setText(tAdNativeInfo.getDescription());
        } else {
            AdLogUtil.Log().w("TAdNativeView", "add native has no odyView!!!!!!");
        }
        if (view4 != null) {
            setDomain(view4);
        } else {
            AdLogUtil.Log().w("TAdNativeView", "yandex ad need domain!!!!!!");
        }
        if (view5 != null) {
            setSponsored(view5);
        } else {
            AdLogUtil.Log().w("TAdNativeView", "yandex ad need sponsored!!!!!!");
        }
        if (view2 != null) {
            setFeedback(view2);
        } else {
            AdLogUtil.Log().w("TAdNativeView", "yandex ad need feedback!!!!!!");
        }
        tAdNativeInfo.setIconDrawable(viewBinder.iconDrawable);
        setNativeAd(tAdNativeInfo);
        AdLogUtil.Log().d("TAdNativeView", "setNativeAd");
        List<View> arrayList = new ArrayList<>();
        List<Integer> list = viewBinder.actionIds;
        if (list == null || list.size() <= 0) {
            a(arrayList, textView);
            a(arrayList, tIconView);
            a(arrayList, tMediaView);
            a(arrayList, textView2);
            a(arrayList, textView3);
        } else {
            Iterator<Integer> it = viewBinder.actionIds.iterator();
            while (it.hasNext()) {
                a(arrayList, view.findViewById(it.next().intValue()));
            }
        }
        if (tAdCloseView != null) {
            a(arrayList, tAdCloseView.getChildCount() > 0 ? tAdCloseView.getChildAt(0) : null);
        }
        if (tAdNativeInfo.isIconAd() && (view3 = viewBinder.actionView) != null) {
            a(arrayList, view3);
            setCallToActionOtherView(viewBinder.actionView);
        }
        AdLogUtil.Log().d("TAdNativeView", "start registerView");
        tAdNativeInfo.registerView(this, arrayList);
        AdLogUtil.Log().d("TAdNativeView", "end bindViewInternal");
    }

    public final boolean c(TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        if (tAdNativeInfo == null) {
            return false;
        }
        AdLogUtil.Log().d("TAdNativeView", "buildNativeView nativeInfo:" + tAdNativeInfo);
        a(tAdNativeInfo);
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null && this.f32349d == 0) {
            baseNativeViewHolder.destroy();
            this.f32346a = null;
        }
        this.f32346a = a(tAdNativeInfo.getAdSource());
        boolean z10 = (this.f32349d == 1 && getChildCount() > 0 && (getTag(R$id.native_view_id) == null || TextUtils.equals(tAdNativeInfo.getAdId(), getTag(R$id.native_view_id).toString()))) ? false : true;
        this.f32350e = z10;
        if (!z10) {
            AdLogUtil.Log().d("TAdNativeView", "the same ad scroll back");
            return false;
        }
        if (this.f32346a == null) {
            AdLogUtil.Log().d("TAdNativeView", "cant create the AdViewHolder instance");
            return false;
        }
        setTag(R$id.native_view_id, tAdNativeInfo.getAdId());
        setTag(R$id.native_view_source, Integer.valueOf(tAdNativeInfo.getAdSource()));
        setMaxNativeAdViewBinder(viewBinder);
        a(viewBinder, tAdNativeInfo);
        return true;
    }

    public final View d(TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        if (viewBinder == null) {
            return null;
        }
        View viewInflate = viewBinder.layout;
        if (viewInflate == null) {
            viewInflate = LayoutInflater.from(e.a()).inflate(viewBinder.layoutId, (ViewGroup) null);
        }
        if (viewInflate == null) {
            AdLogUtil.Log().w("TAdNativeView", "make sure ViewBinder correct");
            return null;
        }
        try {
            a(viewInflate);
            View container = this.f32346a.getContainer(tAdNativeInfo, this);
            if (container != null) {
                if ((container instanceof TNativeView) && this.f32349d == 1) {
                    ((TNativeView) container).setUseListMode(true);
                }
                this.f32346a.addContentView(viewInflate);
                return container;
            }
        } catch (Throwable th2) {
            AdLogUtil.Log().d("TAdNativeView", "result view is null" + Log.getStackTraceString(th2));
        }
        return viewInflate;
    }

    public final void e(View view, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        View storeMarkView;
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder == null || viewBinder == null || tAdNativeInfo == null || (storeMarkView = baseNativeViewHolder.getStoreMarkView(getContext(), tAdNativeInfo)) == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(viewBinder.adStoreMarkView);
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                if ((viewGroup instanceof TStoreMarkView) && (storeMarkView instanceof StoreMarkView)) {
                    int textColor = ((TStoreMarkView) viewGroup).getTextColor();
                    int textSize = ((TStoreMarkView) viewGroup).getTextSize();
                    ((StoreMarkView) storeMarkView).setTextColor(textColor);
                    ((StoreMarkView) storeMarkView).setTextSize(textSize);
                }
                viewGroup.addView(storeMarkView, layoutParams);
            }
        } catch (Exception e10) {
            AdLogUtil.Log().e("TAdNativeView", Log.getStackTraceString(e10));
        }
    }

    public View getIconView(ViewBinder viewBinder) {
        View childAt = getChildCount() > 0 ? getChildAt(0) : null;
        if (childAt == null) {
            return null;
        }
        return childAt.findViewById(viewBinder.iconId);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f32347b) {
            a((TAdNativeInfo) null);
            release();
        }
    }

    public final void release() {
        removeAllViews();
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder != null) {
            baseNativeViewHolder.destroy();
            this.f32346a = null;
        }
        for (int i10 = 0; i10 < this.f32351f.size(); i10++) {
            BaseNativeViewHolder baseNativeViewHolderValueAt = this.f32351f.valueAt(i10);
            if (baseNativeViewHolderValueAt != null) {
                baseNativeViewHolderValueAt.destroy();
            }
        }
        this.f32351f.clear();
    }

    public TAdNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TAdNativeView(Context context, AttributeSet attributeSet, int i10) {
        super(context.getApplicationContext(), attributeSet, i10);
        this.f32347b = false;
        this.f32349d = 0;
        this.f32350e = true;
        this.f32351f = new SparseArray<>();
    }

    public final void a(@NonNull List<View> list, View view) {
        if (view == null) {
            return;
        }
        list.add(view);
    }

    public final void a(ViewBinder viewBinder, TAdNativeInfo tAdNativeInfo) {
        removeAllViews();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
        View viewD = d(tAdNativeInfo, viewBinder);
        if (viewD != null) {
            a(viewD);
            addView(viewD, layoutParams);
            a(viewD, tAdNativeInfo, viewBinder);
            d(viewD, tAdNativeInfo, viewBinder);
            b(viewD, tAdNativeInfo, viewBinder);
            e(viewD, tAdNativeInfo, viewBinder);
            c(viewD, tAdNativeInfo, viewBinder);
        }
        if (this.f32346a == null || this.f32349d != 1) {
            return;
        }
        AdLogUtil.Log().i("TAdNativeView", "set tag to AdViewHolder in List Mode");
        this.f32346a.setTag(tAdNativeInfo.getAdId());
    }

    public final void d(View view, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        View choicesView;
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder == null || viewBinder == null || tAdNativeInfo == null || (choicesView = baseNativeViewHolder.getChoicesView(getContext(), tAdNativeInfo)) == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(viewBinder.adChoicesView);
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                if (this.f32346a instanceof NativeAdViewHolder) {
                    int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R$dimen.ad_badge_height);
                    layoutParams = new FrameLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
                }
                viewGroup.addView(choicesView, layoutParams);
            }
        } catch (Exception e10) {
            AdLogUtil.Log().e("TAdNativeView", Log.getStackTraceString(e10));
        }
    }

    public final void c(View view, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        View adDisclaimerView;
        if (this.f32346a == null || view == null || viewBinder == null || tAdNativeInfo == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(viewBinder.adDisclaimerView);
            if (viewGroup == null || (adDisclaimerView = this.f32346a.getAdDisclaimerView(getContext(), tAdNativeInfo)) == null) {
                return;
            }
            viewGroup.removeAllViews();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            if (this.f32346a instanceof NativeAdViewHolder) {
                layoutParams = new FrameLayout.LayoutParams(-1, 0);
            }
            viewGroup.addView(adDisclaimerView, layoutParams);
        } catch (Exception e10) {
            AdLogUtil.Log().e("TAdNativeView", Log.getStackTraceString(e10));
        }
    }

    public final void a(View view) {
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public final BaseNativeViewHolder a(int i10) {
        BaseNativeViewHolder nativeViewHolder = this.f32351f.get(i10);
        if (nativeViewHolder == null) {
            IBaseAdSummary iBaseAdSummaryF = o.a().f(i10);
            nativeViewHolder = iBaseAdSummaryF != null ? iBaseAdSummaryF.getNativeViewHolder() : null;
            if (nativeViewHolder != null && this.f32349d == 1) {
                this.f32351f.append(i10, nativeViewHolder);
            }
        }
        return nativeViewHolder;
    }

    public final void a(View view, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        View adBadgeView;
        if (this.f32346a == null || view == null || viewBinder == null || tAdNativeInfo == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(viewBinder.adBadgeView);
            if (viewGroup == null || (adBadgeView = this.f32346a.getAdBadgeView(getContext(), tAdNativeInfo)) == null) {
                return;
            }
            viewGroup.removeAllViews();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            if (this.f32346a instanceof NativeAdViewHolder) {
                layoutParams = new FrameLayout.LayoutParams(-2, getContext().getResources().getDimensionPixelOffset(R$dimen.ad_badge_height));
            }
            viewGroup.addView(adBadgeView, layoutParams);
        } catch (Exception e10) {
            AdLogUtil.Log().e("TAdNativeView", Log.getStackTraceString(e10));
        }
    }

    public final void a(TIconView tIconView, TAdNativeInfo tAdNativeInfo) {
        BaseNativeViewHolder baseNativeViewHolder;
        if (tIconView == null || tAdNativeInfo == null || (baseNativeViewHolder = this.f32346a) == null) {
            return;
        }
        if (this.f32350e) {
            tIconView.attachLayout(baseNativeViewHolder);
        }
        TAdNativeInfo.Image icon = tAdNativeInfo.getIcon();
        if (icon != null) {
            if (icon.canUse()) {
                this.f32346a.setIconDrawable(icon.getDrawable());
            }
            if (this.f32346a != null) {
                View iconView = tIconView.getIconView();
                if (iconView == null) {
                    AdLogUtil.Log().i("TAdNativeView", "TAdIconView's child is null");
                } else {
                    this.f32346a.setIconView(iconView);
                }
            }
        }
    }

    public final void a(TMediaView tMediaView, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        if (tMediaView == null || tAdNativeInfo == null || tAdNativeInfo.getAdType() != 1) {
            return;
        }
        b(tMediaView, tAdNativeInfo, viewBinder);
    }

    public final void a(TAdNativeInfo tAdNativeInfo) {
        TAdNativeInfo tAdNativeInfo2;
        if (!this.f32347b || (tAdNativeInfo2 = this.f32348c) == tAdNativeInfo) {
            return;
        }
        if (tAdNativeInfo2 != null) {
            tAdNativeInfo2.release();
        }
        this.f32348c = tAdNativeInfo;
    }

    public final String a(String str) {
        long j10;
        if (str != null && !TextUtils.isEmpty(str)) {
            try {
                j10 = Long.parseLong(str);
            } catch (Throwable unused) {
                j10 = 0;
            }
            float f10 = j10;
            if (f10 >= 1.07374182E9f) {
                return String.format("%.1f GB", Float.valueOf(f10 / 1.07374182E9f));
            }
            return f10 >= 1048576.0f ? String.format("%.1f MB", Float.valueOf(f10 / 1048576.0f)) : String.format("%.1f MB", Float.valueOf(f10 / 1048576.0f));
        }
        return "";
    }

    public final void b(View view, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        View closeView;
        BaseNativeViewHolder baseNativeViewHolder = this.f32346a;
        if (baseNativeViewHolder == null || viewBinder == null || tAdNativeInfo == null || (closeView = baseNativeViewHolder.getCloseView(getContext(), tAdNativeInfo)) == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(viewBinder.adCloseView);
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                if (this.f32346a instanceof NativeAdViewHolder) {
                    int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R$dimen.ad_badge_height);
                    layoutParams = new FrameLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
                }
                viewGroup.addView(closeView, layoutParams);
            }
        } catch (Exception e10) {
            AdLogUtil.Log().e("TAdNativeView", Log.getStackTraceString(e10));
        }
    }

    public final void b(TMediaView tMediaView, TAdNativeInfo tAdNativeInfo, ViewBinder viewBinder) {
        TAdNativeInfo.Image image;
        if (this.f32350e) {
            tMediaView.attachLayout(this.f32346a, tAdNativeInfo);
        }
        List<TAdNativeInfo.Image> imageList = tAdNativeInfo.getImageList();
        if (imageList != null && imageList.size() > 0 && (image = imageList.get(0)) != null && image.canUse()) {
            tMediaView.setMediaView(new AdImage(image.getDrawable(), null));
        }
        if (this.f32346a != null) {
            View mediaView = tMediaView.getMediaView();
            if (mediaView == null) {
                AdLogUtil.Log().w("TAdNativeView", "TMediaView's child is null");
            } else {
                this.f32346a.setMediaView(mediaView);
            }
        }
    }
}
