package defpackage;

import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.HashMap;
import java.util.List;

public final class dw5 {
    public static final dw5 a = new dw5();
    public static final Object b = new Object();
    public static final HashMap c = new HashMap();
    public static volatile boolean d;

    public static final void e(String str, String str2, String str3, String str4) {
        int iB;
        y45.j(str3, "$today");
        y45.j(str4, "$key");
        try {
            a.d();
            synchronized (b) {
                try {
                    HashMap map = c;
                    qk8 qk8Var = (qk8) map.get(str4);
                    iB = 1;
                    if (qk8Var != null && y45.e(qk8Var.c(), str3)) {
                        iB = 1 + qk8Var.b();
                    }
                    y45.g(str);
                    map.put(str4, new qk8(str, str2, iB, str3));
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            xw6.a.b(str, str2, iB, str3);
        } catch (Throwable th2) {
            ikd.b().e("ClickFreqControlManager", "insertOrUpdate DB error: " + th2.getMessage());
        }
    }

    public final String b(AdsDTO adsDTO) {
        String psPackageName = adsDTO.getPsPackageName();
        String packageName = (psPackageName == null || psPackageName.length() == 0) ? adsDTO.getPackageName() : adsDTO.getPsPackageName();
        if (packageName == null || packageName.length() == 0) {
            return null;
        }
        return packageName;
    }

    public final String c(String str, String str2) {
        return str + '_' + str2;
    }

    public final void d() {
        if (d) {
            return;
        }
        xw6 xw6Var = xw6.a;
        xw6Var.a();
        List<qk8> listC = xw6Var.c();
        if (listC == null) {
            listC = y71.k();
        }
        synchronized (b) {
            if (d) {
                return;
            }
            try {
                c.clear();
                for (qk8 qk8Var : listC) {
                    c.put(a.c(qk8Var.a(), qk8Var.d()), qk8Var);
                }
                d = true;
            } catch (Throwable th) {
                ikd.b().e("ClickFreqControlManager", "ensureDataLoaded error: " + th.getMessage());
            }
            zfb zfbVar = zfb.a;
        }
    }

    public final boolean f(AdsDTO adsDTO, ConfigCodeSeatDTO configCodeSeatDTO) {
        y45.j(adsDTO, "ad");
        if (!h(adsDTO, configCodeSeatDTO)) {
            return false;
        }
        String codeSeatId = adsDTO.getCodeSeatId();
        if (codeSeatId == null || codeSeatId.length() == 0) {
            ikd.b().w("ClickFreqControlManager", "isClickFreqFiltered: codeSeatId is empty, skip filter");
            return false;
        }
        String strB = b(adsDTO);
        if (strB == null) {
            return false;
        }
        String strK = HSCommonUtils.a.k();
        y45.g(codeSeatId);
        String strC = c(codeSeatId, strB);
        d();
        synchronized (b) {
            qk8 qk8Var = (qk8) c.get(strC);
            if (qk8Var == null) {
                return false;
            }
            y45.g(qk8Var);
            if (y45.e(qk8Var.c(), strK)) {
                return qk8Var.b() >= (configCodeSeatDTO != null ? configCodeSeatDTO.getClickFreqControlMaxClickPerDay() : 3);
            }
            return false;
        }
    }

    public final void g(AdsDTO adsDTO) {
        final String strB;
        if (adsDTO == null || adsDTO.isRecordClick()) {
            return;
        }
        final String codeSeatId = adsDTO.getCodeSeatId();
        if (!h(adsDTO, spc.f().b(codeSeatId)) || (strB = b(adsDTO)) == null || strB.length() == 0) {
            return;
        }
        adsDTO.setRecordClick(true);
        final String strK = HSCommonUtils.a.k();
        y45.g(codeSeatId);
        final String strC = c(codeSeatId, strB);
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                dw5.e(codeSeatId, strB, strK, strC);
            }
        });
    }

    public final boolean h(AdsDTO adsDTO, ConfigCodeSeatDTO configCodeSeatDTO) {
        if (adsDTO == null || configCodeSeatDTO == null || !configCodeSeatDTO.isClickFreqControlEnable()) {
            return false;
        }
        Integer dspType = adsDTO.getDspType();
        if ((dspType != null && dspType.intValue() == 2) || !i(adsDTO)) {
            return false;
        }
        int clickFreqControlNetwork = configCodeSeatDTO.getClickFreqControlNetwork();
        if (clickFreqControlNetwork != 0) {
            boolean zCheckNetworkState = NetStateManager.checkNetworkState(false);
            if (clickFreqControlNetwork == 1 && !zCheckNetworkState) {
                return false;
            }
            if (clickFreqControlNetwork == 2 && zCheckNetworkState) {
                return false;
            }
        }
        return true;
    }

    public final boolean i(AdsDTO adsDTO) {
        String packageName;
        String psLink = adsDTO.getPsLink();
        boolean z = psLink == null || psLink.length() == 0;
        String psPackageName = adsDTO.getPsPackageName();
        return !z && ((psPackageName != null && psPackageName.length() != 0) || ((packageName = adsDTO.getPackageName()) != null && packageName.length() != 0));
    }
}
