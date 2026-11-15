package com.vungle.ads.internal.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.vungle.ads.R$raw;
import com.vungle.ads.internal.util.o;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public final class b {
    public static final a Companion = new a(null);
    private static final String OM_SDK_JS = "omsdk.js";
    private static final String OM_SESSION_JS = "omsdk-session.js";
    private AtomicReference<String> cachedOMSDKJS;
    private AtomicReference<String> cachedOMSessionJS;
    private final Context context;
    private final Handler uiHandler;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.uiHandler = new Handler(Looper.getMainLooper());
        this.cachedOMSDKJS = new AtomicReference<>(null);
        this.cachedOMSessionJS = new AtomicReference<>(null);
    }

    private final String getOMSessionJS() {
        String str = this.cachedOMSessionJS.get();
        if (str != null) {
            return str;
        }
        String strLoadJsFromRaw = loadJsFromRaw(R$raw.omid_session_client_v1_5_3);
        this.cachedOMSessionJS.set(strLoadJsFromRaw);
        return strLoadJsFromRaw;
    }

    public static final void m412init$lambda2(b this$0) {
        Object objM453constructorimpl;
        Intrinsics.h(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!ue.a.b()) {
                ue.a.a(this$0.context);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            o.Companion.e("OMSDK", "error: " + thM456exceptionOrNullimpl.getLocalizedMessage());
        }
    }

    private final String loadJsFromRaw(int i10) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            InputStream inputStreamOpenRawResource = this.context.getResources().openRawResource(i10);
            Intrinsics.g(inputStreamOpenRawResource, "context.resources.openRawResource(resId)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, Charsets.UTF_8), 8192);
            try {
                String strE = TextStreamsKt.e(bufferedReader);
                CloseableKt.a(bufferedReader, null);
                objM453constructorimpl = Result.m453constructorimpl(strE);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(bufferedReader, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th4));
        }
        return (String) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
    }

    private final File writeToFile(String str, File file) throws IOException {
        if (str == null) {
            throw new IOException("omsdk js must not be null");
        }
        FileWriter fileWriter = new FileWriter(file);
        try {
            fileWriter.write(str);
            fileWriter.flush();
            CloseableKt.a(fileWriter, null);
            return file;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileWriter, th2);
                throw th3;
            }
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getOMSDKJS$vungle_ads_release() {
        String str = this.cachedOMSDKJS.get();
        if (str != null) {
            return str;
        }
        String strLoadJsFromRaw = loadJsFromRaw(R$raw.omsdk_v1_5_3);
        this.cachedOMSDKJS.set(strLoadJsFromRaw);
        return strLoadJsFromRaw;
    }

    public final void init() {
        this.uiHandler.post(new Runnable() {
            @Override
            public final void run() {
                b.m412init$lambda2(this.f58409a);
            }
        });
    }

    public final List<File> injectJsFiles$vungle_ads_release(File dir) {
        Intrinsics.h(dir, "dir");
        String oMSDKJS$vungle_ads_release = getOMSDKJS$vungle_ads_release();
        File fileWriteToFile = oMSDKJS$vungle_ads_release != null ? writeToFile(oMSDKJS$vungle_ads_release, new File(dir, OM_SDK_JS)) : null;
        String oMSessionJS = getOMSessionJS();
        return CollectionsKt.p(fileWriteToFile, oMSessionJS != null ? writeToFile(oMSessionJS, new File(dir, OM_SESSION_JS)) : null);
    }
}
