package com.transsion.shorttv.order;

import com.google.gson.JsonObject;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

public final class g {

    public static final g f51041a = new g();

    private static final Lazy f51042b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return g.e();
        }
    });

    private g() {
    }

    private final a d() {
        return (a) f51042b.getValue();
    }

    public static final a e() {
        return (a) kg.c.f63982e.a().h(a.class);
    }

    public final Object b(CreatePaynicornOrderReqBean createPaynicornOrderReqBean, Continuation continuation) {
        Map<String, String> extStrJson;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("project_name", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getProjectName() : null);
        jsonObject.addProperty("sku_id", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getSkuId() : null);
        jsonObject.addProperty("user_id", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getUserId() : null);
        jsonObject.addProperty("cp_front_page", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getCpFrontPage() : null);
        if (createPaynicornOrderReqBean != null && (extStrJson = createPaynicornOrderReqBean.getExtStrJson()) != null) {
            String string = new JSONObject(extStrJson).toString();
            Intrinsics.g(string, "toString(...)");
            jsonObject.addProperty("ext", string);
        }
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string2 = jsonObject.toString();
        Intrinsics.g(string2, "toString(...)");
        return a.C0633a.a(d(), null, companion.create(string2, MediaType.INSTANCE.parse("application/json")), e.f51040a.a(createPaynicornOrderReqBean != null ? Boxing.a(createPaynicornOrderReqBean.isDebug()) : null), continuation, 1, null);
    }

    public final Object c(String str, String str2, boolean z10, Continuation continuation) {
        return a.C0633a.b(d(), null, str == null ? "" : str, str2 == null ? "" : str2, e.f51040a.a(Boxing.a(z10)), continuation, 1, null);
    }
}
