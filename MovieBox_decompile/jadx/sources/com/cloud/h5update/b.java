package com.cloud.h5update;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.h5update.impl.UpdateChecker;
import com.cloud.h5update.impl.UpdateParser;
import com.cloud.h5update.utils.l;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import v6.c;
import v6.d;

public final class b implements c {

    public static final C0272b f20636g = new C0272b(null);

    private static UpdateEntity f20637h;

    private WeakReference f20638a;

    private String f20639b;

    private Map f20640c;

    private Map f20641d;

    private v6.a f20642e;

    private d f20643f;

    public static final class a {

        private Context f20644a;

        private String f20645b;

        private Map f20646c;

        private Map f20647d;

        private d f20648e;

        private v6.a f20649f;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f20644a = context;
            this.f20648e = new UpdateParser();
            this.f20649f = new UpdateChecker();
        }

        private final b a() {
            l.f20693a.q(this.f20644a, "[UpdateManager.Builder] : context == null");
            b bVar = new b(null);
            bVar.f20638a = new WeakReference(this.f20644a);
            bVar.f20639b = this.f20645b;
            bVar.f20640c = this.f20646c;
            bVar.f20641d = this.f20647d;
            bVar.f20642e = this.f20649f;
            bVar.f20643f = this.f20648e;
            return bVar;
        }

        public final void b() {
            String str;
            String str2 = this.f20645b;
            if (str2 == null || StringsKt.q0(str2)) {
                com.cloud.h5update.a aVar = com.cloud.h5update.a.f20634a;
                if (aVar.a() == 3) {
                    str = "https://api-test.byte-app.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN";
                } else {
                    str = aVar.a() == 2 ? "https://app-manage-api-static-pre.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN" : "https://app-manage-api-static.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN";
                }
                this.f20645b = str;
            }
            a().k();
        }

        public final a c(v6.a updateChecker) {
            Intrinsics.h(updateChecker, "updateChecker");
            this.f20649f = updateChecker;
            return this;
        }
    }

    public static final class C0272b {
        public C0272b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UpdateEntity a() {
            return b.f20637h;
        }

        private C0272b() {
        }
    }

    public b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final void j() {
        v6.a aVar;
        if (l.f20693a.b()) {
            i();
            return;
        }
        String str = this.f20639b;
        if (str == null || (aVar = this.f20642e) == null) {
            return;
        }
        aVar.noNetWork(str, this);
    }

    @Override
    public UpdateEntity a(String json) {
        Intrinsics.h(json, "json");
        d dVar = this.f20643f;
        if (dVar == null) {
            return null;
        }
        Intrinsics.e(dVar);
        f20637h = dVar.a(json);
        TH5Update.a aVar = TH5Update.f20622c;
        if (aVar.j() != null) {
            v6.b bVarJ = aVar.j();
            Intrinsics.e(bVarJ);
            if (!bVarJ.onGetEntity(f20637h)) {
                return null;
            }
        }
        return f20637h;
    }

    public void i() {
        if (TextUtils.isEmpty(this.f20639b)) {
            throw new NullPointerException("[UpdateManager] : mUpdateUrl 不能为空");
        }
        v6.a aVar = this.f20642e;
        if (aVar == null) {
            return;
        }
        Intrinsics.e(aVar);
        String str = this.f20639b;
        Intrinsics.e(str);
        aVar.checkVersion(str, this.f20640c, this.f20641d, this);
    }

    public void k() {
        j();
    }

    private b() {
    }
}
