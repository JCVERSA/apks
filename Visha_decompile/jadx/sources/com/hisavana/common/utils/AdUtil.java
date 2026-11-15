package com.hisavana.common.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.internal.helper.InternalConfigHelper;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.constant.ComConstants;
import defpackage.o9;
import defpackage.ul4;
import java.math.BigDecimal;

public class AdUtil {
    public static boolean checkAppInstalled(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                PackageManager packageManager = context.getPackageManager();
                if (TextUtils.isEmpty(str)) {
                    str = "";
                }
                if (packageManager.getPackageInfo(str, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static int getNetworkType(Network network) {
        if (network == null || network.getAdt() == -1) {
            return 0;
        }
        int iIntValue = network.getBiddingType().intValue();
        if (iIntValue == 1) {
            return isQueryPriceNetwork(network.getSource().intValue()) ? 3 : 1;
        }
        if (iIntValue == 2) {
            return 2;
        }
        if (isQueryPriceNetwork(network.getSource().intValue())) {
            return 3;
        }
        return isBiddingNetwork(network.getSource().intValue()) ? 1 : 2;
    }

    public static boolean isAdmobNetwork(int i) {
        return i == 1;
    }

    private static boolean isBiddingNetwork(int i) {
        return i == 6 || i == 0 || i == 14 || i == 16 || i == 5 || i == 8 || i == 17;
    }

    public static boolean isDebuggable() {
        try {
            return (ul4.a().getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean isQueryPriceNetwork(int i) {
        return i == 9 || i == 2;
    }

    public static boolean isWaterFall(Network network) {
        return 2 == getNetworkType(network);
    }

    public static boolean isZero(@NonNull BigDecimal bigDecimal) {
        return bigDecimal.compareTo(new BigDecimal("0")) == 0;
    }

    public static void overwriteAdmobNetworkPrice(@NonNull Network network) {
        overwriteAdmobNetworkPrice(network, "");
    }

    public static void release(TAdNativeInfo tAdNativeInfo) {
        if (tAdNativeInfo != null) {
            tAdNativeInfo.release();
        }
    }

    public static boolean requestStatusOff() {
        ConfigTotalDTO.ExtInfo extInfo = InternalConfigHelper.getExtInfo();
        if (extInfo == null) {
            return true;
        }
        return extInfo.getRequestStatusOff();
    }

    public static boolean isBiddingNetwork(Network network) {
        return 1 == getNetworkType(network);
    }

    public static boolean isQueryPriceNetwork(Network network) {
        return 3 == getNetworkType(network);
    }

    public static void overwriteAdmobNetworkPrice(@NonNull Network network, String str) {
        if (isAdmobNetwork(network.getSource().intValue())) {
            BigDecimal showPriceCoefficient = network.getShowPriceCoefficient();
            AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> priceCoefficient: " + showPriceCoefficient.doubleValue() + " | codeSeatId: " + network.getCodeSeatId());
            if (isZero(showPriceCoefficient)) {
                return;
            }
            long jI = o9.e().i(network.getCodeSeatId(), 0L);
            if (jI > 0) {
                double tempPrice = network.getTempPrice();
                BigDecimal bigDecimalValueOf = BigDecimal.valueOf(jI / 1000.0d);
                double dDoubleValue = bigDecimalValueOf.multiply(showPriceCoefficient).multiply(BigDecimal.valueOf(100L)).stripTrailingZeros().doubleValue();
                if (dDoubleValue > tempPrice) {
                    network.setPrice(Double.valueOf(dDoubleValue));
                    AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> valueMicros: " + jI + " | valueDollar :" + bigDecimalValueOf + " | price :" + dDoubleValue + " | formerPrice: " + tempPrice + " | nowPrice: " + network.getPrice());
                    return;
                }
            }
            double tempPrice2 = network.getTempPrice();
            BigDecimal bigDecimalValueOf2 = BigDecimal.valueOf(tempPrice2);
            double dDoubleValue2 = bigDecimalValueOf2.multiply(showPriceCoefficient).stripTrailingZeros().doubleValue();
            network.setPrice(Double.valueOf(dDoubleValue2));
            AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> valueMicros: " + jI + " | valueDollar :" + bigDecimalValueOf2 + " | price :" + dDoubleValue2 + " | formerPrice: " + tempPrice2 + " | nowPrice: " + network.getPrice());
        }
    }
}
