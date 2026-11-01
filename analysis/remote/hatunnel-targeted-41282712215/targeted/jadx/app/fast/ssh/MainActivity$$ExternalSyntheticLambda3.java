package app.fast.ssh;

import android.content.DialogInterface;
import com.google.android.material.navigation.NavigationView;

public final class MainActivity$$ExternalSyntheticLambda3 implements DialogInterface.OnClickListener {
    public final MainActivity f$0;
    public final String f$1;
    public final NavigationView f$2;

    public MainActivity$$ExternalSyntheticLambda3(MainActivity mainActivity, String str, NavigationView navigationView) {
        this.f$0 = mainActivity;
        this.f$1 = str;
        this.f$2 = navigationView;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f$0.m479lambda$onCreate$4$appfastsshMainActivity(this.f$1, this.f$2, dialogInterface, i);
    }
}
