package com.transsion.hubsdk.api.net.wifi;

import java.util.BitSet;

public class TranWifiConfiguration {
    public static final int AP_BAND_2GHZ = 0;
    public static final int AP_BAND_5GHZ = 1;
    public static final int AP_BAND_60GHZ = 2;
    public static final int AP_BAND_ANY = -1;
    public boolean mHiddenSSID;
    public int mNetworkId;
    public String mPreSharedKey;
    public String mSSID;
    public int mApBand = 0;
    public int mApChannel = 0;
    public BitSet mAllowedKeyManagement = new BitSet();
}
