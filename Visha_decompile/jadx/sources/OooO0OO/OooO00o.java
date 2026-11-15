package OooO0OO;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmDefaultImpl;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.XNManager;
import com.transsion.palmsdk.auth.OooO0o;
import defpackage.mj7;
import defpackage.vj7;
import org.json.JSONObject;

public class OooO00o extends BroadcastReceiver {
    public final PalmAuthParam a;
    public PalmID.a b;

    public OooO00o(PalmAuthParam palmAuthParam) {
        this.a = palmAuthParam;
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        vj7.a.g("onReceive action = " + action);
        String strE = "";
        String strValueOf = null;
        if (!"intent.action.PALM_ID_CHANGE".equals(action)) {
            if ("intent.action.SILENT_LOGOUT".equals(action)) {
                if (intent.hasExtra("error_code")) {
                    int intExtra = intent.getIntExtra("error_code", -1);
                    String stringExtra = intent.getStringExtra(TrackingKey.ERROR_MESSAGE);
                    PalmID.a aVar = this.b;
                    if (aVar != null) {
                        aVar.a(intExtra, stringExtra);
                        this.b = null;
                        return;
                    }
                    return;
                }
                PalmID.a aVar2 = this.b;
                if (aVar2 != null) {
                    aVar2.onSuccess(Boolean.TRUE);
                    this.b = null;
                }
                mj7.a(context).a.saveString("linked_id", "");
                mj7.a(context).a.saveString("linked_pkg", "");
                mj7.a(context).a.saveString("linked_bd", "");
                PalmID palmIDL = PalmID.l(context);
                if (palmIDL instanceof PalmDefaultImpl) {
                    ((PalmDefaultImpl) palmIDL).y(false);
                    return;
                }
                return;
            }
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("is_local", true);
        boolean booleanExtra2 = intent.getBooleanExtra("is_login", false);
        vj7.a.g("palm id change isLocal = " + booleanExtra + " isPalmLogin = " + booleanExtra2);
        if (!booleanExtra) {
            if (this.a.isBindTransID() && XNManager.g().j(context)) {
                String strLoadString = mj7.a(context).a.loadString("linked_pkg");
                Intent intentA = vj7.a(context, true);
                vj7.a.g("palm id intent = " + intentA + " linkedPkg = " + strLoadString);
                if (intentA == null || !TextUtils.equals(intentA.getPackage(), strLoadString)) {
                    return;
                }
                OooO0o oooO0o = new OooO0o(context, intentA, this.a, null);
                oooO0o.g = booleanExtra2;
                oooO0o.a();
                if (booleanExtra2) {
                    return;
                }
                XNManager.g().f(context, true);
                return;
            }
            return;
        }
        if (!XNManager.g().j(context)) {
            LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.SILENT_LOGOUT"));
            LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.inner.SIGN_OUT"));
            return;
        }
        String strLoadString2 = mj7.a(context).a.loadString("linked_id");
        try {
            strE = XNManager.g().e(context);
            if (strE != null && strE.contains("xuanniaoId")) {
                strValueOf = String.valueOf(new JSONObject(strE).getString("xuanniaoId").hashCode());
            }
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
        vj7.a.g("linkedId = " + strLoadString2 + " loggedId = " + strValueOf);
        if (!TextUtils.isEmpty(strLoadString2) && !TextUtils.isEmpty(strValueOf) && !TextUtils.equals(strLoadString2, strValueOf)) {
            LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.SILENT_LOGOUT"));
            LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.inner.SIGN_OUT"));
        } else {
            if (booleanExtra2) {
                LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("intent.action.inner.SIGN_IN"));
                return;
            }
            PalmID palmIDL2 = PalmID.l(context);
            if (!(palmIDL2 instanceof PalmDefaultImpl) || strE == null) {
                return;
            }
            ((PalmDefaultImpl) palmIDL2).z(strE);
        }
    }
}
