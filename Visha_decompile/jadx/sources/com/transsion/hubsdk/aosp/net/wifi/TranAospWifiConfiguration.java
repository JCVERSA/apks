package com.transsion.hubsdk.aosp.net.wifi;

import java.util.BitSet;

public class TranAospWifiConfiguration {
    public static final int AP_BAND_2GHZ = 0;
    public static final int AP_BAND_5GHZ = 1;
    public static final int AP_BAND_60GHZ = 2;
    public static final int AP_BAND_ANY = -1;
    public String SSID;
    public boolean hiddenSSID;
    public int networkId;
    public String preSharedKey;
    public int apBand = 0;
    public int apChannel = 0;
    public BitSet allowedKeyManagement = new BitSet();
}
