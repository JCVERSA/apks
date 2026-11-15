package com.mgtv.a.c;

import android.content.Context;
import android.view.View;
import com.mgmi.ads.api.render.MySimpleDraweeView;

public class g extends a {
    private MySimpleDraweeView s;

    @Override
    public void a(Context context) {
        this.s = new MySimpleDraweeView(context);
    }

    @Override
    public void c() {
        this.g = true;
        this.c = 0;
        e eVar = this.q;
        if (eVar != null) {
            eVar.a("", 100100, "data is empty");
        }
    }

    @Override
    public View a() {
        return this.s;
    }
}
