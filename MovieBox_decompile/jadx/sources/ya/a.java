package ya;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.R$attr;

public abstract class a {

    private final TimeInterpolator f76178a;

    protected final View f76179b;

    protected final int f76180c;

    protected final int f76181d;

    protected final int f76182e;

    private androidx.activity.b f76183f;

    public a(View view) {
        this.f76179b = view;
        Context context = view.getContext();
        this.f76178a = j.g(context, R$attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.f76180c = j.f(context, R$attr.motionDurationMedium2, 300);
        this.f76181d = j.f(context, R$attr.motionDurationShort3, 150);
        this.f76182e = j.f(context, R$attr.motionDurationShort2, 100);
    }

    public float a(float f10) {
        return this.f76178a.getInterpolation(f10);
    }

    protected androidx.activity.b b() {
        if (this.f76183f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        androidx.activity.b bVar = this.f76183f;
        this.f76183f = null;
        return bVar;
    }

    public androidx.activity.b c() {
        androidx.activity.b bVar = this.f76183f;
        this.f76183f = null;
        return bVar;
    }

    protected void d(androidx.activity.b bVar) {
        this.f76183f = bVar;
    }

    protected androidx.activity.b e(androidx.activity.b bVar) {
        if (this.f76183f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        androidx.activity.b bVar2 = this.f76183f;
        this.f76183f = bVar;
        return bVar2;
    }
}
