package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.monetization.ads.instream.view.InstreamMuteView;
import com.monetization.ads.video.playback.view.ExtendedVideoAdControlsContainer;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class u00 {
    private final pn0 a;
    private final gt1<ExtendedVideoAdControlsContainer> b;

    public u00(pn0 pn0Var) {
        y45.j(pn0Var, "instreamDesign");
        this.a = pn0Var;
        this.b = new gt1<>();
    }

    public final ob2 a(Context context, ViewGroup viewGroup) {
        int i;
        y45.j(context, "context");
        y45.j(viewGroup, "rootView");
        pn0 pn0Var = this.a;
        y45.j(pn0Var, "instreamDesign");
        int iOrdinal = pn0Var.ordinal();
        if (iOrdinal == 0) {
            i = R.layout.monetization_ads_internal_instream_skin_v1;
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            i = R.layout.monetization_ads_internal_instream_skin_v2;
        }
        this.b.getClass();
        ExtendedVideoAdControlsContainer extendedVideoAdControlsContainer = (ExtendedVideoAdControlsContainer) gt1.a(context, ExtendedVideoAdControlsContainer.class, i, viewGroup);
        if (extendedVideoAdControlsContainer == null) {
            return null;
        }
        ImageView imageView = (ImageView) extendedVideoAdControlsContainer.findViewById(R.id.sponsored_image);
        ImageView imageView2 = (ImageView) extendedVideoAdControlsContainer.findViewById(R.id.favicon);
        TextView textView = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.call_to_action);
        ImageView imageView3 = (ImageView) extendedVideoAdControlsContainer.findViewById(R.id.instream_call_to_action);
        InstreamMuteView instreamMuteView = (InstreamMuteView) extendedVideoAdControlsContainer.findViewById(R.id.instream_mute);
        ProgressBar progressBar = (ProgressBar) extendedVideoAdControlsContainer.findViewById(R.id.instream_progress_display_view);
        View viewFindViewById = extendedVideoAdControlsContainer.findViewById(R.id.instream_skip);
        TextView textView2 = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.domain);
        TextView textView3 = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.sponsored);
        TextView textView4 = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.ad_position);
        ImageView imageView4 = (ImageView) extendedVideoAdControlsContainer.findViewById(R.id.trademark_icon);
        TextView textView5 = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.trademark_delimiter);
        View viewFindViewById2 = extendedVideoAdControlsContainer.findViewById(R.id.instream_cta_container);
        ImageView imageView5 = (ImageView) extendedVideoAdControlsContainer.findViewById(R.id.feedback);
        TextView textView6 = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.timer_value);
        TextView textView7 = (TextView) extendedVideoAdControlsContainer.findViewById(R.id.warning);
        ViewGroup viewGroup2 = (ViewGroup) extendedVideoAdControlsContainer.findViewById(R.id.qrcode_container);
        return new ob2(new ob2.a(extendedVideoAdControlsContainer).e(imageView).b(imageView2).b(textView).a(imageView3).a((z31) instreamMuteView).a(progressBar).b(viewFindViewById).e(textView3).c(textView2).a(textView4).f(imageView4).f(textView5).d(textView6).a(viewFindViewById2).c(imageView5).g(textView7).a(viewGroup2).d((ImageView) extendedVideoAdControlsContainer.findViewById(R.id.qrcode_image)), 0);
    }
}
