package com.transsion.palmsdk.auth;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.PalmAccProvider;
import com.transsion.palmsdk.data.PalmAuthResult;
import defpackage.mj7;
import defpackage.vj7;

public class OooO0OO implements ServiceConnection {
    public OooO0O0 b;
    public final Context c;
    public final Intent d;
    public final Bundle e;
    public final PalmID.b f;
    public final boolean g;
    public final com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o h = new OooO00o();

    public class OooO00o extends com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o {
        public OooO00o() {
        }

        @Override
        public void OooO00o(Bundle bundle) throws RemoteException {
            OooO0OO oooO0OO = OooO0OO.this;
            if (oooO0OO.b != null) {
                oooO0OO.b = null;
                oooO0OO.c.unbindService(oooO0OO);
            }
            bundle.setClassLoader(OooO00o.class.getClassLoader());
            if (!bundle.containsKey(SniffSoucreBean.JSON_KEY_TOKEN_INFO)) {
                int i = bundle.getInt("error_code", 0);
                String string = bundle.getString(TrackingKey.ERROR_MESSAGE);
                PalmID.b bVar = OooO0OO.this.f;
                if (bVar != null) {
                    bVar.a(i, string);
                    return;
                }
                return;
            }
            try {
                String string2 = bundle.getString("linked_pkg");
                String string3 = bundle.getString("linked_id");
                String string4 = bundle.getString("linked_bd");
                if (string2 != null && string3 != null) {
                    OooO0OO oooO0OO2 = OooO0OO.this;
                    if (oooO0OO2.g) {
                        mj7.a(oooO0OO2.c).a.saveString("linked_pkg", string2);
                        mj7.a(OooO0OO.this.c).a.saveString("linked_id", string3);
                        if (string4 != null) {
                            mj7.a(OooO0OO.this.c).a.saveString("linked_bd", string4);
                        }
                    } else if (!TextUtils.equals(string2, oooO0OO2.c.getPackageName())) {
                        ContentValues contentValues = new ContentValues(3);
                        contentValues.put("linkedPkg", string2);
                        contentValues.put("linkedId", string3);
                        if (string4 != null) {
                            contentValues.put("linkedBd", string4);
                        }
                        ContentResolver contentResolver = OooO0OO.this.c.getContentResolver();
                        StringBuilder sb = new StringBuilder();
                        sb.append("content://");
                        Context context = OooO0OO.this.c;
                        String str = PalmAccProvider.b;
                        sb.append(context.getPackageName() + ".PalmAccProvider");
                        sb.append("/linked");
                        contentResolver.insert(Uri.parse(sb.toString()), contentValues);
                    }
                }
            } catch (Exception e) {
                vj7.a.i(Log.getStackTraceString(e));
            }
            PalmID.b bVar2 = OooO0OO.this.f;
            if (bVar2 != null) {
                bVar2.b(new PalmAuthResult(bundle));
            }
        }

        @Override
        public void onCancel() throws RemoteException {
            OooO0OO oooO0OO = OooO0OO.this;
            if (oooO0OO.b != null) {
                oooO0OO.b = null;
                oooO0OO.c.unbindService(oooO0OO);
            }
            PalmID.b bVar = OooO0OO.this.f;
            if (bVar != null) {
                bVar.onCancel();
            }
        }
    }

    public OooO0OO(Context context, Intent intent, Bundle bundle, PalmID.b bVar, boolean z) {
        this.c = context;
        this.d = intent;
        this.e = bundle;
        this.f = bVar;
        this.g = z;
    }

    public boolean a() {
        try {
            return Build.VERSION.SDK_INT >= 34 ? this.c.bindService(this.d, this, InputDeviceCompat.SOURCE_DPAD) : this.c.bindService(this.d, this, 1);
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
            return false;
        }
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        vj7.a.g("onServiceConnected");
        try {
            OooO0O0 oooO0O0OooO00o = OooO0O0.OooO00o.OooO00o(iBinder);
            this.b = oooO0O0OooO00o;
            oooO0O0OooO00o.OooO00o(this.e, this.h);
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
            PalmID.b bVar = this.f;
            if (bVar != null) {
                bVar.a(40102, "remote exception");
            }
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        this.b = null;
        PalmID.b bVar = this.f;
        if (bVar != null) {
            bVar.a(40102, "service disconnected");
        }
    }
}
