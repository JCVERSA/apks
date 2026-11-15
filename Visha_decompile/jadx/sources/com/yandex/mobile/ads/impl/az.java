package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class az implements gc {
    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewP = ob2Var.p();
        if (textViewP != null) {
            textViewP.setText(R.string.monetization_ads_internal_instream_sponsored_default);
            textViewP.setVisibility(0);
        }
        ImageView imageViewO = ob2Var.o();
        if (imageViewO != null) {
            imageViewO.setImageDrawable(ContextCompat.getDrawable(imageViewO.getContext(), R.drawable.monetization_ads_instream_internal_advertiser));
            imageViewO.setVisibility(0);
        }
    }
}
