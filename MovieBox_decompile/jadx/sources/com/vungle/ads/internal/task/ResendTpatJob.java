package com.vungle.ads.internal.task;

import android.content.Context;
import android.os.Bundle;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.network.h;
import com.vungle.ads.internal.util.p;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ResendTpatJob implements com.vungle.ads.internal.task.a {
    public static final a Companion = new a(null);
    public static final String TAG = "ResendTpatJob";
    private final Context context;
    private final p pathProvider;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c makeJobInfo() {
            return new c(ResendTpatJob.TAG).setPriority(0).setUpdateCurrent(true);
        }

        private a() {
        }
    }

    public ResendTpatJob(Context context, p pathProvider) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pathProvider, "pathProvider");
        this.context = context;
        this.pathProvider = pathProvider;
    }

    private static final h m433onRunJob$lambda0(Lazy<h> lazy) {
        return (h) lazy.getValue();
    }

    public final Context getContext() {
        return this.context;
    }

    public final p getPathProvider() {
        return this.pathProvider;
    }

    @Override
    public int onRunJob(Bundle bundle, d jobRunner) {
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(jobRunner, "jobRunner");
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        m433onRunJob$lambda0(LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<h>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.h, java.lang.Object] */
            @Override
            public final h invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(h.class);
            }
        })).resendStoredTpats$vungle_ads_release();
        return 0;
    }
}
