package com.cloud.hisavana.sdk.common.widget.expandmenu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;

public class AdExpandMenuContentView extends RelativeLayout {

    private TextView f21648a;

    private AdExpandMenuItemView f21649b;

    private AdExpandMenuItemView f21650c;

    private AdExpandMenuItemView f21651d;

    private d f21652e;

    class a implements View.OnClickListener {

        final d f21653a;

        a(d dVar) {
            this.f21653a = dVar;
        }

        @Override
        public void onClick(View view) {
            this.f21653a.a(AdExpandMenuItemView.Type.PERSONALISE_CLOSE);
        }
    }

    class b implements View.OnClickListener {

        final d f21655a;

        b(d dVar) {
            this.f21655a = dVar;
        }

        @Override
        public void onClick(View view) {
            this.f21655a.a(AdExpandMenuItemView.Type.ADVERTISER_INFO);
        }
    }

    class c implements View.OnClickListener {

        final d f21657a;

        c(d dVar) {
            this.f21657a = dVar;
        }

        @Override
        public void onClick(View view) {
            this.f21657a.a(AdExpandMenuItemView.Type.COPY_LINK);
        }
    }

    public interface d {
        void a(AdExpandMenuItemView.Type type);
    }

    public AdExpandMenuContentView(@NonNull Context context) {
        this(context, null, 0);
    }

    private void a() {
        this.f21648a = (TextView) findViewById(R$id.advertiser_info);
        AdExpandMenuItemView adExpandMenuItemView = (AdExpandMenuItemView) findViewById(R$id.personalise);
        this.f21649b = adExpandMenuItemView;
        adExpandMenuItemView.setData(AdExpandMenuItemView.Type.PERSONALISE_CLOSE);
        AdExpandMenuItemView adExpandMenuItemView2 = (AdExpandMenuItemView) findViewById(R$id.about);
        this.f21650c = adExpandMenuItemView2;
        adExpandMenuItemView2.setData(AdExpandMenuItemView.Type.ADVERTISER_INFO);
        AdExpandMenuItemView adExpandMenuItemView3 = (AdExpandMenuItemView) findViewById(R$id.copy_link);
        this.f21651d = adExpandMenuItemView3;
        adExpandMenuItemView3.setData(AdExpandMenuItemView.Type.COPY_LINK);
    }

    protected void setAdvertiserName(String str) {
        this.f21648a.setText(str);
    }

    public void setListener(d dVar) {
        this.f21652e = dVar;
        this.f21649b.setOnClickListener(new a(dVar));
        this.f21650c.setOnClickListener(new b(dVar));
        this.f21651d.setOnClickListener(new c(dVar));
    }

    public AdExpandMenuContentView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdExpandMenuContentView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R$layout.ad_expand_menu_content_layout, this);
        a();
    }
}
