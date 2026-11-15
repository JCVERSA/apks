package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbs;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.b;
import java.util.Iterator;

public final class o3e extends b {
    public final GoogleSignInOptions I;

    public o3e(Context context, Looper looper, ay0 ay0Var, GoogleSignInOptions googleSignInOptions, c.a aVar, c.b bVar) {
        super(context, looper, 91, ay0Var, aVar, bVar);
        GoogleSignInOptions.a aVar2 = googleSignInOptions != null ? new GoogleSignInOptions.a(googleSignInOptions) : new GoogleSignInOptions.a();
        aVar2.e(h3e.a());
        if (!ay0Var.d().isEmpty()) {
            Iterator it = ay0Var.d().iterator();
            while (it.hasNext()) {
                aVar2.d((Scope) it.next(), new Scope[0]);
            }
        }
        this.I = aVar2.a();
    }

    public final GoogleSignInOptions L() {
        return this.I;
    }

    @Override
    public final IInterface d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof zbs ? (zbs) iInterfaceQueryLocalInterface : new zbs(iBinder);
    }

    @Override
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override
    public final Intent getSignInIntent() {
        return b4e.a(getContext(), this.I);
    }

    @Override
    public final String j() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override
    public final String k() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override
    public final boolean providesSignIn() {
        return true;
    }
}
