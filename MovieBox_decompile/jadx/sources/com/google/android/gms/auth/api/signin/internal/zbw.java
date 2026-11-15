package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import androidx.loader.app.a;
import com.google.android.gms.common.api.GoogleApiClient;

final class zbw implements a.InterfaceC0078a {
    final SignInHubActivity zba;

    zbw(SignInHubActivity signInHubActivity, zbv zbvVar) {
        this.zba = signInHubActivity;
    }

    @Override
    public final androidx.loader.content.a onCreateLoader(int i10, Bundle bundle) {
        return new zbc(this.zba, GoogleApiClient.getAllClients());
    }

    @Override
    public final void onLoadFinished(androidx.loader.content.a aVar, Object obj) {
        SignInHubActivity signInHubActivity = this.zba;
        signInHubActivity.setResult(signInHubActivity.zbe, signInHubActivity.zbf);
        this.zba.finish();
    }

    @Override
    public final void onLoaderReset(androidx.loader.content.a aVar) {
    }
}
