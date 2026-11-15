package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;

public final class zpg {
    public static final void a(Context context, ViewGroup viewGroup, AdView adView) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setTag(TtmlNode.TAG_LAYOUT);
        f(linearLayout, -1, -1);
        linearLayout.setGravity(17);
        linearLayout.addView(adView);
        adView.setTag("ad_view");
        viewGroup.addView(linearLayout);
    }

    public static final void b(Context context, ViewGroup viewGroup, NativeAd nativeAd) {
        NativeAdView nativeAdView = new NativeAdView(context);
        nativeAdView.setTag("ad_view_tag");
        f(nativeAdView, -1, -1);
        viewGroup.addView(nativeAdView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setTag("layout_tag");
        linearLayout.setOrientation(1);
        f(linearLayout, -1, -1);
        linearLayout.setBackgroundColor(-1);
        nativeAdView.addView(linearLayout);
        Resources resourcesF = zzv.zzp().f();
        linearLayout.addView(c(context, resourcesF == null ? "Headline" : resourcesF.getString(R.string.native_headline), "headline_header_tag"));
        View viewD = d(context, j3i.c(nativeAd.getHeadline()), "headline_tag");
        nativeAdView.setHeadlineView(viewD);
        linearLayout.addView(viewD);
        linearLayout.addView(c(context, resourcesF == null ? "Body" : resourcesF.getString(R.string.native_body), "body_header_tag"));
        View viewD2 = d(context, j3i.c(nativeAd.getBody()), "body_tag");
        nativeAdView.setBodyView(viewD2);
        linearLayout.addView(viewD2);
        linearLayout.addView(c(context, resourcesF == null ? "Media View" : resourcesF.getString(R.string.native_media_view), "media_view_header_tag"));
        MediaView mediaView = new MediaView(context);
        mediaView.setTag("media_view_tag");
        nativeAdView.setMediaView(mediaView);
        linearLayout.addView(mediaView);
        nativeAdView.setNativeAd(nativeAd);
    }

    public static TextView c(Context context, String str, String str2) {
        return e(context, str, android.R.style.TextAppearance.Small, -9210245, 0.0f, str2);
    }

    public static TextView d(Context context, String str, String str2) {
        return e(context, str, android.R.style.TextAppearance.Medium, -16777216, 12.0f, str2);
    }

    public static TextView e(Context context, String str, int i, int i2, float f, String str2) {
        TextView textView = new TextView(context);
        textView.setTag(str2);
        f(textView, -2, -2);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, f, textView.getResources().getDisplayMetrics());
        textView.setLayoutParams(marginLayoutParams);
        textView.setTextAppearance(context, i);
        textView.setTextColor(i2);
        textView.setText(str);
        return textView;
    }

    public static void f(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams);
        layoutParams2.height = i;
        layoutParams2.width = i2;
        view.setLayoutParams(layoutParams2);
    }
}
