package com.mgmi.ads.api.c;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.ads.api.d.b;
import com.mgmi.ads.api.h;
import com.mgmi.ads.api.i;
import com.mgmi.platform.d;

public class a {
    protected ContainerLayout a;
    protected b b;
    i c;
    protected com.mgmi.ads.api.a d;
    protected ViewGroup e;
    private String f;

    public a(Context context, @Nullable b bVar, d dVar, com.mgmi.ads.api.a aVar, ViewGroup viewGroup) {
        this.e = viewGroup;
        this.b = bVar;
        this.d = aVar;
    }

    public void a(h hVar, String str) {
    }

    public String b() {
        return this.f;
    }

    public com.mgmi.ads.api.a c() {
        return this.d;
    }

    public ViewGroup d() {
        return this.e;
    }

    public void e() {
    }

    public void f() {
    }

    public i a() {
        return this.c;
    }

    public void a(String str) {
        this.f = str;
    }

    public void a(i iVar) {
        this.c = iVar;
    }

    public void a(boolean z) {
        ContainerLayout containerLayout = this.a;
        if (containerLayout != null) {
            containerLayout.setInteractTouch(z);
        }
    }
}
