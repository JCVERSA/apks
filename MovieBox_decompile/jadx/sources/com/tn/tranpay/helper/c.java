package com.tn.tranpay.helper;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class c {

    public static final a f40650a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RequestBody a(Object req) {
            Intrinsics.h(req, "req");
            try {
                if (req instanceof String) {
                    return RequestBody.INSTANCE.create((String) req, MediaType.INSTANCE.parse("application/json"));
                }
                return RequestBody.INSTANCE.create(com.alibaba.fastjson.a.toJSON(req).toString(), MediaType.INSTANCE.parse("application/json"));
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        private a() {
        }
    }
}
