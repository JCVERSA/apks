package com.transsion.postdetail.shorttv_pugc.factory;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b implements vs.b {

    public static final a f47269a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override
    public String a() {
        ConfigBean configBeanC = cm.f.f17019c.a().c("shorts_unlock_config", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        wf.a.C0922a.f(wf.a.f74274a, "ShortTv", "getUnlockConfig config：" + value, false, 4, null);
        return value;
    }
}
