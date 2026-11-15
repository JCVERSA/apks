package com.cloud.hisavana.sdk.ad.template;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.R$color;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;
import java.util.ArrayList;
import java.util.List;
import k7.c;

public enum TemplateRenderEnum {
    TEMPLATE_F3205("F3205") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_f3205, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_icon).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.smallRadius;
            mediaView.setRadius(f10, f10, f10, f10);
        }
    },
    TEMPLATE_F3207("F3207") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_f3205, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.smallRadius;
            mediaView.setRadius(f10, f10, f10, f10);
        }
    },
    TEMPLATE_F3206("F3206") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_f3206, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_icon).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.smallRadius;
            mediaView.setRadius(f10, f10, f10, f10);
        }
    },
    TEMPLATE_F3208("F3208") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_f3206, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.smallRadius;
            mediaView.setRadius(f10, f10, f10, f10);
        }
    },
    TEMPLATE_V04("V04") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_v04, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_icon).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, 0.0f, 0.0f);
        }
    },
    TEMPLATE_V02("V02") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_v04, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_icon).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, 0.0f, 0.0f);
        }
    },
    TEMPLATE_V03("V03") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_v03, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_call_to_action).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, 0.0f, 0.0f);
        }
    },
    TEMPLATE_V05("V05") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_v03, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, 0.0f, 0.0f);
        }
    },
    TEMPLATE_V01("V01") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_v01, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, 0.0f, 0.0f);
        }
    },
    TEMPLATE_FA11("FA11") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa11, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FA01("FA01") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa11, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_body).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FA10("FA10") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa10, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FA12("FA12") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa12, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FA07("FA07") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa12, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_icon).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FB04("FB04") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fb04, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FB01("FB01") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_fb04, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_body).setVisibility(8);
            ((ConstraintLayout.b) viewInflate.findViewById(R$id.hisavana_native_ad_title).getLayoutParams()).f7375l = R$id.hisavana_native_ad_icon;
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FB03("FB03") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_fb03, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_native_ad_icon).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FB05("FB05") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fb03, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FA05("FA05") {
        @Override
        public View bindView() {
            View viewInflate = LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa05, (ViewGroup) null);
            viewInflate.findViewById(R$id.hisavana_call_to_action).setVisibility(8);
            return viewInflate;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FA09("FA09") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fa05, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_FB02("FB02") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_fb02, (ViewGroup) null);
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            float f10 = this.radius;
            mediaView.setRadius(f10, f10, f10, f10);
        }

        @Override
        public void scaleWidthOrTextSize(View view) {
            if (view == null) {
                return;
            }
            scaleWidthOrTextSizeImpl(view);
        }
    },
    TEMPLATE_L91601("L91601") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_l91601, (ViewGroup) null);
        }

        @Override
        public AdCloseView.CloseImageType getCloseImageType() {
            return AdCloseView.CloseImageType.EXPAND;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            mediaView.setRadius(0.0f, 0.0f, 0.0f, 0.0f);
        }
    },
    TEMPLATE_L16915("L16915") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_l16915, (ViewGroup) null);
        }

        @Override
        public AdCloseView.CloseImageType getCloseImageType() {
            return AdCloseView.CloseImageType.EXPAND;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            mediaView.setRadius(0.0f, 0.0f, 0.0f, 0.0f);
        }
    },
    TEMPLATE_L16916("L16916") {
        @Override
        public View bindView() {
            return LayoutInflater.from(e.a()).inflate(R$layout.native_template_l16916, (ViewGroup) null);
        }

        @Override
        public AdCloseView.CloseImageType getCloseImageType() {
            return AdCloseView.CloseImageType.EXPAND;
        }

        @Override
        public void renderRadius(MediaView mediaView) {
            if (mediaView == null) {
                return;
            }
            mediaView.setRadius(0.0f, 0.0f, 0.0f, 0.0f);
        }
    };

    private static final String TAG = "TemplateRenderEnum";
    private final String code;
    float radius;
    float smallRadius;

    @Nullable
    private AdDisclaimerView addAdDisclaimerViewIfNeeded(View view, TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || taNativeInfo.getAdItem() == null || taNativeInfo.getAdItem().getDisplayRule() != Constants.AdDisplayRule.RU || view == null || !(view.getParent() instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (view.getId() == -1) {
            return null;
        }
        ConstraintLayout.b bVar = new ConstraintLayout.b(0, view.getContext().getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height));
        bVar.f7391t = view.getId();
        bVar.f7395v = view.getId();
        bVar.f7375l = view.getId();
        AdDisclaimerView adDisclaimerView = new AdDisclaimerView(view.getContext());
        viewGroup.addView(adDisclaimerView, bVar);
        return adDisclaimerView;
    }

    private void addViewToList(View view, List<View> list) {
        if (view != null) {
            list.add(view);
        }
    }

    public void beginScale(View view, float f10) {
        b4.b().d(TAG, "scaleWidth-" + f10);
        if (view == null) {
            return;
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextSize(0, textView.getTextSize() * f10);
            return;
        }
        if (view.getLayoutParams() == null) {
            b4.b().d(TAG, " scaleWidth - expectedWidth-- view.getLayoutParams() == null");
            return;
        }
        int i10 = (int) (view.getLayoutParams().width * f10);
        int i11 = (int) (view.getLayoutParams().height * f10);
        view.getLayoutParams().width = i10;
        view.getLayoutParams().height = i11;
        b4.b().d(TAG, " scaleWidth - expectedWidth--" + i10 + "expecteHeight--" + i11);
    }

    public static final TemplateRenderEnum findStrategyByCode(String str) {
        if (str != null && !str.isEmpty()) {
            for (TemplateRenderEnum templateRenderEnum : values()) {
                if (templateRenderEnum != null && str.equals(templateRenderEnum.code)) {
                    return templateRenderEnum;
                }
            }
        }
        return null;
    }

    public float getScale(View view) {
        if (view == null) {
            return 0.0f;
        }
        int measuredWidth = view.getMeasuredWidth();
        if (measuredWidth == c.k()) {
            b4.b().d(TAG, "scaleWidth_width -- match_parent -- return");
            return 0.0f;
        }
        if (measuredWidth == 0) {
            b4.b().d(TAG, "scaleWidth_width -- 0 -- return");
            return 0.0f;
        }
        b4.b().d(TAG, " scaleWidth -parentWidth--" + measuredWidth + "ScreenWidth-- " + c.k());
        if (c.k() == 0) {
            return 0.0f;
        }
        return measuredWidth / c.k();
    }

    private List<View> inflateView(TaNativeInfo taNativeInfo, View view, ViewGroup viewGroup) {
        if (taNativeInfo == null || view == null || viewGroup == null || !(viewGroup instanceof TNativeView)) {
            return null;
        }
        TNativeView tNativeView = (TNativeView) viewGroup;
        TextView textView = (TextView) view.findViewById(R$id.hisavana_native_ad_title);
        ImageView imageView = (ImageView) view.findViewById(R$id.hisavana_native_ad_icon);
        TextView textView2 = (TextView) view.findViewById(R$id.hisavana_call_to_action);
        MediaView mediaView = (MediaView) view.findViewById(R$id.hisavana_coverview);
        TextView textView3 = (TextView) view.findViewById(R$id.hisavana_native_ad_body);
        AdChoicesView adChoicesView = (AdChoicesView) view.findViewById(R$id.ad_choices_view);
        AdBadgeView adBadgeView = (AdBadgeView) view.findViewById(R$id.ad_badge_view);
        AdCloseView adCloseView = (AdCloseView) view.findViewById(R$id.ad_close_view);
        StoreMarkView storeMarkView = (StoreMarkView) view.findViewById(R$id.ps_mark_view);
        AdDisclaimerView adDisclaimerViewAddAdDisclaimerViewIfNeeded = addAdDisclaimerViewIfNeeded(mediaView, taNativeInfo);
        tNativeView.getTemplateStyle();
        resetCallToAction(textView2);
        tNativeView.destroy();
        tNativeView.addView(view);
        tNativeView.setMediaView(mediaView);
        tNativeView.setIconView(imageView);
        tNativeView.setAdChoiceView(adChoicesView);
        tNativeView.setAdBagdeView(adBadgeView);
        tNativeView.setAdCloseView(adCloseView);
        tNativeView.setPsMarkView(storeMarkView);
        tNativeView.setAdDisclaimerView(adDisclaimerViewAddAdDisclaimerViewIfNeeded);
        if ((TextUtils.equals(taNativeInfo.getMaterialStyle(), "L91601") || TextUtils.equals(taNativeInfo.getMaterialStyle(), "L16901")) && tNativeView.getLayoutParams() != null) {
            tNativeView.getLayoutParams().height = -1;
        }
        TemplateRenderEnum templateEnum = taNativeInfo.getTemplateEnum();
        if (textView != null) {
            textView.setText(taNativeInfo.getTitle());
            if (templateEnum != null) {
                templateEnum.scaleWidthOrTextSize(textView);
            }
        }
        if (textView3 != null) {
            textView3.setText(taNativeInfo.getDescription());
            if (templateEnum != null) {
                templateEnum.scaleWidthOrTextSize(textView3);
            }
        }
        if (textView2 != null) {
            textView2.setText(taNativeInfo.getCtatext());
            if (templateEnum != null) {
                templateEnum.scaleWidthOrTextSize(textView2);
            }
        }
        tNativeView.setupViews(taNativeInfo);
        List<View> arrayList = new ArrayList<>();
        addViewToList(textView, arrayList);
        addViewToList(imageView, arrayList);
        addViewToList(mediaView, arrayList);
        addViewToList(textView2, arrayList);
        addViewToList(textView3, arrayList);
        addViewToList(view, arrayList);
        addViewToList(adCloseView, arrayList);
        return arrayList;
    }

    private void resetCallToAction(TextView textView) {
        if (textView == null) {
            return;
        }
        try {
            if (textView.getBackground() instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) textView.getBackground();
                gradientDrawable.setColor(e.a().getResources().getColor(R$color.hisavana_ad_color_0051E1));
                gradientDrawable.setCornerRadius(e.a().getResources().getDimension(R$dimen.hisavana_ad_dimen_4));
                gradientDrawable.setStroke(0, e.a().getResources().getColor(R$color.hisavana_ad_color_787878));
                textView.setBackground(null);
                textView.setBackground(gradientDrawable);
                textView.invalidate();
            }
        } catch (Exception e10) {
            b4.b().e("ssp", Log.getStackTraceString(e10));
        }
    }

    public abstract View bindView();

    public List<View> bindView(ViewGroup viewGroup, TaNativeInfo taNativeInfo) {
        return inflateView(taNativeInfo, bindView(), viewGroup);
    }

    public AdCloseView.CloseImageType getCloseImageType() {
        return AdCloseView.CloseImageType.CLOSE;
    }

    public abstract void renderRadius(MediaView mediaView);

    public void scaleWidthOrTextSizeImpl(final View view) {
        final View view2;
        b4.b().d(TAG, "scaleWidth_view--" + view);
        if (view == null) {
            view2 = null;
        } else {
            try {
                view2 = (View) view.getParent();
            } catch (Exception e10) {
                b4.b().d(TAG, "resize iconView error --" + e10.getMessage());
                return;
            }
        }
        if (view2 == null) {
            return;
        }
        if (view instanceof TextView) {
            view2.post(new Runnable() {
                @Override
                public void run() {
                    float scale = TemplateRenderEnum.this.getScale(view2);
                    if (scale == 0.0d) {
                        b4.b().d(TemplateRenderEnum.TAG, "scaleWidth_scale -- 0 -- return");
                    } else {
                        TemplateRenderEnum.this.beginScale(view, scale);
                    }
                }
            });
            return;
        }
        float scale = getScale(view2);
        if (scale == 0.0d) {
            b4.b().d(TAG, "scaleWidth_scale -- 0 -- return");
        } else {
            beginScale(view, scale);
        }
    }

    TemplateRenderEnum(String str) {
        this.radius = h.a(8.0f);
        this.smallRadius = h.a(4.0f);
        this.code = str;
    }

    public void scaleWidthOrTextSize(View view) {
    }
}
