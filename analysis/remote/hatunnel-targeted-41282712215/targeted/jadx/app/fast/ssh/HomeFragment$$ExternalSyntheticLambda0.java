package app.fast.ssh;

import android.content.DialogInterface;

public final class HomeFragment$$ExternalSyntheticLambda0 implements DialogInterface.OnCancelListener {
    public final HomeFragment f$0;
    public final long f$1;

    public HomeFragment$$ExternalSyntheticLambda0(HomeFragment homeFragment, long j) {
        this.f$0 = homeFragment;
        this.f$1 = j;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        this.f$0.m470lambda$showLoading$7$appfastsshHomeFragment(this.f$1, dialogInterface);
    }
}
