package com.transsion.lib_web.download_render.init;

import cm.f;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.transsion.base.report.athena.sampler.EventConfig;
import com.transsion.base.report.athena.sampler.EventStrategyBean;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import pl.h;

public final class ConfigTask implements c {

    public static final a f44804a = new a(null);

    private static final String f44805b = "(event =='files_download')";

    private static final String f44806c = "(event =='render')";

    private static final String f44807d = "(event =='pages_download')";

    private static final EventStrategyBean f44808e = new EventStrategyBean("(event =='files_download')", "pre_download", 1);

    private static final EventStrategyBean f44809f = new EventStrategyBean("(event =='render')", "pre_download", 1);

    private static final EventStrategyBean f44810g = new EventStrategyBean("(event =='pages_download')", "pre_download", 1);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override
    public void invoke() {
        String value;
        List arrayList = new ArrayList();
        try {
            boolean z10 = true;
            ConfigBean configBeanC = f.f17019c.a().c("point_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            h.f69205a.a("DR_Config", "remote point config: " + value);
            if (StringsKt.q0(value)) {
                arrayList.add(f44808e);
                arrayList.add(f44809f);
                arrayList.add(f44810g);
            } else {
                List<EventStrategyBean> list = (List) o.e(value, new TypeToken<List<EventStrategyBean>>() {
                }.getType());
                try {
                    boolean z11 = true;
                    boolean z12 = true;
                    for (EventStrategyBean eventStrategyBean : list) {
                        if (Intrinsics.c(eventStrategyBean.getEventExpr(), f44805b)) {
                            z10 = false;
                        }
                        if (Intrinsics.c(eventStrategyBean.getEventExpr(), f44806c)) {
                            z11 = false;
                        }
                        if (Intrinsics.c(eventStrategyBean.getEventExpr(), f44807d)) {
                            z12 = false;
                        }
                    }
                    if (z10) {
                        list.add(f44808e);
                    }
                    if (z11) {
                        list.add(f44809f);
                    }
                    if (z12) {
                        list.add(f44810g);
                    }
                    arrayList = list;
                } catch (Throwable th2) {
                    th = th2;
                    arrayList = list;
                    arrayList.clear();
                    arrayList.add(f44808e);
                    arrayList.add(f44809f);
                    arrayList.add(f44810g);
                    String strJ = o.j(arrayList);
                    h.f69205a.a("DR_Config", "fail: " + th + ", point config: " + strJ);
                    EventConfig.f41878a.j(strJ);
                    return;
                }
            }
            String strJ2 = o.j(arrayList);
            h.f69205a.a("DR_Config", "point config: " + strJ2);
            EventConfig.f41878a.j(strJ2);
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
