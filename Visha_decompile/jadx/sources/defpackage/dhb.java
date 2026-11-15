package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cloud.tupdate.TUpdate;
import com.cloud.tupdate.bean.UpdateContent;
import com.cloud.tupdate.bean.UpdateEntity;
import com.cloud.tupdate.net.utils.LogUtil;
import java.util.Calendar;
import java.util.List;

public final class dhb {
    public static final dhb a = new dhb();

    public static void m(dhb dhbVar, UpdateEntity updateEntity, ww4 ww4Var, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        dhbVar.l(updateEntity, ww4Var, z);
    }

    public static void q(dhb dhbVar, Context context, String str, int i, Long l, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            l = null;
        }
        dhbVar.p(context, str, i, l);
    }

    public static void v(dhb dhbVar, String str, int i, String str2, Long l, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            l = null;
        }
        dhbVar.u(str, i, str2, l);
    }

    public final boolean a() {
        Object systemService = TUpdate.c.b().b().getSystemService("connectivity");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final void b(UpdateEntity updateEntity, ww4 ww4Var, String str) {
        int i = Calendar.getInstance().get(5);
        UpdateContent updateContent = updateEntity.getUpdateContent();
        if ((updateContent == null ? null : updateContent.getUpdateInterval()) == null || updateEntity.getUpdateContent().getUpdateInterval().isEmpty()) {
            if (i(ww4Var.getContext(), "tupdate_update_day", i)) {
                o6.j().d("update", "非时间间隔的自动普通升级");
                f(updateEntity, ww4Var, str);
                return;
            } else {
                vk.a.x(3);
                e(updateEntity, ww4Var);
                return;
            }
        }
        if (j(updateEntity, "upgrade_record")) {
            o6.j().d("update", "根据时间间隔的自动普通升级");
            f(updateEntity, ww4Var, str);
        } else {
            vk.a.x(2);
            e(updateEntity, ww4Var);
        }
    }

    public final void c(UpdateEntity updateEntity, ww4 ww4Var) {
        String updateUrl;
        UpdateContent updateContent = updateEntity.getUpdateContent();
        String str = "";
        if (updateContent != null && (updateUrl = updateContent.getUpdateUrl()) != null) {
            str = updateUrl;
        }
        String strValueOf = String.valueOf(str.hashCode());
        if (updateEntity.getUpdateContent() == null || !y45.e(updateEntity.getUpdateContent().getShowDialog(), Boolean.TRUE) || g(updateEntity.getUpdateContent().getUpdateVersion())) {
            e(updateEntity, ww4Var);
        } else {
            b(updateEntity, ww4Var, strValueOf);
        }
    }

    public final void d(UpdateEntity updateEntity, ww4 ww4Var, boolean z) {
        if (updateEntity.getUpdateContent() == null || !y45.e(updateEntity.getUpdateContent().getShowDialog(), Boolean.TRUE)) {
            return;
        }
        o6.j().d("update", "手动普通升级");
        ww4Var.c(updateEntity, ww4Var, z);
    }

    public final void e(UpdateEntity updateEntity, ww4 ww4Var) {
        UpdateContent updateContent = updateEntity.getUpdateContent();
        String updateVersion = updateContent == null ? null : updateContent.getUpdateVersion();
        if (updateEntity.getAppScoreContent() != null) {
            UpdateContent updateContent2 = updateEntity.getUpdateContent();
            if (updateContent2 == null ? false : y45.e(updateContent2.getShowDialog(), Boolean.FALSE)) {
                if (!y45.e(updateEntity.getAppScoreContent().getShowAfterUpdate(), Boolean.TRUE)) {
                    if (h(TUpdate.c.a(), updateEntity)) {
                        o6.j().d("update", "升级后弹评分引导关闭，根据时间间隔弹评分弹框");
                        ww4Var.j(updateEntity, ww4Var);
                        return;
                    }
                    return;
                }
                o6.j().d("update", "升级后自动弹评分 开关 = true");
                if (!k(updateVersion)) {
                    o6.j().d("update", "升级后自动弹评分弹框");
                    ww4Var.j(updateEntity, ww4Var);
                    p(TUpdate.c.a(), updateVersion, -1, Long.valueOf(System.currentTimeMillis()));
                } else if (h(TUpdate.c.a(), updateEntity)) {
                    o6.j().d("update", "升级后根据时间间隔弹评分弹框");
                    ww4Var.j(updateEntity, ww4Var);
                }
                s(updateVersion, true);
            }
        }
    }

    public final void f(UpdateEntity updateEntity, ww4 ww4Var, String str) {
        ww4.a.a(ww4Var, updateEntity, ww4Var, false, 4, null);
    }

    public final boolean g(String str) {
        String strK;
        if (str != null && !j1a.o0(str) && (strK = pg9.a.a().k("ignore_upgrade_dialog", "")) != null && !j1a.o0(strK)) {
            y45.i(strK, "ignoreInstallDialogValue");
            List listO0 = j1a.O0(strK, new String[]{"-"}, false, 0, 6, null);
            if (listO0.size() == 2 && y45.e(str, listO0.get(0))) {
                boolean z = Boolean.parseBoolean((String) listO0.get(1));
                if (z) {
                    vk.a.x(1);
                }
                return z;
            }
        }
        return false;
    }

    public final boolean h(Context context, UpdateEntity updateEntity) {
        String updateVersion;
        int i;
        if (context != null && updateEntity.getAppScoreContent() != null) {
            UpdateContent updateContent = updateEntity.getUpdateContent();
            String str = (updateContent == null || (updateVersion = updateContent.getUpdateVersion()) == null) ? "" : updateVersion;
            pg9 pg9Var = pg9.a;
            String strK = pg9Var.a().k("score_record", "");
            if (pg9Var.a().c(str, false)) {
                return false;
            }
            if (strK != null && !j1a.o0(strK)) {
                y45.i(strK, "scoreRecordValue");
                List listO0 = j1a.O0(strK, new String[]{"#"}, false, 0, 6, null);
                if (listO0.size() == 3) {
                    String str2 = (String) listO0.get(0);
                    int i2 = Integer.parseInt((String) listO0.get(1));
                    long j = Long.parseLong((String) listO0.get(2));
                    try {
                        if (!y45.e(str2, str)) {
                            p(context, str, -1, Long.valueOf(System.currentTimeMillis()));
                            return false;
                        }
                        if (updateEntity.getAppScoreContent().getIntervalDays() == null || updateEntity.getAppScoreContent().getIntervalDays().isEmpty() || updateEntity.getAppScoreContent().getIntervalDays().size() - 1 < (i = i2 + 1)) {
                            return false;
                        }
                        float f = 60;
                        if (System.currentTimeMillis() - j <= updateEntity.getAppScoreContent().getIntervalDays().get(i).floatValue() * 24 * f * f * 1000) {
                            return false;
                        }
                        q(this, context, str2, i, null, 8, null);
                        return true;
                    } catch (Exception e) {
                        LogUtil.a.d(e);
                    }
                }
                return false;
            }
            q(this, context, str, -1, null, 8, null);
        }
        return false;
    }

    public final boolean i(Context context, String str, int i) {
        return context == null || pg9.a.a().g(str, 0) != i;
    }

    public final boolean j(UpdateEntity updateEntity, String str) {
        int i;
        if (updateEntity.getUpdateContent() == null) {
            return false;
        }
        String updateVersion = updateEntity.getUpdateContent().getUpdateVersion();
        String str2 = updateVersion == null ? "" : updateVersion;
        String strK = pg9.a.a().k(str, "");
        if (strK == null || j1a.o0(strK)) {
            v(this, str2, -1, str, null, 8, null);
            return true;
        }
        y45.i(strK, "updateRecordValue");
        List listO0 = j1a.O0(strK, new String[]{"#"}, false, 0, 6, null);
        if (listO0.size() == 3) {
            String str3 = (String) listO0.get(0);
            int i2 = Integer.parseInt((String) listO0.get(1));
            long j = Long.parseLong((String) listO0.get(2));
            try {
                if (!y45.e(str3, str2)) {
                    u(str2, -1, str, Long.valueOf(System.currentTimeMillis()));
                    return true;
                }
                if (updateEntity.getUpdateContent().getUpdateInterval() == null || updateEntity.getUpdateContent().getUpdateInterval().isEmpty() || updateEntity.getUpdateContent().getUpdateInterval().size() - 1 < (i = i2 + 1)) {
                    return false;
                }
                float f = 60;
                if (System.currentTimeMillis() - j <= updateEntity.getUpdateContent().getUpdateInterval().get(i).floatValue() * 24 * f * f * 1000) {
                    return false;
                }
                v(this, str3, i, str, null, 8, null);
                return true;
            } catch (Exception e) {
                LogUtil.a.d(e);
            }
        }
        return false;
    }

    public final boolean k(String str) {
        o6.j().d("update", y45.s("version = ", str));
        if (str == null || j1a.o0(str)) {
            return false;
        }
        String strK = pg9.a.a().k("is_show_After_Update", "");
        o6.j().d("update", y45.s("isShowScoreDialogValue = ", strK));
        if (strK == null || j1a.o0(strK)) {
            return false;
        }
        y45.i(strK, "isShowScoreDialogValue");
        List listO0 = j1a.O0(strK, new String[]{"-"}, false, 0, 6, null);
        if (listO0.size() == 2 && y45.e(str, listO0.get(0))) {
            return Boolean.parseBoolean((String) listO0.get(1));
        }
        return false;
    }

    public final void l(UpdateEntity updateEntity, ww4 ww4Var, boolean z) {
        Boolean showDialog;
        y45.j(ww4Var, "updateManager");
        if (updateEntity == null) {
            return;
        }
        pg9 pg9Var = pg9.a;
        if (pg9Var.a().c("show_dialog_flag", false)) {
            UpdateContent updateContent = updateEntity.getUpdateContent();
            if (updateContent != null ? y45.e(updateContent.getShowDialog(), Boolean.FALSE) : false) {
                vk.a.t();
            }
        }
        UpdateContent updateContent2 = updateEntity.getUpdateContent();
        if (updateContent2 != null && (showDialog = updateContent2.getShowDialog()) != null) {
            boolean zBooleanValue = showDialog.booleanValue();
            if (zBooleanValue) {
                vk vkVar = vk.a;
                Context context = ww4Var.getContext();
                vkVar.v(context == null ? null : qa1.a.k(context), updateEntity.getUpdateContent().getUpdateVersion());
            }
            pg9Var.a().m("show_dialog_flag", zBooleanValue);
        }
        o6 o6VarJ = o6.j();
        UpdateContent updateContent3 = updateEntity.getUpdateContent();
        o6VarJ.d("update", y45.s("定向条件结果 = ", updateContent3 != null ? updateContent3.getCriteriaResult() : null));
        if (updateEntity.getUpdateContent() != null) {
            Boolean showDialog2 = updateEntity.getUpdateContent().getShowDialog();
            Boolean bool = Boolean.TRUE;
            if (y45.e(showDialog2, bool) && y45.e(updateEntity.getUpdateContent().getForce(), bool)) {
                o6.j().d("update", "强制升级");
                ww4Var.c(updateEntity, ww4Var, z);
                return;
            }
        }
        if (z) {
            a.d(updateEntity, ww4Var, z);
        } else {
            a.c(updateEntity, ww4Var);
        }
    }

    public final Object n(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public final void o(String str, boolean z) {
        if (str == null || j1a.o0(str)) {
            return;
        }
        sg9 sg9VarA = pg9.a.a();
        StringBuilder sb = new StringBuilder();
        sb.append((Object) str);
        sb.append('-');
        sb.append(z);
        sg9VarA.r("ignore_upgrade_dialog", sb.toString());
    }

    public final void p(Context context, String str, int i, Long l) {
        if (context == null || str == null) {
            return;
        }
        try {
            if (l == null) {
                pg9 pg9Var = pg9.a;
                String strK = pg9Var.a().k("score_record", "");
                y45.i(strK, "SharedPreferencesHelper.…ing(KEY_SCORE_RECORD, \"\")");
                if (j1a.o0(strK)) {
                    pg9Var.a().r("score_record", ((Object) str) + "#-1#" + System.currentTimeMillis());
                } else {
                    String str2 = (String) j1a.O0(strK, new String[]{"#"}, false, 0, 6, null).get(2);
                    pg9Var.a().r("score_record", ((Object) str) + '#' + i + '#' + str2);
                }
            } else {
                sg9 sg9VarA = pg9.a.a();
                StringBuilder sb = new StringBuilder();
                sb.append((Object) str);
                sb.append('#');
                sb.append(i);
                sb.append('#');
                sb.append(l);
                sg9VarA.r("score_record", sb.toString());
            }
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
    }

    public final void r(Context context, String str, boolean z) {
        if (context == null || str == null || j1a.o0(str)) {
            return;
        }
        pg9.a.a().m(str, z);
    }

    public final void s(String str, boolean z) {
        if (str == null || j1a.o0(str)) {
            return;
        }
        pg9 pg9Var = pg9.a;
        String strK = pg9Var.a().k("is_show_After_Update", "");
        o6.j().d("update", y45.s("saveShowScoreDialogValue --> isShowScoreDialogValue = ", strK));
        if (strK == null || j1a.o0(strK)) {
            sg9 sg9VarA = pg9Var.a();
            StringBuilder sb = new StringBuilder();
            sb.append((Object) str);
            sb.append('-');
            sb.append(z);
            sg9VarA.r("is_show_After_Update", sb.toString());
            return;
        }
        y45.i(strK, "isShowScoreDialogValue");
        if (y45.e(str, j1a.O0(strK, new String[]{"-"}, false, 0, 6, null).get(0))) {
            return;
        }
        sg9 sg9VarA2 = pg9Var.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) str);
        sb2.append('-');
        sb2.append(z);
        sg9VarA2.r("is_show_After_Update", sb2.toString());
    }

    public final void t(Context context, String str, int i) {
        y45.j(str, "judgeKey");
        if (context == null) {
            return;
        }
        pg9.a.a().p(str, i);
    }

    public final void u(String str, int i, String str2, Long l) {
        if (str == null) {
            return;
        }
        try {
            if (l == null) {
                pg9 pg9Var = pg9.a;
                String strK = pg9Var.a().k(str2, "");
                y45.i(strK, "SharedPreferencesHelper.…e.getString(judgeKey, \"\")");
                if (j1a.o0(strK)) {
                    pg9Var.a().r(str2, ((Object) str) + "#-1#" + System.currentTimeMillis());
                } else {
                    String str3 = (String) j1a.O0(strK, new String[]{"#"}, false, 0, 6, null).get(2);
                    pg9Var.a().r(str2, ((Object) str) + '#' + i + '#' + str3);
                }
            } else {
                sg9 sg9VarA = pg9.a.a();
                StringBuilder sb = new StringBuilder();
                sb.append((Object) str);
                sb.append('#');
                sb.append(i);
                sb.append('#');
                sb.append(l);
                sg9VarA.r(str2, sb.toString());
            }
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
    }
}
