package defpackage;

import android.os.Bundle;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.auth.api.signin.internal.zbc;
import com.google.android.gms.common.api.c;

public final class l4e implements LoaderManager.LoaderCallbacks {
    public final SignInHubActivity a;

    public l4e(SignInHubActivity signInHubActivity, k4e k4eVar) {
        this.a = signInHubActivity;
    }

    @Override
    public final Loader onCreateLoader(int i, Bundle bundle) {
        return new zbc(this.a, c.b());
    }

    @Override
    public final void onLoadFinished(Loader loader, Object obj) {
        SignInHubActivity signInHubActivity = this.a;
        signInHubActivity.setResult(signInHubActivity.Q, signInHubActivity.R);
        this.a.finish();
    }

    @Override
    public final void onLoaderReset(Loader loader) {
    }
}
