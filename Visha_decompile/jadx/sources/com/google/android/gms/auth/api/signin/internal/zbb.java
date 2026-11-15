package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.common.api.Status;
import defpackage.k08;
import defpackage.m08;
import defpackage.nq5;
import defpackage.rx9;
import defpackage.wd8;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class zbb implements Runnable {
    private static final nq5 zba = new nq5("RevokeAccessOperation", new String[0]);
    private final String zbb;
    private final rx9 zbc = new rx9(null);

    public zbb(String str) {
        this.zbb = wd8.f(str);
    }

    public static k08 zba(@Nullable String str) {
        if (str == null) {
            return m08.a(new Status(4), null);
        }
        zbb zbbVar = new zbb(str);
        new Thread(zbbVar).start();
        return zbbVar.zbc;
    }

    @Override
    public final void run() {
        Status status = Status.RESULT_INTERNAL_ERROR;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://accounts.google.com/o/oauth2/revoke?token=" + this.zbb).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                zba.b("Unable to revoke access!", new Object[0]);
            }
            zba.a("Response Code: " + responseCode, new Object[0]);
        } catch (IOException e) {
            zba.b("IOException when revoking access: ".concat(String.valueOf(e.toString())), new Object[0]);
        } catch (Exception e2) {
            zba.b("Exception when revoking access: ".concat(String.valueOf(e2.toString())), new Object[0]);
        }
        this.zbc.g(status);
    }
}
