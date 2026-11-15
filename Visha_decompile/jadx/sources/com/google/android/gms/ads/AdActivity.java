package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsy;

public final class AdActivity extends Activity {

    @NonNull
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public zzbsy b;

    public final void a() {
        zzbsy zzbsyVar = this.b;
        if (zzbsyVar != null) {
            try {
                zzbsyVar.zzx();
            } catch (RemoteException e) {
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    @Override
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzh(i, i2, intent);
            }
        } catch (Exception e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override
    public final void onBackPressed() {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null && !zzbsyVar.zzH()) {
                return;
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        super.onBackPressed();
        try {
            zzbsy zzbsyVar2 = this.b;
            if (zzbsyVar2 != null) {
                zzbsyVar2.zzi();
            }
        } catch (RemoteException e2) {
            zzo.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzk(ObjectWrapper.wrap(configuration));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzbsy zzbsyVarZzq = zzbb.zza().zzq(this);
        this.b = zzbsyVarZzq;
        if (zzbsyVarZzq == null) {
            zzo.zzl("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzbsyVarZzq.zzl(bundle);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override
    public final void onDestroy() {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzm();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override
    public final void onPause() {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzo();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override
    public final void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzp(i, strArr, iArr);
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onRestart() {
        super.onRestart();
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzq();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override
    public final void onResume() {
        super.onResume();
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzr();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzs(bundle);
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override
    public final void onStart() {
        super.onStart();
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzt();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override
    public final void onStop() {
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzu();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            zzbsy zzbsyVar = this.b;
            if (zzbsyVar != null) {
                zzbsyVar.zzv();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setContentView(int i) {
        super.setContentView(i);
        a();
    }

    @Override
    public final void setContentView(@NonNull View view) {
        super.setContentView(view);
        a();
    }

    @Override
    public final void setContentView(@NonNull View view, @NonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        a();
    }
}
