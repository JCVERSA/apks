package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import kotlin.jvm.internal.Intrinsics;

public abstract class k0 {

    private final Activity f21946a;

    private final View f21947b;

    private final z3 f21948c;

    public k0(Activity activity, View rootView, z3 helper) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(helper, "helper");
        this.f21946a = activity;
        this.f21947b = rootView;
        this.f21948c = helper;
    }

    public final Activity a() {
        return this.f21946a;
    }

    public abstract void b(ImageView imageView, float f10);

    public abstract void c(HSChronometer hSChronometer);

    public abstract void d(AdsDTO adsDTO);

    public abstract void e(boolean z10, DownUpPointBean downUpPointBean, View view);

    public final z3 f() {
        return this.f21948c;
    }

    public final View g() {
        return this.f21947b;
    }

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public abstract void k();

    public abstract void l();
}
