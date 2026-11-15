package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.auth.api.signin.internal.a;
import com.google.android.gms.auth.api.signin.internal.b;
import com.google.android.gms.auth.api.signin.internal.zbb;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import java.util.Iterator;

public abstract class b4e {
    public static final nq5 a = new nq5("GoogleSignInCommon", new String[0]);

    public static Intent a(Context context, GoogleSignInOptions googleSignInOptions) {
        a.a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    public static k08 b(c cVar, Context context, boolean z) {
        a.a("Revoking access", new Object[0]);
        String strE = tx9.b(context).e();
        d(context);
        return z ? zbb.zba(strE) : cVar.a(new b(cVar));
    }

    public static k08 c(c cVar, Context context, boolean z) {
        a.a("Signing out", new Object[0]);
        d(context);
        return z ? m08.b(Status.RESULT_SUCCESS, cVar) : cVar.a(new a(cVar));
    }

    public static void d(Context context) {
        e4e.a(context).b();
        Iterator it = c.b().iterator();
        while (it.hasNext()) {
            ((c) it.next()).e();
        }
        com.google.android.gms.common.api.internal.c.a();
    }
}
