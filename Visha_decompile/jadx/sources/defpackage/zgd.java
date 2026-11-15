package defpackage;

import android.util.Log;
import com.hisavana.common.bean.Network;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.ConfigContentHelper;
import java.util.List;

public abstract class zgd {
    public static CloudControlConfig.CodeSeat a(String str) {
        return b(str, "", false);
    }

    public static CloudControlConfig.CodeSeat b(String str, String str2, boolean z) {
        CloudControlConfig.CodeSeat codeSeatE = null;
        try {
            codeSeatE = ConfigContentHelper.g().e(str);
            if (codeSeatE == null) {
                return codeSeatE;
            }
            List<Network> networks = codeSeatE.getNetworks();
            if (networks != null && !networks.isEmpty()) {
                for (Network network : networks) {
                    network.setAdt(codeSeatE.getCodeSeatType().intValue());
                    if (network.getSource().intValue() != 1 && !AdUtil.isQueryPriceNetwork(network)) {
                        network.setPrice(Double.valueOf(network.getTempPrice()));
                    }
                    if (z) {
                        AdUtil.overwriteAdmobNetworkPrice(network, str2);
                    }
                }
            }
        } catch (Exception e) {
            AdLogUtil.Log().e("ConfigUtil", "getConfigByAdUnit " + Log.getStackTraceString(e));
        }
        return codeSeatE;
    }
}
