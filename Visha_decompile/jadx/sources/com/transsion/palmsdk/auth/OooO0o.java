package com.transsion.palmsdk.auth;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.common.PlaybackException;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmDefaultImpl;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.XNManager;
import defpackage.mj7;
import defpackage.vj7;

public class OooO0o implements ServiceConnection {
    public OooO0O0 b;
    public final Context c;
    public final Intent d;
    public final PalmAuthParam e;
    public final PalmID.e f;
    public boolean g = false;
    public final com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o h = new OooO00o();

    public class OooO00o extends com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o {
        public OooO00o() {
        }

        @Override
        public void OooO00o(Bundle bundle) throws RemoteException {
            OooO0o oooO0o = OooO0o.this;
            if (oooO0o.b != null) {
                oooO0o.b = null;
                oooO0o.c.unbindService(oooO0o);
            }
            bundle.setClassLoader(OooO00o.class.getClassLoader());
            if (bundle.containsKey("status")) {
                int i = bundle.getInt("status", PlaybackException.ERROR_CODE_END_OF_PLAYLIST);
                PalmID.e eVar = OooO0o.this.f;
                if (eVar != null) {
                    eVar.a(i);
                    return;
                }
                return;
            }
            String string = bundle.getString("logged_id");
            String strLoadString = mj7.a(OooO0o.this.c).a.loadString("linked_id");
            vj7.a.g("setResult linkedId = " + strLoadString + " loggedId = " + string);
            if (!TextUtils.isEmpty(strLoadString) && !TextUtils.equals(strLoadString, string)) {
                PalmID.e eVar2 = OooO0o.this.f;
                if (eVar2 != null) {
                    eVar2.a(PlaybackException.ERROR_CODE_CONCURRENT_STREAM_LIMIT);
                    return;
                }
                return;
            }
            String string2 = bundle.getString("user_info", "");
            OooO0o oooO0o2 = OooO0o.this;
            PalmID.e eVar3 = oooO0o2.f;
            if (eVar3 != null) {
                eVar3.b(oooO0o2.g ? 100 : 101, string2);
            }
            OooO0o oooO0o3 = OooO0o.this;
            if (oooO0o3.g) {
                return;
            }
            String strLoadString2 = mj7.a(oooO0o3.c).a.loadString("linked_pkg");
            PalmID palmIDL = PalmID.l(OooO0o.this.c);
            if ((palmIDL instanceof PalmDefaultImpl) && TextUtils.equals(strLoadString2, OooO0o.this.d.getPackage())) {
                ((PalmDefaultImpl) palmIDL).z(string2);
            }
        }

        @Override
        public void onCancel() throws RemoteException {
            OooO0o oooO0o = OooO0o.this;
            if (oooO0o.b != null) {
                oooO0o.b = null;
                oooO0o.c.unbindService(oooO0o);
            }
        }
    }

    public class a implements PalmID.e {
        public final Context a;

        public a(OooO0o oooO0o, Context context) {
            this.a = context;
        }

        @Override
        public void a(int i) {
            vj7.a.g("onSignOut status = " + i);
            if (i == -102 || i == -104) {
                XNManager.g().n(this.a, "", "");
            }
        }

        @Override
        public void b(int i, String str) {
            vj7.a.g("onSignIn status = " + i);
        }
    }

    public OooO0o(Context context, Intent intent, PalmAuthParam palmAuthParam, PalmID.e eVar) {
        this.c = context;
        this.e = palmAuthParam;
        this.d = intent;
        if (eVar != null) {
            this.f = eVar;
        } else {
            this.f = new a(this, context);
        }
    }

    public boolean a() {
        try {
            return this.c.bindService(this.d, this, 1);
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
            return false;
        }
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        vj7.a.g("onServiceConnected");
        try {
            this.b = OooO0O0.OooO00o.OooO00o(iBinder);
            Bundle bundle = new Bundle();
            bundle.putParcelable("auth_param", this.e);
            this.b.OooO0O0(bundle, this.h);
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
            PalmID.e eVar = this.f;
            if (eVar != null) {
                eVar.a(PlaybackException.ERROR_CODE_END_OF_PLAYLIST);
            }
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        this.b = null;
        PalmID.e eVar = this.f;
        if (eVar != null) {
            eVar.a(PlaybackException.ERROR_CODE_END_OF_PLAYLIST);
        }
    }
}
