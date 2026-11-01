package app.fast.ssh;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.play.core.appupdate.AppUpdateInfo;

public final class MainActivity$$ExternalSyntheticLambda5 implements OnSuccessListener {
    public final MainActivity f$0;

    public MainActivity$$ExternalSyntheticLambda5(MainActivity mainActivity) {
        this.f$0 = mainActivity;
    }

    @Override
    public final void onSuccess(Object obj) {
        this.f$0.m478lambda$onCreate$3$appfastsshMainActivity((AppUpdateInfo) obj);
    }
}
