package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.signin.internal.zae;
import com.google.android.gms.signin.internal.zaf;
import com.google.android.gms.signin.internal.zai;
import com.google.android.gms.signin.internal.zak;

public class ti9 extends b implements k1e {
    public static final int M = 0;
    public final boolean I;
    public final ay0 J;
    public final Bundle K;
    public final Integer L;

    public ti9(Context context, Looper looper, boolean z, ay0 ay0Var, Bundle bundle, c.a aVar, c.b bVar) {
        super(context, looper, 44, ay0Var, aVar, bVar);
        this.I = true;
        this.J = ay0Var;
        this.K = bundle;
        this.L = ay0Var.i();
    }

    public static Bundle L(ay0 ay0Var) {
        ay0Var.h();
        Integer numI = ay0Var.i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", ay0Var.a());
        if (numI != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", numI.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    @Override
    public final void b(zae zaeVar) {
        wd8.m(zaeVar, "Expecting a valid ISignInCallbacks");
        try {
            Account accountC = this.J.c();
            ((zaf) getService()).zag(new zai(1, new zat(accountC, ((Integer) wd8.l(this.L)).intValue(), a.DEFAULT_ACCOUNT.equals(accountC.name) ? tx9.b(getContext()).c() : null)), zaeVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zaeVar.zab(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof zaf ? (zaf) iInterfaceQueryLocalInterface : new zaf(iBinder);
    }

    @Override
    public final Bundle g() {
        if (!getContext().getPackageName().equals(this.J.f())) {
            this.K.putString("com.google.android.gms.signin.internal.realClientPackageName", this.J.f());
        }
        return this.K;
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    public final String j() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override
    public final boolean requiresSignIn() {
        return this.I;
    }

    @Override
    public final void zab() {
        connect(new a.d(this));
    }
}
