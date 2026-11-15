package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class p4 {

    private final q.a f22179a;

    private final String f22180b;

    public p4(q.a admListener) {
        Intrinsics.h(admListener, "admListener");
        this.f22179a = admListener;
        this.f22180b = "AdmActionBridge";
    }

    public static final void b(String path, p4 this$0) {
        Intrinsics.h(path, "$path");
        Intrinsics.h(this$0, "this$0");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        if (StringsKt.W(path, "http", false, 2, null) || StringsKt.W(path, "https", false, 2, null) || StringsKt.W(path, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, false, 2, null)) {
            this$0.f22179a.a(path, TaErrorCode.CODE_BITMAP_TAKE_FAILED);
        }
    }

    @JavascriptInterface
    public final void loadMaterialError(final String path) {
        Intrinsics.h(path, "path");
        b4.b().w(this.f22180b, "loadMaterialError " + path);
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                p4.b(path, this);
            }
        });
    }
}
