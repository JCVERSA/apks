package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CloudItem;
import java.util.HashMap;
import org.apache.commons.lang3.BooleanUtils;

public abstract class sm7 {
    public static int a(Context context) {
        AccountRes accountResJ = ao7.a.a.j(context);
        if (accountResJ == null || !context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            return 0;
        }
        if (TextUtils.isEmpty(accountResJ.nickname) || TextUtils.isEmpty(accountResJ.avatarUrl) || !accountResJ.existPassword) {
            return 2;
        }
        return (!(TextUtils.isEmpty(accountResJ.phone) && TextUtils.isEmpty(accountResJ.email)) && l41.c(context)) ? 1 : 2;
    }

    public static int b(String str) {
        return TextUtils.isEmpty(str) ? 0 : 1;
    }

    public static String c(int i) {
        if (i == 1) {
            return "FB";
        }
        if (i == 7) {
            return "LE";
        }
        return i == 8 ? VkConstant.VK : "GG";
    }

    public static String d(int i, String str, int i2) {
        if (i != 0) {
            if (i == 1) {
                return "FB";
            }
            return i == 2 ? "GO" : "";
        }
        if (i2 == 0) {
            if (str.contains("@")) {
                return "EV";
            }
            return str.contains("-") ? "PV" : "";
        }
        if (str.contains("@")) {
            return "EP";
        }
        return str.contains("-") ? "PP" : "IP";
    }

    public static String e(AccountRes accountRes) {
        if (accountRes == null) {
            return "";
        }
        HashMap map = new HashMap();
        Gson gson = new Gson();
        map.put("AS", Integer.valueOf(!TextUtils.isEmpty(accountRes.avatarUrl) ? 1 : 0));
        map.put("IC", Integer.valueOf(accountRes.usernameModifyRemainTimes > 0 ? 0 : 1));
        map.put("NE", Integer.valueOf(!TextUtils.isEmpty(accountRes.fullName) ? 1 : 0));
        map.put("SS", Integer.valueOf(accountRes.getGender().intValue() != -1 ? 1 : 0));
        map.put("BS", Integer.valueOf(!TextUtils.isEmpty(accountRes.birthday) ? 1 : 0));
        map.put("CS", Integer.valueOf(!TextUtils.isEmpty(accountRes.state) ? 1 : 0));
        map.put("SN", Integer.valueOf(!TextUtils.isEmpty(accountRes.signature) ? 1 : 0));
        map.put("DS", Integer.valueOf(accountRes.haveAddress ? 1 : 0));
        map.put("NN", Integer.valueOf(!TextUtils.isEmpty(accountRes.nickname) ? 1 : 0));
        return gson.toJson(map);
    }

    public static String f(Context context) {
        HashMap map = new HashMap();
        Cursor cursorA = l41.a(context);
        if (cursorA != null) {
            while (cursorA.moveToNext()) {
                String string = cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_SYNC_STATE));
                int i = Integer.parseInt(cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_CATEGORY)));
                if (i == 1) {
                    map.put("Contacts", Integer.valueOf(BooleanUtils.TRUE.equals(string) ? 1 : 0));
                } else if (i == 2) {
                    map.put("Block", Integer.valueOf(BooleanUtils.TRUE.equals(string) ? 1 : 0));
                } else if (i == 3) {
                    map.put("WLAN", Integer.valueOf(BooleanUtils.TRUE.equals(string) ? 1 : 0));
                }
            }
        }
        return new Gson().toJson(map);
    }
}
