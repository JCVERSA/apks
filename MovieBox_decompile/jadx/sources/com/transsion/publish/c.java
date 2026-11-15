package com.transsion.publish;

import android.text.TextUtils;
import com.transsion.publish.api.LinkEntity;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.nodes.Document;

public final class c {

    public static final a f48352a = new a(null);

    private static final Lazy f48353b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return c.c();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            return (c) c.f48353b.getValue();
        }

        private a() {
        }
    }

    public static final c c() {
        return new c();
    }

    private final void e(Runnable runnable) {
        p.f48365b.a().d(runnable);
    }

    private final void f(String str, String str2, String str3, boolean z10) {
        LinkEntity linkEntity = new LinkEntity();
        linkEntity.setTitle(str);
        linkEntity.setCover(str2);
        linkEntity.setUrl(str3);
        linkEntity.setType(4);
        linkEntity.setLoading(z10);
        jo.b bVar = new jo.b();
        bVar.o(4);
        bVar.n(1);
        bVar.p(linkEntity);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
    }

    public static final void h(c cVar, String str) {
        try {
            cVar.f(str == null ? "" : str, "", str == null ? "" : str, false);
            if (str != null) {
                cVar.i(str);
            }
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message != null) {
                wf.a.C0922a.f(wf.a.f74274a, "LinkParseManager", message, false, 4, null);
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String str2 = str == null ? "" : str;
            if (str == null) {
                str = "";
            }
            cVar.f(str2, "", str, true);
        }
    }

    private final void i(String str) {
        Document document = rz.a.a(str).a(true).get();
        Intrinsics.g(document, "get(...)");
        String strJ1 = document.j1();
        Intrinsics.g(strJ1, "title(...)");
        wf.a.C0922a.f(wf.a.f74274a, "LinkParseManager", "title:" + strJ1, false, 4, null);
        f(strJ1, "", str, true);
    }

    public final void g(final String str) {
        if (TextUtils.isEmpty(str)) {
            fh.b.f60176a.e("Not a valid link");
        } else {
            e(new Runnable() {
                @Override
                public final void run() {
                    c.h(this.f48219a, str);
                }
            });
        }
    }
}
