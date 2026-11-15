package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import org.json.JSONObject;

public class sU extends RiZ {
    private TextView Sj;

    public sU(@NonNull Context context, View view, int i10, int i11, int i12, JSONObject jSONObject) {
        super(context, view, i10, i11, i12, jSONObject);
    }

    @Override
    protected void Sj(Context context, View view) {
        addView(view);
        this.Sj = (TextView) findViewById(2097610747);
    }

    @Override
    public void setShakeText(String str) {
        if (this.Sj == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.Sj.setText(str);
            return;
        }
        try {
            this.Sj.setText(com.bytedance.sdk.component.utils.ib.sP(this.Sj.getContext(), "tt_splash_default_click_shake"));
        } catch (Exception e10) {
            e10.getMessage();
        }
    }
}
