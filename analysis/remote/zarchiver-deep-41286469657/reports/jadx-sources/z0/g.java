package z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import ru.zdevs.zarchiver.activity.OpenAsDlg;

public final class g extends AnimatorListenerAdapter {

    public final Runnable f2352a;

    public g(OpenAsDlg.a aVar) {
        this.f2352a = aVar;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        Runnable runnable = this.f2352a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
