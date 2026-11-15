package defpackage;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public abstract class yt4 {
    public final Activity a;
    public final View b;
    public final mrd c;

    public yt4(Activity activity, View view, mrd mrdVar) {
        y45.j(activity, "activity");
        y45.j(view, "rootView");
        y45.j(mrdVar, "helper");
        this.a = activity;
        this.b = view;
        this.c = mrdVar;
    }

    public final Activity a() {
        return this.a;
    }

    public abstract void b(ImageView imageView, float f);

    public abstract void c(HSChronometer hSChronometer);

    public abstract void d(AdsDTO adsDTO);

    public abstract void e(boolean z, DownUpPointBean downUpPointBean, View view);

    public final mrd f() {
        return this.c;
    }

    public final View g() {
        return this.b;
    }

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public abstract void k();

    public abstract void l();
}
