package com.transsion.palmsdk.auth;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.media3.common.PlaybackException;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.data.PalmAuthRequest;
import defpackage.aw7;
import defpackage.vj7;
import defpackage.xj7;

public class PalmAuthService extends Service {
    public Context b;
    public final com.transsion.palmsdk.auth.OooO0O0.OooO00o c = new OooO00o();

    public class OooO00o extends com.transsion.palmsdk.auth.OooO0O0.OooO00o {
        public OooO00o() {
        }

        @Override
        public void OooO00o(Bundle bundle, com.transsion.palmsdk.auth.OooO00o oooO00o) throws RemoteException {
            try {
                bundle.setClassLoader(OooO00o.class.getClassLoader());
                PalmAuthParam palmAuthParam = (PalmAuthParam) bundle.getParcelable("auth_param");
                if (palmAuthParam != null) {
                    PalmAuthRequest palmAuthRequest = new PalmAuthRequest(palmAuthParam, false, oooO00o);
                    palmAuthRequest.setHostMode(bundle.getBoolean("host_mode", false));
                    xj7.a().execute(PalmAuthService.this.new OooO0O0(palmAuthRequest));
                } else if (oooO00o != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("error_code", 40101);
                    bundle2.putString(TrackingKey.ERROR_MESSAGE, "invalid arguments");
                    oooO00o.OooO00o(bundle2);
                }
            } catch (Exception e) {
                vj7.a.i(Log.getStackTraceString(e));
            }
        }

        @Override
        public void OooO0O0(Bundle bundle, com.transsion.palmsdk.auth.OooO00o oooO00o) throws RemoteException {
            try {
                bundle.setClassLoader(OooO00o.class.getClassLoader());
                PalmAuthParam palmAuthParam = (PalmAuthParam) bundle.getParcelable("auth_param");
                if (palmAuthParam != null) {
                    xj7.a().execute(PalmAuthService.this.new OooO0OO(new PalmAuthRequest(palmAuthParam, false, oooO00o)));
                } else if (oooO00o != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("status", PlaybackException.ERROR_CODE_END_OF_PLAYLIST);
                    oooO00o.OooO00o(bundle2);
                }
            } catch (Exception e) {
                vj7.a.i(Log.getStackTraceString(e));
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final PalmAuthRequest OooO00o;

        public OooO0O0(PalmAuthRequest palmAuthRequest) {
            this.OooO00o = palmAuthRequest;
        }

        @Override
        public void run() {
            aw7.c(PalmAuthService.this.b).d(this.OooO00o);
        }
    }

    public class OooO0OO implements Runnable {
        public final PalmAuthRequest OooO00o;

        public OooO0OO(PalmAuthRequest palmAuthRequest) {
            this.OooO00o = palmAuthRequest;
        }

        @Override
        public void run() {
            aw7.c(PalmAuthService.this.b).e(this.OooO00o);
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.c;
    }

    @Override
    public void onCreate() {
        this.b = getApplicationContext();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
