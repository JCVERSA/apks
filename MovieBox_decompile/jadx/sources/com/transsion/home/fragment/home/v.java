package com.transsion.home.fragment.home;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.tn.lib.widget.R$color;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class v {

    public static final a f43996b = new a(null);

    public static final int f43997c = 8;

    private final ImageView f43998a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public v(ImageView ivNovelIcon) {
        Intrinsics.h(ivNovelIcon, "ivNovelIcon");
        this.f43998a = ivNovelIcon;
        b();
    }

    private final void b() {
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_novel_icon_config", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0) {
            uf.c.g(this.f43998a);
            return;
        }
        try {
            final HomeNovelIconBean homeNovelIconBean = (HomeNovelIconBean) com.blankj.utilcode.util.o.d(value, HomeNovelIconBean.class);
            String deeplink = homeNovelIconBean.getDeeplink();
            if (deeplink != null && deeplink.length() != 0) {
                String icUrl = homeNovelIconBean.getIcUrl();
                if (icUrl != null) {
                    ni.f.a aVar = ni.f.f67269a;
                    Context context = this.f43998a.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar.m(context).g(icUrl).i(R$color.transparent).d(this.f43998a);
                }
                uf.c.k(this.f43998a);
                d();
                this.f43998a.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        v.c(this.f43994a, homeNovelIconBean, view);
                    }
                });
                return;
            }
            uf.c.g(this.f43998a);
        } catch (Throwable unused) {
            uf.c.g(this.f43998a);
        }
    }

    public static final void c(v vVar, HomeNovelIconBean homeNovelIconBean, View view) {
        vVar.e();
        ij.k.h(homeNovelIconBean.getDeeplink(), null, 1, null);
    }

    private final void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", RewardPlus.ICON);
        linkedHashMap.put("item_type", "novel");
        qi.h.f69682a.z("Trending", linkedHashMap);
    }

    private final void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", RewardPlus.ICON);
        linkedHashMap.put("item_type", "novel");
        qi.h.f69682a.o("Trending", linkedHashMap);
    }
}
