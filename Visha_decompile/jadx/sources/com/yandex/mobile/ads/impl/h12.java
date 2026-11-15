package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class h12 implements gc {
    private final i12 a;

    public h12(i12 i12Var) {
        y45.j(i12Var, "socialAdInfo");
        this.a = i12Var;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewP = ob2Var.p();
        if (textViewP != null) {
            textViewP.setText(R.string.monetization_ads_internal_instream_sponsored_social);
            textViewP.setVisibility(0);
            textViewP.setOnClickListener(new g12(this.a, new y82(new x82())));
        }
        ImageView imageViewO = ob2Var.o();
        if (imageViewO != null) {
            imageViewO.setImageDrawable(ContextCompat.getDrawable(imageViewO.getContext(), R.drawable.monetization_ads_instream_internal_advertiser_social));
            imageViewO.setVisibility(0);
            imageViewO.setOnClickListener(new g12(this.a, new y82(new x82())));
        }
    }
}
