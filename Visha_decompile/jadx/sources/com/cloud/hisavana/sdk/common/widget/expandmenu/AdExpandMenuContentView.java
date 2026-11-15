package com.cloud.hisavana.sdk.common.widget.expandmenu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R;

public class AdExpandMenuContentView extends RelativeLayout {
    public TextView b;
    public AdExpandMenuItemView c;
    public AdExpandMenuItemView d;
    public AdExpandMenuItemView e;
    public d f;

    public class a implements View.OnClickListener {
        public final d b;

        public a(d dVar) {
            this.b = dVar;
        }

        @Override
        public void onClick(View view) {
            this.b.a(AdExpandMenuItemView.Type.PERSONALISE_CLOSE);
        }
    }

    public class b implements View.OnClickListener {
        public final d b;

        public b(d dVar) {
            this.b = dVar;
        }

        @Override
        public void onClick(View view) {
            this.b.a(AdExpandMenuItemView.Type.ADVERTISER_INFO);
        }
    }

    public class c implements View.OnClickListener {
        public final d b;

        public c(d dVar) {
            this.b = dVar;
        }

        @Override
        public void onClick(View view) {
            this.b.a(AdExpandMenuItemView.Type.COPY_LINK);
        }
    }

    public interface d {
        void a(AdExpandMenuItemView.Type type);
    }

    public AdExpandMenuContentView(@NonNull Context context) {
        this(context, null, 0);
    }

    public final void a() {
        this.b = (TextView) findViewById(R.id.advertiser_info);
        AdExpandMenuItemView adExpandMenuItemView = (AdExpandMenuItemView) findViewById(R.id.personalise);
        this.c = adExpandMenuItemView;
        adExpandMenuItemView.setData(AdExpandMenuItemView.Type.PERSONALISE_CLOSE);
        AdExpandMenuItemView adExpandMenuItemView2 = (AdExpandMenuItemView) findViewById(R.id.about);
        this.d = adExpandMenuItemView2;
        adExpandMenuItemView2.setData(AdExpandMenuItemView.Type.ADVERTISER_INFO);
        AdExpandMenuItemView adExpandMenuItemView3 = (AdExpandMenuItemView) findViewById(R.id.copy_link);
        this.e = adExpandMenuItemView3;
        adExpandMenuItemView3.setData(AdExpandMenuItemView.Type.COPY_LINK);
    }

    public void setAdvertiserName(String str) {
        this.b.setText(str);
    }

    public void setListener(d dVar) {
        this.f = dVar;
        this.c.setOnClickListener(new a(dVar));
        this.d.setOnClickListener(new b(dVar));
        this.e.setOnClickListener(new c(dVar));
    }

    public AdExpandMenuContentView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdExpandMenuContentView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.ad_expand_menu_content_layout, this);
        a();
    }
}
