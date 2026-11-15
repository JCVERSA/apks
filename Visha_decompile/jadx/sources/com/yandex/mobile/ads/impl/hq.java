package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class hq {
    private final bq1 a;

    public static final class a extends Lambda implements s74 {
        final Uri.Builder c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Uri.Builder builder) {
            super(2);
            this.c = builder;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            String str = (String) obj;
            String str2 = (String) obj2;
            y45.j(str, "key");
            bq1 bq1Var = hq.this.a;
            Uri.Builder builder = this.c;
            bq1Var.getClass();
            y45.j(builder, "builder");
            y45.j(str, "key");
            y45.j(builder, "<this>");
            y45.j(str, "key");
            if (str2 != null && str2.length() != 0) {
                y45.g(builder.appendQueryParameter(str, str2));
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements s74 {
        final in1 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(in1 in1Var) {
            super(2);
            this.b = in1Var;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            String str = (String) obj;
            y45.j(str, "key");
            this.b.a(str, (String) obj2);
            return zfb.a;
        }
    }

    public hq(bq1 bq1Var) {
        y45.j(bq1Var, "requestHelper");
        this.a = bq1Var;
    }

    public final void a(Context context, Uri.Builder builder) {
        y45.j(context, "context");
        y45.j(builder, "builder");
        a aVar = new a(builder);
        iq.a.getClass();
        kq kqVar = (kq) iq.a.a(context);
        aVar.invoke("gdpr", kqVar.a());
        aVar.invoke("gdpr_consent", kqVar.b());
        aVar.invoke("parsed_purpose_consents", kqVar.c());
        aVar.invoke("parsed_vendor_consents", kqVar.f());
        aVar.invoke("cmp_present", Integer.valueOf(kqVar.e() ? 1 : 0).toString());
    }

    public static void a(Context context, in1 in1Var) {
        y45.j(context, "context");
        y45.j(in1Var, "queryParams");
        b bVar = new b(in1Var);
        iq.a.getClass();
        kq kqVar = (kq) iq.a.a(context);
        bVar.invoke("gdpr", kqVar.a());
        bVar.invoke("gdpr_consent", kqVar.b());
        bVar.invoke("parsed_purpose_consents", kqVar.c());
        bVar.invoke("parsed_vendor_consents", kqVar.f());
        bVar.invoke("cmp_present", Integer.valueOf(kqVar.e() ? 1 : 0).toString());
    }
}
