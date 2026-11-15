package com.hoffnung.tpms_sdk;

import android.app.IntentService;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.mozilla.classfile.ByteCode;

public abstract class TpmsEventService extends IntentService {
    public TpmsEventService() {
        super("TpmsEventService");
    }

    public abstract void a(String str);

    public abstract void b(String str, int i);

    public abstract void c(String str, String str2);

    @Override
    public void onHandleIntent(Intent intent) {
        String strSubstring;
        String strSubstring2;
        byte b = 1;
        String action = intent.getAction();
        action.hashCode();
        if (action.equals("com.transsion.tpms.action.EVENT")) {
            String string = intent.getExtras().getString(NotificationCompat.CATEGORY_EVENT);
            int iIndexOf = string.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER);
            if (iIndexOf > 0) {
                strSubstring2 = string.substring(0, iIndexOf);
                strSubstring = string.substring(iIndexOf + 1);
            } else {
                strSubstring = "";
                strSubstring2 = string;
            }
            strSubstring2.hashCode();
            switch (strSubstring2.hashCode()) {
                case -1727575874:
                    b = !strSubstring2.equals("specific_app_launch") ? (byte) -1 : (byte) 0;
                    break;
                case -873668056:
                    if (!strSubstring2.equals("timeup")) {
                        b = -1;
                    }
                    break;
                case -678321544:
                    b = !strSubstring2.equals("time_up_partition") ? (byte) -1 : (byte) 2;
                    break;
                case -354788997:
                    b = !strSubstring2.equals("palmid_update") ? (byte) -1 : (byte) 3;
                    break;
                case -315191707:
                    b = !strSubstring2.equals("cloud_sync") ? (byte) -1 : (byte) 4;
                    break;
                case -101686329:
                    b = !strSubstring2.equals("audio_record_done") ? (byte) -1 : (byte) 5;
                    break;
                case 440479644:
                    b = !strSubstring2.equals("power_down") ? (byte) -1 : (byte) 6;
                    break;
                case 704091517:
                    b = !strSubstring2.equals("app_install") ? (byte) -1 : (byte) 7;
                    break;
                case 858558485:
                    b = !strSubstring2.equals("power_up") ? (byte) -1 : (byte) 8;
                    break;
                case 1156680893:
                    b = !strSubstring2.equals("audio_record_start") ? (byte) -1 : (byte) 9;
                    break;
                case 1337476263:
                    b = !strSubstring2.equals("app_update") ? (byte) -1 : (byte) 10;
                    break;
                case 1434631203:
                    b = !strSubstring2.equals("settings") ? (byte) -1 : ByteCode.T_LONG;
                    break;
                case 1591012431:
                    b = !strSubstring2.equals("default_app_launch") ? (byte) -1 : (byte) 12;
                    break;
                case 1667442756:
                    b = !strSubstring2.equals("app_uninstall") ? (byte) -1 : (byte) 13;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                case 3:
                case 4:
                case 5:
                case 7:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    if (strSubstring != null) {
                        c(strSubstring2, strSubstring);
                    }
                    break;
                case 1:
                case 2:
                case 6:
                case 8:
                    if (strSubstring != null) {
                        try {
                            b(strSubstring2, Integer.parseInt(strSubstring));
                        } catch (NumberFormatException unused) {
                            return;
                        }
                    }
                    break;
                default:
                    a(string);
                    break;
            }
        }
    }
}
